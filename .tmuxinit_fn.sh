_PRIMARY_SESSION_NAME="primary"

tmuxinit() {
  # Check if the session exists, discarding output
  # We can check $? for the exit status (zero for success, non-zero for failure)
  tmux has-session -t $_PRIMARY_SESSION_NAME 2>/dev/null
  if [ $? != 0 ]; then
    # session doesn't exist, this is the first terminal, create and attach
    tmux new -s $_PRIMARY_SESSION_NAME
    return
  fi

  # if there is no client attached to it, go and attach ourselves
  if tmux ls -F '#{session_attached} #{session_name}' | grep -q "0 $_PRIMARY_SESSION_NAME"; then
    tmux attach -t $_PRIMARY_SESSION_NAME
    return
  fi

  # if we get here, primary session exists and it already has a client
  # then this is probably a new terminal window, so create a new session
  tmux new
}
