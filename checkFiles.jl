    message = open("rough","a")
    write(message, "Bonjour à vous !\n  1. Ouvrez le ficher info qui vient d'être créé.\n     Indiquez-y le nombre de rubriques que comportera\n       le site-vitrine en question\n\n  2.  Ouvrez le fichier rubric qui vient d'être créé et indiquez-y\n   les titres des rubriques et les nombres de sous-rubriques\n  qu'elles comportent respectivement\n\n            Pressez la touche c lorsque vous l'aurez indiqué.\n")
    close(message)    

try
    infos = open("info","r")
    rubrics = open("rubric","r")
    info = readlines(infos)
    rubric = readlines(rubrics)
    close(infos)
    close(rubrics)
catch
    fichier = open("rough","r")
    while !eof(fichier)
        lettre = read(fichier, Char)
        print("$lettre")
        sleep(0.015)
    end
    close(fichier)
    infos = open("info","a")
    rubrics = open("rubric","a")
    close(infos)
    close(rubrics)
    while uppercase(readline()) != "C"
        println("Tapez la touche c puis valider sur ENTRER pour continuer s'il vous plaît\n")        
    end
end

rm("rough")