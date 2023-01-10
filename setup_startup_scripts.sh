echo "This script will set up the following files:
* Version Control: gitconfig
"

# For instructions on how to do a confirmation like this, see
# http://stackoverflow.com/questions/1885525/how-do-i-prompt-a-user-for-confirmation-in-bash-script
read -r -p "This should just add a line to your files, but it could cause
unintended consequences.  Are you sure you want to continue? [Y/n] " response

response=`echo $response | tr '[:upper:]' '[:lower:]'` # convert to lowercase; support old Bash
if [[ $response == y || $response == yes ]]; then
	# Get the path of the config directory, which is the same as the directory
  # from which this script was executed.  From
  # http://stackoverflow.com/questions/59895/can-a-bash-script-tell-what-directory-its-stored-in
  pushd `dirname $0` > /dev/null
  CONFIG_PATH=`pwd`
  popd > /dev/null

  # Append the command to source the relevant files in this repo to the actual
  # dot files.  Only add the line if the line doesn't already exist

  # Config git
  if [ \( -z "`grep -s "$CONFIG_PATH/gitconfig" $HOME/.gitconfig`" \) ]; then
  	read -r -p "Please type your GitHub username: " GIT_USERNAME
  	# echo Username: $GIT_USERNAME
  	read -r -p "Please type your GitHub user's Email: " GIT_EMAIL
  	# echo Email: $GIT_EMAIL
  	echo "" > $CONFIG_PATH/gitconfig
  	echo "[user]
	name = $GIT_USERNAME
	email = $GIT_EMAIL
[push]
	default = simple
[color]
  ui = true" >> $CONFIG_PATH/gitconfig
    echo -e "[include]\n  path = $CONFIG_PATH/gitconfig" >> $HOME/.gitconfig
  fi

fi