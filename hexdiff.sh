#!/bin/bash
rm -rf hexdiff
git clone https://github.com/jtpastro/hexdiff.git
cd hexdiff && make
./hexdiff ../target/classes/br/unb/*.class ../target_javac/*.class
