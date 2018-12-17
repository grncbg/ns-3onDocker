FROM ubuntu:18.04

WORKDIR /opt

RUN : "apt update" && \
    apt-get update -y && \
    apt upgrade -y && \
    : "etc" && \
    apt install -y --no-install-recommends \
        build-essential \
        wget \
    && \
    : "c++" && \
    apt install -y --no-install-recommends \
        g++ \
        gcc \
        python \
    && \
    : "python" && \
    apt install -y --no-install-recommends \
        g++ \
        gcc \
        python \
        python-dev \
    && \
    : "qt5" && \
    apt install -y --no-install-recommends \
        qt5-default \
    && \
    : "ns-3-pyviz visualizer" && \
    apt install -y --no-install-recommends \
        gir1.2-goocanvas-2.0 \
        gir1.2-gtk-3.0 \
        ipython \
        ipython3 \
        python-gi \
        python-gi-cairo \
        python-kiwi \
        python-pygraphviz \
        python3-gi \
        python3-gi-cairo \
        python3-pygraphviz \
    && \
    : "MPI-based distributed emulation" && \
    apt install -y --no-install-recommends \
        libopenmpi-dev \
        openmpi-bin \
        openmpi-common \
        openmpi-doc \
    && \
    : "bake build tool" && \
    apt install -y --no-install-recommends \
        autoconf \
        bzr \
        cvs \
        unrar \
    && \
    : "Debugging" && \
    apt install -y --no-install-recommends \
        gdb \
        valgrind \
    && \
    : "utils/check-style.py code style check program" && \
    apt install -y --no-install-recommends \
        uncrustify \
    && \
    : "GNU Scientific Library" && \
    apt install -y --no-install-recommends \
        gsl-bin \
        libgsl-dev \
        libgslcblas0 \
    && \
    : "Network Simulation Cradle" && \
    apt install -y --no-install-recommends \
        bison \
        flex \
        libfl-dev \
    && \
    : "read pcap packet traces" && \
    apt install -y --no-install-recommends \
        tcpdump \
    && \
    : "Database" && \
    apt install -y --no-install-recommends \
        libsqlite3-dev \
        sqlite \
        sqlite3 \
    && \
    : "Xml-based version of the config store" && \
    apt install -y --no-install-recommends \
        libxml2 \
        libxml2-dev \
    && \
    : "generating modified python bindings" && \
    apt install -y --no-install-recommends \
        automake \
        cmake \
        libc6-dev \
        libc6-dev-i386 \
        libclang-dev \
        llvm-dev \
        python-pip \
        python3-pip \
    && \
    pip install cxxfilt \
    && \
    : "GTK-based configuration system" && \
    apt install -y --no-install-recommends \
        libgtk2.0-0 \
        libgtk2.0-dev \
    && \
    : "experiment with virtual machines and ns-3" && \
    apt install -y --no-install-recommends \
        vtun \
        lxc \
    && \
    : "openflow module" && \
    apt install -y --no-install-recommends \
        libboost-signals-dev \
        libboost-filesystem-dev \
    && \
    : "fetch ns3" && \
    wget https://www.nsnam.org/releases/ns-allinone-3.29.tar.bz2 && \
    tar -xf ns-allinone-3.29.tar.bz2 && \
