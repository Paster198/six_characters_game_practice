.class public interface abstract Lcom/google/android/gms/games/GameStatsClient;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"


# virtual methods
.method public abstract recordEvent(Lcom/google/android/gms/games/playergameevent/PlayerGameEvent;)V
.end method

.method public abstract recordEvents(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/games/playergameevent/PlayerGameEvent;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract requestEventsUpload()V
.end method
