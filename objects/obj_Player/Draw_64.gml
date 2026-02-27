var _display_hp = string(hp);

draw_set_color(c_white);

draw_text(20, 50, "HP: " + _display_hp);

var _bar_width = 200;
var _bar_height = 20;
var _x1 = 20;
var _y1 = 20;

var _hp_percent = (hp / 100) * 100;

draw_healthbar(_x1, _y1, _x1 + _bar_width, _y1 + _bar_height, _hp_percent, c_black, c_red, c_lime, 0, true, true);