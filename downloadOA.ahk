#Requires AutoHotkey v2.0
#include <FindText>
^!r::Reload  ; Ctrl+Alt+R
;t1:=A_TickCount, 
Fileop:=FileopX:=FileopY:="",i:=0
Fileop:="|<>*203$19.TyUDzs7zy3zzVzzszzwTzyDzzbzznzztzzwtmSNtb9slYxwnBwtmwwzzyTzzDzzbzznzzu"
^5::{
    if (Fileok:=FindText(&FileopX, &FileopY, 420-150000, 395-150000, 420+150000, 395+150000, 0, 0, Fileop))
    {
        for i,v in Fileok
        {
            FindText().Click(Fileok[1].X+150, Fileok[i].Y, "L")
            dl:=dlX:=dlY:=""
            dl:="|<>*199$17.007ztz00S00w0Ts02w0Bg3zC1i66Q6Ds01k03U0707y00Q00k"
            if (dlok:=FindText(&dlX:="wait", &dlY:=3, 0,0,0,0,0,0,dl))
                {
                FindText().Click(dlX, dlY, "L")
                Sleep 1000
                Send "!{tab}"
                ;sleep 1000
            }
            while((!(again:=FindText(&dlX:="wait", &dlY:=3, 0,0,0,0,0,0,dl)))&&(!WinActive("ahk_exe chrome.exe")))
            {
            sleep 100
            }
            Send "!{F4}"
            ; dlok:=FindText(&dlX:="wait", &dlY:=3, 0,0,0,0,0,0,dl)  ; 等待3秒等图像出现
            ; dlok:=FindText(&dlX:="wait0", &dlY:=-1, 0,0,0,0,0,0,dl)  ; 无限等待等图像消失
            /*while(disappear:=FindText(&dlX:="wait0", &dlY:=-1, 0,0,0,0,0,0,dl)<0)
            {
            Send "!{F4}"
            Sleep 100
            }*/
            fileok2:=FindText(&FileopX:="wait", &FileopY:=3, 0,0,0,0,0,0,Fileop)  ; 等待20秒等图像出现    
        }
    }
}