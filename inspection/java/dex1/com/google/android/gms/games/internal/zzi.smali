.class public final Lcom/google/android/gms/games/internal/zzi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"


# static fields
.field public static final zza:Lcom/google/android/gms/games/internal/zzi;


# instance fields
.field private final zzb:Z

.field private final zzc:Z

.field private final zzd:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/games/internal/zzh;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/games/internal/zzh;-><init>([B)V

    new-instance v1, Lcom/google/android/gms/games/internal/zzi;

    invoke-direct {v1, v0}, Lcom/google/android/gms/games/internal/zzi;-><init>(Lcom/google/android/gms/games/internal/zzh;)V

    sput-object v1, Lcom/google/android/gms/games/internal/zzi;->zza:Lcom/google/android/gms/games/internal/zzi;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/games/internal/zzh;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/games/internal/zzh;->zze()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/zzi;->zzb:Z

    invoke-virtual {p1}, Lcom/google/android/gms/games/internal/zzh;->zzf()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/zzi;->zzc:Z

    invoke-virtual {p1}, Lcom/google/android/gms/games/internal/zzh;->zzg()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/games/internal/zzi;->zzd:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/games/internal/zzh;[B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/zzi;-><init>(Lcom/google/android/gms/games/internal/zzh;)V

    return-void
.end method

.method public static zzd()Lcom/google/android/gms/games/internal/zzh;
    .registers 2

    new-instance v0, Lcom/google/android/gms/games/internal/zzh;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/games/internal/zzh;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_27

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_27

    :cond_12
    check-cast p1, Lcom/google/android/gms/games/internal/zzi;

    iget-boolean v2, p0, Lcom/google/android/gms/games/internal/zzi;->zzb:Z

    iget-boolean v3, p1, Lcom/google/android/gms/games/internal/zzi;->zzb:Z

    if-ne v2, v3, :cond_27

    iget-boolean v2, p0, Lcom/google/android/gms/games/internal/zzi;->zzc:Z

    iget-boolean v3, p1, Lcom/google/android/gms/games/internal/zzi;->zzc:Z

    if-ne v2, v3, :cond_27

    iget-boolean v2, p0, Lcom/google/android/gms/games/internal/zzi;->zzd:Z

    iget-boolean p1, p1, Lcom/google/android/gms/games/internal/zzi;->zzd:Z

    if-ne v2, p1, :cond_27

    return v0

    :cond_27
    :goto_27
    return v1
.end method

.method public final hashCode()I
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/games/internal/zzi;->zzb:Z

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/gms/games/internal/zzi;->zzc:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/gms/games/internal/zzi;->zzd:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public final zza()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/games/internal/zzi;->zzb:Z

    return v0
.end method

.method public final zzb()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/games/internal/zzi;->zzc:Z

    return v0
.end method

.method public final zzc()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/games/internal/zzi;->zzd:Z

    return v0
.end method
