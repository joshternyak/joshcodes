```wget --mirror --convert-links --html-extension --wait=0 --no-cache http://localhost:2369 --directory-prefix=docs --no-host-directories```
```cd docs && find . -type f | xargs perl -pi~ -e 's/localhost:2369/joshternyak.com/g;' && cd ..```
```cd docs && find . -type f | xargs perl -pi~ -e 's/http:/https:/g;' && cd ..```
