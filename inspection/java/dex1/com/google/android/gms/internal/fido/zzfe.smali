.class final Lcom/google/android/gms/internal/fido/zzfe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fido@@21.0.0"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/fido/zzff;

.field private zzb:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fido/zzff;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/fido/zzfe;->zza:Lcom/google/android/gms/internal/fido/zzff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/fido/zzfe;->zzb:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/fido/zzfe;->zzb:I

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzfe;->zza:Lcom/google/android/gms/internal/fido/zzff;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/fido/zzff;->zza()I

    move-result v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/fido/zzff;->zzb()I

    move-result v1

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_11

    const/4 v0, 0x1

    return v0

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/fido/zzfe;->zzb:I

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzfe;->zza:Lcom/google/android/gms/internal/fido/zzff;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/fido/zzff;->zza()I

    move-result v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/fido/zzff;->zzb()I

    move-result v1

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_23

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzfe;->zza:Lcom/google/android/gms/internal/fido/zzff;

    iget-object v2, v1, Lcom/google/android/gms/internal/fido/zzff;->zzb:Lcom/google/android/gms/internal/fido/zzfg;

    invoke-static {v2}, Lcom/google/android/gms/internal/fido/zzfg;->zzc(Lcom/google/android/gms/internal/fido/zzfg;)[Ljava/lang/Object;

    move-result-object v2

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/fido/zzff;->zzb()I

    move-result v1

    add-int/2addr v1, v0

    aget-object v1, v2, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/fido/zzfe;->zzb:I

    return-object v1

    .line 1
    :cond_23
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 3
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
