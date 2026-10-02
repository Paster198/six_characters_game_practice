.class final Lcom/google/android/gms/internal/measurement/zznn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@22.4.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zznm;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget v0, Lcom/google/android/gms/internal/measurement/zznp;->zza:I

    new-instance v0, Lcom/google/android/gms/internal/measurement/zznm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zznm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zznn;->zza:Lcom/google/android/gms/internal/measurement/zznm;

    return-void
.end method

.method static zza()Lcom/google/android/gms/internal/measurement/zznm;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznn;->zza:Lcom/google/android/gms/internal/measurement/zznm;

    return-object v0
.end method
