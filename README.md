\# Session 10 - Exercise 2: Single-stage Dockerfile



\## 1. Mục tiêu



Đóng gói ứng dụng REST API sử dụng Node.js và Express thành Docker Image bằng Dockerfile single-stage.



\## 2. Công nghệ sử dụng



\* Node.js 18 Alpine

\* Express 4

\* Docker



\## 3. Cấu trúc thư mục



```text

ex2/

├── Dockerfile

├── package.json

├── server.js

└── README.md

```



\## 4. Chức năng API



Ứng dụng cung cấp REST API tại đường dẫn `/`.



\* Method: GET

\* Port trong container: 3000

\* Response: JSON

\* HTTP Status mong đợi: 200 OK



Response mẫu:



```json

{

&#x20; "status": "success",

&#x20; "message": "Hello from Docker Single-stage!"

}

```



\## 5. Xây dựng Docker Image



```powershell

docker build -t hw-backend:v1 .

```



\## 6. Chạy container



```powershell

docker run -d --name app-single-stage -p 8080:3000 hw-backend:v1

```



Cổng 8080 trên máy tính được ánh xạ đến cổng 3000 trong container.



\## 7. Kiểm tra ứng dụng



```powershell

docker ps

docker logs app-single-stage

curl.exe -i http://localhost:8080/

```



Kết quả mong đợi là container có trạng thái Up và API trả về HTTP 200 OK cùng dữ liệu JSON.



\## 8. Kết luận



Đã thực hành viết Dockerfile single-stage, xây dựng Docker Image và chạy ứng dụng REST API trong container. Việc ánh xạ cổng giúp truy cập API từ máy tính thông qua địa chỉ http://localhost:8080/.



