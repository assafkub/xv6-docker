FROM ubuntu:latest

RUN apt-get -qq update

RUN apt-get install -y git \
                    build-essential \
                    gdb \
                    gcc-multilib \
                    tmux

RUN git clone http://web.mit.edu/ccutler/www/qemu.git -b 6.828-2.3.0

RUN apt-get install -y libsdl1.2-dev \
                        libtool-bin \
                        libglib2.0-dev \
                        libz-dev \
                        libpixman-1-dev

RUN apt-get install -y python
RUN ls -l /usr/bin/python*

RUN cd qemu && \
        ./configure --disable-kvm --disable-werror --target-list="i386-softmmu x86_64-softmmu" && \
        pwd && make && \
        pwd && make install && \
        cd ..

RUN cd /root && git clone https://github.com/mit-pdos/xv6-public.git

WORKDIR /root/xv6-public

CMD ["sh"]
