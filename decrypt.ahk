#Requires AutoHotkey v2.0
#include <FindText>
Text:=X:=Y:=""
Text:="|<>*211$19.04007003U03s00s00Q00C007003U01k00s0kQ6M03A01a00nzztzzx"
^2::{
Send "{F2}"
sleep 100
Send "^a"
sleep 100
Send "^c"
sleep 100
Send "{Esc}"
sleep 100
WinActivate("ahk_exe chrome.exe")
HotIfWinActive("ahk_exe chrome.exe")
if (ok:=FindText(&X, &Y, 1093-150000, 933-150000, 1093+150000, 933+150000, 0, 0, Text))
{
   FindText().Click(X, Y, "L")
   Sleep 1000
   Send A_Clipboard
   sleep 200
   send "{Enter}"
   sleep 200
   send "{Enter}"
   Text:=X:=Y:=""
   Text:="|<>*178$17.0200zU3XUC1Us33bWCP4taNaQmNn1bA6QkNn0lA30k3307A07k0201"
   if (ok:=FindText(&X, &Y, 370-150000, 677-150000, 370+150000, 677+150000, 0, 0, Text))
   {
     FindText().mousemove(X, Y)
     Text:=X:=Y:=""

      Text:="|<>*179$19.0C007003U01k00s00Q00C007007k03s00s0k86M03A01a00nzztzzx"

      if (ok:=FindText(&X, &Y, 676-150000, 677-150000, 676+150000, 677+150000, 0, 0, Text))
      {
      FindText().Click(X, Y, "L")
      }
   }
}
}
