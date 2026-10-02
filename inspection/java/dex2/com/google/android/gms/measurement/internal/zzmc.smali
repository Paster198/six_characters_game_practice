.class final Lcom/google/android/gms/measurement/internal/zzmc;
.super Lcom/google/android/gms/measurement/internal/zzpg;
.source "com.google.android.gms:play-services-measurement@@22.4.0"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzpv;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzpg;-><init>(Lcom/google/android/gms/measurement/internal/zzpv;)V

    return-void
.end method

.method static final zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "This implementation should not be used."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected final zzb()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
