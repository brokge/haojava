#!/usr/bin/ssh
hexo clean
hexo generate
touch ./public/.nojekyll
#echo "42011024.xyz">./public/CNAME
echo "www.42011024.xyz">./public/CNAME
hexo deploy

git add .
git commit -a -m 'deploy blog' 
git push -u origin master