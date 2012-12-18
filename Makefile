stylus = @./node_modules/stylus/bin/stylus
jade = @./node_modules/jade/bin/jade

html:
	$(jade) -O . html_source/{maintenance,problem}.jade

css:
	$(stylus) -I node_modules/nib/lib -o css css_source

watch:
	$(stylus) -I node_modules/nib/lib -w -o css css_source

.PHONY: css