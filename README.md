***File Permissions***

1. chown -R apache.apache /var/www/laravel
2. chmod -R 755 /var/www/laravel
3. chmod -R 755 /var/www/laravel/storage

***SELinux enabled systems also run the below command to allow write on storage directory.***

1. chcon -R -t httpd_sys_rw_content_t /var/www/laravel/storage

***Third party network calls***
1. setsebool httpd_can_network_connect 1

***Get all SELinux configurations***
getsebool -a

***How to fix Error: laravel.log could not be opened?***
1. sudo chown -R $USER:www-data storage
2. chmod -R 775 storage


alias bitbucket_token="echo 'ATBBKy8GJuT3gwTJG36RbTmvae6pD15C9151'"
alias github_token="echo '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'"
alias gta_github_token="echo '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'"
alias gta_github_user="git config --global user.email 'robin@primtechs.com' && git config --global user.name 'robingta'"
alias github_user="git config --global user.email 'sk118420@gmail.com' && git config --global user.name 's1k3'"
alias edit_path="sudo nano ~/.bashrc"
alias smart_school_ssh="sudo ssh -i '/var/pem/school_project_test.pem' ubuntu@ec2-34-234-17-110.compute-1.amazonaws.com"
alias smart_school_sftp="sudo sftp -i '/var/pem/school_project_test.pem' ubuntu@ec2-34-234-17-110.compute-1.amazonaws.com"

function switch(){
  sudo update-alternatives --config "$1";
}
