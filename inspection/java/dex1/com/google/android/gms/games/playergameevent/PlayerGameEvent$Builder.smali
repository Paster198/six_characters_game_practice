.class public Lcom/google/android/gms/games/playergameevent/PlayerGameEvent$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/playergameevent/PlayerGameEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/games/playergameevent/PlayerGameEvent$Builder;->zzb:Landroid/os/Bundle;

    const-string v0, "eventName cannot be null"

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "eventName cannot be empty"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x64

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    if-gt v0, v2, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x0

    :goto_2c
    const-string v0, "eventName cannot be longer than %s characters"

    .line 6
    invoke-static {v1, v0, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/games/playergameevent/PlayerGameEvent$Builder;->zza:Ljava/lang/String;

    return-void
.end method

.method private final zza(Ljava/lang/String;)V
    .registers 7

    .line 1
    const-string v0, "Key cannot be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Key cannot be empty."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    if-gt v0, v2, :cond_23

    move v0, v1

    goto :goto_24

    :cond_23
    move v0, v4

    :goto_24
    const-string v2, "Key cannot exceed %s characters."

    .line 4
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/games/playergameevent/PlayerGameEvent$Builder;->zzb:Landroid/os/Bundle;

    .line 5
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    const/16 v2, 0x19

    if-nez p1, :cond_3b

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result p1

    if-ge p1, v2, :cond_3a

    goto :goto_3b

    :cond_3a
    move v1, v4

    .line 6
    :cond_3b
    :goto_3b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Cannot add more than %s properties."

    .line 7
    invoke-static {v1, v0, p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addProperty(Ljava/lang/String;D)Lcom/google/android/gms/games/playergameevent/PlayerGameEvent$Builder;
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/playergameevent/PlayerGameEvent$Builder;->zza(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/games/playergameevent/PlayerGameEvent$Builder;->zzb:Landroid/os/Bundle;

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    return-object p0
.end method

.method public addProperty(Ljava/lang/String;J)Lcom/google/android/gms/games/playergameevent/PlayerGameEvent$Builder;
    .registers 5

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/playergameevent/PlayerGameEvent$Builder;->zza(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/games/playergameevent/PlayerGameEvent$Builder;->zzb:Landroid/os/Bundle;

    .line 4
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object p0
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/games/playergameevent/PlayerGameEvent$Builder;
    .registers 6

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/playergameevent/PlayerGameEvent$Builder;->zza(Ljava/lang/String;)V

    const-string v0, "value cannot be null"

    .line 6
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x400

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    if-gt v0, v1, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    const-string v1, "Property\'s string value cannot exceed %s characters."

    .line 9
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/games/playergameevent/PlayerGameEvent$Builder;->zzb:Landroid/os/Bundle;

    .line 10
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public addProperty(Ljava/lang/String;Z)Lcom/google/android/gms/games/playergameevent/PlayerGameEvent$Builder;
    .registers 4

    .line 11
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/playergameevent/PlayerGameEvent$Builder;->zza(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/games/playergameevent/PlayerGameEvent$Builder;->zzb:Landroid/os/Bundle;

    .line 12
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public build()Lcom/google/android/gms/games/playergameevent/PlayerGameEvent;
    .registers 6

    .line 1
    new-instance v0, Lcom/google/android/gms/games/playergameevent/PlayerGameEvent;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/games/playergameevent/PlayerGameEvent$Builder;->zza:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/games/playergameevent/PlayerGameEvent$Builder;->zzb:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/games/playergameevent/PlayerGameEvent;-><init>(JLjava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method
