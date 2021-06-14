.PHONY: all png svg

all: png svg

png: $(patsubst %.dot,%.png,$(wildcard *.dot))
svg: $(patsubst %.dot,%.svg,$(wildcard *.dot))

clean:
	rm build/*

%.svg: %.dot
	dot -Tsvg $< -o $@

%.png: %.dot
	dot -Tpng $< -o $@
