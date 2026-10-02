.class public abstract Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;
.super Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;-><init>()V

    return-void
.end method

.method protected static zzp(Ljava/lang/Integer;)Z
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/common/util/GmsVersion;->isAtLeastFenacho(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final prepareForClientVersion(I)Z
    .registers 3

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;->zzp(Ljava/lang/Integer;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;->setShouldDowngrade(Z)V

    return v0
.end method
