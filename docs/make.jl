using Documenter, GeoStats

# manually handle dependencies until
# Documenter.jl issue #534 is solved
using Pkg; Pkg.add(["Plots","GR"])

makedocs(
  format = :html,
  sitename = "GeoStats.jl",
  authors = "Júlio Hoffimann Mendes",
  assets = ["assets/style.css"],
  pages = [
    "Home" => "index.md",
    "Manual" => [
      "Problems and solvers" => "problems_and_solvers.md",
      "Spatial data" => "spatialdata.md",
      "Domains" => "domains.md",
      "Variography" => [
        "empirical_variograms.md",
        "theoretical_variograms.md",
        "fitting_variograms.md"
      ],
      "Kriging estimators" => "estimators.md",
      "Solver comparisons" => "comparisons.md",
      "Plotting" => "plotting.md"
    ],
    "Examples" => "examples.md",
    "Contributing" => "contributing.md",
    "About" => [
      "Community" => "about/community.md",
      "License" => "about/license.md",
      "Citing" => "about/citing.md"
    ]
  ]
)

deploydocs(
  repo  = "github.com/juliohm/GeoStats.jl.git",
  target = "build",
  deps = nothing,
  make = nothing,
  julia = "1.0"
)
