# lakruzz/jekyll-plus

The image is designed to behave like GitHub Pages, it utilizes the Ruby gem ["github-pages"](https://pages.github.com/versions/) which is maintained by GitHub. But it also includes some nice tools and utilities that aren't necessarily supported by GitHub pages, which runs in safe mode, with only a limited support for plugins.

The source - including README and dockerfile is available at GitHub from [lakruzz/jekyll-plus](https://github.com/lakruzz/jekyll-plus)

## Recommended use

To build/serve a jekyll site change directory into the root of your jekyll site folder and then run `jekyll serve` as exemplified.

**Mac**

```
docker run -i -t --rm \
  -v $(pwd):/app:rw \
  --workdir /app \
  -p 80:4000  lakruzz/jekyll-plus \
  jekyll serve --host 0.0.0.0 --force_polling
```

Now browse the IP of your docker machine ("default" used in the example):

```
open http://`docker-machine ip default`
```

**Linux**

```
docker run -i -t --rm \
  -v $(pwd):/app:rw \
  --workdir /app \
  -p 4000:4000  lakruzz/jekyll-plus \
  jekyll serve
```

Now browse port 4000 on you localhost:

```
xdg-open localhost:4000
```
