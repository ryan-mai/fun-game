switch(slot[2]) {
	case "slash": event_user(0) break;
	case "axe": event_user(1) break;
	case "explosion": event_user(2) break;
}

// Loop
alarm[2] = alarmtime[2];