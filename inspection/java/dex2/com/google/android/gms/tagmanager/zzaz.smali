.class final Lcom/google/android/gms/tagmanager/zzaz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/util/List;

.field final synthetic zzb:J

.field final synthetic zzc:Lcom/google/android/gms/tagmanager/zzbe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzbe;Ljava/util/List;J)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzaz;->zzc:Lcom/google/android/gms/tagmanager/zzbe;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzaz;->zza:Ljava/util/List;

    iput-wide p3, p0, Lcom/google/android/gms/tagmanager/zzaz;->zzb:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzaz;->zzc:Lcom/google/android/gms/tagmanager/zzbe;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzaz;->zza:Ljava/util/List;

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/zzaz;->zzb:J

    .line 1
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/tagmanager/zzbe;->zzh(Lcom/google/android/gms/tagmanager/zzbe;Ljava/util/List;J)V

    return-void
.end method
