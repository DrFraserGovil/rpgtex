%% THe RPG-card is used for short, tactile printouts in a playing-card format


\RequirePackage {expl3}
\ProvidesExplPackage{rpgcard}{2025/10/09} {0.0.0} { Template for RPG material }


\bool_new:N \c__rpg_isclass_bool
\bool_set_true:N \c__rpg_isclass_bool
\tl_new:N \g__rpg_base_class_tl
\tl_set:Nn \g__rpg_base_class_tl { article }

\input {core/rpgoptions.clo}
\LoadClass { \g__rpg_base_class_tl }

\LoadClass {article}

\input {rpgcore.def}

%%custom card stuff
