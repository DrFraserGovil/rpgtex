# Style Guide

It is helpful to enforce some consistent styling rules to be used throughout this project


## Naming Conventions
### User Facing Code

* All global-scope user-facing code begins with the prefix `\Rpg`
* Exceptions are allowed for locally redefined functions (the `\area` function/environment for RpgMaps, for example)

### Internal Code

* LaTeX3 variables are named according to the following rules:
    * If not intended for public access, the name begins `\__rpg_`, if a user may modify it, `\rpg_`
    * An optional sub-namespace may be provided in the form `module_`: but if one variable gets a sub-namespace, then all variables in that submodule must use one.
    * The variable name itself uses CamelCase if it is a global variable, camelCase if local
    * Variable type may be appended for disambiguation purposes (`__bool`), but is not required

## Code Formatting 

* Braces use Allman-style formatting, with each nested level indented
* When defining large blocks of variables, use whitespace/tabs to align them visually
