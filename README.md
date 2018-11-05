# these-mlb

Je partage ici le template qui a servi à la rédaction de mon manuscrit de thèse (pour voir le résultat final, je vous invite à consulter la page http://www.theses.fr/2016BORD0412). 

Copiez l'ensemble du projet en local puis compilez le fichier maître these_docprincipal.tex. 

Si vous utilisez windows et la distribution MiKTeX, vous devez exécuter les commandes suivantes: 

# Compilation win

"C:/Program Files/R/R-3.5.1/bin/i386/R.exe" CMD Sweave %.Rnw --encoding=utf8 | 
pdflatex -output-directory=build -synctex=1 -interaction=nonstopmode %.tex | 
makeindex -s build/%.ist -t build/%.alg -o build/%.acr build/%.acn | 
makeindex -s build/%.ist -t build/%.glg -o build/%.gls build/%.glo | 
makeindex build/%.idx | pdflatex -output-directory=build -synctex=1 -interaction=nonstopmode %.tex| 
biber build/% | pdflatex -output-directory=build -synctex=1 -interaction=nonstopmode %.tex| 
pdflatex -output-directory=build -synctex=1 -interaction=nonstopmode %.tex| 
pdflatex -output-directory=build -synctex=1 -interaction=nonstopmode %.tex

Si vous utilisez mac os et la distribution MacTeX, vous devez exécuter les commandes suivantes: 

# Compilation mac os

"/usr/texbin/pdflatex" -output-directory=build -synctex=1 -interaction=nonstopmode %.tex | 
"/usr/texbin/makeindex" -s build/%.ist -t build/%.alg -o build/%.acr build/%.acn | 
"/usr/texbin/makeindex" -s build/%.ist -t build/%.glg -o build/%.gls build/%.glo | 
"/usr/texbin/makeindex" build/%.idx | 
"/usr/texbin/pdflatex" -output-directory=build -synctex=1 -interaction=nonstopmode %.tex | 
"/usr/texbin/biber" build/%  | "/usr/texbin/pdflatex" -output-directory=build -synctex=1 -interaction=nonstopmode %.tex  | "/usr/texbin/pdflatex" -output-directory=build -synctex=1 -interaction=nonstopmode %.tex 
