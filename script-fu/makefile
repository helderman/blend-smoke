all: ../html5/noise1.jpg ../html5/noise2.jpg

../html5/noise1.jpg: create-noise.scm
	./execute.sh "$<" '(create-noise "$@" 1)'

../html5/noise2.jpg: create-noise.scm
	./execute.sh "$<" '(create-noise "$@" 5)'
