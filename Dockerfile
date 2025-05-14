main
Audio-Engine-Branch
FROM python:3.11

WORKDIR /app
RUN apt update && apt install -y ffmpeg
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000
CMD ["python", "main.py"]

FROM node:18

WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install
COPY . .
RUN npm run build

FROM nginx:stable-alpine
COPY --from=0 /app/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
main

FROM golang:1.21

WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download
COPY . .

RUN go build -o server
EXPOSE 8000
CMD ["./server"]
Backend-Branch
