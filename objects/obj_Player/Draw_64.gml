var _display_hp = string(hp);

draw_set_color(c_white);

draw_text(20, 50, "HP: " + _display_hp);

var _bar_width = 200;
var _bar_height = 20;
var _x1 = 20;
var _y1 = 20;

var _hp_percent = (hp / 100) * 100;

draw_healthbar(_x1, _y1, _x1 + _bar_width, _y1 + _bar_height, _hp_percent, c_black, c_red, c_lime, 0, true, true);

var _rounds_left = max_rounds - level + 1
if (_rounds_left < 0) _rounds_left = 0;

draw_set_halign(fa_right);
draw_set_color(c_black);

var _text = "Rounds until Win: " + string(_rounds_left);
draw_text(display_get_gui_width()/2, 20, _text);

draw_set_halign(fa_left);