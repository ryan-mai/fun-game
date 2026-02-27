var _list = ds_list_create();
var _num = collision_rectangle_list(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_Enemy_Parent, false, true, _list, false);

if (_num > 0) {
    for (var i = 0; i < _num; ++i;) {
        var _target = _list[| i];
		if (_target.sprite_index == _target.sprI) {
			var dir = point_direction(x, y, _target.x, _target.y);
			_target.x = _target.x + lengthdir_x(5, dir);
			_target.y = _target.y + lengthdir_y(5, dir);
			
			_target.sprite_index = _target.sprH;
		}
        _target.hp -= dmg;

        if (_target.hp <= 0) {
            instance_destroy(_target);
        }
    }
}

ds_list_destroy(_list);