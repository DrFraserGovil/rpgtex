# Changelog

<!-- All notable changes to this project will be documented in this file. -->

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [Unreleased]

#### Themes



### Added

* The `rpgdeck` and `rpgcard` classes have been realised (finally). RpgCard is a neat standalone environment, whilst deck is similar to the `rpghandout`, but automatically enters cardmode, and has the aility to use `standalone` package to aggregate `rpgcard` documents - hence `deck`.
* Theme documentation (including tweaking some of the parameters as they were explicitly used for the first time.) 
	* Provided a convenient interface for fully documenting the fonts dynamically: the font-tables will always display the values assigned to each element at the time of compiling.
	* Color-swatches added for full visualisation
	* default fully documented
	* dnd almost completed
* Provided the default values for RpgItem, RpgFeat, RpgSpell and RpgStat
* dnd RpgFeat and RpgItem finalised
* The dnd version of RpgSpell now has some helper functions which print the upcasting and cantrip scaling 


## Changed

* RpgPlural modified to have a starred version which omits the counter number.

<!-- ## Removed -->

## 0.5.0 (2025-11-16)

### Major Renaming Effort

A major renaming effort has been undertaking to give the objects a more consistent interface: RpgSetItem has been renamed to RpgItemSet, and so on. This makes looking things up in the index simpler, and gives a 'branching' structure to the names, which is necessary given how many things with 'similar' names we have provided.

### Feature Forge

The full power of the SwitchEnv has been leveraged to create the `FeatureForge` system which allows a designed to rapidly create an environment with key/value hooks, a text mode and a card mode and a number of other properties, all with a single function call (`RpgMakeFeature`).

This is some neat tex metaprogramming that makes use of expl3's ability to programmatcially create macro names. 

### Other Features

* RpgMap interface changed; replaced RpgArea and RpgNestedArea with a simple `area` command which can be used either as a command or an environment, with different behaviours in each. The interface has been simplified to be more similar to a standard latex list

* RpgTable has a `simple` command [undocumented!] which uses `tabular` rather than `tabularx` or `lxtabular`; enables variable-width tables which can be useful in some cases. 

## 0.4.0 (2025-11-08)

### Core Functionality

* Automatic configuration added, removing the need for `configure`

    * rpglatex now auto-injects the RpgPackagePath definition directly

    * As a fallback, rpglatex can use `write18` to dispatch a system call (if `--shell-escape` enabled), writing its own `rpg-config.cfg` file. The documentation now explains this and there's a very verbose error message walking users through how to enable automatic configuration.


### New Environments


* **RpgSwitchEnv**: Formalised the RpgCardSwitch into a robust switch-based interface

* **RpgSecret**: A method for toggle text in and out of being visible, and giving the GM both the real text and the 'lie'

* **RpgItem**: A robust interface for items, both as plain text and as RpgCard elements

    * Implemented the dnd implementation of the RpgItem

### Documentation

* Spun documentation off into its own branch, to formalise that its a separate task than development

* Moved CHANGELOG into the docs folder where it belongs

* Created the ROADMAP document as a formalised 'to do list'

* Rejigged the ordering of things to better enforce a 'user' vs 'designer' paradigm split

## 0.3.1 (2025-11-06)

* Restructured the README to provide some nice backgrounds (released so that links would work as expected)

## 0.3.0 (2025-11-06)

### Added

* A more robust command line interface beyond simple background setting

* Added the rpglatex compiler as a shipped element, and documented it

* RpgMap and RpgArea interface and labelling system completely overhauled and switched to an environment based system

* Added a programmatic interface for RpgSetFooterDecoration

* RpgCard and RpgSwitchCard objects and extensive backend

* RpgSpell in the dnd theme 

* A more robust interface for 'function redefinitions' instead of relying on Renewing commands

* Generalised section name-getters (RpgChapterName etc) to replace the hacky scifi-theme's redefinition of \chapter.

* RpgFakeChapter to spoof chapters in for (i.e.) whole page images that want to show up on the table of contents

* An emphasis font/hook

* Added the abstract/summary environment to the rpghandout & associated fonts

* Added a oneside interface (inspired by the fact that the documentation needs it)

### Changed

* Cleaned up the command line interface into a consistent terminology: `RpgCMD`, and set it to override document-provided commands

* Overhauled the documentation internal structuring and formatting. 

### Bugfix

* Fixed bug in dnd/diceformat which double-rendered the dice count

* Fixed bug where dnd/font did not load bookman properly

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
