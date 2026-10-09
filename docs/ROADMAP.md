# Development Roadmap

This is a 'to do list' of features which are incomplete, in the works, or otherwise on my radar to add in the future. 

## Required Features

Features which *must* be added before the next major release

* Revamp the example documents (leave this until the end)

## Before Release

Smaller jobs left over from the documentation rewrite.

### Testing

* Overleaf: does a clean upload compile without the configuration step? Do classes in `classes/` need a `latexmkrc` (`ensure_path('TEXINPUTS', './classes//');`)? Is the repository within Overleaf's size limits?
* rpgdeck: the subpreamble behaviour (shared definitions; whether a second compilation is needed)
* rpgcard: whether screen mode passes `size` through to `standalone`

## Desired Features

Features which would improve the package

* RpgClocks
* Character sheet interface/class
* Encounter tables / random tables / dice tables
* Circle/dot producers & fill-ins (i.e. for FitD skills)
* A rpgdeck-maker, which automatically assembles card files into a deck meeting some criteria (`rpgdeck` can already gather `rpgcard` documents; the automatic selection is still to do)

### Low Priority

These are some desired features which are on the radar, but probably won't be high up my to-do list

* Inline text localisation (or `theme localisation'). A start: the dnd legendary and mythic text is held in `\rpgstring...` commands, which can be redefined; the rest of the statblock text is still hard-coded.

## Internal Mechanics

Features which would improve the developer experience, but would not affect the user interface

* Optional, deferred: remove the old commercial fonts from the git history with `git filter-repo`
