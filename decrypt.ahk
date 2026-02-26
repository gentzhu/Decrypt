#include <FindText>
Text:="|<>*196$98.0400000000k00000k3U000k600A00000A1w000A1U030000030T00030M00k00000k3U000k600A00000A0s000A1XD30y1w1v0C00030MwsktkvVrk3U000k6C6AA608MQ0s000A1X0n61U3A30C00030MkAlUMDn0k3U000k6A3AM6DwkBUsA00A1X0n61W3A3M030030EkAlUNUn0q00k00sAC6AQ4MQkRU0A007y3nX3b3D7TTzz000T0rUkD0Qkwrzzk0000A00000000000000030000000000000000k000000000000000A000000000000000300000000U"
WinActivate("ahk_exe chrome.exe")
HotIfWinActive("ahk_exe chrome.exe")
if (ok:=FindText(&X, &Y,  , , , , , ,Text))
{
  MsgBox(ok)
  MsgBox(X)
  MsgBox(Y)
  ; FindText().Click(X, Y, "L")
  MouseClick(,ok[1].x,ok[1].y)
}














; ok:=FindText(&X:="wait", &Y:=3, 0,0,0,0,0,0,Text)  ; 等待3秒等图像出现
; ok:=FindText(&X:="wait0", &Y:=-1, 0,0,0,0,0,0,Text)  ; 无限等待等图像消失


