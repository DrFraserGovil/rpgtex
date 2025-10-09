%% THe RPG-book class is used for writing long-form documents
%%It activates the rpg geometry, and overloads title pages and part pages to the theme-determined options 

\RequirePackage {expl3}
\ProvidesExplClass{rpgbook}{2025/10/09} {0.0.0} { Template for RPG material }


\bool_new:N \c__rpg_isclass_bool
\bool_set_true:N \c__rpg_isclass_bool

% Pass unknown options to the book class (e.g., twocolumn, 10pt)
\DeclareOption*
{
    \PassOptionsToClass{\CurrentOption}{extbook}
}
\ProcessOptions\relax
\LoadClass {extbook}

\RequirePackage{rpg}


%% Define custom title page and part page stuff here