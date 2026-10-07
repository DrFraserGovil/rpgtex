%% The RPG-deck class collects many cards onto A4 pages, ready for printing

\RequirePackage {expl3}
\ProvidesExplClass{rpgdeck}{2026/10/07} {0.0.0} { Deck Template for RPG material }

\bool_new:N \__rpg_IsClass
\bool_set_true:N \__rpg_IsClass
\tl_new:N \__rpg_BaseClass
\tl_set:Nn \__rpg_BaseClass { article }

%% Decks are always laid out in a single column (the cards themselves are placed side by side)
\tl_new:N \__rpg_ClassDefaults
\tl_set:Nn \__rpg_ClassDefaults {font,background,sections,columns=1}

\input {core/rpgoptions.clo}
\LoadClass[a4paper] { \__rpg_BaseClass }

\RequirePackage[left=5pt,right=5pt,top=5pt,bottom=5pt]{geometry}

\RequirePackage{rpgtex}

%% Allows separate card files (with their own preambles) to be \input into the deck
\RequirePackage[subpreambles=true]{standalone}

%% Display every cardable rule environment as a card (by convention, their switches are named Use[X]Card)
%% The names are collected first, since \RpgSwitch modifies the list being mapped over
\seq_clear:N \l_tmpa_seq
\prop_map_inline:Nn \__rpg_SwitchList
{
	\str_if_in:nnT {#1} {Card}
	{
		\seq_put_right:Nn \l_tmpa_seq {#1}
	}
}
\seq_map_inline:Nn \l_tmpa_seq
{
	\RpgSwitch{#1}{on}
}

\RpgThemeTitleMode{header}
\pagestyle{empty}
