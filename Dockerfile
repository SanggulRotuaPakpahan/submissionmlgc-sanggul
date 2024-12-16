# Gunakan base image Node.js
FROM node:18

# Set working directory
WORKDIR /usr/src/app

# Copy package.json dan package-lock.json
COPY package*.json ./

# Install dependensi
RUN npm install

# Copy semua kode proyek ke dalam image
COPY . .

# Expose port sesuai aplikasi
EXPOSE 8080

# Jalankan aplikasi
CMD ["node", "src/index.js"]