# Lexica Segueriana

## DESCRIPTION

[Lexica
Segueriana](https://archive.org/details/bub_gb_y5sQAAAAIAAJ/page/n3/mode/2up)
is a collection of anonymous ancient Greek dictionaries.

This dictionary includes words from 6 anonymous lexica:
- ΕΚ ΤΩΝ ΦΡΥΝΙΧΟΥ (Phrynichus the Atticist)
- ΑΝΤΙΑΤΤΙΚΙΣΤΗΣ (Anonymous Antatticista)
- ΠΕΡΙ ΣΥΝΤΑΞΕΩΣ (On Syntax)
- ΔΙΚΩΝ ΟΝΟΜΑΤΑ  (Legal Terms)
- ΛΕΞΕΙΣ ΡΗΤΟΡΙΚΑΙ (Rhetorical Expressions)
- ΣΥΝΑΓΩΓΗ ΛΕΞΕΩΝ ΧΡΗΣΙΜΩΝ (Dictionary of Useful Words)

The Lexica Segueriana are called so because they are preserved in an XI century A.D.
manuscript formerly belonging to [Pierre
Séguier](https://en.wikipedia.org/wiki/Pierre_S%C3%A9guier) (1588-1672), who was a president of the
French Academy. The collection was first published by [Immanuel
Bekker](https://en.wikipedia.org/wiki/August_Immanuel_Bekker#cite_ref-2) in 1814.


**Segueriana** is a script that converts the text of Lexica Segueriana, taken from the [TLG
CDROM](http://stephanus.tlg.uci.edu/tlgauthors/cd.authors.php),
into a ABBYY Lingvo **.dsl** dictionary file that can be used with digital
dictionary lookup program [GoldenDict]( http://goldendict.org/), so that the
Lexica Segueriana  can be searched like any other modern dictionary.

## USAGE


- To run this script you need to have:

    - The TLG CDROM or its files.  This CDROM is no longer available for sale,
      but it can be easily obtained via bit torrents.
    - The *Beta Code* to UTF-8 text conversion utility [tlg2u](https://github.com/proteusx/tlg2u).

    - Perl, Bash and sed.
- Clone the Github repository `git clone https://github.com/proteusx/Segueriana.git`

- Edit the line 3  of the script `build-segueriana.sh` and set the variable
  `TLG_CDROM` to point to the location of TLG files.

- Run the script `build-segueriana.sh`

- If everything is in order the file **`dictionary/segueriana.dsl`** should be produced.

- Point GoldenDict to this folder and the Segueriana lexicon is ready to search.  Alternatively you may
  copy the folder **`dictionary`** to some other location.

See also the [current
release](https://github.com/proteusx/Segueriana/releases/download/v1.0/Segueriana-1.0.tar.xz)
which includes the dictionary file `segueriana.dsl` compiled and ready to use.

## NOTES
The Segueriana Lexicon as encoded in the TLG CDROM is sourced from this hard copy edition:
 Lexica Graeca minora (ed. K. Latte H. Erbse), Boysen, C. (Ed) Hildesheim: Olms, 1965

## SEE ALSO

More Greek dictionaries for GoldenDict:

<https://github.com/proteusx/Suda-For-GoldenDict>

<https://github.com/proteusx/Hesychius-For-GoldenDict>

<https://github.com/proteusx/Photius-Lexicon>

<https://github.com/proteusx/Harpocration>

<http://dadako.narod.ru/paperpoe.htm#greek>

<!-- vim: set tw=80 spell fo=tq: -->
