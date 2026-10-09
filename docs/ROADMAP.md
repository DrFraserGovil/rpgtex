# Development Roadmap

This is a 'to do list' of features which are incomplete, in the works, or otherwise on my radar to add in the future. 

## Required Features

Features which *must* be added before the next major release

* Revamp the example documents (leave this until the end)

## Before Release

Smaller jobs left over from the documentation rewrite.

### Documentation

* Index: check the 'see' entries
* Delete dead files:
    * the unused examples: `env-full-featureforge`, `cmd-cover`, `env-map-basic`, `env-secret-basic`, `env-table-basic`, `env-filigree-cmd` and `env-filigree-env`

### Code

* scifi: `MidGray` is defined but never used; keep it or delete it
* scifi: `\RpgIfColoursEqual` is a general-purpose public command, but it only exists while the scifi theme is loaded; move it to core, or make it internal
* dnd: in legacy mode, the `filigree` option draws a black filigree over the gold ribbons
* Creating a rule environment a second time adds a duplicate entry to `\__rpg_CardSwitches` (`make-env.rpg-code.tex`)
* Class defaults (such as `font` in rpgbook) cannot be switched off: document that this is deliberate, or add 'off' forms

### README & Changelog

* README: replace the old configuration text and the link to the `configure` script, and update the options list to match the Options chapter
* README: make the Dependencies and Credits sections match the Dependencies appendix and `LICENSE`
* CHANGELOG entries for:
    * the kpsewhich auto-configuration, the new appendices and the bug fixes
    * a short mea culpa about the removed commercial fonts
    * the renamed statblock colours (`StatblockRule`, `StatblockHeading`, `StatblockFrame`, `StatblockBackground`), and `outline-color` → `frame-color` (with the old name kept as an alias)
    * `\rpgstringlegendarySpeil` → `\rpgstringlegendarySpiel`, and the scifi font `\starTrek` → `\galaxy`
    * the new `rpgstatbox` style for the dnd statblock frame
    * parts can now be labelled, and their contents entries link to the part page
    * the default theme now resets part numbering to Roman numerals
    * the documentation is now complete (the current entry says "dnd almost completed")

### Testing

* Overleaf: does a clean upload compile without the configuration step? Do classes in `classes/` need a `latexmkrc` (`ensure_path('TEXINPUTS', './classes//');`)? Is the repository within Overleaf's size limits?
* MiKTeX: does restricted mode allow kpsewhich? Update the Windows notes either way
* rpgdeck: the subpreamble behaviour (shared definitions; whether a second compilation is needed)
* rpgcard: whether screen mode passes `size` through to `standalone`
* Check the two nga.gov links in the Image Credits appendix, and that the images are CC0
* Confirm the uncertain `tlmgr` package names in the Dependencies appendix (`nameref` → `hyperref`, `fontenc` → `latex`)
* Check the CC0 badge on the FontStruct page for Galaxy Edge

## Desired Features

Features which would improve the package

* RpgClocks
* ~~RpgStat card-mode for d&d.~~
* Character sheet interface/class
* Encounter tables / random tables / dice tables
* ~~Full page images~~ (`\RpgWholePageImage`) / landscape support
* ~~`Fancy box' (i.e. the D&D class table wrapper environment)~~ (the dnd filigree frame)
* Circle/dot producers & fill-ins (i.e. for FitD skills)
* A rpgdeck-maker, which automatically assembles card files into a deck meeting some criteria (`rpgdeck` can already gather `rpgcard` documents; the automatic selection is still to do)

### Low Priority

These are some desired features which are on the radar, but probably won't be high up my to-do list

* Inline text localisation (or `theme localisation'). A start: the dnd legendary and mythic text is held in `\rpgstring...` commands, which can be redefined; the rest of the statblock text is still hard-coded.

## Internal Mechanics

Features which would improve the developer experience, but would not affect the user interface

* Optional, deferred: remove the old commercial fonts from the git history with `git filter-repo`
