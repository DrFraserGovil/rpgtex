%% The RPG-card class is used for short, tactile printouts in a playing-card format
%% With a background (bg=full) each card is cropped to its own page, for digital use;
%% otherwise the cards are laid out on A4 pages, for printing (though rpgdeck is better for that!)

\RequirePackage {expl3}
\ProvidesExplClass{rpgcard}{2026/10/07} {0.0.0} { Card Template for RPG material }

\bool_new:N \__rpg_IsClass
\bool_set_true:N \__rpg_IsClass
\tl_new:N \__rpg_BaseClass
\tl_set:Nn \__rpg_BaseClass { standalone }

%% Cards have no title page, and are always laid out in a single column
\tl_new:N \__rpg_ClassDefaults
\tl_set:Nn \__rpg_ClassDefaults {font,background,sections,columns=1}

\input {core/rpgoptions.clo}

%% The base class depends on the bg option, which is only known once the options have been read.
%% rpgoptions.clo has passed its options to standalone, so pass the font size on to article when it is used instead.
\bool_if:NTF \__rpg_ShowBackground
{
	\RequirePackage[pass]{geometry}
	\LoadClass { standalone }
}
{
	\tl_set:Nn \__rpg_BaseClass { article }
	\PassOptionsToClass { \__rpg_FontSize } { article }
	\LoadClass[a4paper] { article }
	\RequirePackage[left=5pt,right=5pt,top=5pt,bottom=5pt]{geometry}
}

\RequirePackage{rpgtex}

%% Display every cardable rule environment as a card (by convention, their switches are named Use[X]Card)
\seq_map_inline:Nn \__rpg_CardSwitches
{
	\RpgSwitch{#1}{on}
}

\msg_new:nnn{rpg}{rpg-card-title}{Cannot~set~title~in~rpgcard}
\RenewDocumentCommand{\maketitle}{}
{
	\msg_error:nn{rpg}{rpg-card-title}
}
\pagestyle{empty}
