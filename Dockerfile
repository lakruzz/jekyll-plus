# Based on the GitHub pages stack (Ruby, Jekyll, Liquid, Sass)
# includes additional Jekyll plugins.

FROM ruby:2.5.0

LABEL author="Lakruzz <me@lakruzz.com>"
LABEL maintainer="Lakruzz <me@lakruzz.com>"

WORKDIR /app
EXPOSE 4000

# github-pages gem.
#   https://github.com/github/pages-gem
#   https://pages.github.com/versions/
# jekyll-responsive-image
#   https://github.com/wildlyinaccurate/jekyll-responsive-image


RUN gem install \
      github-pages \
      jekyll-responsive-image
