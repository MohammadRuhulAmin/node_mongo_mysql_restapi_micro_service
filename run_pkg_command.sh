
echo "npm init command initializing....."
npm init
echo "installing express....."
npm install express
echo "installing dotenv......"
npm install dotenv
echo "install mongoose......."
npm install mongoose
echo "installing body parser"
npm install body-parser
echo "install nodemon"
npm install --save-dev  nodemon

echo "removing property "
jq 'del(.scripts.test)' package.json > tmp.json && mv tmp.json package.json

echo "adding property to package.json file"
jq '. + { "type": "module" }'  package.json > tmp.json && mv tmp.json package.json

echo "update the script.start command"
jq '.scripts.start = "nodemon index.js"'  package.json > tmp.json && mv tmp.json package.json

