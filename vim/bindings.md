### Leader bindings
0-9 - specified buffer
x - close buffer

; - insert semicolon at eoline

rp - Vimux prompt command
rl - Vimux last command

tg - Tabularize > specify
tq - Tabularize on quotes
te - Tabularize on equal sign
Only aligns the last =
- :Tabularize /^\s*\S.*\zs=

zz - correct spelling
zg - add word to dict
zw - remove word from dict

cp - compile c++
mf - mathjax fraction helper
mr - mathjax root helper
mx - mathjax cdot helper
ph - pandoc md to html
pp - pandoc md to pdf
lp - compile latex to pdf
lz - open pdf in zathura

### Control key bindings
<C-i> - follow tag
<C-o> - follow tag in new vsplit
<C-t> - back from the tag
<PageDown> - bottom of page (L)
<PageUp> - top of page (H)

<C-k>+u+> = û
<C-k>+C+, = Ç
<C-a> - increments a number

### Replace
- :%s/foo bar/foobar/g -le fichier
- :s/foo bar/foobar/g -la ligne

### Remember
- `:'<,'>norm! @a` to repeat macro on selection
- add grep
- add ySiw + others surround
	- ys$t - put the line in a tag
- clean up nmap/nnoremap etc...

### Function keys bindings
F1 - display this help
F4 - toggle GitGutter
F5 - toggle SpellCheck
F6 - toggle NerdTree
F7 - toggle TagBar
F8 - toggle Syntastic
F12 - toggle NerdTree and TagBar

lr - Laravel routes/web.php
la - Laravel config/app.php
ld - Laravel config/database.php
lc - Laravel composer.json
