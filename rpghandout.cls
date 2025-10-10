%% THe RPG-handout class is used for short-form documents
%%It activates the rpg geometry, but unlike rpgbook, does not activate elaborate title or part pages

\RequirePackage {expl3}
\ProvidesExplClass{rpghandout}{2025/10/09} {0.0.0} { Template for RPG material }

\bool_new:N \c__rpg_isclass_bool
\bool_set_true:N \c__rpg_isclass_bool
\tl_new:N \g__rpg_base_class_tl
\tl_set:Nn \g__rpg_base_class_tl { article }

\input {lib/rpgoptions.clo}
\LoadClass { \g__rpg_base_class_tl }

%%overload title stuff here? Otherwise fairly basic
\pagestyle{empty}
