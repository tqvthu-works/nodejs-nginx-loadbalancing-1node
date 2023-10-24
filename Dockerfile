# Sử dụng hình ảnh Node.js làm cơ sở
FROM node:16

# Tạo thư mục làm việc
WORKDIR /app
COPY . .

RUN npm install
RUN npm rebuild bcrypt

# Expose cổng mặc định của ứng dụng (thay đổi nếu cần)
EXPOSE 3000

# Lệnh để chạy ứng dụng
CMD ["npm", "run", "dev"]
