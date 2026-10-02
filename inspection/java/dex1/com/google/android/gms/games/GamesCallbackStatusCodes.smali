.class public final Lcom/google/android/gms/games/GamesCallbackStatusCodes;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"


# static fields
.field public static final CLIENT_RECONNECT_REQUIRED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INTERNAL_ERROR:I = 0x1

.field public static final OK:I


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStatusCodeString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_46

    const/4 v0, 0x1

    if-eq p0, v0, :cond_43

    const/4 v0, 0x2

    if-eq p0, v0, :cond_40

    const/16 v0, 0x1773

    if-eq p0, v0, :cond_3d

    const/16 v0, 0x1b5c

    if-eq p0, v0, :cond_3a

    const/16 v0, 0x1b58

    if-eq p0, v0, :cond_37

    const/16 v0, 0x1b59

    if-eq p0, v0, :cond_34

    .line 1
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x24

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "unknown games callback status code: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_34
    const-string p0, "REAL_TIME_MESSAGE_SEND_FAILED"

    return-object p0

    :cond_37
    const-string p0, "REAL_TIME_CONNECTION_FAILED"

    return-object p0

    :cond_3a
    const-string p0, "REAL_TIME_ROOM_NOT_JOINED"

    return-object p0

    :cond_3d
    const-string p0, "MULTIPLAYER_DISABLED"

    return-object p0

    :cond_40
    const-string p0, "CLIENT_RECONNECT_REQUIRED"

    return-object p0

    :cond_43
    const-string p0, "INTERNAL_ERROR"

    return-object p0

    :cond_46
    const-string p0, "OK"

    return-object p0
.end method
