#pragma once
#include <stdint.h>

namespace practice_scene {
// ARM64 ABI of this APK only. Call on the game thread, after a fresh GameModel
// has been initialized and sought. Reconstructs enwiden state at targetMillis.
// Returns the number of selected controls, or -1 if the model/tree ABI fails
// validation. It does not change note judgements, chart time, or other cameras.
int restoreSceneControls(void* model, int targetMillis, uintptr_t imageBase);
}
