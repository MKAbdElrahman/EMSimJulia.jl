using EMSimJulia
using Documenter

DocMeta.setdocmeta!(EMSimJulia, :DocTestSetup, :(using EMSimJulia); recursive=true)

makedocs(;
    modules=[EMSimJulia],
    authors="Mohamed Kamal AbdElrahman",
    repo="https://github.com/MKAbdElrahman/EMSimJulia.jl/blob/{commit}{path}#{line}",
    sitename="EMSimJulia.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://MKAbdElrahman.github.io/EMSimJulia.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/MKAbdElrahman/EMSimJulia.jl",
    devbranch="main",
)
