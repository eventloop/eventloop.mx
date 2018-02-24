css:
	sass -w assets/css/main.scss -t compressed

setup:
	gem install jekyll && \
	gem install sass && \
	gem install bundler

start:
	bundle exec jekyll serve

run:
	tmux new -s eventloop -d
	tmux rename-window eventloop
	tmux split-window -h
	tmux send-keys 'make start' C-m
	tmux resize-pane -R 10
	tmux split-window -v
	tmux send-keys 'make css' C-m
	tmux select-pane -t 1
	tmux attach-session -t eventloop

deploy:
	rm -rf docs && \
	mkdir docs && \
	cp -r _site/* docs
