This sample Maven project originated from JFrog here:
https://github.com/JFrogDev/project-examples/tree/master/maven-example

In addition to the Maven example, the following items were added to
demonstrate the use of Shippable's CI/CD system:
* CI instructions for triggering matrix builds/tests against multiple Java major
and minor releases using Maven
  * installation of the appropriate java version occurs within each build, if it is not one of the standard versions already included in the Shippable standard image
* Dynamic embedding of secure credentials into the Maven .setting.xml file
for performing a maven-deploy to JFrog Artifactory
