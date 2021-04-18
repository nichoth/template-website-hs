if [ -z "$1" ]
    then
        echo "Usage: wshs <dir>"
        exit 1
fi
DIR=$HOME/.template-website-hs
DEST=$1
mkdir -p $DEST && \
mkdir -p $DEST/style && \
cd $DEST && \
cp -i $DIR/gitignore .gitignore
cp -i $DIR/eslintignore .eslintignore
cp -i $DIR/eslintrc .eslintrc
cp -i $DIR/scripts.json package.json
cp -i $DIR/build.js ./build.js
cp -i $DIR/style/* ./style/
mkdir -p test
npm install -D hyperstream gray-matter mkdirp marked browserify tape tap-spec eslint eslint-config-minlint dependency-check

