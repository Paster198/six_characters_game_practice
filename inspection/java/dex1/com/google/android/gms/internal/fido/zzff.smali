.class final Lcom/google/android/gms/internal/fido/zzff;
.super Ljava/util/AbstractSet;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# instance fields
.field final zza:I

.field final synthetic zzb:Lcom/google/android/gms/internal/fido/zzfg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fido/zzfg;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/fido/zzff;->zzb:Lcom/google/android/gms/internal/fido/zzfg;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/fido/zzff;->zza:I

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .registers 7

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/fido/zzff;->zza:I

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzff;->zzb:Lcom/google/android/gms/internal/fido/zzfg;

    invoke-static {v1}, Lcom/google/android/gms/internal/fido/zzfg;->zzc(Lcom/google/android/gms/internal/fido/zzfg;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzff;->zzb()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzff;->zza()I

    move-result v3

    const/4 v4, -0x1

    if-ne v0, v4, :cond_18

    invoke-static {}, Lcom/google/android/gms/internal/fido/zzfg;->zza()Ljava/util/Comparator;

    move-result-object v0

    goto :goto_1c

    .line 2
    :cond_18
    invoke-static {}, Lcom/google/android/gms/internal/fido/zzfi;->zzb()Ljava/util/Comparator;

    move-result-object v0

    .line 1
    :goto_1c
    invoke-static {v1, v2, v3, p1, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result p1

    if-ltz p1, :cond_24

    const/4 p1, 0x1

    return p1

    :cond_24
    const/4 p1, 0x0

    return p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/fido/zzfe;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fido/zzfe;-><init>(Lcom/google/android/gms/internal/fido/zzff;)V

    return-object v0
.end method

.method public final size()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzff;->zza()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzff;->zzb()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method final zza()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/fido/zzff;->zza:I

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzff;->zzb:Lcom/google/android/gms/internal/fido/zzfg;

    invoke-static {v1}, Lcom/google/android/gms/internal/fido/zzfg;->zzb(Lcom/google/android/gms/internal/fido/zzfg;)[I

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    aget v0, v1, v0

    return v0
.end method

.method final zzb()I
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/fido/zzff;->zza:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_7

    return v2

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzff;->zzb:Lcom/google/android/gms/internal/fido/zzfg;

    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzfg;->zzb(Lcom/google/android/gms/internal/fido/zzfg;)[I

    move-result-object v0

    aget v0, v0, v2

    return v0
.end method
