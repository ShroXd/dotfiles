#! /bin/sh
mkdir rebase-test && cd rebase-test
git init

# master branch
echo "master branch, first commit" > README.md
git add .
git commit -m "doc(README.md) first commit fron master branch"

echo "master branch, second commit" > README.md
git add .
git commit -m "doc(README.md) second commit fron master branch"

# dev branch
git checkout -b dev

echo "dev branch, first commit" > README.md
git add .
git commit -m "doc(README.md) first commit fron dev branch"

echo "dev branch, second commit" > README.md
git add .
git commit -m "doc(README.md) second commit fron dev branch"

# master branch forward
git checkout master

echo "master branch, third commit" > README.md
git add .
git commit -m "doc(README.md) third commit fron dev branch"

# finish
echo "finish🎃"
