% BUG: class not yet migrated to the revamped codebase: uses old names (\c__rpg_isclass_bool, \g__rpg_base_class_tl, \l__rpg_twocol_override, \g__rpg_switch_prop, \RpgSetTitleMode) instead of \__rpg_IsClass, \__rpg_BaseClass, \__rpg_SwitchList, \RpgThemeTitleMode, and sets no \__rpg_ClassDefaults. Compare rpgbook.cls.
%% THe RPG-card is used for short, tactile printouts in a playing-card format


\RequirePackage {expl3}
\ProvidesExplPackage{rpgcard}{2025/10/09} {0.0.0} { Template for RPG material }


\bool_new:N \c__rpg_isclass_bool
\bool_set_true:N \c__rpg_isclass_bool
\tl_new:N \g__rpg_base_class_tl
\tl_set:Nn \g__rpg_base_class_tl { article }

\tl_set:Nn\l__rpg_twocol_override{onecolumn}

\input {core/rpgoptions.clo}


\LoadClass[a4paper,onecolumn] { article}

\RequirePackage[left=5pt,right=5pt,top=5pt,bottom=5pt]{geometry}
	

\RequirePackage{rpgtex}


\RequirePackage[subpreambles=true]{standalone}
%%Set all flags to true, (assuming most are cards!)
\prop_map_inline:Nn \g__rpg_switch_prop
{
	\prop_gput:Nnx \g__rpg_switch_prop { #1 } {\c_true_bool}
}


\RpgSetTitleMode{header}
\pagestyle{clear}




