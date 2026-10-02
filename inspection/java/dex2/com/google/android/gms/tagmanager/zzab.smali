.class final Lcom/google/android/gms/tagmanager/zzab;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzy;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/tagmanager/zzal;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzal;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzab;->zza:Lcom/google/android/gms/tagmanager/zzal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzab;->zza:Lcom/google/android/gms/tagmanager/zzal;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzal;->zzh()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()V
    .registers 2

    const-string v0, "Refresh ignored: container loaded as default only."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdh;->zzc(Ljava/lang/String;)V

    return-void
.end method

.method public final zzc(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzab;->zza:Lcom/google/android/gms/tagmanager/zzal;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/zzal;->zzo(Ljava/lang/String;)V

    return-void
.end method
