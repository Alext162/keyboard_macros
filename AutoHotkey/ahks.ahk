#SingleInstance Force

F13::
	Send {F101}
	Sleep, 2000
	Send {F102}
	return

^!+Q:: 
	Winset, Alwaysontop, , A ; ctrl + space
	Return

^!Left::Send   {Media_Prev}
^!Down::Send   {Media_Play_Pause}
^!Right::Send  {Media_Next}
+^!Left::Send  {Volume_Down}
+^!Down::Send  {Volume_Mute}
+^!Right::Send {Volume_Up}

^!+S::
InputBox, Search, Google, What would you like to search?
if not ErrorLevel
{
run http://www.google.com/search?q=%Search%
}
return

^!+W::
InputBox, Search, stackoverflow, What would you like to search?
if not ErrorLevel
{
run https://stackoverflow.com/search?q=%Search%
}
return

