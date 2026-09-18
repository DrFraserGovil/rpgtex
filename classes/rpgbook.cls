%% THe RPG-book class is used for writing long-form documents
%%It activates the rpg geometry, and overloads title pages and part pages to the theme-determined options

\RequirePackage {expl3}
\ProvidesExplClass{rpgbook}{2025/10/09} {0.0.0} { Book Template for RPG material }

\ExplSyntaxOn
\bool_new:N \__rpg_IsClass
\bool_set_true:N \__rpg_IsClass
\tl_new:N \__rpg_BaseClass
\tl_set:Nn \__rpg_BaseClass { extbook }

\input {core/rpgoptions.clo}
\LoadClass{ \__rpg_BaseClass }



\RequirePackage{rpgtex}
%
% \RpgSetTitleMode{cover} : TODO: Re-enable this option
%
% % Set page geometry.
\RequirePackage {geometry}
\geometry
{
	hmargin   = .65in, % Left and right margins
	top       = .4in, % Top of text area to top of page
	bottom    = .75in,  % Bottom of text area to bottom of page
	footskip  = .3in, % Bottom of text area to bottom of footer text
	columnsep = .25in, % Space between columns
}
% Set paragraph and line spacing
\setlength {\parindent}            {1em}
\setlength {\RaggedRightRightskip} {0pt plus 1em}
\setlength {\RaggedRightParindent} {\parindent}
\ExplSyntaxOff
