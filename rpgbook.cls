%% THe RPG-book class is used for writing long-form documents
%%It activates the rpg geometry, and overloads title pages and part pages to the theme-determined options

\RequirePackage {expl3}
\ProvidesExplClass{rpgbook}{2025/10/09} {0.0.0} { Template for RPG material }


\bool_new:N \c__rpg_isclass_bool
\bool_set_true:N \c__rpg_isclass_bool

\tl_set:Nn \g__rpg_base_class_tl { extbook }

\input {core/rpgoptions.clo}
\LoadClass { \g__rpg_base_class_tl }


\RequirePackage{rpg}


\RenewDocumentCommand{\maketitle}{ O{} } % Redefine \maketitle to accept one optional argument
{
	\group_begin:

	\str_if_empty:NTF { #1 }
		{
			\__rpg_orig_title
		}
		{
			\tl_if_empty:nTF { #1 }
			{
				\thispagestyle{plain}
				\addtocounter{page}{-1}
				 \begin{tikzpicture}[remember~picture,overlay]
				% \node[inner~sep=0pt] at (current~page.center) {\includegraphics[width=\paperwidth,height=\paperheight]{img/paper}};
				\node at (current~page.center) {\parbox[t]{\paperwidth}{\begin{center}\RpgFontTitle\color{black}\@title
				\\\vspace{1cm}
				\RpgFontSubTitle {\color{black} \@author}
				\\
				\@date
				\end{center}
				}};
				\end{tikzpicture}
				\clearpage
			}
			{
				\RpgBookTitle{#1}
			}
		}
	\group_end:
}

