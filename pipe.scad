//variables
angle =45;  //desire4d angle
inside = 25.4;  //inside diameter
outside = inside+2;   //outside diameter
length = [50,25];   //length, in center
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
            for( a = [0:1])
                rotate([90,2.8,a*(180-angle)])
                    cylinder(length[a]*2,outside,outside);
        }
        sphere(inside);
        for( a = [0:1])
            rotate([90,2.8,a*(180-angle)])
                cylinder(length[a]*2+outside,inside,inside);
        if(split)
            rotate([0,0,(180-angle)/2])
                translate([0,-(outside+length[1]),-(outside+length[1])])
                    cube((length[1]+outside)*2);
    }
}
