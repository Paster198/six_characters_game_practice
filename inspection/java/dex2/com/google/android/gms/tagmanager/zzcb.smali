.class final Lcom/google/android/gms/tagmanager/zzcb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:J

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Lcom/google/android/gms/tagmanager/zzcc;

.field final synthetic zzd:Lcom/google/android/gms/tagmanager/zzcc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzcc;Lcom/google/android/gms/tagmanager/zzcc;JLjava/lang/String;[B)V
    .registers 7

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzc:Lcom/google/android/gms/tagmanager/zzcc;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzd:Lcom/google/android/gms/tagmanager/zzcc;

    iput-wide p3, p0, Lcom/google/android/gms/tagmanager/zzcb;->zza:J

    iput-object p5, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzb:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzc:Lcom/google/android/gms/tagmanager/zzcc;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzcc;->zzc(Lcom/google/android/gms/tagmanager/zzcc;)Lcom/google/android/gms/tagmanager/zzcd;

    move-result-object v0

    if-nez v0, :cond_20

    .line 2
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzff;->zzg()Lcom/google/android/gms/tagmanager/zzff;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzc:Lcom/google/android/gms/tagmanager/zzcc;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzcc;->zza(Lcom/google/android/gms/tagmanager/zzcc;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzd:Lcom/google/android/gms/tagmanager/zzcc;

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tagmanager/zzff;->zzl(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzcc;)V

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzc:Lcom/google/android/gms/tagmanager/zzcc;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzff;->zzf()Lcom/google/android/gms/tagmanager/zzcd;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/tagmanager/zzcc;->zzd(Lcom/google/android/gms/tagmanager/zzcc;Lcom/google/android/gms/tagmanager/zzcd;)V

    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzc:Lcom/google/android/gms/tagmanager/zzcc;

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzcc;->zzc(Lcom/google/android/gms/tagmanager/zzcc;)Lcom/google/android/gms/tagmanager/zzcd;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/tagmanager/zzcb;->zza:J

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzb:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/tagmanager/zzcd;->zzb(JLjava/lang/String;)V

    return-void
.end method
