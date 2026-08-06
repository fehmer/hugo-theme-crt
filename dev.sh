docker run --rm \
  --name mysite \
  -p 8080:8080 \
  -v ${PWD}/exampleSite:/src \
  -v ${PWD}:/src/themes/hugo-theme-crt \
  -v ${HOME}/hugo_cache:/tmp/hugo_cache \
  hugomods/hugo:dart-sass-go-non-root-0.164.0  \
  server -p 8080 --disableFastRender
