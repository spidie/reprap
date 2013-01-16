depth=10;
radius=30;
stemwidth=5;
stemheight=60;
basewidth=25;

pentagram(height=depth, radius=radius);
translate([stemheight * -1,(stemwidth/2) * -1,0]) cube(size = [stemheight,stemwidth,depth-1]);
translate([stemheight * -1,(basewidth/2) * -1,0]) cube(size = [stemwidth,basewidth,depth]);

module pentagram(height, radius, twist=0){
	a=360/5; //angle
	phi=(1+sqrt(5))/2;// the golden ratio
	innerRadius=(radius/phi)/phi;

	linear_extrude(height=height, convexity = 10, twist = twist, slices=99) 
		polygon(points = [ [radius, 0], 
						    [cos(0.5*a)*innerRadius, sin(0.5*a)*innerRadius], 
						    [cos(a)*radius, sin(a)*radius], 
						    [cos(1.5*a)*innerRadius, sin(1.5*a)*innerRadius], 
						    [cos(2*a)*radius, sin(2*a)*radius], 
						    [cos(2.5*a)*innerRadius, sin(2.5*a)*innerRadius], 
						    [cos(3*a)*radius, sin(3*a)*radius], 
						    [cos(3.5*a)*innerRadius, sin(3.5*a)*innerRadius], 
						    [cos(4*a)*radius, sin(4*a)*radius], 
						    [cos(4.5*a)*innerRadius, sin(4.5*a)*innerRadius] ], 
						    convexity = 3);
}

