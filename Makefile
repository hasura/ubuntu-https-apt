ubuntu_version := $(shell awk '/^FROM ubuntu:/ {split($$2,a,":"); print a[2]}' Dockerfile)
image:
	docker build -t "hasura/ubuntu-https-apt:$(ubuntu_version)" .
