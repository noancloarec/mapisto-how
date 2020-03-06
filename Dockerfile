FROM jekyll/jekyll:3.8
ADD . /srv/jekyll
ENTRYPOINT [ "jekyll", "serve" ]