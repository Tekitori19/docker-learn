# Base image
FROM node:18-alpine
# Thư mục chính
WORKDIR /app
# Copy thư mục hiện tại vào thư mục chính của container
COPY . .
# Chạy command bên trong container
RUN yarn install --production
# Lệnh/Chương trình được chạy khi container start 
CMD [ "node", "src/index.js" ]
# Mở cổng trên container
EXPOSE 3000

# xem thêm nhiều hơn tại docker docs