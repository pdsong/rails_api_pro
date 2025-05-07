查询用户信息
curl http://192.168.137.139:3000/api/v1/users/1
添加用户
curl -X POST http://192.168.137.139:3000/api/v1/users -H "Content-Type: application/json" -d '{"user": {"email":"3@qq.com", 
"password":"3"}}'
修改用户
curl -X PUT http://192.168.137.139:3000/api/v1/users/1 -H "Content-Type: application/json" -d '{"user": {"email": "111@qq.com"}}'
删除用户
curl -X DELETE http://192.168.137.139:3000/api/v1/users/1


创建token
curl -X POST http://192.168.137.139:3000/api/v1/tokens \
-H "Content-Type: application/json" \
-d '{
  "user": {
    "email": "3@qq.com",
    "password": "3"
  }
}'
可以在rails console中查看到token
JsonWebToken.decode("eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozLCJleHAiOjE3NDY3MjUxMzB9.kcg0hTPiM10D8pYU-wu0Qa2DtjSAdgl-BvAlCVwntnY")
=> {"user_id" => 3, "exp" => 1746725130}


创建产品
  curl -X POST http://192.168.137.139:3000/api/v1/products \
-H "Content-Type: application/json" \
-H "Authorization: eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozLCJleHAiOjE3NDY3MjUxMzB9.kcg0hTPiM10D8pYU-wu0Qa2DtjSAdgl-BvAlCVwntnY" \
-d '{
  "product": {
    "title": "Sample Product",
    "price": 29.99,
    "published": true
  }
}'

更新产品
  curl -X PUT http://192.168.137.139:3000/api/v1/products/1 \
-H "Content-Type: application/json" \
-H "Authorization: eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozLCJleHAiOjE3NDY3MjUxMzB9.kcg0hTPiM10D8pYU-wu0Qa2DtjSAdgl-BvAlCVwntnY" \
-d '{
  "product": {
    "title": "new Name 产品",
    "price": 129.99,
    "published": true
  }
}'


删除产品
 curl -X DELETE http://192.168.137.139:3000/api/v1/products/1 \
-H "Content-Type: application/json" \
-H "Authorization: eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozLCJleHAiOjE3NDY3MjUxMzB9.kcg0hTPiM10D8pYU-wu0Qa2DtjSAdgl-BvAlCVwntnY" \
