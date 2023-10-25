all: build build-linux-arm64

build:
	@GOPROXY=https://goproxy.cn go mod tidy
	@GOOS=linux GOARCH=amd64 GOPROXY=https://goproxy.cn go build -o build/pgcacher .

build-linux-arm64:
	@GOPROXY=https://goproxy.cn go mod tidy
    @GOOS=linux GOARCH=arm64 GOPROXY=https://goproxy.cn go build -o build/pgcacher_arm .