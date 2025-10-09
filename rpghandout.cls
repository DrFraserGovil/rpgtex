%% THe RPG-handout class is used for short-form documents
%%It activates the rpg geometry, but unlike rpgbook, does not activate elaborate title or part pages

\RequirePackage {expl3}
\ProvidesExplClass{rpghandout}{2025/10/09} {0.0.0} { Template for RPG material }


\bool_new:N \c__rpg_isclass_bool
\bool_set_true:N \c__rpg_isclass_bool

% Pass unknown options to the handour class (e.g., twocolumn, 10pt)
\DeclareOption*
{
    \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass {article}

\RequirePackage{rpg}

%%overload title stuff here? Otherwise fairly basic
\pagestyle{empty}