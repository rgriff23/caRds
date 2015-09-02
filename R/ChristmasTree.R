
####################################################################################################
# Christmas tree
####################################################################################################

ChristmasTree = function (from=NULL, to=NULL, numPresents=7, tinsel=FALSE) {
 	
 	# Canvas
 	if(is.null(to)==F) {to = paste("To", to, sep=" ")} else {to=""}
 	if(is.null(from)==F) {from = paste("From", from, sep=" ")} else {from=""}
	plot(1:10, 1:10, xlim=c(-5,5), ylim=c(0,10), type="n", xlab="", ylab="", xaxt="n", yaxt="n", main="Merry Christmas")
	mtext(to, col="darkgray", line=0.1, font=4)
	mtext(from, col="darkgray", side=1, line=0.1, font=4)
	
	# Draw tree
	rect(-0.5, 0, 1, 2, col="tan3", border="tan4", lwd=3)
	polygon(c(-5,0,5), c(2,6,2), col="palegreen3", border="palegreen4", lwd=3)
	polygon(c(-4,0,4), c(3.5,7,3.5), col="palegreen4", border="palegreen3", lwd=3)
	polygon(c(-3,0,3), c(5,8,5), col="palegreen3", border="palegreen4", lwd=3)
	polygon(c(-2,0,2), c(6.25,9 ,6.25), col="palegreen4", border="palegreen3", lwd=3)
	
	# Decorate tree
	if (tinsel==TRUE) {
		xHang = jitter(c(seq(-4,4,length.out=12), seq(-2.5,2.5,length.out=10), seq(-2,2,length.out=8), seq(-1,1,length.out=4)))
		yHang = jitter(c(rep(2.5, 12), rep(4, 10), rep(5.5, 8), rep(7, 4)))
		segments(x0=xHang, y0=yHang,x1=xHang, y1=c(yHang-jitter(rep(0.7,length(yHang)))), col="gray88", lwd=2)
	}
	ornaments = c("red", "darkgoldenrod", "blue3", "darkgray", "brown3", "deepskyblue", "orange", "darkmagenta")
	points(x=jitter(seq(-4.5,4.5,length.out=5)), y=jitter(rep(2,5)), col=sample(ornaments, size=4), cex=3, pch=19)
	points(x=jitter(seq(-3,3,length.out=4)), y=jitter(rep(3.5,4), amount=0.5), col=sample(ornaments, size=4), cex=3, pch=19)
	points(x=jitter(seq(-2.5,2.5,length.out=3)), y=jitter(rep(5,3), amount=0.5), col=sample(ornaments, size=4), cex=3, pch=19)
	points(x=jitter(seq(-1.5,1.5,length.out=2)), y=jitter(rep(6.25,2), amount=0.5), col=sample(ornaments, size=4), cex=3, pch=19)
	points(0, 9, pch=8, cex=5, col="gold", lwd=3)

	
	# Put presents under tree
	xPres = runif(numPresents,-4.5, 4.5)
	xWidth = runif(numPresents, 0.25, 1.5)
	xHeight = runif(numPresents, 0, 1.5)
	wrapping = c("darkred", "gold", "purple", "burlywood4", "red", "chartreuse2")
	bows = c("darkgreen", "darkblue", "hotpink")
	for (i in 1:10) {
		rect(xPres[i]-xWidth[i], 0, xPres[i]+xWidth[i], xHeight[i], col=sample(wrapping, size=1))
		rect(xPres[i]-0.2*xWidth[i], 0, xPres[i]+0.2*xWidth[i], xHeight[i], col=sample(bows, size=1))
	}
	
 }
 



