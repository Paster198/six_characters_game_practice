.class final Lcom/google/android/gms/measurement/internal/zze;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"


# instance fields
.field private final zza:Lcom/google/android/gms/measurement/internal/zzju;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzju;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zze;->zza:Lcom/google/android/gms/measurement/internal/zzju;

    return-void
.end method

.method static zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zze;
    .registers 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_e

    goto :goto_18

    :cond_e
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/zzjx;->zzg(C)Lcom/google/android/gms/measurement/internal/zzju;

    move-result-object p0

    goto :goto_1a

    .line 2
    :cond_18
    :goto_18
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzju;->zza:Lcom/google/android/gms/measurement/internal/zzju;

    :goto_1a
    new-instance v0, Lcom/google/android/gms/measurement/internal/zze;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zze;-><init>(Lcom/google/android/gms/measurement/internal/zzju;)V

    return-object v0
.end method


# virtual methods
.method final zzb()Lcom/google/android/gms/measurement/internal/zzju;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zze;->zza:Lcom/google/android/gms/measurement/internal/zzju;

    return-object v0
.end method

.method final zzc()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zze;->zza:Lcom/google/android/gms/measurement/internal/zzju;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzjx;->zza(Lcom/google/android/gms/measurement/internal/zzju;)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
