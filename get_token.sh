. ./globals
. ./env
./auth.sh
. ~/.gdrive_cli_auth

if [ -z "$TOKEN" ]; then
  RESPONSE=`curl -s -d "code=$CODE&client_id=$CLIENT_ID&client_secret=$CLIENT_SECRET&redirect_uri=$REDIRECT_URI&grant_type=authorization_code" -H "Content-Type: application/x-www-form-urlencoded" -X POST https://www.googleapis.com/oauth2/v4/token`
  TOKEN=`echo $RESPONSE | jq --raw-output .access_token`
  echo "TOKEN=$TOKEN" >> ~/.gdrive_cli_auth
fi
