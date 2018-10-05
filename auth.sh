. ./globals
. ./env
if [ ! -f ~/.gdrive_cli_auth ]; then
  echo "Auth Missing hit enter to open browser to complete auth"
  read null
  open "https://accounts.google.com/o/oauth2/auth?response_type=code&client_id=$CLIENT_ID&scope=$SCOPE&redirect_uri=$REDIRECT_URI"
  echo "Paste token:"
  read CODE
  echo "CODE=$CODE" > ~/.gdrive_cli_auth
fi
