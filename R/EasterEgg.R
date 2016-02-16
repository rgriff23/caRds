
####################################################################################################
# An egg of any color hatches into a chick
####################################################################################################

EasterEgg = function (from=NULL, to=NULL, shell="aliceblue") {

		# Canvas
		plot(1:5, 1:5, ylim=c(-1,1.5), xlim=c(-0.9,0.9), type="n", axes=F, ylab="", xlab="", main="Happy Easter!", cex.main=2)
		if (!is.null(from)) {mtext(paste("From", from), col="darkgray", font=4)}
		if (!is.null(to)) {mtext(paste("To", to), side=1, col="darkgray", font=4)}
		
		# Define egg
		t = seq(-pi, pi, by=0.01)
		x = cos(t/4)*sin(t)/2
		y = -cos(t)
		
		# Paint Easter egg
		polygon(x, y, col=shell)
		
		# Propogate crack
		n=20
		x_crack = seq(cos(-pi/2/4)*sin(-pi/2)/2, cos(pi/2/4)*sin(pi/2)/2, length.out=n)
		y_crack = rnorm(n, sd=0.05)
		y_crack[1] <- y[n] <- 0
		Sys.sleep(1)
		for (i in 1:(n-1)) {
			segments(x_crack[i], y_crack[i], x_crack[i+1], y_crack[i+1], lwd=2)
			Sys.sleep(abs(rnorm(1, sd=0.25)))
		}
		
		# Hatch!
		polygon(x=c(x_crack[1:20], x_crack[20:1]), y=c(y_crack[1:20], y_crack[20:1]+0.3), col="white", border="white")
		polygon(x=c(x_crack[3:18], x_crack[18:3]), y=c(y_crack[3:18], y_crack[18:3]+0.3), col="yellow", border="yellow")
		symbols(x=-0.1, y=0.2, circles=0.1, bg="white", add=TRUE, inches=FALSE)
		symbols(x=0.1, y=0.2, circles=0.1, bg="white", add=TRUE, inches=FALSE)
		points(c(-0.09, 0.09), c(0.2, 0.2), cex=3, pch=16)
		polygon(x=c(-0.05, 0.05, 0.05), y=c(0.05,0.1,-0.1), col="orangered")
		t2 = c(seq(pi/2, pi, by=0.01), seq(-pi, -pi/2, by=0.01))
		x2 = cos(t2/4)*sin(t2)/2
		y2 = -cos(t2)
		x_upper = c(x_crack, x2)
		y_upper = c(y_crack, y2)+0.3
		polygon(x_upper, y_upper, col=shell)	
}


