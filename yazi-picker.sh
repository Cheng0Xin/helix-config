#!/usr/bin/env fish

set files (yazi --chooser-file=/dev/stdout | xargs echo " ")

set actpaneid (wezterm cli get-pane-direction Prev)

if test -z "$files"
    exit 0
end

wezterm cli send-text --pane-id $actpaneid --no-paste ":$argv[1] $files"
