# Local Instructions

This repository is the Jekyll site.

## Jekyll/Ruby Setup

Do not run plain `bundle exec jekyll ...` here. It may use system Ruby `2.6.10`, which makes Bundler look for gems under the wrong local bundle path and fail with:

```text
Bundler::GemNotFound: Could not find jekyll-4.2.2 ...
```

The working local bundle is installed for Ruby `2.7.2` under:

```text
vendor/bundle/ruby/2.7.0
```

Use `rbenv exec` from this directory:

```bash
rbenv exec bundle exec jekyll build
rbenv exec bundle exec jekyll serve --host 127.0.0.1 --port 4000
```

If the shell is not using rbenv shims, plain `ruby -v` may still show `/usr/bin/ruby` `2.6.10`; check with:

```bash
rbenv exec ruby -v
```

In the Codex sandbox, `jekyll serve` may fail with `Operation not permitted - bind(2) for 127.0.0.1:4000`. If so, rerun the same serve command with sandbox escalation for local port binding.

The build may warn that it is skipping the Medium feed when network access is restricted. That warning is not fatal if Jekyll exits with code `0`.
