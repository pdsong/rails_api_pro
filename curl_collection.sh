查询用户信息
curl http://192.168.137.139:3000/api/v1/users/1
添加用户
curl -X POST http://192.168.137.139:3000/api/v1/users -H "Content-Type: application/json" -d '{"user": {"email":"3@qq.com", 
"password":"3"}}'