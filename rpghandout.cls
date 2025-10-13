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
\ExplSyntaxOff

%%overload title stuff here? Otherwise fairly basic
\pagestyle{empty}

\RequirePackage{rpg}
\renewcommand{\RpgTitle}[1]{\RpgHandoutTitle{#1}}



\RenewDocumentCommand{\maketitle}{ m } % Redefine \maketitle to accept one optional argument
{
	\RpgHandoutTitle{#1}
}


\renewcommand{\RpgHandoutTitle}[1]{
	\noindent
		\twocolumn[
			\begin{center}

				{\RpgFontTitle \@title}

				{\RpgFontSubTitle \@subtitle}

				{\RpgFontSubTitle \@author}

			\end{center}
			\vspace{8pt}
    ]
}
