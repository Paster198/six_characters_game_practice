.class final Lcom/google/android/gms/internal/auth/zzdw;
.super Lcom/google/android/gms/internal/auth/zzdy;
.source "com.google.android.gms:play-services-auth-base@@18.0.10"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/auth/zzef;

.field private zzb:I

.field private final zzc:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/auth/zzef;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzdw;->zza:Lcom/google/android/gms/internal/auth/zzef;

    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/zzdy;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/auth/zzdw;->zzb:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/auth/zzef;->zzd()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/auth/zzdw;->zzc:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/auth/zzdw;->zzb:I

    iget v1, p0, Lcom/google/android/gms/internal/auth/zzdw;->zzc:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zza()B
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/auth/zzdw;->zzb:I

    iget v1, p0, Lcom/google/android/gms/internal/auth/zzdw;->zzc:I

    if-ge v0, v1, :cond_11

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/auth/zzdw;->zzb:I

    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzdw;->zza:Lcom/google/android/gms/internal/auth/zzef;

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/auth/zzef;->zzb(I)B

    move-result v0

    return v0

    .line 1
    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
