# constants
PORT=8081
HOST=localhost

# vendor
REDBEAN=vendor/redbean.com

# build
BUILD=bin/redbean.com

# download dependencies
download:
	curl -o ${REDBEAN} https://redbean.dev/redbean-3.0.0.com && chmod +x ${REDBEAN}

build:
	cp -f ${REDBEAN} ${BUILD}
	cd src/ && zip -r ../${BUILD} `ls -A`

run: build
	${BUILD} -vv -p ${PORT} -l ${HOST} -D ./bin/