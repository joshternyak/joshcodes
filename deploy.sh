rm -rf docs
wget --mirror --convert-links --html-extension --wait=0 --no-cache http://localhost:2369 --directory-prefix=docs --no-host-directories --content-disposition
cd docs && find . -type f | xargs perl -pi~ -e 's/localhost:2369/joshternyak.com/g;' && cd ..
cd docs && find . -type f | xargs perl -pi~ -e 's/http:/https:/g;' && cd ..
for i in `find docs -type f`
do
    mv $i `echo $i | cut -d? -f1`
done
git add -A
git commit -m "deploy"
git push origin master
