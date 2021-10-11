///@desc Variable Definitions
pauseCursor = 0;
pauseConfirmation = false;
pauseMenu = false;
pauseQuit = false;
option = false;

function scPauseMenu(_pauseCursor , _pauseMenu , _pauseConfirmation){
	pauseCursor = _pauseCursor;
	pauseMenu = _pauseMenu;
	pauseConfirmation = _pauseConfirmation;
}

function scPauseQuit(_pauseCursor , _pauseQuit , _pauseConfirmation){
	pauseCursor = _pauseCursor;
	pauseQuit = _pauseQuit;
	pauseConfirmation = _pauseConfirmation;
}