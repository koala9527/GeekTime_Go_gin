# builder
FROM golang:alpine AS builder
ENV GO111MODULE=on 
ENV GOPROXY="https://goproxy.cn"
WORKDIR /go/src/app
COPY . .
RUN go build .
 
# runner
FROM alpine:latest
WORKDIR /root/
COPY --from=builder /go/src/app .
ENV TZ=Asia/Shanghai
EXPOSE 8001
ENTRYPOINT ["./main"]

#docker run --name geektime -p 9084:8001 -d geektime --restart=always 树莓配B4运行