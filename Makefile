OS = darwin freebsd linux openbsd windows
ARCHS = 386 arm amd64 arm64

all: build release

build: deps
	go build

release: clean deps
	@for arch in $(ARCHS); do \
		for os in $(OS); do \
			echo "Building for $$os-$$arch"; \
			mkdir -p build/gooker-$$os-$$arch/; \
			GOOS=$$os GOARCH=$$arch go build -o build/gooker-$$os-$$arch/gooker; \
			tar cz -C build -f build/gooker-$$os-$$arch.tar.gz gooker-$$os-$$arch; \
		done \
	done

test: deps
	go test ./...

deps:
	go get -d -v -t ./...

clean:
	rm -rf build
	rm -f gooker
