(define (create-noise name seed)
	(let*
		(
			(image (car (gimp-image-new 1024 1024 RGB)))
			(layer (car (gimp-layer-new image 1024 1024 RGB-IMAGE "Noise" 100 NORMAL-MODE)))
		)
		(gimp-image-insert-layer image layer 0 0)
		(plug-in-solid-noise RUN-NONINTERACTIVE image layer TRUE FALSE seed 1 4 4)
		(gimp-drawable-brightness-contrast layer 0.5 0.3)
		(gimp-drawable-colorize-hsl layer 10 100 -50)

		(file-jpeg-save RUN-NONINTERACTIVE image layer name name 0.7 0 0 0 "Solid noise" 0 1 0 0)
		(gimp-image-delete image)
	)
)
