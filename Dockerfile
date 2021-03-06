FROM openjdk:8-jre-alpine

WORKDIR /home

ENV componentName "symbioteAPI"
ENV componentVersion 1.0

#RUN apk --no-cache add \
#	git \
#	unzip \
#	wget \
#	bash \
#    && echo "Downloading $componentName $componentVersion" \
#	&& wget "https://jitpack.io/com/github/symbiote-h2020/$componentName/$componentVersion/$componentName-$componentVersion-run.jar"
COPY ${JAR_FILE} utils.jar

EXPOSE 9191 8443

# CMD java -DSPRING_BOOT_WAIT_FOR_SERVICES=symbiote-coreinterface:8100 -Xmx1024m -Duser.home=/home -Dspring.output.ansi.enabled=NEVER -jar $(ls *.jar)