FROM ubuntu:rolling
RUN apt-get update
RUN apt-get install -y clang-8 lldb git cmake ninja-build\
 && ln -s /usr/bin/clang++-8 /usr/bin/clang++\
 && ln -s /usr/bin/clang-8 /usr/bin/clang
RUN cd /opt\
 && git clone https://github.com/google/googletest.git\
 && cd /opt/googletest\
 && cmake .\
 && make install