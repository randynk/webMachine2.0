rubrique = []
nbre_sous_rubrique = Int64[]
sous_rubrique = []
effectif_sous_rub = Int64[]
produit = []
namess = []
prix = []
prices = []
precis = []
precisions = []
infos = open("info","r")
info = readlines(infos)
close(infos)
rubrics = open("rubric","r")
rubric = readlines(rubrics)
close(rubrics)
touch("art")
aLaUne = open("art","r")
for i in eachline(aLaUne)
    begin
        e = split(string(i), ",")
        push!(namess, e[1])
        push!(prices, e[2])
        push!(precisions, e[3])
    end
end
close(aLaUne)
nbre_rub = parse(Int64, info[1])
for i in rubric
    begin
       a = split(string(i), ",")
       push!(rubrique, a[1])
       push!(nbre_sous_rubrique, parse(Int64, a[2]))
    end
end
for i in 1:nbre_rub
    subs = open("rubric-$i","r")
    sub = readlines(subs)
    close(subs)
    for j in sub
        begin
           b = split(string(j), ",")
           push!(sous_rubrique, b[1])
           push!(effectif_sous_rub, parse(Int64, b[2]))
        end
    end
end
for i in 1:nbre_rub
    for j in 1:nbre_sous_rubrique[i]
        articles = open("art-$i-$j","a")
        close(articles)
    end
end
messages = "\n\nNB: N'oubliez pas :\n"
somme = 0
for i in 1:nbre_rub
    global messages = string(messages, "         Rubrique $i : $(rubrique[i]) | $(nbre_sous_rubrique[i]) sous-rubriques :\n")
    for j in 1:nbre_sous_rubrique[i]
        global messages = string(messages, "$j . $(sous_rubrique[j+somme]) (art-$i-$j) | $(effectif_sous_rub[j+somme]) articles\n")
    end
    global  somme += nbre_sous_rubrique[i]
end
message = open("messages","a")
write(message, messages)
close(message)
fichier = open("messages","r")
while !eof(fichier)
    lettre = read(fichier, Char)
    print("$lettre")
    sleep(0.01)
end
close(fichier)
editee = "Veuillez éditer les fichiers de renseignement des informations sur le service, les rubriques, des noms, prix et précisions sur les produits\n"
readye = "Parfait ! Tout est prêt ! Assurez maintenant que toutes vos images sont dans le même dossier que le fichier html qui a été généré !\n"
edites = open("edite","a")
write(edites, editee)
close(edites)
readys = open("ready","a")
write(readys, readye)
close(readys)
fichiers = open("edite","r")
while !eof(fichiers)
    lettre = read(fichiers, Char)
    print("$lettre")
    sleep(0.015)
end
close(fichiers)
while uppercase(readline()) != "C"
    println("Tapez la touche c puis valider sur ENTRER pour continuer s'il vous plaît\n")        
end
for i in 1:nbre_rub
    for j in 1:nbre_sous_rubrique[i]
        articles = open("art-$i-$j","r")
        article = readlines(articles)
        close(articles)

        for k in article
            begin
                c = split(k, ",")
                push!(produit, c[1])
                push!(prix, c[2])
                push!(precis, c[3])
            end
        end
    end
end
service = info[2]
titre_d_accueil = info[3]
email = info[4]
whatsapp = info[5]
telegram = info[6]
messenger = info[7]
vendeur = info[8]
playlink = info[9]
applink = info[10]
pages = open("index.html","a")
head = """\n<!DOCTYPE html>\n<html>\n<head>\n    <meta charset="utf-8">\n    <title>$service #Powered by V.I.A.A</title>\n    <link rel="stylesheet" type="text/css" href="design.css">\n    <link rel="stylesheet" type="text/css" href="designed.css">\n    <meta name="viewport" content="width=device-width, initial-scale=1">\n    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">\n    <link rel="stylesheet" type="text/css" href="contacts.css">\n	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> \n	<script src="contacts.js"></script>\n    <link rel="icon" href="vendeur.png">\n</head>\n<body>\n<header class="fix">\n    <table>\n        <tr>\n            <td><img class="log" src="vendeur.png"></td>\n            <td><div class="help">\n    				<div class="researchs">\n    				    <i class="fa fa-search" aria-hidden="true"></i>\n    				</div>\n    				<div class="entree">\n    				    <label id="search">Tapez votre recherche ici</label><br>\n    				    <input type="text" class="input"></input>\n    				</div>\n				</div>\n            </td>\n            <td class="hea"><div>\n"""
for i in 1:nbre_rub
    global  head = string(head, """\n<button class="rubrique"><a href="index.html#rub-$i">$(rubrique[i])</a></button>\n""")
