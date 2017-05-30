node_modules/@financial-times/n-gage/index.mk:
	npm install @financial-times/n-gage
	touch $@

-include node_modules/@financial-times/n-gage/index.mk

IGNORE_A11Y = true
transpile:
	babel src -d dist

unit-test:
	mocha --require tests/setup --recursive --reporter spec tests

#demo-build:
#	rm -rf bower_components/n-image
#	mkdir bower_components/n-image
#	cp -r templates/ bower_components/n-image/templates/
#	node-sass demos/src/demo.scss public/main.css --include-path bower_components

#demo: demo-build
#	node demos/app

#a11y: demo-build
#	node .pa11yci.js
#	PA11Y=true node demos/app

test: verify unit-test
