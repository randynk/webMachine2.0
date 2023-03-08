message = open("rough","w")
write(message, "  Vous pouvez à présent indiquer les intitulés\n  des sous-rubriques et leurs effectifs\n   dans les fichiers qui viennent d'être créés\n\n")
close(message)

try
    rubrics = open("info","r")
    nbre = readline(rubrics)
    close(rubrics)
    nbre = parse(Int64, nbre)
    for i in 1:nbre
        rubric = open("rubric-$i","a")
        close(rubric)
    end    
    fichier = open("rough","r")
    while !eof(fichier)
        lettre = read(fichier, Char)
        print("$lettre")
        sleep(0.015)
    end
    close(fichier)        
catch
    print("Quelque chose ne fonctionne pas bien")
    exit()
end

rm("rough")