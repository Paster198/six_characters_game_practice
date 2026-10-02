.class public final Lcom/google/android/gms/games/zzi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;


# instance fields
.field public final zza:Z

.field public final zzb:Z

.field public final zzc:I

.field public final zzd:Z

.field public final zze:I

.field public final zzf:Ljava/lang/String;

.field public final zzg:Ljava/util/ArrayList;

.field public final zzh:Z

.field public final zzi:Z

.field public final zzj:Z

.field public final zzk:Ljava/lang/String;

.field public final zzl:I

.field public final zzm:Ljava/lang/String;

.field public final zzn:Lcom/google/android/gms/games/internal/zzi;

.field public final zzo:Z

.field private final zzp:I


# direct methods
.method synthetic constructor <init>(ZZIZILjava/lang/String;Ljava/util/ArrayList;ZZZLjava/lang/String;IILjava/lang/String;Lcom/google/android/gms/games/internal/zzi;Z[B)V
    .registers 18

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/games/zzi;->zza:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/android/gms/games/zzi;->zzb:Z

    const/16 p2, 0x11

    iput p2, p0, Lcom/google/android/gms/games/zzi;->zzc:I

    iput-boolean p1, p0, Lcom/google/android/gms/games/zzi;->zzd:Z

    iput p5, p0, Lcom/google/android/gms/games/zzi;->zze:I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/games/zzi;->zzf:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/games/zzi;->zzg:Ljava/util/ArrayList;

    iput-boolean p1, p0, Lcom/google/android/gms/games/zzi;->zzh:Z

    iput-boolean p1, p0, Lcom/google/android/gms/games/zzi;->zzi:Z

    iput-boolean p1, p0, Lcom/google/android/gms/games/zzi;->zzj:Z

    iput-object p2, p0, Lcom/google/android/gms/games/zzi;->zzk:Ljava/lang/String;

    iput p1, p0, Lcom/google/android/gms/games/zzi;->zzp:I

    const/16 p2, 0x9

    iput p2, p0, Lcom/google/android/gms/games/zzi;->zzl:I

    iput-object p14, p0, Lcom/google/android/gms/games/zzi;->zzm:Ljava/lang/String;

    iput-object p15, p0, Lcom/google/android/gms/games/zzi;->zzn:Lcom/google/android/gms/games/internal/zzi;

    iput-boolean p1, p0, Lcom/google/android/gms/games/zzi;->zzo:Z

    return-void
.end method

.method public static zza()Lcom/google/android/gms/games/zzh;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/games/zzh;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/games/zzh;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/games/zzi;

    const/4 v2, 0x0

    if-eqz v1, :cond_45

    check-cast p1, Lcom/google/android/gms/games/zzi;

    .line 2
    iget-boolean v1, p1, Lcom/google/android/gms/games/zzi;->zza:Z

    iget-boolean v1, p1, Lcom/google/android/gms/games/zzi;->zzb:Z

    iget v1, p1, Lcom/google/android/gms/games/zzi;->zzc:I

    iget-boolean v1, p1, Lcom/google/android/gms/games/zzi;->zzd:Z

    iget v1, p0, Lcom/google/android/gms/games/zzi;->zze:I

    iget v3, p1, Lcom/google/android/gms/games/zzi;->zze:I

    if-ne v1, v3, :cond_45

    iget-object v1, p1, Lcom/google/android/gms/games/zzi;->zzf:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/games/zzi;->zzg:Ljava/util/ArrayList;

    .line 3
    iget-object v3, p1, Lcom/google/android/gms/games/zzi;->zzg:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    iget-boolean v1, p1, Lcom/google/android/gms/games/zzi;->zzh:Z

    iget-boolean v1, p1, Lcom/google/android/gms/games/zzi;->zzi:Z

    iget-boolean v1, p1, Lcom/google/android/gms/games/zzi;->zzj:Z

    iget-object v1, p1, Lcom/google/android/gms/games/zzi;->zzk:Ljava/lang/String;

    const/4 v1, 0x0

    .line 5
    invoke-static {v1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_45

    iget v1, p1, Lcom/google/android/gms/games/zzi;->zzp:I

    iget v1, p1, Lcom/google/android/gms/games/zzi;->zzl:I

    iget-object v1, p0, Lcom/google/android/gms/games/zzi;->zzm:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/games/zzi;->zzm:Ljava/lang/String;

    .line 6
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    iget-boolean p1, p1, Lcom/google/android/gms/games/zzi;->zzo:Z

    return v0

    :cond_45
    return v2
.end method

.method public final hashCode()I
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/games/zzi;->zze:I

    const v1, 0x1d0316bf

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/games/zzi;->zzg:Ljava/util/ArrayList;

    mul-int/lit16 v0, v0, 0x3c1

    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/games/zzi;->zzm:Ljava/lang/String;

    if-nez v1, :cond_15

    const/4 v1, 0x0

    goto :goto_19

    .line 2
    :cond_15
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_19
    const v2, 0x34e63b41

    mul-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    return v0
.end method
