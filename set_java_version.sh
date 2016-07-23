#!/bin/bash -e

#
# Function to install and set up JAVA version depending on env variable
# called BUILD_VERSION in shippable.yml
#

STANDARD_VERSIONS="java-8-oracle java-7-oracle java-7-openjdk-amd64 java-6-openjdk-amd64"

if [[ ! $STANDARD_VERSIONS =~ $BUILD_VERSION ]]; then
  export INSTALL_VERSION=$BUILD_VERSION.sh
  . $SHIPPABLE_BUILD_DIR/maven-example/java_versions/$INSTALL_VERSION
fi

setup_jdk() {
  export JAVA_HOME="/usr/lib/jvm/$BUILD_VERSION";
  export PATH="$PATH:/usr/lib/jvm/$BUILD_VERSION/bin";
  java_path="/usr/lib/jvm/$BUILD_VERSION/jre/bin/java";
  javac_path="/usr/lib/jvm/$BUILD_VERSION/bin/javac";

    if [ -f $java_path ]; then
      update-alternatives --set java $java_path
    fi

    if [ -f $javac_path ]; then
      update-alternatives --set javac $javac_path
    fi

    java -version
}

# Call setup JAVA version
setup_jdk
