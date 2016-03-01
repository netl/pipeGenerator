//variables
angle =45;  //desired angle
inside = 25.4;  //inside diameter
outside = 30;   //outside diameter
length = 100;   //length, in center
split = false;

//code
$fn = 64;
scale(1/2)
{
    difference()
    {
        union()
        {
            sphere(outside);
            for( a = [0,180-angle])
                rotate([90,2.8,a])
                    cylinder(length,outside,outside);
        }
        sphere(inside);
        for( a = [0,180-angle])
            rotate([90,2.8,a])
                cylinder(length+outside,inside,inside);
        if(split)
            rotate([0,0,(180-angle)/2])
                translate([0,-length,-length])
                    cube(2*length);
    }
}