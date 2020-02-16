FROM rocker/shiny

# add user and make sure their stuff is writable
# whichever userid is given at runtime
#RUN adduser --disabled-password --gid 0 --gecos "SHINY user" shiny
USER shiny
#RUN chown shiny:root /home/shiny && chmod -R 0775 /home/shiny
#ENV HOME /home/shiny

RUN mkdir -m 0775 /home/shiny/apps
RUN mkdir -m 0775 /home/shiny/logs

COPY  apps/ /home/shiny/apps/

EXPOSE 3838

CMD ["R", "-e", "shiny::runApp('/home/shiny/apps/', port=3838,host='0.0.0.0')"]
