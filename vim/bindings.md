### Replace
- :%s/foo bar/foobar/g -le fichier
- :s/foo bar/foobar/g -la ligne

### Remember
- `:'<,'>norm! @a` to repeat macro on selection
- add grep
- add ySiw + others surround
	- ys$t - put the line in a tag
- clean up nmap/nnoremap etc...

### Bindings
#### Toggles
<F1> - this help page
<F4> - GitGutter toggle
<F5> - spell check toggle
<F6> - NERDTree toggle
,n - NERDTree toggle
<F7> - Tagbar toggle
,tt - Tagbar toggle
<F8> - Syntastic toggle
<F9> - toggle all

#### Misc
,v - open buffer in vertical split
,hh - open buffer in horizontal split
,wa - save all buffers
,wq - save and close split
,q - close split / vim
,x - close buffer
,- - :bn - next buffer
,. - :bp - previous buffer
,0-9 - buffers 0 to 9

cP - paste from system clipboard
cp - paste from system clipboard
cy - yank into system clipboard

,<Tab> - go to next placeholder
<Space> - toggle fold
t   - <C-r> - redo
zz  - z= - fix list
w!! - write with sudo permissions

#### Programming helpers
,à - insert curly braces
,; - insert semicolon at end
,< - insert 2 chevrons at end >

#### LaTeX / markdown
,la - align* environment
,lc - cdot
,lf - frac
,li - include graphics
,lm - pmatrix environment
,lr - sqrt
,ls - mathbb

,h1-3 - make the line a header 1 to 3
,mm - make Rmd yml conf
,ma - advanced Rmd with headers
,mb - embolden word
,mi - put word in italics
,mh - highlight word (backticks)
,mc - code chunk
,mg - include graphics
,ml - add md link
,mt - make vimwiki table
,ms - :set syntax=rmd

#### Compile and run
,cc - compile all sorts of files
(vimwiki, c, c++, python, pdflatex...)
,ca - compile c/c++ when multiple sources
,cm - run make
,cd - compile c++ for debugging
,cE - compile c for extended source

,cx - compile latex with xelatex
,ph - create html with mathjax from md
,pt - create html with mathjax and TOC

,ce - run current c/c++ file's binary (in bin/)
,cq - clean binaries
,cv - run valgrind on debugging binary

,ce - HEIG vimwiki open pdf
,mz - main vimwiki open pdf
,lz - open latex in zathura

#### Plugins
,<Space> - follow vimwiki link

,tb - Tabularize around //
,te - Tabularize around =
,tg - Tabularize shortcut

,tc - clear Vimux pane
,tl - last Vimux command
,to - open Vimux pane
,tp - Vimux prompt command
,tq - close Vimux pane

#### Control key bindings
<C-i> - follow tag
<C-o> - follow tag in new vsplit
<C-t> - back from the tag
<PageDown> - bottom of page (L)
<PageUp> - top of page (H)

<C-k>+u+> = û
<C-k>+C+, = Ç
<C-y> - increments a number
<C-x> - decrements a number
