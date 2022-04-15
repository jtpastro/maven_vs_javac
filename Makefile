all: build compare_bytecode compare_sizes compare_binary

build: maven java_c

maven:
	mvn clean package

java_c:
	./build_javac.sh

compare_bytecode: target target_javac
	javap -c target/classes/br/unb/HelloWorld.class | tee target/bytecode
	javap -c target_javac/HelloWorld.class | tee target_javac/bytecode
	diff -s target/bytecode target_javac/bytecode

compare_sizes: target target_javac
	ls -lh target/*.jar target/classes/br/unb/*.class target_javac/*.jar target_javac/*.class

compare_binary: target target_javac
	./hexdiff.sh
