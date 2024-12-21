/// @description Scripts
// Returns total score.
function scr_get_score() {
	// Clear total score.
	var _s = 0;
	for (var _level = 0; _level < global.levels_cnt; _level++){
		for (var _stage = 0; _stage < global.stages_cnt; _stage++){
			// Add level and stage high score to total score.
			_s += global.stage_high_score[_level, _stage];
		}
	}
	// Returen total score.
	return (_s);
}

// Create save file if it doesn't exits.
function scr_array_init(_array, _array_name, _slot) {
	var _filepath = working_directory + string("{0}-{1}.json", _array_name, _slot);
	if (!file_exists(_filepath)) {
		show_debug_message("Created slot {0} {1} saved game file.", _slot, _array_name);
		scr_array_write(_array, _array_name, _slot);
	} else {
		show_debug_message("Saved game file for slot {0} {1} exists.", _slot, _array_name);
	}
}

// Save array to json file.
function scr_array_write(_array, _array_name, _slot) {
	var _filepath = working_directory + string("{0}-{1}.json", _array_name, _slot);
	var _json = json_stringify(_array);
	var _file = file_text_open_write(_filepath);
	file_text_write_string(_file, _json);
    file_text_close(_file);
	show_debug_message("Saved slot {0} {1} saved game file.", _slot, _array_name);
}

// Load array from json file.
function scr_array_read(_array, _array_name, _slot) {
	var _filepath = working_directory + string("{0}-{1}.json", _array_name, _slot);
    var _file = file_text_open_read(_filepath);
    var _json = file_text_read_string(_file);
    file_text_close(_file);
	_array = json_parse(_json);
	show_debug_message("Loaded slot {0} {1} saved game file.", _slot, _array_name);
    return _array;
}

// Write to ini file.
function scr_ini_write(_section, _key, _value) {
	ini_open("settings.ini");
	ini_write_real(_section, _key, _value);
	ini_close();
}

// Read from ini file.
function scr_ini_read(_section, _key, _value) {
	ini_open("settings.ini");
	var _tmp = ini_read_real(_section, _key, _value);
	ini_close();
	return _tmp
}

