# these-mlb

Je partage ici (pour l'instant en français) le template qui a servi à la rédaction de mon manuscrit de thèse en économie (pour voir un exemple de résultat final, je vous invite à consulter la page https://tel.archives-ouvertes.fr/tel-01514178/document). 

## Structure du projet

Ce template se compose d'un fichier maître [these_docprincipal.Rnw](/these_docprincipal.Rnw) qui renvoie ensuite à des fichiers organisés en plusieurs dossiers. 

* [preambule](/preambule/): packages et options du document
* [config](/config/): fichiers .sty idnsipensables à l'exécution de certains packages tels que sweave
* [macros](/macros/): macros personnelles
* [ressources](/ressources/): bibliographie (fichier .bib), acronymes et glossaire 
* [pictures](/pictures/): images du document
* [sorties](/sorties/): sorties statistiques (figures, tableaux, data)
* [tikz](/tikz/): figures tikZ
* [front](/front/): ensemble des fichiers .tex qui composent le frontmatter (remerciements, avertissement, épigraphe, sommaire...)
* [corpus](/corpus/): ensemble des fichiers .tex qui composent le corps du texte (introduction, chapitres, conclusion)
* [back](/back/): ensemble des fichiers .tex qui composent le backmatter (listes de figures, de tableaux et d'encadrés, liste des références bibliographiques, liste des acronymes et glossaire, table des matière...)
* [appendix](/appendix/): annexes du document
* [build](/build/): fichiers produits lors de la compilation


## Pré-requis

1. Vous devez disposer d'une distribution TeX. Si vous êtes sous windows, téléchargez [MiKTeX](https://miktex.org/). Si vous êtes sous mac os, téléchargez [MacTeX](http://www.tug.org/mactex/).
2. Installez un éditeur. Personnellement, je recommande [TeXMaker](http://www.xm1math.net/texmaker/).

Une fois ces pré-requis installés, **copiez l'ensemble du projet en local via le bouton `git clone`, ouvrez dans votre éditeur puis compilez le fichier maître [these_docprincipal.Rnw](/these_docprincipal.Rnw).** 

### Compilation win

Si vous utilisez windows et la distribution MikTeX, vous devez exécuter les commandes suivantes après avoir bien indiqué le chemin à MikTeX vers les fichiers du dossier [config](/config/) (Settings, onglet Roots, Add a path):

`"C:/Program Files/R/R-3.5.1/bin/i386/R.exe" CMD Sweave %.Rnw --encoding=utf8 | 
pdflatex -output-directory=build -synctex=1 -interaction=nonstopmode %.tex | 
makeindex -s build/%.ist -t build/%.alg -o build/%.acr build/%.acn | 
makeindex -s build/%.ist -t build/%.glg -o build/%.gls build/%.glo | 
makeindex build/%.idx | pdflatex -output-directory=build -synctex=1 -interaction=nonstopmode %.tex| 
biber build/% | pdflatex -output-directory=build -synctex=1 -interaction=nonstopmode %.tex| 
pdflatex -output-directory=build -synctex=1 -interaction=nonstopmode %.tex| 
pdflatex -output-directory=build -synctex=1 -interaction=nonstopmode %.tex`

### Compilation mac os

Si vous utilisez mac os et la distribution MacTeX, vous devez exécuter les commandes suivantes: 

`R CMD Sweave %.Rnw --encoding=utf8 | 
"/usr/texbin/pdflatex" -output-directory=build -synctex=1 -interaction=nonstopmode %.tex | 
"/usr/texbin/makeindex" -s build/%.ist -t build/%.alg -o build/%.acr build/%.acn | 
"/usr/texbin/makeindex" -s build/%.ist -t build/%.glg -o build/%.gls build/%.glo | 
"/usr/texbin/makeindex" build/%.idx | 
"/usr/texbin/pdflatex" -output-directory=build -synctex=1 -interaction=nonstopmode %.tex | 
"/usr/texbin/biber" build/%  | "/usr/texbin/pdflatex" -output-directory=build -synctex=1 -interaction=nonstopmode %.tex  | "/usr/texbin/pdflatex" -output-directory=build -synctex=1 -interaction=nonstopmode %.tex` 

**Important: Encodage** L'ensemble des documents sont codés en UTF-8. L'encodage doit être déclaré en préambule (voir le fichier [preambule/packages_communs.tex](preambule/packages_communs.tex) et lors de l'exécution de la commande `sweave`. 

## License

`Copyright 2018 Marie Lemarié-Boutry`
