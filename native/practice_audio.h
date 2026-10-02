#pragma once

// All calls belong on the game's audio/game thread while practice is paused.
// The provider must outlive this module; call shutdown before destroying it.
namespace practice_audio {
bool initialize(void* provider);
bool setRate(float rate);  // Inclusive range 0.50..2.50. Preserves musical pitch.
bool reset();              // Restores the group pitch captured by initialize.
bool shutdown();           // reset + detach/release owned DSPs.
// Emergency lifecycle cleanup ONLY after the game has already destroyed FMOD.
// Forgets stale handles without invoking FMOD; normal exits must use shutdown.
void forgetDestroyedProvider();
bool seek(int milliseconds, int index = 0);
int getPosition(int index = 0); // Milliseconds, -1 on error.
int getDuration(int index = 0); // Milliseconds, -1 on error.
float getRate();
bool isInitialized();
const char* lastError();
int lastFmodError();

#ifdef PRACTICE_AUDIO_TEST
using SymbolResolver = void* (*)(const char* library, const char* symbol);
void setSymbolResolverForTests(SymbolResolver resolver);
#endif
}
