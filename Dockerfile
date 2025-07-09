# استفاده از تصویر Node.js برای ساخت پروژه
FROM node:16 AS build

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .
RUN npm run build

# ساخت یک سرور سبک برای ارائه فایل‌های استاتیک
FROM nginx:alpine

COPY --from=build /app/build /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
