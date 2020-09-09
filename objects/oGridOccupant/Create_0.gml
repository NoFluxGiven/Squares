
grid = noone;
gridPos = Vec2( -1, -1 );

moveStart = Vec2( -1, -1 );
moveTarget = Vec2( -1, -1 );
moveProgress = 0;
moveUpdate = undefined;
moving = false;

/// METHODS

function Place( _grid, vec ) {
	// Places this element on a grid
	
	var success = _grid.PositionFree( vec );
	
	if (success) {
		grid = _grid;
		gridPos.Set( vec );
	}
}

function IsPlaced() {
	if (grid >= 0) { return true; }
	return false;
}

///@func Move(_x,_y)
///@desc Moves (with full animation)
///@param _x
///@param _y
function Move(vec, _moveUpdate) {
	if (!moving) {
		moving = true;
		
		moveUpdate = _moveUpdate;
		
		moveStart.Set( gridPos );
		moveTarget.Set( moveTarget );

	}
}

function Movement() {
	
	var s = grid.WorldPosition( moveStart );
	var t = grid.WorldPosition( moveTarget );
	
	var time = 25; // in steps
	
	var p = 1 / 25;
	
	moveUpdate( s,t );
	
	moveProgress += p;
	
}

function MoveUpdate_Basic( s,t ) {
	var dir = s.DirTo( t );
	var dist = s.DistTo( t );
	
	x = s.x + lengthdir_x( dist * moveProgress, dir );
	y = s.y + lengthdir_y( dist * moveProgress, dir );
}
