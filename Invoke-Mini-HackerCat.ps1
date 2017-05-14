Function Invoke-Mini-HackerCat
{	
	$html = "<html><style>body {height: 99%; width: 99%; left: 0; top:0; background-color: black; background-image: url(https://media.giphy.com/media/o0vwzuFwCGAFO/giphy.gif); background-repeat: no-repeat; background-size: auto 100%; background-position: center;}* {box-sizing: border-box;}p {font-family: monospace;font-weight: bold;font-size: 4.1vh;margin: 0;padding: 0;line-height: 1;color: limegreen;text-shadow: 0px 0px 10px limegreen;}.msg {font-family: monospace;font-weight: bold;text-transform: uppercase;font-size: 5vh;padding-top: 1vh;background: red;box-shadow: 0 0 30px red;text-shadow: 0 0 20px white;color: white;width: 20vw;height: 15vh;position: absolute;left: 50%;margin-left: -10vw;top: 50%;margin-top: -5vh;text-align: center;min-width: 200px;animation-name: blink;animation-duration: 0.6s;animation-iteration-count: infinite;animation-direction: alternate;animation-timing-function: linear;}@keyframes blink {0% {opacity: 0;}100% {opacity: 1;}}</style><body><div class='msg'>Hacked by Hacker Cat</div><div id='console'></div></body><script>var intervalID = window.setInterval(updateScreen, 200);var c = document.getElementById('console');var txt = ['FORCE: XX0022. ENCYPT://000.222.2345','TRYPASS: ********* AUTH CODE: ALPHA GAMMA: 1___ PRIORITY 1','RETRY: REINDEER FLOTILLA','Z:> /FALKEN/GAMES/TICTACTOE/ EXECUTE -PLAYERS 0','================================================','Priority 1 // local / scanning...','scanning ports...','BACKDOOR FOUND (23.45.23.12.00000000)','BACKDOOR FOUND (13.66.23.12.00110000)','BACKDOOR FOUND (13.66.23.12.00110044)','...','...','BRUTE.EXE -r -z','...locating vulnerabilities...','...vulnerabilities found...','MCP/> DEPLOY CLU','SCAN: __ 0100.0000.0554.0080','SCAN: __ 0020.0000.0553.0080','SCAN: __ 0001.0000.0554.0550','SCAN: __ 0012.0000.0553.0030','SCAN: __ 0100.0000.0554.0080','SCAN: __ 0020.0000.0553.0080',];var docfrag = document.createDocumentFragment();function updateScreen() {txt.push(txt.shift());txt.forEach(function(e) {var p = document.createElement('p');p.textContent = e;docfrag.appendChild(p);});while (c.firstChild) {c.removeChild(c.firstChild);}c.appendChild(docfrag);}</script></html>"
	$File = $PWD.path + "\" + "call_card.html" -replace "\\","/"
	$html | Out-File $File
    Add-type -AssemblyName System.Windows.Forms
	start-process $( "file:///" + $File ) -WindowStyle Maximized
	start-sleep 2
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
	for ($i=1; $i -le 10; $i++ ) {
		"You have been hacked! Please call your I A M!" | out-voice
		"Hacker Cat Strikes Again!!!!!" | out-voice
    }
}
