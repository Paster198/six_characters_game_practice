.class final Lcom/google/android/gms/measurement/internal/zziv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@22.4.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzjp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzjp;Ljava/lang/String;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zziv;->zza:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zziv;->zzb:Lcom/google/android/gms/measurement/internal/zzjp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zziv;->zzb:Lcom/google/android/gms/measurement/internal/zzjp;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzjp;->zzc(Lcom/google/android/gms/measurement/internal/zzjp;)Lcom/google/android/gms/measurement/internal/zzpv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzL()V

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzjp;->zzc(Lcom/google/android/gms/measurement/internal/zzjp;)Lcom/google/android/gms/measurement/internal/zzpv;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zziv;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzE(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
