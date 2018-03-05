# jekyll-plus

**Source for Docker image lakruzz/jekyll-plus**

The image is designed to behave like GitHub Pages, and it utilizes the gem "github-pages", but it also includes a list of nice tools and utilities that aren't necessarily supported by GitHub pages, which runs in safe mode, with a limited support for plugins.

The source - including README and dockerfile is available at github.com/lakruzz/jekyll-plus


## Recommended use

Could be to change directory into the root of your jekyll site folder and then run.

```shell
docker run -i -t --rm \
  -v $(pwd):/website:rw --workdir /website \
  -p 80:4000  jekyll-plus jekyll serve
```

Or if you are really cool you can create aliases in your environment resource files (`.zshrc`, `.bashrc` or whatever you are using) like this:

```shell
alias jekyll='docker run -i -t --rm -v \
      $(pwd):/website:rw --workdir /website \
      -p 80:4000 praqma/jekyll jekyll'
```

And then simply run `jekyll serve`
