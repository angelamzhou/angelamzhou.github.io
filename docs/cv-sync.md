# CV Sync From Overleaf

This repo now includes `.github/workflows/sync-cv-from-overleaf.yml`, which can keep a website-hosted CV PDF up to date at `assets/pdf/cv.pdf`.

## Requirements

- Overleaf premium with Git integration enabled
- A Git authentication token from Overleaf
- Your Overleaf project ID
- The main LaTeX file name for the CV, for example `cv.tex`

Overleaf does not automatically sync the compiled PDF to Dropbox, and downloading a project `.zip` only gives you the source files. The compiled PDF has to be downloaded separately, or rebuilt from source in CI.

## GitHub setup

Add these repository settings in GitHub:

- Secret `OVERLEAF_PROJECT_ID`: the project ID from your Overleaf URL
- Secret `OVERLEAF_GIT_TOKEN`: your Overleaf Git authentication token
- Variable `OVERLEAF_MAIN_TEX`: the main `.tex` file to compile, for example `cv.tex`

The workflow runs on demand and once a week. It:

1. clones the Overleaf project via Overleaf Git
2. compiles the LaTeX source
3. copies the compiled PDF to `assets/pdf/cv.pdf`
4. commits and pushes the updated PDF if it changed

## After the first successful run

Point your website CV link at the site-hosted PDF instead of the GitHub blob URL.

In [`_pages/about.md`](/Users/az/Desktop/al-folio-new/angelamzhou.github.io/_pages/about.md:27), change:

```md
[[CV]](https://github.com/angelamzhou/cv/blob/master/cv.pdf)
```

to:

```md
[[CV]](/assets/pdf/cv.pdf)
```

That gives you a stable website URL and lets the workflow keep the linked PDF current.
