FROM ubuntu:latest
#ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get upgrade -y
RUN apt-get update -y
RUN apt-get install python3 -y
RUN apt-get install python3-pip -y
RUN python3 -m pip install --upgrade pip setuptools wheel
RUN apt-get update -y
RUN apt-get install git -y
RUN pip3 install jupyterlab
RUN pip3 install matplotlib
RUN pip3 install biopython
ADD ./commands/jn /bin/
RUN chmod +x /bin/jn
RUN pip3 install scipy
RUN pip3 install numpy
RUN pip3 install pandas
