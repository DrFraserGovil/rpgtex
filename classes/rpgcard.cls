%% THe RPG-card is used for short, tactile printouts in a playing-card format


\RequirePackage {expl3}
\ProvidesExplPackage{rpgcard}{2025/10/09} {0.0.0} { Template for RPG material }


\bool_new:N \c__rpg_isclass_bool
\bool_set_true:N \c__rpg_isclass_bool
\tl_new:N \g__rpg_base_class_tl
\tl_set:Nn \g__rpg_base_class_tl { standalone }

\input {core/rpgoptions.clo}


\bool_if:NTF \l__rpg_show_background_bool
{
	\RequirePackage[pass,left=0pt,right=0pt,top=0pt,bottom=0pt]{geometry}
	\LoadClass[varwidth=8.3in] { standalone}
}
{
	\LoadClass[a4paper] { article}
	\RequirePackage[left=5pt,right=5pt,top=5pt,bottom=5pt]{geometry}
	
}
% \bool_set_false:N \l__rpg_show_background_bool


\RequirePackage{rpg}

\RpgSetPaper{}
\RpgUseCoverPage{false}

% \input {rpgcore.def}
% %%custom card stuff
\RpgUseCards{true}



