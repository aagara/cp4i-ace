FROM cp.icr.io/cp/appc/ace-server-prod@sha256:f7a74de7e5cd3d1d56cabde1c11b174b1be643f48c3bce63ab5f344495877052
USER root
COPY bars_test /home/aceuser/bars
RUN  chmod -R ugo+rwx /home/aceuser
USER 1000
RUN ace_compile_bars.sh
USER root
RUN  chmod -R ugo+rwx /home/aceuser
USER 1000
