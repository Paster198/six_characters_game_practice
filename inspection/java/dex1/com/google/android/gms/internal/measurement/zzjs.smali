.class public final synthetic Lcom/google/android/gms/internal/measurement/zzjs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzjq;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/measurement/zzju;

.field public final synthetic zzb:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzju;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjs;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzjs;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjs;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjs;->zzb:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzju;->zzc(Lcom/google/android/gms/internal/measurement/zzju;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
