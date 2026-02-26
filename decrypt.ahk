#Requires AutoHotkey v2.0
#include <FindText>
upload:=upX:=upY:=""
upload:="|<>*211$19.04007003U03s00s00Q00C007003U01k00s0kQ6M03A01a00nzztzzx"
^+s::Exit
^4::{
Send "^1"
sleep 500
a:=A_Clipboard
send "^2"
;b:=A_Clipboard
WinActivate("ahk_exe chrome.exe")
HotIfWinActive("ahk_exe chrome.exe")
Send "^0"
if (outcome:=FindText(X:="wait", Y:=20, 370-150000, 677-150000, 370+150000, 677+150000, 0, 0, upload))
{   if (ok:=FindText(&upX, &upY, 1093-150000, 933-150000, 1093+150000, 933+150000, 0, 0, upload))
   {
      FindText().Click(ok[2].x, ok[2].y, "L")
      control:=""
      loop{
      if (control=="Button1")
         break
      else{
         sleep 100
         MouseGetPos ,,,&control
         }
      }
      Send "^v"
      sleep 200
      Send "{F4}"
      sleep 200
      Send "^a"
      sleep 200
      A_Clipboard:=a
      Send "^v"
      sleep 500
      send "!o"
      ;sleep 3000
      file:=fX:=fY:=""
      file:="|<>*178$17.0200zU3XUC1Us33bWCP4taNaQmNn1bA6QkNn0lA30k3307A07k0201"
      if(result:=FindText(X:="wait", Y:=20, 370-150000, 677-150000, 370+150000, 677+150000, 0, 0, file))
      {   if (ok:=FindText(&fX, &fY, 370-150000, 677-150000, 370+150000, 677+150000, 0, 0, file))
         {
            mousemove(fX, fY)
            Sleep 200
            Download:=dlX:=dlY:=""
            Download:="|<>*179$19.0C007003U01k00s00Q00C007007k03s00s0k86M03A01a00nzztzzx"
            if (res:=FindText(&dlX, &dlY, 676-150000, 677-150000, 676+150000, 677+150000, 0, 0, Download))
            {
            FindText().Click(dlX, dlY, "L")
            Sleep 500
               delete:=deX:=deY:=""
               delete:="|<>*175$19.1zk1zw0k63zzvzzyM0AA06603301VU0kk0MM0AA06603301UU0UE0EDzs7zwE"
               if (ok:=FindText(&deX, &deY, 920-150000, 814-150000, 920+150000, 814+150000, 0, 0, delete))
               {
               FindText().Click(deX, deY, "L")
               }
            }
         }
      }
      else
      {
         MsgBox "didn't find the file icon"
         Exit
      }
   }
}else
{MsgBox "didn't find the upload icon"
Exit
}
Send "!{tab}"
}