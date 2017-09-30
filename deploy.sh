file_deploy() {

  lftp -u $FTP_USER,$FTP_PASS -e "set ftp:ssl-allow no ; mirror -v -c -e -R ./dist ~/ci-test ; exit" -p 21 $FTP_HOST
}

os_deploy() {
  echo "OS deploy"
}