file_deploy() {
  curl -u $FTP_USER:$FTP_PASS -X DELETE "$FTP_HOST/ci-test/";
  find rama -type f -exec curl --ftp-create-dirs -u $FTP_USER:$FTP_PASS -T {} $FTP_HOST/ci-test/{} \;
}

os_deploy() {
  echo "OS deploy"
}