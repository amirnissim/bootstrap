git checkout 3.0.0-wip
git pull twitter 3.0.0-wip
jekyll build
git checkout 3.0.0-docs
cp -r _gh_pages/* .
echo 'fixing links...'
find . -type f \( -name *.html -o -name *.css -o -name *.js \) -exec sed -i "" 's/href="\//href="\/bootstrap\//g' {} \;
find . -type f \( -name *.html -o -name *.css -o -name *.js \) -exec sed -i "" 's/src="\//src="\/bootstrap\//g' {} \;

echo 'replacing Google Analytics account'
sed -i "" s/UA-146052-10/UA-38103508-1/ index.html


echo 'done.'