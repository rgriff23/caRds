
####################################################################################################
# Thanksgiving Day turkey
####################################################################################################

TurkeyDay = function (from = NULL, to = NULL, canadian = FALSE) {
	
	# Tail fan coordinates
	x_tail = c(-sqrt(3)/2, -1, -sqrt(3)/2, -0.5, 0, 0.5, sqrt(3)/2, 1, sqrt(3)/2)
	y_tail = c(-0.5, 0, 0.5, sqrt(3)/2, 1, sqrt(3)/2, 0.5, 0, -0.5)
	x_leg0 = c(0, 0, -0.5, -0.5, -0.5, 0.5, 0.5, 0.5)
	y_leg0 = c(0, 0, -sqrt(3)/2, -sqrt(3)/2, -sqrt(3)/2, -sqrt(3)/2, -sqrt(3)/2, -sqrt(3)/2)
	x_leg1 = c(-0.5, 0.5, -0.8, -0.7, -0.4, 0.8, 0.7, 0.4)
	y_leg1 = c(-sqrt(3)/2, -sqrt(3)/2, -sqrt(3)/2, -sqrt(3)/2-0.2, -sqrt(3)/2-0.2, -sqrt(3)/2, -sqrt(3)/2-0.2, -sqrt(3)/2-0.2)
	
	# Create canvas
	par(mar=c(4,4,4,4))
	plot(-3:3, -2:4, type="n", xlab="", ylab="", xaxt="n", yaxt="n")
	symbols(0, 4, squares=16, bg="skyblue1", inches=FALSE, add=TRUE)
	symbols(0, -2, squares=6.5, bg="springgreen4", inches=FALSE, add=TRUE)
	
	# Tail feathers
	for (i in 1:8) {polygon(x=c(0, x_tail[i:(i+1)])*2.2, y=c(0, y_tail[i:(i+1)]*2.2), col="brown4")}
	for (i in 1:8) {polygon(x=c(0, x_tail[i:(i+1)])*2, y=c(0, y_tail[i:(i+1)]*2), col="saddlebrown")}
	for (i in 1:8) {polygon(x=c(0, x_tail[i:(i+1)])*1.5, y=c(0, y_tail[i:(i+1)]*1.5), col="orange")}
	# Legs
	segments(x_leg0, y_leg0, x_leg1, y_leg1, col="orangered", lwd=3)
	# Body and head
	symbols(x=c(0,0), y=c(0,1), circles=c(0.9, 0.5), bg="tan4", inches=FALSE,  add=TRUE)
	# Eyes
	symbols(x=c(-0.2, 0.2), y=c(1.1,1.15), circles=c(0.2, 0.22), bg="white", inches=FALSE,  add=TRUE)
	points(x=c(-0.2, 0.2), y=c(1.1,1.15), pch=16)
	# Beak
	polygon(x=c(-0.2, 0.2, 0.1), y=c(0.85,0.9,0.6), col="orangered")
	# Hat
	polygon(x=c(-0.6, -0.6, 0.4, 0.4), y=c(1.2, 1.35, 1.55, 1.4), col="black")
	polygon(x=c(-0.4, -0.3, 0.1, 0.2), y=c(1.35, 1.85, 1.9, 1.5), col="black")
	points(-0.1, 1.45, col="gold", pch=0, lwd=3)
		
	# Happy Thanksgiving!
	if (canadian == TRUE) {
		text(0, 3.5, "Happy Thanksgiving, eh?", font=4, cex=1.5)
	} else {text(0, 3.5, "Happy Thanksgiving!", font=4, cex=1.5)}
	
	# From, to
	if (!is.null(from)) {mtext(paste("From", from), col="darkgray", font=4)}
	if (!is.null(to)) {mtext(paste("To", to), side=1, col="darkgray", font=4)}
	
}