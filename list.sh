. ./globals
. ./env
./get_token.sh
. ~/.gdrive_cli_auth

curl -H "GData-Version: 3.0" -H "Authorization: Bearer $TOKEN" https://www.googleapis.com/drive/v2/files
