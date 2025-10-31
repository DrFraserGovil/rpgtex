%% THe RPG-handout class is used for short-form documents
%%It activates the rpg geometry, but unlike rpgbook, does not activate elaborate title or part pages

\RequirePackage {expl3}
\ProvidesExplClass{rpghandout}{2025/10/09} {0.0.0} { Template for RPG material }

\bool_new:N \c__rpg_isclass_bool
\bool_set_true:N \c__rpg_isclass_bool
\tl_new:N \g__rpg_base_class_tl
\tl_set:Nn \g__rpg_base_class_tl { article }

\input {core/rpgoptions.clo}
\LoadClass { \g__rpg_base_class_tl }


\RequirePackage{rpg}

%set the flag so that it uses the simple title
\RpgUseCoverPage{false}

 % Set page geometry
\RequirePackage {geometry}.
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
