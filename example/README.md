# Example Documents

These examples show `rpgtex` in use. Each folder is self-contained: to start a document of your own, copy the folder that is closest to what you want, and edit it.

| Document | Class | Theme | Shows |
| --- | --- | --- | --- |
| `dnd-example/dnd-book.tex` | `rpgbook` | `dnd` | A short adventure: cover, contents, a numbered map, notes for the GM, statblocks, an item and spells. |
| `dnd-example/dnd-handout.tex` | `rpghandout` | `dnd` | The players' handout, made from the same text as the book, with the GM's notes hidden. |
| `card-example/quill.tex`, `spell.tex` | `rpgcard` | `dnd` | Single cards (an item and a spell), for viewing on screen or sending to players. |
| `card-example/deck.tex` | `rpgdeck` | `dnd` | The same cards, gathered onto A4 pages for printing. |
| `scifi-example/scifi.tex` | `rpghandout` | `scifi` | A short science-fiction mission briefing. |

## One text, two documents

`dnd-example/village.tex` is used by both the book and the handout. Its notes for the GM are written in `RpgSecret` environments: the book shows them (with `\RpgSwitch{ShowSecrets}{on}`), and the handout hides them.

## Compiling

`rpgtex` loads its fonts with `fontspec`, so the examples must be compiled with `xelatex` or `lualatex`. Compile each document from its own folder, twice, so that the table of contents and page references are filled in:

```bash
cd dnd-example
xelatex dnd-book.tex
xelatex dnd-book.tex
```

On Linux and macOS, the `rpglatex` compiler (in `scripts/`) runs both passes for you.

## Images

The images are credited in the `ATTRIBUTION.txt` file beside them.
