file_deploy() {
  rm -rf rama
  find rama -type f -exec curl --ftp-create-dirs -u $FTP_USER:$FTP_PASS -T {} $FTP_HOST/ci-test/{} \;
}

os_deploy() {
  echo "OS deploy"
}