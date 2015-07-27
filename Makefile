all: egg

test: docker-test

# Test the egg installation in a docker environment.  This is a smoke-test only.
docker-test: dist
	docker build -t testing test

dist: egg
	cp -r dist test

egg:
	python setup.py bdist_egg

upload: 
	python setup.py bdist_egg upload
	python setup.py bdist_wininst upload
	python setup.py sdist upload

clean:
	rm -rf dist *.egg-info *~ build test/dist