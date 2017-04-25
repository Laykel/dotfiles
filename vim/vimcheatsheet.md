#vim Cheatsheet
##Modes:
i:insertBeforeChar, a:InsertAfterChar
I:insertStartOfLine, A:insertEndOfLine
o:insertBreakThenInsert, O:insertThenBreak

##File:
:w, :q, :wq, :q!

##Movement:
hjkl, (arrows, End, Home)

##Modifiers:
numbers, 0:startOfLine, $:endOfLine, w:wordByWord
):sentence, }:paragraphs, i:inside, a:all

##Actions:
d:delete, x:deleteLetter, r:replaceLetter, R:replaceMode, y:copy, p:paste
u:undo, Ctrl+r:redo, G:jumpToLine.., gg:jumpFirstLine, GG:jumpLastLine

/:search-> n:nextOccurence,N:lastOccurence , ?:searchFromStartOfFile
:s/old/new/ :searchAndReplace-> :%s/old/new/g :searchAndReplaceAllFile

:r file :insertOtherFileContent
:! :executeShellCommand

##Actions + Modifiers:
d0: delete to the start of the line
dd: delete line
yy: copy line
ci): change all inside the parentheses
ra}: replace all including the brackets

##Plugins
###vim-surround
Adds new element: surroundings.

cs'":will change the surrounding apostrophes to quotes
cs"<p>:will change the quotes to p tags
cst':will revert to apostrophes
ds" :will delete the surrounding quotes
ysiw) :will add parenses to the word
yss( :will add parenses with spaces around the whole line

###vim-commentary
Comments lines depending on the syntax.

gcap :will comment out a whole paragraph
gcc :will comment out a line
gcgc :will uncomment all adjacent commented lines

###vim-system-copy
Adds commands to access system clipboard. (Requires package xsel)

cpiw :will copy the word
cpi" :will copy the content of the quotes
cP :will copy the line
cv :will paste to the next line

###vim-fugitive
Adds git integration to vim. Especially interesting are the file-specific functions.

:Gstatus, etc...

###vim-tmux-navigator
Harmonizes the navigation between vim and tmux panes. (Needs tmux.conf config.)

C-hjkl to move between panes
C-\ to move to previous pane

###vimux
Adds :VimuxRunCommand and :VimuxRunLastCommand (needs to be in tmux).

:VimuxRunCommand("make")

###NERDTree
<leader>+k :toggle NERDtree
o inside NERDTree window will open menu
...

##Split screen (also NERDTree)
:sp file :splitHorizontally, :vsp file :splitVertically

Ctrl+w:nextViewport
Ctrl+w then hjkl:selectViewportInDirection
Ctrl+w then +||-:biggerOrSmallerViewport
Ctrl+w then =:equalizeViewports
Ctrl+w then q:closeViewport


_:set option != :set nooption_
