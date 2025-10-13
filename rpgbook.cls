%% THe RPG-book class is used for writing long-form documents
%%It activates the rpg geometry, and overloads title pages and part pages to the theme-determined options

\RequirePackage {expl3}
\ProvidesExplClass{rpgbook}{2025/10/09} {0.0.0} { Template for RPG material }


\bool_new:N \c__rpg_isclass_bool
\bool_set_true:N \c__rpg_isclass_bool
\tl_new:N \g__rpg_base_class_tl
\tl_set:Nn \g__rpg_base_class_tl { extbook }

\input {core/rpgoptions.clo}
\LoadClass { \g__rpg_base_class_tl }


\RequirePackage{rpg}
\def\subtitle#1{\gdef\@subtitle{#1}} %let a subtitle be defined
\subtitle{}%clear value
\renewcommand{\RpgTitle}[1]{\RpgBookTitle{#1}}


