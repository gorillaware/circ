c = argument0;
r = argument1;

tarX = path_get_point_x(stage.row[r], c);
tarY  = path_get_point_y(stage.row[r], c);
var target = instance_create(tarX, tarY, objTarget);
target.horiz = c;
target.fwd = r;