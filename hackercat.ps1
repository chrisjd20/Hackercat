﻿# Hacker Cat full screen
# Just a dumb script to bring Hacker Cat full screen with whichever Internet Browser is set as the Default.

# ******************************************************************
# ******************************************************************
# **                                                              **
# **                         Hacker Cat                           **
# **                    Written by: Z3R0th                        **
# **                                                              **
# **                                                              **
# ******************************************************************
# ******************************************************************

# Credit to Beefycode for the code for text to speech!

Function Invoke-Hackercat
{
    Add-type -AssemblyName System.Windows.Forms
    start-process "http://giphy.com/gifs/cat-hacker-webs-o0vwzuFwCGAFO/fullscreen" -WindowStyle Maximized
    start-sleep 1
    [System.Windows.Forms.SendKeys]::SendWait("{F11}")

    $voice = New-Object -ComObject SAPI.SPVoice
    $voice.Rate = 0
 
    function invoke-speech
 {
      param([Parameter(ValueFromPipeline=$true)][string] $say )
  
      process
      {
         $voice.Speak($say) | out-null;    
     }
 }
 
 new-alias -name out-voice -value invoke-speech;
 start-sleep 2
 "You have been hacked! Please call your I A M!" | out-voice
 "Hacker Cat Strikes Again!!!!!" | out-voice
}
Invoke-Hackercat
