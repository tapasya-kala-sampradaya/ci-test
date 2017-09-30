file_deploy() {

  lftp -u $USER,$PASS -e "set ftp:ssl-allow no ; mirror -v -c -e -R rama/ ~/ci-test/rama/; exit" -p 21 $HOST
}

os_deploy() {
  echo "OS deploy"
}