.class final Lcom/google/android/gms/internal/measurement/zzev;
.super Lcom/google/android/gms/internal/measurement/zzdd;
.source "com.google.android.gms:play-services-measurement-sdk-api@@22.4.0"


# instance fields
.field private final zza:Lcom/google/android/gms/measurement/internal/zzkb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzkb;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzdd;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzev;->zza:Lcom/google/android/gms/measurement/internal/zzkb;

    return-void
.end method


# virtual methods
.method public final zze()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzev;->zza:Lcom/google/android/gms/measurement/internal/zzkb;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final zzf(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzev;->zza:Lcom/google/android/gms/measurement/internal/zzkb;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzkb;->interceptEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    return-void
.end method
