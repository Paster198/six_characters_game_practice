.class public final Lcom/google/android/gms/internal/measurement/zzbx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"


# static fields
.field private static volatile zza:Lcom/google/android/gms/internal/measurement/zzby;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzbz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbx;->zza:Lcom/google/android/gms/internal/measurement/zzby;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/measurement/zzby;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzbx;->zza:Lcom/google/android/gms/internal/measurement/zzby;

    return-object v0
.end method
