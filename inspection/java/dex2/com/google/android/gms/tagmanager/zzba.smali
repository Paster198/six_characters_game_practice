.class final Lcom/google/android/gms/tagmanager/zzba;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/tagmanager/zzaw;

.field final synthetic zzb:Lcom/google/android/gms/tagmanager/zzbe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzbe;Lcom/google/android/gms/tagmanager/zzaw;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzba;->zzb:Lcom/google/android/gms/tagmanager/zzbe;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzba;->zza:Lcom/google/android/gms/tagmanager/zzaw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzba;->zza:Lcom/google/android/gms/tagmanager/zzaw;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzba;->zzb:Lcom/google/android/gms/tagmanager/zzbe;

    .line 1
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzbe;->zzf(Lcom/google/android/gms/tagmanager/zzbe;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzaw;->zza(Ljava/util/List;)V

    return-void
.end method
