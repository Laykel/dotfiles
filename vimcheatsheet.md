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

##Split screen (also NERDTree)
:sp file :splitHorizontally, :vsp file :splitVertically

Ctrl+w:nextViewport
Ctrl+w then hjkl:selectViewportInDirection
Ctrl+w then +||-:biggerOrSmallerViewport
Ctrl+w then =:equalizeViewports
Ctrl+w then q:closeViewport


_:set option != :set nooption_
