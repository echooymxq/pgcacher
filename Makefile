all: build build-arm

.PHONY: build
build:
	@GOPROXY=https://goproxy.cn go mod tidy
	@GOOS=linux GOARCH=amd64 GOPROXY=https://goproxy.cn go build -o build/pgcacher .

.PHONY: build-arm
build-arm:
	@GOPROXY=https://goproxy.cn go mod tidy
	@GOOS=linux GOARCH=arm64 GOPROXY=https://goproxy.cn go build -o build/pgcacher_arm64 .