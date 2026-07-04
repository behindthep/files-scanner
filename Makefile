.DEFAULT_GOAL := build-run

setup:
	mvn dependency:resolve

clean:
	mvn clean

build:
	mvn clean package

install:
	mvn clean install

run-dist:
	./target/files-scanner-1.0-SNAPSHOT/bin/files-scanner

run:
	mvn exec:java -Dexec.mainClass="hexlet.code.App"

test:
	mvn test

report:
	mvn jacoco:report

lint:
	mvn checkstyle:check

update:
	mvn versions:display-dependency-updates

build-run: build run

.PHONY: setup clean build install run-dist run test report lint update build-run