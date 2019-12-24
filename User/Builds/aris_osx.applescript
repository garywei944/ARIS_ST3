-- Open iTerm, create new window, run <command>, and exit after hitting <Enter>
-- Usage: osascript <dir> <command>

on run argv
	if application "iTerm2" is running or application "iTerm" is running then
		tell application "iTerm"
			create window with default profile
			select first window
			tell the first window
				tell current session to write text "cd " & item 1 of argv & "; clear; " & item 2 of argv & "; read line; exit"
			end tell
		end tell
	else
		tell application "iTerm"
			activate
			select first window
			tell the first window
				tell current session to write text "cd " & item 1 of argv & "; clear; " & item 2 of argv & "; read line; exit"
			end tell
		end tell
	end if
end run
