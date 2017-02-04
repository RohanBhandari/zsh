function info {
	 info=`osascript -e 'tell application "Spotify"

	 set info to          "Title:  " & name of current track
	 set info to info & "\nArtist: " & artist of current track
	 set info to info & "\nAlbum:  " & album of current track

	 end tell'`
	 echo $info;
}
function next {
	 osascript -e 'tell application "Spotify" to set player to next track'
}
function ospot {
	 osascript -e 'tell application "Spotify" to activate'
}
function pause {
	 osascript -e 'tell application "Spotify" to pause'
}
function play {
	 osascript -e 'tell application "Spotify" to play'
}
function prev {
	 osascript -e 'tell application "Spotify" to set player to previous track'; osascript -e 'tell application "Spotify" to set player to previous track'
}
function replay {
	 osascript -e 'tell application "Spotify" to set player position to 0'
}
function xspot {
	 osascript -e 'tell application "System Events"' -e 'tell process "Spotify" to click button 1 of window 1' -e 'end tell' -e 'return';
}