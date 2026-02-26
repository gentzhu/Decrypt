; 这个脚本是个失败的脚本，这个版本运行失败
#Requires AutoHotkey v2.0
#include <FindText>
upload:=upX:=upY:=""
upload:="|<>*211$19.04007003U03s00s00Q00C007003U01k00s0kQ6M03A01a00nzztzzx"
;#SuspendExempt
^+s::exit
;#SuspendExempt false
^4::{
Send "^1"
sleep 200
a:=A_Clipboard
send "^2"
;b:=A_Clipboard
WinActivate("ahk_exe chrome.exe")
HotIfWinActive("ahk_exe chrome.exe")
if (outcome:=FindText(X:="wait", Y:=20, 370-150000, 677-150000, 370+150000, 677+150000, 0, 0, upload))
{   if (ok:=FindText(&upX, &upY, 1093-150000, 933-150000, 1093+150000, 933+150000, 0, 0, upload))
   {
      ;i:=WinGetCount("ahk_exe chrome.exe")
      FindText().Click(ok[2].x, ok[2].y, "L")
      ; 监听新窗口事件
      OnMessage(0x0083, "WM_WINDOWPOSCHANGED") ; 使用 WM_WINDOWPOSCHANGED 消息来检测窗口变化

; 定义处理函数
      WM_WINDOWPOSCHANGED(wParam, lParam) {
         global
         
         ; 获取当前鼠标位置
         MouseGetPos(&mouseX, &mouseY)

         ; 获取鼠标下的控件句柄
         hCtrl := DllCall("WindowFromPoint", "int", mouseX, "int", mouseY, "Ptr")

         if (hCtrl != 0) {
            ; 获取控件的类名和编号
            VarSetStrCapacity(&className, 256)
            DllCall("GetClassName", "Ptr", hCtrl, "Str", className, "Int", 256)
            ctrlId := DllCall("GetDlgCtrlID", "Ptr", hCtrl, "UInt")
            
            ; 构造 ClassNN 字符串（例如 Edit1）
            classNN := className . ctrlId

            ; 检查控件是否是 Edit 类并且 ClassNN 为 Edit1
            if (classNN == "Edit1") {
                  ; 执行粘贴操作
                  Send("^v")

                  ; 可选：通知用户已完成粘贴
                  MsgBox("在新建窗口中检测到 ClassNN 为 Edit1 的控件，已执行粘贴。")
            }
         }
      }
      ;send "{Shift}"
      ;sleep 200
      Send "^v"
      sleep 200
      Send "{F4}"
      sleep 200
      Send "^a"
      sleep 200
      A_Clipboard:=a
      Send "^v"
      sleep 500
      send "{Enter}"
      sleep 200
      send "{Esc}"
      sleep 200
      send "{Enter}"
      sleep 200
      send "{Enter}"
      sleep 200
      send "{Enter}"
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
}