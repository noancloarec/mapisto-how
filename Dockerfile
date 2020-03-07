FROM jekyll/jekyll:3.8 as builder
ADD . /srv/jekyll
RUN jekyll build
FROM python:3.7-stretch
COPY --from=builder /srv/jekyll/_site /site
WORKDIR /site
CMD [ "python3", "-m", "http.server" ]