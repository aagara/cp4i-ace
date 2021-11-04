FROM ace-server-prod:12.0.1.0-r4
COPY bars_test /home/aceuser/initial-config/bars/
EXPOSE 7600 7800 7843 9483
ENV LICENSE accept
