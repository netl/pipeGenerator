//variables
angle =45;  //desired angle
inside = 25.4;  //inside diameter
outside = 30;   //outside diameter
length = 50;   //length, in center
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
            translate([-1.5*length,-1.5*length,-3*length])
                cube(3*length);
    }
}