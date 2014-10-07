FROM centos:centos7
MAINTAINER KUNIYOSHI Kouji <kuniyoshi.kouji@gmail.com>
RUN ["yum", "clean", "all"]
RUN ["yum", "install", "-y", "nc"]
RUN ["yum", "clean", "all"]
RUN ["mkdir", "-p", "/opt/helocker/bin"]
ADD echo_server.sh /opt/helocker/bin/
EXPOSE 5001
ENTRYPOINT ["/opt/helocker/bin/echo_server.sh", "5001"]
