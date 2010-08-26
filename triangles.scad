/**
 * Simple triangles library
 *
 * Authors:
 *   - Eero 'rambo' af Heurlin 2010-
 *
 * License: LGPL 2.1
 */


/**
 * Standard right-angled triangle
 *
 * @param number o_len Lenght of the opposite side
 * @param number a_len Lenght of the adjacent side
 * @param number depth How wide/deep the triangle is in the 3rd dimension
 */
/*
module triangle_old(o_len, a_len, depth)
{
	difference()
	{
		cube([depth, a_len, o_len], center=false);
		rotate([atan(o_len/a_len),0,0])
		{
			translate([-2.5,0,0])
			{
				cube([depth+5,sqrt(pow(a_len, 2) + pow(o_len,2))+2, o_len+2], center=false);
			}
		}
	}
}

# triangle(5,10,7);
*/


/**
 * Standard right-angled triangle
 *
 * @param number o_len Lenght of the opposite side
 * @param number a_len Lenght of the adjacent side
 * @param number depth How wide/deep the triangle is in the 3rd dimension
 * @todo a better way ?
 */
module triangle(o_len, a_len, depth)
{
    linear_extrude(height=depth)
    {
        polygon(points=[[0,0],[a_len,0],[0,o_len]], paths=[[0,1,2]]);
    }
}

//triangle(5,10,7);

