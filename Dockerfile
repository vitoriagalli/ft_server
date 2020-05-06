FROM debian:buster
COPY srcs .
RUN chmod +x ./deploy.sh && ./deploy.sh
RUN chmod +x ./init.sh
EXPOSE 80 443
ENTRYPOINT ["./init.sh"]
