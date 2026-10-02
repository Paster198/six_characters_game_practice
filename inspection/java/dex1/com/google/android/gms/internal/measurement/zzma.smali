.class public abstract Lcom/google/android/gms/internal/measurement/zzma;
.super Lcom/google/android/gms/internal/measurement/zzmd;
.source "com.google.android.gms:play-services-measurement-base@@22.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzni;


# instance fields
.field protected final zzb:Lcom/google/android/gms/internal/measurement/zzlu;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzmd;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlu;->zzd()Lcom/google/android/gms/internal/measurement/zzlu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzma;->zzb:Lcom/google/android/gms/internal/measurement/zzlu;

    return-void
.end method
