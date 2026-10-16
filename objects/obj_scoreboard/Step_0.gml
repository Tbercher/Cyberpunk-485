global.final_score = floatScore;
if (global.gameOver) {
	show_debug_message("Game over");
	room_goto(Room_gameOver);
}