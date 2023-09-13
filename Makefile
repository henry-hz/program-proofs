


## install dependencies
install:
	git submodule update --init --recursive

# clean outputs
clean:
	rm -rf out/*

# usage file=ERC20 make verify
verify:
	while true; do \
		inotifywait -e close_write -r .; \
    	clear; \
        dafny verify ./src/$(file).dfy || true; \
    done

verify-all:
	while true; do \
		inotifywait -e close_write -r .; \
    	clear; \
        dafny verify ./src/*.dfy || true; \
    done


tests:
	while true; do \
		inotifywait -e close_write -r .; \
    	clear; \
        dafny test --unicode-char false ./test/*.dfy \
		-o out/results \
	    || true; \
    done
