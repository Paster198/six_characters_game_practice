.class public final Lcom/google/android/gms/internal/measurement/zzcq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-sdk-api@@22.4.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzcn;

.field private static volatile zzb:Lcom/google/android/gms/internal/measurement/zzcn;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzco;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzco;-><init>(Lcom/google/android/gms/internal/measurement/zzcp;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzcq;->zza:Lcom/google/android/gms/internal/measurement/zzcn;

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzcq;->zzb:Lcom/google/android/gms/internal/measurement/zzcn;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/measurement/zzcn;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcq;->zzb:Lcom/google/android/gms/internal/measurement/zzcn;

    return-object v0
.end method
