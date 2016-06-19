set -e
cd $1/output && node -e 'require("./Test.Main").main()'
