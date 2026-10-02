.class final Lcom/google/android/gms/internal/measurement/zzls;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@22.4.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzlq;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzlr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzlr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzls;->zza:Lcom/google/android/gms/internal/measurement/zzlq;

    sget v0, Lcom/google/android/gms/internal/measurement/zznp;->zza:I

    return-void
.end method

.method static zza()Lcom/google/android/gms/internal/measurement/zzlq;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzls;->zza:Lcom/google/android/gms/internal/measurement/zzlq;

    return-object v0
.end method
