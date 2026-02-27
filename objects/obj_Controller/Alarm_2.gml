var _list = ds_list_create();
var _num = collision_circle_list(obj_Player.y, obj_Player.y, obj_Player.collectRadius, obj_Coin, false, true, _list, false);
if (_num > 0)
{
	for (var i = 0; i < _num; ++i;)
	{
		var _target = _list[| i];
		_target.canFly = true;
	}
}
ds_list_destroy(_list);

alarm[2] = alarmTime2;