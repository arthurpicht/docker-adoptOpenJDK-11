FROM arthurpicht/debian-11:latest

ENV DOCKER_NAME="adoptopenjdk-11"
ENV JAVA_HOME /man/java
ENV PATH $JAVA_HOME/bin:$PATH

# see https://github.com/docker-library/docs/tree/master/openjdk

# TEMP: cache file locally, dev-time only
# COPY openjdk.tar.gz .

RUN set -eux; \
	export OPENJDK_URL="https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.11%2B9/OpenJDK11U-jdk_x64_linux_hotspot_11.0.11_9.tar.gz"; \
	export OPENJDK_FILE="OpenJDK11U-jdk_x64_linux_hotspot_11.0.11_9.tar.gz"; \
	wget -O "$OPENJDK_FILE" "$OPENJDK_URL"; \	
	HASH="e99b98f851541202ab64401594901e583b764e368814320eba442095251e78cb"; \
	HASH="$HASH $OPENJDK_FILE"; \
	echo $HASH | sha256sum -c; \
	mkdir -p "$JAVA_HOME"; \
	tar --extract \
		--file "$OPENJDK_FILE" \
		--directory "$JAVA_HOME" \
		--strip-components 1 \
		--no-same-owner \
	; \
	rm "$OPENJDK_FILE"; \
	echo "$OPENJDK_URL" >> /.components; \
	javac --version; \
	java --version; 
