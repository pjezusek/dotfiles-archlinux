#!/bin/bash

PRIMARY_MONITOR="HDMI-0"
SECONDARY_MONITOR="DCP-3"
SECONDARY_MONITOR_LOCATION="--left-of HDMI-0"
RESOLUTION="1920x1080"
setup_monitors() {
  xrand --output $PRIMARY_MONITOR --mode $RESOLUTION --fb $RESOLUTION --panning $RESOLUTION --primary
  xrand --output $SECONDARY_MONITOR --mode $RESOLUTION --panning $RESOLUTION $SECONDARY_MONITOR_LOCATION
}

SESSIONS=(base config SSH)
setup_tmux() {
	local tmux_sessions_list=$(tmux ls | sed 's/://' | awk {'print $1'})	
  if [[ $? = 0 ]]; then
    declare -A tmux_sessions_dictionary
    for session in ${tmux_sessions_list[@]}
    do
      tmux_sessions_dictionary[$session]=true
    done
    for session in ${SESSIONS[@]}
    do
      if [[ ${tmux_sessions_dictionary[$session]} != true ]]; then
        tmux new -d -s $session
        tmux send -t "${session}" "teamocil --here ${session}" ENTER
      fi
    done
  else
    for session in ${SESSIONS[@]}
    do
      tmux new -d -s $session
      tmux send -t "${session}" "teamocil --here ${session}" ENTER
    done
  fi
}

