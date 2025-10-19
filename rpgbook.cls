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

% % %% Define custom title page and part page stuff here
% % {

% % }

\RequirePackage{rpg}


\RenewDocumentCommand{\maketitle}{o}
{
	\IfNoValueTF{#1}
	{
		\RpgBasicTitle{}
	}
	{
		\RpgBookTitle{#1}
	}
}
