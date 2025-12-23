%% THe RPG-card is used for short, tactile printouts in a playing-card format


\RequirePackage {expl3}
\ProvidesExplPackage{rpgcard}{2025/10/09} {0.0.0} { Template for RPG material }


\bool_new:N \c__rpg_isclass_bool
\bool_set_true:N \c__rpg_isclass_bool
\tl_new:N \g__rpg_base_class_tl
\tl_set:Nn \g__rpg_base_class_tl { standalone }

\input {core/rpgoptions.clo}


%%toggle between standalone mode and article mode, allowing for a nice 'print' interface (though rpgdeck should probably be used to save paper!)
\bool_if:NTF \l__rpg_show_background_bool
{
	\RequirePackage[pass,left=0pt,right=0pt,top=0pt,bottom=0pt]{geometry}
	\LoadClass[] { standalone}
}
{
	\LoadClass[a4paper] { article}
	\RequirePackage[left=5pt,right=5pt,top=5pt,bottom=5pt]{geometry}
	
}

\RequirePackage{rpgtex}

%%Set all flags to true, (assuming most are cards!)
\prop_map_inline:Nn \g__rpg_switch_prop
{
	\prop_gput:Nnx \g__rpg_switch_prop { #1 } {\c_true_bool}
}

\msg_new:nnn{rpg}{rpg-card-title}{Cannot~set~title~in~rpgcard}
\renewcommand{\maketitle}{
	\msg_error:nn{rpg}{rpg-card-title}
}
\RpgSetTitleMode{header}
\pagestyle{empty}




