FROM ruby:2.5.0

LABEL author="Lakruzz <me@lakruzz.com>"
LABEL maintainer="Praqma <support@praqma.com>"

# 1. Install github-pages gems.
# https://github.com/github/pages-gem
# https://pages.github.com/versions/


RUN gem install \
      github-pages \
      jekyll-responsive-image

RUN find /usr -name magick
# https://docs.docker.com/engine/reference/builder/#expose

RUN ln -s /usr/include/x86_64-linux-gnu/ImageMagick-6/magick /usr/local/bin/magick 

RUN echo $PATH


EXPOSE 4000
