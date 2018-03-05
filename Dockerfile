# Based on the GitHub pages stack (Ruby, Jekyll, Liquid, Sass)
# includes additional Jekyll plugins.

FROM ruby:2.5.0

LABEL author="Lakruzz <me@lakruzz.com>"
LABEL maintainer="Praqma <support@praqma.com>"

# 1. Install github-pages gems.
# https://github.com/github/pages-gem
# https://pages.github.com/versions/


RUN gem install \
      github-pages \
      jekyll-responsive-image

# https://docs.docker.com/engine/reference/builder/#expose

EXPOSE 4000
