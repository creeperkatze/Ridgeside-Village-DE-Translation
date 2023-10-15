# Ridgeside Village - German (de) Translation

# Requirements

[Ridgeside Village](https://www.nexusmods.com/stardewvalley/mods/7286) v2.5.3

# Usage

Download archive from releases or at [Nexusmods](https://www.nexusmods.com/stardewvalley/mods/TODO).

Extract the contents to the Ridgeside Village [mod folder](https://ridgeside.fandom.com/wiki/Install_Guide#First-time_install) and leave out the folders that you don't need.

```
Stardew Valley
└── Mods
    └── Ridgeside Village
        ├── [CC] Ridgeside Village
        ├── [CP] Ridgeside Village
        ├── [JA] Ridgeside Village
        ├── [MFM] Ridgeside Village
        ├── [STF] Ridgeside Village
        └── Ridgeside Village
```

# Create new version

- Draft a new release in Github
  - Create a new tag with incremented version
  - Target: main
  - Add release notes
- Pull main branch locally or just fetch tags locally
- Run shellscript and pass in the new tag
  - e.g. `./create-nexus-archives-from-tag.sh 0.0.6`
- Upload archives to Nexusmods
  - only need to upload those that contain changes
