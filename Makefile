install:
	npm install
	bundle install

build:
	npx webpack
	bundle exec jekyll build
