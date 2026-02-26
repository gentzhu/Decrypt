#include <FindText>

CoordMode "Mouse","Screen"
WinActivate("ahk_exe chrome.exe")
HotIfWinActive("ahk_exe chrome.exe")
;if (ok:=FindText(&X,&Y,,,,,,,Text))
;{
  ;MsgBox(ok)
  ;MsgBox(X)
  ;MsgBox(Y)
  ;FindText().Click(X, Y, "L")
  ;MouseClick(,ok[1].x,ok[1].y)
;}

Text:="|<>*210$65.00007000007k600C00000DUA00Q00000T0M00s00000y0k01k00001w1XT3Vy1w3vs37z77y7wDzk6C7CQC8QsTUAM6QkA0NUz0MkAtUMDn0q0lUNn0lza1g1X0na1b3A3M761bA3ACMCsAC6CQCMQsQzkTwQTszszsz0rksTUykyk01U0000000003000000000060000000000A0000000000M00000004"
if (ok:=FindText(&X, &Y, 985-150000, 664-150000, 985+150000, 664+150000, 0, 0, Text))
{
  FindText().Click(X, Y, "L")
  MsgBox(ok)
  }












; ok:=FindText(&X:="wait", &Y:=3, 0,0,0,0,0,0,Text)  ; 等待3秒等图像出现
; ok:=FindText(&X:="wait0", &Y:=-1, 0,0,0,0,0,0,Text)  ; 无限等待等图像消失


