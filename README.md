# Linux Resolution Fix Reforged

Fork of LinuxResolutionFix by **maqisha** (MIT), extended to every official WoW client and to all of the game's languages.

**If your resolution is not wrongly set to "Custom" on launch, this addon is not for you.**

## The bug

On some Linux setups (Wine / Proton / Lutris / Heroic, GNOME, Wayland…):

1. You launch the game.
2. The game is not truly fullscreen (top bar / taskbar still visible).
3. In the settings, the resolution shows "Custom" while in "Windowed (Fullscreen)".
4. Setting your native resolution fixes it…
5. …until the next launch.

The addon detects step 3 at login and shows a **Fix Resolution** button that applies the right size in one click.

When `gxMaximize` is enabled, the button briefly switches to a smaller window before
restoring fullscreen at the target resolution. This handles setups where resizing
alone leaves the desktop's top bar visible. The operation takes about two seconds;
the addon then reports whether the target resolution was reached.

## Features

- **All official clients**: Midnight (Retail), Mists of Pandaria Classic, Burning Crusade Classic, Classic Era / Anniversary, WoW: Forever, plus their test realms. The addon picks the available API at runtime; if a client lacks it, the addon prints a message and stays inactive.
- **All 11 game languages**: enUS/enGB, frFR, deDE, esES, esMX, itIT, ptBR, ruRU, koKR, zhCN, zhTW.
- **`/lrf`** slash command to re-check the resolution manually.

## Updating for a new patch

Add the client's interface number to the `## Interface:` line of the `.toc` (comma-separated). In game:

```
/dump select(4, GetBuildInfo())
```

## Installation

Copy the `LinuxResolutionFixReforged` folder into `World of Warcraft/<game version folder>/Interface/AddOns/` (e.g. `_retail_`, `_classic_`, `_classic_era_`).

## Credits

Original idea and code: maqisha — LinuxResolutionFix (MIT License).
