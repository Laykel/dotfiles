Only aligns the last =
- :Tabularize /^\s*\S.*\zs=

### Leader bindings
v - open current buffer in vsplit
- - next buffer
. - previous buffer
0-9 - specified buffer
x - close buffer

; - insert semicolon at eoline

rp - Vimux prompt command
ro - Vimux predefined command
rl - Vimux last command
rq - Vimux close
rz - Vimux zoom

tg - Tabularize > specify
tq - Tabularize on quotes
te - Tabularize on equal sign

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

lr - Laravel routes/web.php
la - Laravel config/app.php
ld - Laravel config/database.php
lc - Laravel composer.json

### Control key bindings
<C-i> - follow tag
<C-o> - follow tag in new vsplit
<C-t> - back from the tag
<PageDown> - bottom of page (L)
<PageUp> - top of page (H)

<C-k>+u+> = û
<C-k>+C+, = Ç

### Function keys bindings
F1 - display this help
F4 - toggle GitGutter
F5 - toggle SpellCheck
F6 - toggle NerdTree
F7 - toggle TagBar
F8 - toggle Syntastic
F12 - toggle NerdTree and TagBar

### Replace
- :%s/foo bar/foobar/g -le fichier
- :s/foo bar/foobar/g -la ligne

### Remember
- `:'<,'>norm! @a` to repeat macro on selection
- add grep
- add ySiw + others surround
	- ys$t - put the line in a tag
- clean up nmap/nnoremap etc...

### Basic
<C-hjkl> - move between splits
<C-w>hjkl - resize splits
<C-a> - increments a number
s - save
wq - save and close split
n - toggle NerdTree
tt - toggle TagBar
g - toggle GitGutter
