%% The RPG-handout class is used for short-form documents
%% It activates the rpg geometry, but unlike rpgbook, does not activate elaborate title or part pages

\RequirePackage {expl3}
\ProvidesExplClass{rpghandout}{2026/10/07} {0.0.0} { Handout Template for RPG material }

\bool_new:N \__rpg_IsClass
\bool_set_true:N \__rpg_IsClass
\tl_new:N \__rpg_BaseClass
\tl_set:Nn \__rpg_BaseClass { extarticle }

\tl_new:N \__rpg_ClassDefaults
\tl_set:Nn \__rpg_ClassDefaults {font,background,sections,title}

\input {core/rpgoptions.clo}
\LoadClass[a4paper] { \__rpg_BaseClass }

\RequirePackage{rpgtex}

%% Handouts use the simple title, rather than a cover page
\RpgThemeTitleMode{header}

% Set page geometry
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