end
head = string(head, """\n				</div>\n</td>\n</tr>\n</table>\n</header>\n\n<span class="boutonhaut"><a href="#basdepage"><img src="bas.png"></a></span>\n	<div class="wrapper">\n		<div class="search-box">\n			<button class="inputs">\n				<a href="mailto:$email"><img src="vmail.png" class="clicks"></a>\n				<a href="https://wa.me/+237$whatsapp"><img src="whtsp.png" class="clicks"></a>\n				<a href="https://t.me/+237$telegram"><img src="vtlgrm.png" class="clicks"></a>\n				<a href="https://m.me/+237$messenger"><img src="vmsg.png" class="clicks"></a>\n			</button>\n			<div class="btn">\n				<img src="click.png" class="click">\n			</div>\n		</div>\n	</div>\n<span class="boutonbas"><a href="#"><img src="haut.png"></a></span>\n\n""")
write(pages, "$head\n")
liste = """<ul class="ligne" style="background: url('fond.png');>\n"""
somme = 0        
for i in 1:nbre_rub
    global liste = string(liste, """    <li class="intitule">\n    <ul><button class="rubriques"><a href="index.html#rub-$i">$(rubrique[i])</a></button></ul>\n    <ul>\n""")
    for j in 1:nbre_sous_rubrique[i]
        global liste = string(liste, """            <ul><button class="rubriquess"><a href="index.html#sub-$i-$j">$(sous_rubrique[somme+j])</a></button></ul>\n        """)
    end
    global liste = string(liste, """        </ul>    \n    </li>    \n\n""")
    global somme += nbre_sous_rubrique[i]
end
liste = string(liste, """</ul>\n\n""")
write(pages, "$liste\n")
write(pages, """<div class="titre un">$titre_d_accueil</div>\n    <br><br>\n""")
write(pages, """<div class="une">A LA UNE</div>\n    <br><br>\n""")
for i in 1:length(namess)
    write(pages, """    <button class="bouton">\n    <a href="art ($i).png"><img class="produit" src="art ($i).png"></a>\n        <div>\n            <table><tr>\n                <td><div class="haut">$(precisions[i])</div></td><td><div class="hauteurs">$(prices[i]) fcfa</div></td></tr>\n            </table>\n        </div>\n        <div class="hauteur">$(namess[i])</div>\n        <hr>\n</button>\n\n""")
end
write(pages, "$liste\n")
somme = 0
point = 1
for i in 1:nbre_rub
    write(pages, """<div class="titre">\n	<ul class="centre">\n""")
    write(pages, """<h1 id="rub-$i" class="un">$(rubrique[i])</h1>\n    </div>\n    <br>\n""")
    for j in 1:nbre_sous_rubrique[i]
        write(pages, """    <div>\n        <ul class="centre">\n    """)
        for j in 1:nbre_sous_rubrique[i]
            if j == point
                write(pages, """	    <li id="sub-$i-$j"><button class="para"><h2>$(sous_rubrique[somme+j])</h2></button></li>\n            """)
            else
                write(pages, """	    <li><button class="rubriquess"><a href="index.html#sub-$i-$j">$(sous_rubrique[somme+j])</a></button></li>\n        """)
            end
        end
        write(pages, """	</ul>\n    </div>\n    <br><br>\n    """)
        for k in 1:effectif_sous_rub[somme+j]
            write(pages, """	<button class="bouton">\n		<a href="art-$i-$j ($k).png"><img class="produit" src="art-$i-$j ($k).png"></a>\n			<div>\n				<table><tr>\n					<td><div class="haut">$(precis[k])</div></td><td><div class="hauteurs">$(prix[k]) fcfa</div></td></tr>\n				</table>\n			</div>\n			<div class="hauteur">$(produit[k])</div>\n			<hr>\n	</button>\n\n""")
        end
        global point += 1
    end
    write(pages, "\n$liste\n")
    global point = 1
    global somme += nbre_sous_rubrique[i]
end
foot = """<span id="basdepage"></span>\n<footer class="fixe full">\n   \n    <div id="liens">\n        <button class="rubrics">\n            <a href="mailto:$email"><img class="contact" src="vmail.png"></a>\n            <a href="https://wa.me/+237$whatsapp/"><img class="contact" src="whtsp.png"></a>\n            <a href="https://t.me/+237$telegram/"><img class="contact" src="vtlgrm.png"></a>\n            <a href="https://m.me/+237$messenger/"><img class="contact" src="vmsg.png"></a>\n        </button>\n        <button class="rubricss">\n            <a href="https://viaa.me/"><img class="contacts" src="viaa.png"></a>\n            <img class="contacts" src="vendeur.png">\n            <a href="https://viaa.me/"><img class="contacts" src="vshop.png"></a>\n        </button>\n        <button class="rubricsss">\n            <a href="$playlink"><img class="apps" src="vplay.png"></a>\n            <a href="$applink"><img class="apps" src="vapp.png"></a>\n        </button>\n    </div>\n</footer>  \n\n    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>\n    <script src="search.js"></script>                \n</body>\n</html>"""
write(pages, "$foot\n")
close(pages)

fichiers = open("ready","r")
while !eof(fichiers)
    lettre = read(fichiers, Char)
    print("$lettre")
    sleep(0.015)
end
close(fichiers)
rm("readyScript")
rm("edite")
rm("ready")
rm("messages")
