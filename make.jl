using Pkg
Pkg.activate(@__DIR__)

using ObsidianXranklin

ObsidianXranklin.sync_vault("vault", ".";
    output_dir = "notes",
    index_note = "bonham-lab-wiki",
)
