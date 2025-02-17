on open theFiles
    set juliaCheck to do shell script "which julia || echo 'missing'"
    
    if juliaCheck is "missing" then
        display dialog "Julia is not installed. Installing via Juliaup..." buttons {"OK"} default button "OK"
        
        -- Install Julia via Juliaup
        do shell script "curl -fsSL https://install.julialang.org | sh" with administrator privileges
        
        -- Ensure Julia is available in the shell
        do shell script "export PATH=\"$HOME/.juliaup/bin:$PATH\""
    end if
    
    -- Define Julia path (assuming installed via juliaup)
    set juliaPath to "$HOME/.juliaup/bin/julia"
    
    -- Ensure required packages are installed
    set installPackages to "
        using Pkg
        packages = [\"Pluto\", \"PlutoUI\", \"JSON\", \"PlutoTest\"]
        for pkg in packages
            if !haskey(Pkg.project().dependencies, pkg)
                println(\"Installing \", pkg)
                Pkg.add(pkg)
            end
        end
    "
    
    do shell script juliaPath & " -e '" & installPackages & "'"

    -- Run Pluto with the dropped notebook
    set plutoCommand to "using Pluto; Pluto.run(\"" & POSIX path of (item 1 of theFiles) & "\")"
    
    tell application "Terminal"
        do script juliaPath & " -e '" & plutoCommand & "'"
        activate
    end tell
end open
