.PHONY: build test clean install

BINARY_NAME=nara

build:
	go build -o bin/$(BINARY_NAME) ./cmd/nara

test:
	go test -v ./...

clean:
	rm -rf bin/

install:
	go install ./cmd/nara
