SHELL		:= /bin/sh

PREFIX		?= /usr/local

TARGET		:= mdcat


install: release
	cp target/release/${TARGET} ${DESTDIR}/${PREFIX}/bin/
	strip ${DESTDIR}/${PREFIX}/bin/${TARGET}
release:
	cargo build --release --locked


.PHONY: release install
