setup:
	gem install jekyll
	gem install sass
	gem install bundler

run:
	bundle exec jekyll serve

css:
	sass -w assets/css/main.scss -t compressed
