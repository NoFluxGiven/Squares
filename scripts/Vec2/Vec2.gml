// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Vec2( _x, _y ) constructor {
	
	Set = function( _x, _y ) {
		
		if (is_undefined(_y)) {
			// might be a vector
			if (is_struct( _x )) {
				x = _x.x;
				y = _y.y;
			}
		}else{
			x = _x;
			y = _y;
		}
	}
	
	Add = function( vector ) {
		x += vector.x;
		y += vector.y;
	}
	
	Sub = function( vector ) {
		x -= vector.x;
		y -= vector.y;
	}
	
	Mult = function( vector ) {
		x *= vector.x;
		y *= vector.y;
	}
	
	Div = function( vector ) {
		x /= vector.x;
		y /= vector.y;
	}
	
	DirTo = function( vector ) {
		return point_direction( x,y, vector.x, vector.y );
	}
	
	DistTo = function( vector ) {
		return point_distance( x,y, vector.x, vector.y );
	}
	
	Set( _x, _y );

}