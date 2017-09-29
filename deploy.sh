file_deploy() {

  find rama -type f -exec curl --ftp-create-dirs -u $FTP_USER:$FTP_PASS -T {} -Q "rm -rf ci-test; mkdir ci-test; cd ci-test" $FTP_HOST/{} \;
}

os_deploy() {
  echo "OS deploy"
}