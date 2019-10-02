#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance Force

^!t::
  InputBox, sellItem1, Warframe Trader, What are you selling? (Item 1)
  InputBox, priceItem1, Warframe Trader, Price? (Item 1)
  InputBox, sellItem2, Warframe Trader, What are you selling? (Item 2)
  InputBox, priceItem2, Warframe Trader, Price? (Item 2)
  InputBox, sellItem3, Warframe Trader, What are you selling? (Item 3)
  InputBox, priceItem3, Warframe Trader, Price? (Item 3)
	
  sleep, 10000
  
  Loop,  
  {
    breaker = 0

    sleep, 2000
    send, WTS %sellItem1% %priceItem1% %sellItem2% %priceItem2% %sellItem3% %priceItem3%
    send, {Enter}
    sleep, 10000
    Loop, 62
    {
      if breaker = 1
      {
        breaker = 0
        MsgBox, exited
        ExitApp
      }
      sleep, 2000
    }
}
return



return

^!Esc::

  breaker = 1

return