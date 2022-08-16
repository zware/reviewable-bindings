.PHONY: update
update:
	cp original-bindings.json original-bindings.json.old
	curl https://reviewable.io/bindings.json > original-bindings.json
	kdiff3 original-bindings.json.old original-bindings.json bindings.json -o bindings.json
