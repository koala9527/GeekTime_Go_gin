推送代码体积过大需要设置nginx  
gitlab-ctl reconfigure  
nginx['client_max_body_size'] = '1024m'  
gitlab-ctl reconfigure  
#docker run -d -p 9084:8001 --restart=on-failure --name geektime geektime
