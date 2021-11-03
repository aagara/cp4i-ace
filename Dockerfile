FROM icr.io/appc-dev/ace-server@sha256:3714e2236265a557a78bc743fadd0923e4b78ee6a9f6dc321b6856bf0cd4d5fc
USER root
COPY bars_test /home/aceuser/bars
RUN  chmod -R ugo+rwx /home/aceuser
USER 1000
RUN ace_compile_bars.sh
USER root
RUN  chmod -R ugo+rwx /home/aceuser
USER 1000
