using Pkg
function chat(message, temps::Float64)
    texte = open("file","w")
    write(texte, message)
    write(texte, "\n")
    close(texte)
    texte = open("file","r")
    while !eof(texte)
        lettre = read(texte, Char)
        print(lettre)
        sleep(temps)
    end
    close(texte)
    rm("file")
end
function running(fileName::String, t::Integer = 0)
    if Sys.iswindows()
        go = string(pwd(), "\\$fileName")
        commande = `$go`
    elseif Sys.islinux()
        commande = `bash $fileName`
    elseif Sys.isapple()
        chat("It's even no settings for apple systems !\nYou can reach our developer at toolsgifts@gmail.com", 0.011)
    end
    sleep(t)
    run(commande)
end
function bip(touche::String)
    if Sys.iswindows()
        write("erl.cmd", "@echo off\nchoice /c $touche /n")
        try
            running("erl.cmd")
        catch
            
        finally
            rm("erl.cmd")
        end
    end
end
function cmd(command::String, t::Integer = 0)
    write("cmds.cmd", command)
    sleep(t)
    running("cmds.cmd")
    rm("cmds.cmd")
end
function planTask(taskName::String, taskPath::String, startTime::String, t::Integer = 0)
    if Sys.iswindows()
        write("go.cmd", """schtasks /create /sc daily /tn "$taskName" /tr $taskPath /st $startTime """)
        sleep(t)
        running("go.cmd")
        rm("go.cmd")
    elseif Sys.islinux() || Sys.isapple()
        chat("fonctionnalité non prise en charge pour les systèmes UNIX et iOS", 0.011)
    end
end
function deleteTask(taskName::String, t::Integer = 0)
    if Sys.iswindows()
        write("go.cmd", """schtasks /delete /tn "$taskName" """)
        sleep(t)
        running("go.cmd")
        rm("go.cmd")
    elseif Sys.islinux() || Sys.isapple()
        chat("fonctionnalité non prise en charge pour les systèmes UNIX et iOS", 0.011)
    end
end
function runTask(taskName::String, t::Integer = 0)
    if Sys.iswindows()
        write("go.cmd", """schtasks /run /tn "$taskName" """)
        sleep(t)
        running("go.cmd")
        rm("go.cmd")
    elseif Sys.islinux() || Sys.isapple()
        chat("fonctionnalité non prise en charge pour les systèmes UNIX et iOS", 0.011)
    end
end
function killTask(taskName::String, t::Integer = 0)
    if Sys.iswindows()
        write("go.cmd", "taskkill /f /im $taskName /t")
        sleep(t)
        running("go.cmd")
        rm("go.cmd")
    elseif Sys.islinux() || Sys.isapple()
        chat("fonctionnalité non prise en charge pour les systèmes UNIX et iOS", 0.011)
    end
end
function shutdown(t::Integer = 0)
    if Sys.iswindows()
        write("go.cmd", "title Algo.rush console\n@echo off\nshutdown /s")
        sleep(t)
        running("go.cmd")
        rm("go.cmd")
    elseif Sys.islinux() || Sys.isapple()
        chat("fonctionnalité non prise en charge pour les systèmes UNIX et iOS", 0.011)
    end
end
function lockNow(t::Integer = 0)
    if Sys.iswindows()
        write("go.cmd", "title Algo.rush console\n@echo off\nshutdown /l")
        sleep(t)
        running("go.cmd")
        rm("go.cmd")
    elseif Sys.islinux() || Sys.isapple()
        chat("fonctionnalité non prise en charge pour les systèmes UNIX et iOS", 0.011)
    end
end
function restart(t::Integer = 0)
    if Sys.iswindows()
        write("go.cmd", "title Algo.rush console\n@echo off\nshutdown /r")
        sleep(t)
        running("go.cmd")
        rm("go.cmd")
    elseif Sys.islinux() || Sys.isapple()
        chat("fonctionnalité non prise en charge pour les systèmes UNIX et iOS", 0.011)
    end
end
function annuler(t::Integer = 0)
    if Sys.iswindows()
        write("go.cmd", "title Algo.rush console\n@echo off\nshutdown /a")
        sleep(t)
        running("go.cmd")
        rm("go.cmd")
    elseif Sys.islinux() || Sys.isapple()
        chat("fonctionnalité non prise en charge pour les systèmes UNIX et iOS", 0.011)
    end
end
function itineraire(hote::String, t::Integer = 0)
    if Sys.iswindows()
        try
            cmd("tracert $hote")
        catch

        end
        if isfile("cmds.cmd")
            rm("cmds.cmd")
        end
    elseif Sys.islinux() || Sys.isapple()
        chat("Fonctionnalité non prise en charge pour les systèmes UNIX et iOS", 0.01)
    end
