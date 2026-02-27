switch(slot[1]) {
	case "slash": event_user(0) break;
	case "axe": event_user(1) break;
	case "explosion": event_user(2) break;
}

// Loop
alarm[1] = alarmtime[1];