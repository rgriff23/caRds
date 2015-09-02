
####################################################################################################
# One thousand hearts with a love message in negative heart space
####################################################################################################

OneThousandHearts = function(to=NULL, line1=NULL, line2=NULL, line3=NULL, line4=NULL) {
	
	# If arguments are NULL
	if (is.null(to)) {to = ""} 
	if (is.null(line1)) {line1 = ""} 
	if (is.null(line2)) {line2 = ""} 
	if (is.null(line3)) {line3 = ""} 
	if (is.null(line4)) {line4 = ""} 

	# Create canvas
	par(bty="n", mar=c(0,0,0,0)+0.1)
	plot(1:10, 1:10, xlim=c(-2.5,2.5), ylim=c(-4,1.5), type="n", xlab="", ylab="", xaxt="n", yaxt="n")
	
	# Define heart colors and sizes
	colors = c("hotpink", "lightpink", "gray88", "red", "brown4")
	sizes = c(2.5, 3, 3.5)
	
	# Sprinkle hearts about
	i = 1
	while (i < 1001) {
		
		x = runif(1, -2.5, 2.5)
		y = runif(1, -4, 1.5)
		color = sample(colors, size=1)
		size = sample(sizes, size=1)
		
		if (x > 0 & y > 0) {
			if ((x-1)^2 + y^2 > 1) {
				points(x, y, pch=169, font=5, cex=size, col=color)
				i = i + 1
			}
		}
		
		if (x < 0 & y > 0) {
			if ((x+1)^2 + y^2 > 1) {
				color = sample(colors, size=1)
				points(x, y, pch=169, font=5, cex=size, col=color)
				i = i + 1
			}
		}
		
		if (x < 0 & y < 0) {
			if (y < (-(3.5/2)*x - 3.5)) {
				color = sample(colors, size=1)
				points(x, y, pch=169, font=5, cex=size, col=color)
				i = i + 1
			}
		}
		
		if (x > 0 & y < 0) {
			if (y < ((3.5/2)*x - 3.5)) {
				color = sample(colors, size=1)
				points(x, y, pch=169, font=5, cex=size, col=color)
				i = i + 1
			}
		}
		
	}
		
	# Write love note
	if (paste(line1, line2, line3, line4) == "   ") {
		if (to != "") {to = paste(to, ",", sep="")}
		text(x=c(0,0), y=c(-0.5,-0.7), labels=c(to, "Will you be mine?"), font=4)
	} else {
		text(x=c(0,0,0,0), y=c(-0.3,-0.5,-0.7,-0.9), labels=c(line1, line2, line3, line4), font=4)
	}
	
}
