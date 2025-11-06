# RPG LaTeX Template

<!-- [![Latest release](https://img.shields.io/github/release/rpgtex/DND-5e-LaTeX-Template/all.svg)](https://github.com/rpgtex/DND-5e-LaTeX-Template/releases/latest)
[![Build Status](https://img.shields.io/circleci/project/github/rpgtex/DND-5e-LaTeX-Template/master.svg?style=flat)](https://circleci.com/gh/rpgtex/DND-5e-LaTeX-Template) -->

This is a LaTeX template for typesetting documents for Roleplaying Games of all types. `rpgtex` consists of a central 'core' which defines a number of useful commands and classes and an interface by which 'themes' may be loaded to modify the visual appearance -- we provide three basic themes (default, dnd and scifi).



## Features

(Some things that need to be written!)

## Usage

We provide detailed documentation for this package, including installation and configuration. This documentation is
[found here](https://raw.githubusercontent.com/DrFraserGovil/rpgtex/dev/docs/documentation.pdf). The following is a brief summary to get you started.

We assume you are familiar with basic LaTeX usage, and have a working installation. If you are not, we recommend [familiarising yourself first](https://latex-tutorial.com/tutorials/).

### Installation & Configuration

We recommend installing via cloning into your `texmf` path
```
   git clone https://github.com/DrFraserGovil/rpgtex.git "$(kpsewhich -var-value TEXMFHOME)/tex/latex/rpgtex"
```

This location will depend on your latex installation, but will most likely install the template for your current user in one of the following locations:

* Linux: `~/.texmf/tex/latex` (or `~/texmf/tex/latex/`)
* OS X / macOS: `~/Library/texmf/tex/latex`
* Windows: `C:\Users\{username}\texmf\tex\latex`

### Configuration

It is necessary to configure the package so that it is aware of its installation directory. We provide [a script](https://github.com/DrFraserGovil/rpgtex/blob/dev/configure) which does this, or users can manually create a file named `rpg-config.cfg` within `core` with the contents:
```
  \edef{RpgPackagePath}{~/path/to/installation/location}
```
If this file is not located, the document will throw an error and will not compile.

### Compilation

Documents which import `rpgtex` must be compiled with `xelatex` or `luatex`, since the package makes use of the `fontspec` package to load custom typefaces.

<!--
## Usage

### Class (recommended)

Load the `dndbook` class in your preamble:

```tex
\documentclass[10pt,twoside,twocolumn,openany,nodeprecatedcode]{dndbook}

\usepackage[english]{babel}
\usepackage[utf8]{inputenc}

\begin{document}
% ...
```

### Package

You can also load the `dnd` package directly to use it with another class.
Note that the package has only been tested with the `book` class.

```tex
\documentclass[10pt,twoside,twocolumn,openany]{book}

\usepackage[english]{babel}
\usepackage[utf8]{inputenc}

\usepackage[layout=true]{dnd}

\begin{document}
% ...
```

### Options

| Option         | Package `dnd`   | Class `dndbook`   |
| -------------- | :-------------: | :---------------: |
| `bg`           | ✓               | ✓                 |
| `justified`    | ✓               | ✓                 |
| `layout`       | ✓               |                   |
| `nomultitoc`   | ✓               | ✓                 |
| `nodeprecatedcode`   | ✓               | ✓                 |

The `dndbook` class also supports all the options of the `book` class.

#### `bg`

Declare how to load background and footer images. This is a key-value option with the following possible values:

* `full`: Load both background and footer images. (**default**)
* `none`: Removes both background and footer images.
* `print`: Loads only the footer images.

#### `justified`

Justify column copy.

#### `layout`

Controls whether loading the `dnd` package also modifies the document layout (geometry, colors, typography, etc.).
This is a boolean option with the following possible values:

* `true`: Modify the document layout.
* `false`: Do not modify the document layout.

The default value is `true` for backwards compatibility with early releases.
This will change in a future release.

#### `nomultitoc`

Disable multi-column table of contents.

#### `nodeprecatedcode`

Excludes all deprecated code from the build process.

## Dependencies

If you don't have LaTeX installed, we recommend installing a complete [TeX Live distribution](https://www.tug.org/texlive/).
-->

## Credits


* Background image from [Lost and Taken](https://lostandtaken.com/)
* Original code from [the rpglatex project](https://github.com/rpgtex/DND-5e-LaTeX-Template)

This project is forked from [rpglatex's D&D 5e template](https://github.com/rpgtex/DND-5e-LaTeX-Template). Much of the technical aspect of this library is credited solely to them.

The modifications made here serve to update the D&D aspects of the library to a more modern format (D&D24), and decouple some of the core engines to allow more flexibility in style; thus allowing the scifi library to exist alongside.

For simplicity and streamlining much of the localisation code has been removed. A future project may reimplement this.


## License

MIT
