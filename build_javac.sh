#!/bin/bash

rm -rf target_javac
mkdir target_javac
cd src/main/java
javac br/unb/HelloWorld.java
jar cvfe br/unb/my-app-1.jar br.unb.HelloWorld br/unb/HelloWorld.class 
mv br/unb/*.jar br/unb/*.class ../../../target_javac
cd ../../../
