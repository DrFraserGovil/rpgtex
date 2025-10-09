%% THe RPG-card is used for short, tactile printouts in a playing-card format


\RequirePackage {expl3}
\ProvidesExplPackage{rpgcard}{2025/10/09} {0.0.0} { Template for RPG material }

\bool_new:N \c__rpg_isclass_bool
\bool_set_true:N \c__rpg_isclass_bool

% Pass unknown options to the handour class (e.g., twocolumn, 10pt)
\DeclareOption*
{
    \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass {article}

\input {rpgcore.def}

%%custom card stuff
