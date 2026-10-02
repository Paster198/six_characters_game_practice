.class public final Lcom/google/android/gms/internal/auth/zzcz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-base@@18.0.10"


# instance fields
.field final zza:Landroid/net/Uri;

.field final zzb:Ljava/lang/String;

.field final zzc:Ljava/lang/String;

.field final zzd:Z

.field final zze:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .registers 12

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 1
    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/auth/zzcz;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZZZLcom/google/android/gms/internal/auth/zzdg;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZZZLcom/google/android/gms/internal/auth/zzdg;)V
    .registers 10
    .param p9    # Lcom/google/android/gms/internal/auth/zzdg;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/auth/zzcz;->zza:Landroid/net/Uri;

    const-string p1, ""

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzcz;->zzb:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzcz;->zzc:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/auth/zzcz;->zzd:Z

    iput-boolean p7, p0, Lcom/google/android/gms/internal/auth/zzcz;->zze:Z

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/auth/zzcz;
    .registers 11

    new-instance v0, Lcom/google/android/gms/internal/auth/zzcz;

    iget-object v2, p0, Lcom/google/android/gms/internal/auth/zzcz;->zza:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/gms/internal/auth/zzcz;->zzb:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/auth/zzcz;->zzc:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/android/gms/internal/auth/zzcz;->zzd:Z

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/auth/zzcz;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZZZLcom/google/android/gms/internal/auth/zzdg;)V

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/auth/zzcz;
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzcz;->zzb:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/auth/zzcz;

    iget-object v3, p0, Lcom/google/android/gms/internal/auth/zzcz;->zza:Landroid/net/Uri;

    iget-object v4, p0, Lcom/google/android/gms/internal/auth/zzcz;->zzb:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/auth/zzcz;->zzc:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/google/android/gms/internal/auth/zzcz;->zze:Z

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/auth/zzcz;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZZZLcom/google/android/gms/internal/auth/zzdg;)V

    return-object v1

    .line 1
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set GServices prefix and skip GServices"

    .line 2
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzc(Ljava/lang/String;D)Lcom/google/android/gms/internal/auth/zzdc;
    .registers 5

    const-wide/16 p2, 0x0

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    new-instance p3, Lcom/google/android/gms/internal/auth/zzcx;

    const/4 v0, 0x1

    .line 2
    invoke-direct {p3, p0, p1, p2, v0}, Lcom/google/android/gms/internal/auth/zzcx;-><init>(Lcom/google/android/gms/internal/auth/zzcz;Ljava/lang/String;Ljava/lang/Double;Z)V

    return-object p3
.end method

.method public final zzd(Ljava/lang/String;J)Lcom/google/android/gms/internal/auth/zzdc;
    .registers 5

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    new-instance p3, Lcom/google/android/gms/internal/auth/zzcv;

    const/4 v0, 0x1

    .line 2
    invoke-direct {p3, p0, p1, p2, v0}, Lcom/google/android/gms/internal/auth/zzcv;-><init>(Lcom/google/android/gms/internal/auth/zzcz;Ljava/lang/String;Ljava/lang/Long;Z)V

    return-object p3
.end method

.method public final zze(Ljava/lang/String;Z)Lcom/google/android/gms/internal/auth/zzdc;
    .registers 5

    .line 1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/auth/zzcw;

    const/4 v1, 0x1

    .line 2
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/gms/internal/auth/zzcw;-><init>(Lcom/google/android/gms/internal/auth/zzcz;Ljava/lang/String;Ljava/lang/Boolean;Z)V

    return-object v0
.end method

.method public final zzf(Ljava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/auth/zzhy;)Lcom/google/android/gms/internal/auth/zzdc;
    .registers 10

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/auth/zzcy;

    const-string v2, "getTokenRefactor__blocked_packages"

    const/4 v4, 0x1

    move-object v1, p0

    move-object v3, p2

    move-object v5, p3

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/auth/zzcy;-><init>(Lcom/google/android/gms/internal/auth/zzcz;Ljava/lang/String;Ljava/lang/Object;ZLcom/google/android/gms/internal/auth/zzhy;)V

    return-object v0
.end method