end
function Randy_same_packs()
    nombre = 0
    packs = ["LaTeXStrings";"Juno"; "Knet"; "TextParse"; "HTTP"; "Publish"; "MAT"; "MLDatasets"; "SpecialFunctions"; "HDF5"; "DSP"; "PDFIO"; "Polynomials"; "ExcelReaders"; "Distributions"; "Gadfly"; "Nullables"; "MemPool"; "FileIO"; "SymPy"; "PooledArrays"; "Taro"; "RData"; "ScikitLearn"; "IndexedTables"; "Glob"; "VideoIO"; "PlotThemes"; "RecipesBase"; "Combinatorics"; "CSV"; "TimeZones"; "PyCall"; "BinaryProvider"; "Genie"; "JSON"; "GenericLinearAlgebra"; "CSVFiles"; "StatsBase"; "PolynomialRoots"; "Atom"; "IJulia"; "Roots"; "BenchmarkTools"; "Flux"; "InverseFunctions"; "StatsPlots"; "Plots"; "Tables"; "Conda"; "Pluto"; "OnlineStatsBase"; "WeakRefStrings"; "DifferentialEquations"; "Hecke"; "UpdateJulia"; "OnlineStats"; "DataValues"; "Dagger"; "EcoSISTEM"]
    for pack in packs
        try
            Pkg.update(pack)
            nombre += 1
            chat("\n$nombre / $(length(packs)) paquets à jour\n", 0.011)
        catch
            Pkg.add(pack)
            nombre += 1
            chat("\n$nombre / $(length(packs)) paquets installés\n", 0.011)
        finally
            Pkg.update(pack)
            chat("\n$nombre / $(length(packs)) paquets installés et à jour\n", 0.011)
        end
    end
end
function checkChar(caractere::Char, fichier::String)
    occurrence = 0
    file = open(fichier,"r")
    while !eof(file)
        carac = read(file, Char)
        if carac == caractere
            occurrence += 1
        end
    end
    close(file)
    return occurrence
end
function checkString(chaine::String, fichier::String)
    file = open(fichier,"r")
    word = ""
    for i in eachline(file)
       word = string(word, i, "|")
    end
    close(file)
    word = replace(word, " "=>"|")
    word = replace(word, ","=>"|")
    word = replace(word, "||"=>"|")
    word = replace(word, "|||"=>"|")
    word = replace(word, "||||"=>"|")
    word = split(word, "|")
    occurrence = 0
    for i in word
        if uppercase(i) == uppercase(chaine) || occursin(uppercase(chaine), uppercase(i))
            occurrence += 1
        end
    end
    return occurrence
end
function checkWord(chaine::String, fichier::String)
    file = open(fichier,"r")
    word = ""
    for i in eachline(file)
       word = string(word, i, "|")
    end
    close(file)
    word = replace(word, " "=>"|")
    word = replace(word, ","=>"|")
    word = replace(word, "||"=>"|")
    word = replace(word, "|||"=>"|")
    word = replace(word, "||||"=>"|")
    word = split(word, "|")
    occurrence = 0
    for i in word
        if uppercase(i) == uppercase(chaine)
            occurrence += 1
        end
    end
    return occurrence
end
function loadLink(link::String, bashLocation::String = "bin/bash")
    if Sys.iswindows()
        write("go.cmd", """\n    @echo off\n    set URL=$link\n    start "" "%URL%"\n    """)
        go = "go.cmd"
    elseif Sys.islinux()
        write("go.sh", """\n    #! $bashLocation\n    URL="$link"\n    xdg-open "\$URL"\n    """)
        go = "go.sh"
    elseif Sys.isapple()
        chat("It's even no settings for apple systems !\nYou can reach our developer at toolsgifts@gmail.com", 0.011)
    end
    running(go)
    rm(go)
end
function loadSite(site::String, bashLocation::String = "bin/bash")
    loadLink("https://$site")
end
function start(path::String)
    repere = pwd()
    if Sys.iswindows()
        write("start.cmd", "@echo off\n start $path")
        running("start.cmd")
        rm("start.cmd")
    elseif Sys.islinux()
        pathed = splitpath(path)
        if length(pathed) > 1
            cd(joinpath(pathed[begin:end-1]))
            point = getindex(pathed, lastindex(pathed))
            commande = `xdg-open $point`
        else
            commande = `xdg-open $path`
        end
        run(commande)
    elseif Sys.isapple()
        chat("Fonctionnalité pour iOS non prise en charge", 0.011)
    end
    cd(repere)
end
function writeln(io::AbstractString, contenu::String)
    write(io, "$contenu\n")
end
