#!/bin/bash -e

echo "================ Installing oracle-java8-minor-release-1.8.0_91 ================="
echo "skipping - currently default version"
# echo oracle-java8-minor-release shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
# # create dir for minor version
# mkdir -p /usr/lib/jvm/oracle-java-1.8.0_91
# cd /usr/lib/jvm
# # download java minor version
# wget --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u91-b14/jdk-8u91-linux-x64.tar.gz
# # unzip
# tar -zxf jdk-8u91-linux-x64.tar.gz -C /usr/lib/jvm/oracle-java-1.8.0_91
# # move unzipped files up one level (note - must use cp, not mv due to file system bug)
# cp -aR /usr/lib/jvm/oracle-java-1.8.0_91/jdk1.8.0_91/. /usr/lib/jvm/oracle-java-1.8.0_91/
# # remove original unzipped directory
# rm -rf /usr/lib/jvm/oracle-java-1.8.0_91/jdk1.8.0_91/
# # register version
# update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/oracle-java-1.8.0_91/jre/bin/java" 91
# update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/oracle-java-1.8.0_91/bin/javac" 91
