rm -rf docs
wget --mirror --convert-links --html-extension --wait=0 --no-cache http://localhost:2369 --directory-prefix=docs --no-host-directories
cd docs && find . -type f | xargs perl -pi~ -e 's/localhost:2369/joshternyak.com/g;' && cd ..
cd docs && find . -type f | xargs perl -pi~ -e 's/http:/https:/g;' && cd ..
git add -A
git commit -m "deploy"
git push origin master
for i in `find $1 -type f`
do
    mv $i `echo $i | cut -d? -f1`
done
