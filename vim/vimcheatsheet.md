#vim Cheatsheet

## F1Help save> {{{
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
g
##Tips
gv : reselect last visual selection
gx : open URL in browser
> }}}

##Pasting> {{{
...
> }}}

##Normal mode in insert mode> {{{
<C-o> normal command
<C-r> = math expression - to compute the expression and then insert it
> }}}

Substitute in a visual block
:'<,'>s/\%Vold/new
Count the number of pattern matches
/<<some-pattern>>
:%s///n
Delete all lines containing pattern
:g/<<some-pattern>>/d
Delete all lines not containing pattern
:v/<<some-pattern>>/d

##Sorting> {{{
Use the sort command to sort a selection, say a visual selection:
:'<,'>sort
By default lines starting with 0-9 will be sorted before A-Z followed lastly by lines starting with a-z.
Use the i option to ignore case when sorting, more often than not you want to do this:
:'<,'>sort i
Use a ! to reverse the sort:
:'<,'>sort! i
Lastly the u option can be used to remove duplicates much like the uniq system command:
:'<,'>sort u
> }}}

##Spelling> {{{
<c-w> to delete word
<F5> to enable spell check (en and fr)
<c-x>s to correct in insert mode
z= to correct in normal mode
zg to add word to wordlist
zw to remove word from wordlist
]s to go to next error / [s for the previous
> }}}

##Indent> {{{
5>> : indent5Lines
vjj> : indent3Lines
>% : if on a curly brace, indent the whole block
Use ]p instead of p to adjust the indent to the new location
shiftwidth to set the width of tabs
> }}}

##Tags> {{{
Tags are generated using the exuberant-ctags package.
Tags are functions, classes or other significant parts of code.

<C-]> or <C-i> to see definition of the tag.
<C-o> to open a new split with the definition of the tag.
<C-t> to get back to the call of the tag.
> }}}

##Classic stuff
##Modes: > {{{
i:insertBeforeChar, a:InsertAfterChar
I:insertStartOfLine, A:insertEndOfLine
o:insertBreakThenInsert, O:insertThenBreak
v:visualMode, ctrl-v:block-visualMode
> }}}

##File:> {{{
:w, :q, :wq, :q!
:r file :insertOtherFileContent
> }}}

##Movement:> {{{
hjkl, (arrows, End, Home), 0:beginningOfLine, $:endOfLine
G:jumpToLine.., gg:jumpFirstLine, G:jumpLastLine

m+a-z:setMarker, '+a-z:jumpBackToMarkedLine, \`\`+a-z:jumpBackToMarker
H:goToTopOfDisplayedPage, M:goToMiddle, L:goToLower

C-e:scrollDown, C-y:scrollUp, C-f:pageDown, C-B:pageUp
> }}}

##Modifiers:> {{{
numbers, 0:startOfLine, $:endOfLine, w:wordByWord
):sentence, }:paragraphs, i:inside, a:all
> }}}

##Actions:> {{{
c:change, d:delete, x:deleteLetter, r:replaceLetter, R:replaceMode, y:copy, p:paste, P:pasteBefore
u:undo, Ctrl+r:redo, D:d$, C:c$, >:indent, <:unindent

/:search-> n:nextOccurence,N:lastOccurence , ?:searchFromStartOfFile
:s/old/new/ :searchAndReplace-> :%s/old/new/g :searchAndReplaceAllFile

q+a-z:startMacroRecording then q: stopRecording, @+a-z:callMacro

:! :executeShellCommand
> }}}

##Actions + Modifiers:> {{{
21j:will go down 21 lines
13G:will go to line 13
d0: delete to the start of the line
dd: delete line
yy: copy line
ci): change all inside the parentheses
cit: change all inside tags (html or else)
ca}: change all including the brackets
> }}}

##Folds> {{{
Space to toggle folds in normal mode, space to create new folds in visual mode.

za is the default to toggle folds.
zR to open all folds, zM to close all of them.
> }}}

##Plugins
###vim-surround> {{{
Adds new element: surroundings.

cs'":will change the surrounding apostrophes to quotes
cs"<p>:will change the quotes to p tags
cst':will revert to apostrophes
ds" :will delete the surrounding quotes
ysiw) :will add parenses to the word
yss( :will add parenses with spaces around the whole line
> }}}

###vim-commentary> {{{
Comments lines depending on the syntax.

gcap :will comment out a whole paragraph
gcc :will comment out a line
gcgc :will uncomment all adjacent commented lines
> }}}

###vim-system-copy> {{{
Adds commands to access system clipboard. (Requires package xsel)

cpiw :will copy the word
cpi" :will copy the content of the quotes
cP :will copy the line
cv :will paste to the next line
> }}}

###vim-fugitive> {{{
Adds git integration to vim. Especially interesting are the file-specific functions.

:Gstatus - git status output, "-" to add file
:Gdiff - bring staged file on the side
:Gcommit - git commit
:Gvsplit - show the file in the index in edit mode
> }}}

###Syntastic> {{{
A syntax checker for vim.


> }}}

###Tabular> {{{
It aligns things. Woohoo.

Visually select stuff, then :Tab /<symbole autour duquel il faut centrer> <cr>.
> }}}

###vim-multiple-cursors> {{{
Sublime style multiple cursors.

<C-n> in normal mode to begin selecting and to add the next.
<C-p> to remove the current one and go back one.
<C-x> to skip this one and go to the next.
> }}}

###vim-gitgutter> {{{
Displays diffs in the gutter (the line number zone).

<leader>g - to toggle it on and off.
> }}}

###vim-tmux-navigator> {{{
Harmonizes the navigation between vim and tmux panes. (Needs tmux.conf config.)

C-hjkl to move between panes
C-\ to move to previous pane
> }}}

###vimux> {{{
Adds :VimuxRunCommand and :VimuxRunLastCommand (needs to be in tmux).

:VimuxRunCommand("make")
> }}}

###NERDTree> {{{
<leader>+k :toggle NERDtree
m inside NERDTree window will open menu
s inside NERDTree window will open file in another pane
> }}}

##Split screen> {{{
:sp file :splitHorizontally, :vsp file :splitVertically

Ctrl+w then w:nextViewport
Ctrl hjkl:selectViewportInDirection
Ctrl+w then +||-:biggerOrSmallerViewport
Ctrl+w then =:equalizeViewports
Ctrl+w then q:closeViewport
> }}}

:set option != :set nooption
