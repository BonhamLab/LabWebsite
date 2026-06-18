website_title = "Bonham Lab"
website_descr = "Website for the Bonham Lab at Tufts Medical Center"
website_url = "http://bonhamlab.bio/"

author = "Kevin Bonham, PhD"

ignore = [
    r"vault/.*\.(png|jpg|jpeg|gif|svg|webp|pdf)$",  # vault media → copied by setup_vault
    r"\.base$",                                        # Obsidian Bases files (not pages)
    r"vault/Templates/",                               # Obsidian templates
    r"vault/Attachments/",                             # Attachments folder
    "CLAUDE.md",
]

obsidian_home = "bonham-lab-wiki"

vault_output_subdir = "vault"   # URL prefix for vault notes: /vault/<slug>/
# vault_assets_subdir defaults to vault_output_subdir when not set

vault_skip_folders = ["Templates/", "Attachments/"]
