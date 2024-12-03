FROM node:16

# Tạo thư mục làm việc trong container
WORKDIR /app

# Copy package.json và package-lock.json để cài đặt các dependencies
COPY package.json package-lock.json ./
RUN npm install

# Copy toàn bộ mã nguồn vào container
COPY . .

# Mở cổng ứng dụng
EXPOSE 3000

# Chạy ứng dụng khi container được khởi động
CMD ["npm", "start"]