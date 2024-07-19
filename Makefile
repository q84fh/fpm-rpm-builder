all: push

build: build-centos8 build-centos7 build-ubuntu24.04

build-centos7:
	docker build -t q84fh/fpm-rpm-builder:centos7 centos7/

build-centos8:
	docker build -t q84fh/fpm-rpm-builder:centos8 centos8/

build-ubuntu24.04:
	docker build -t q84fh/fpm-rpm-builder:ubuntu24.04 ubuntu24.04/

push: build-centos7 build-centos8 build-ubuntu24.04
	docker push q84fh/fpm-rpm-builder:ubuntu24.04
	docker push q84fh/fpm-rpm-builder:centos8
	docker push q84fh/fpm-rpm-builder:centos7