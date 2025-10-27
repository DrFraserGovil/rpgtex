# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## 0.2.0 (2025-10-27)

### Added

* RpgPage macro for automatic page \pageref formatting

* RpgSetTheme for theme management

* RpgUseCoverPage for cover page management

* `clear` pagestyle, allowing for differentiation between 'clear' and 'empty'/

* RpgSetPaper for easy paper-texture management

### Changed

* Minor stylistic changes to make the linter happy

* Migrated most of the ugly expl3 internal implementations into the /core/lowlevel directory to improve readability of the main modules.

* Changed (and renamed) RpgDrawPart page, abstracting the background image handling to the engine wrapper.

* Defined a global default colour value for the contour inner and outer colours

* Changed the argument signature of RpgSetFont to take a {} rather than []

* Changed the 'main font' syntax, and set RpgSetFont to override the main body font

* Overhauled RpgContour to accept key/value arguments and properly allow contouring of formatted text.

* Added breakable option to the RpgTable

* Overhauled and unified the internal mechanics of RpgTip, RpgSidebar and RpgNarration

#### RpgDice

* Altered the regular expression capture/evaluate to allow arbitrary numerical evaluation of modifiers, and non-counted dice (i.e. d8 -> 1d8)

* Changed the behaviour of RpgDiceFormat to take only three arguments (and shifted the mean-calculation into the dnd-specific implementation)

* Wrote documentation for functions

### Bugfix

* The newline handling in RpgContour has been overhauled to fix a bug where style-altering code would cause a compilation error

## Version 0.1.0 (2025-10-22)

### Added

* More robust (and human-friendly) layout-modifying isolation

#### Documentation

* Created main documentation structure
* Wrote download/installation instructions (cribbing from initial DnD-5e template instructions)
* Wrote package/class usage instructions

### Bugfixes

* Removed trailing semicolon from pagenumber in default theme

* Set initial theme to 'default' not 'dnd'

* Switched rpgbook base-class back to book (from extbook) due to blank pages being inserted after part pages

## Version 0.0.0 (2025-10-22)

This initial version is a complete refactoring of the base [rpglatex's D&D 5e template](https://github.com/rpgtex/DND-5e-LaTeX-Template) library, including a wholesale overhaul of the API.

### Added

* Theme-engine split, abstracting specific implementation details from the core engine

    * Current supported themes are ```default```, ```dnd``` and ```scifi```.

* Switched to a xelatex-only system with fonts saved locally, rather than relying on system fonts or latex-defaults.

* Added a ```rpghandout``` and (currently unsupported) ```rpgcard``` class to supplement ```rpgbook```.

* Generated example code and documentation

* Implemented ```\RpgPackagePath``` and a ```configure``` script that allows the package to use relative paths within the package, without needing the main tex document needing to know where the package is installed.

### Changed

#### Core engine
* Rewrote supporting documentation (README, CHANGELOG) etc. to reflect the new fork & its priorities

* Removed explicit references to D&D from filenames and commands; changed to 'Rpg' in most instances.

#### dndmonster
* Shifted to the dnd theme, rather than part of the core engine.

* attack and spellcasting commands now automatically computes modifiers using a stat-lookup system.

* combined the 'details' and 'basics' settings into a single command (so that initiative could be computed from dexterity)

* Changed the styling to reflect D&D24 changes, and added some different information

### Removed

* Removed localisation strings - localisation is now considered a part of a theme, and it simplifies the code considerably.
