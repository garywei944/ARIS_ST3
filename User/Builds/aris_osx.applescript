on run argv
	if application "iTerm2" is running then
		tell application "iTerm2"
			create window with default profile
			select first window
			tell the first window
				tell current session to write text "clear; " & item 1 of argv & "; read line; exit"
			end tell
		end tell
	else
		tell application "iTerm2"
			activate
			select first window
			tell the first window
				tell current session to write text "clear; " & item 1 of argv & "; read line; exit"
			end tell
		end tell
	end if
end run
