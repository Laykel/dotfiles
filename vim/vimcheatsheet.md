#vim Cheatsheet
##Modes: > {{{
i:insertBeforeChar, a:InsertAfterChar
I:insertStartOfLine, A:insertEndOfLine
o:insertBreakThenInsert, O:insertThenBreak
v:visualMode
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

#Plugins
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
Ctrl+w then hjkl:selectViewportInDirection
Ctrl+w then +||-:biggerOrSmallerViewport
Ctrl+w then =:equalizeViewports
Ctrl+w then q:closeViewport
> }}}

:set option != :set nooption
