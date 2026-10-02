.class abstract Lcom/google/android/gms/internal/common/zzv;
.super Lcom/google/android/gms/internal/common/zzk;
.source "com.google.android.gms:play-services-basement@@18.9.0"


# instance fields
.field final zzb:Ljava/lang/CharSequence;

.field final zzc:Lcom/google/android/gms/internal/common/zzp;

.field final zzd:Z

.field zze:I

.field zzf:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/common/zzw;Ljava/lang/CharSequence;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/common/zzk;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/common/zzv;->zze:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/common/zzw;->zzf()Lcom/google/android/gms/internal/common/zzp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/common/zzv;->zzc:Lcom/google/android/gms/internal/common/zzp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/common/zzw;->zzg()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/common/zzv;->zzd:Z

    const p1, 0x7fffffff

    iput p1, p0, Lcom/google/android/gms/internal/common/zzv;->zzf:I

    iput-object p2, p0, Lcom/google/android/gms/internal/common/zzv;->zzb:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method protected final bridge synthetic zza()Ljava/lang/Object;
    .registers 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/common/zzv;->zze:I

    :cond_2
    :goto_2
    iget v1, p0, Lcom/google/android/gms/internal/common/zzv;->zze:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6b

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/common/zzv;->zzc(I)I

    move-result v1

    if-ne v1, v2, :cond_17

    iget-object v1, p0, Lcom/google/android/gms/internal/common/zzv;->zzb:Ljava/lang/CharSequence;

    .line 2
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v2, p0, Lcom/google/android/gms/internal/common/zzv;->zze:I

    move v3, v2

    goto :goto_1d

    .line 8
    :cond_17
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/common/zzv;->zzd(I)I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/internal/common/zzv;->zze:I

    :goto_1d
    if-ne v3, v0, :cond_2e

    add-int/lit8 v3, v3, 0x1

    .line 2
    iput v3, p0, Lcom/google/android/gms/internal/common/zzv;->zze:I

    iget-object v1, p0, Lcom/google/android/gms/internal/common/zzv;->zzb:Ljava/lang/CharSequence;

    .line 5
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v3, v1, :cond_2

    iput v2, p0, Lcom/google/android/gms/internal/common/zzv;->zze:I

    goto :goto_2

    :cond_2e
    if-ge v0, v1, :cond_35

    iget-object v3, p0, Lcom/google/android/gms/internal/common/zzv;->zzb:Ljava/lang/CharSequence;

    .line 3
    invoke-interface {v3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    :cond_35
    if-ge v0, v1, :cond_3e

    iget-object v3, p0, Lcom/google/android/gms/internal/common/zzv;->zzb:Ljava/lang/CharSequence;

    add-int/lit8 v4, v1, -0x1

    .line 4
    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    :cond_3e
    iget-boolean v3, p0, Lcom/google/android/gms/internal/common/zzv;->zzd:Z

    if-eqz v3, :cond_47

    if-ne v0, v1, :cond_47

    iget v0, p0, Lcom/google/android/gms/internal/common/zzv;->zze:I

    goto :goto_2

    :cond_47
    iget v3, p0, Lcom/google/android/gms/internal/common/zzv;->zzf:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5d

    iget-object v1, p0, Lcom/google/android/gms/internal/common/zzv;->zzb:Ljava/lang/CharSequence;

    .line 6
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iput v2, p0, Lcom/google/android/gms/internal/common/zzv;->zze:I

    if-le v3, v0, :cond_5b

    add-int/lit8 v2, v3, -0x1

    .line 7
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    :cond_5b
    move v1, v3

    goto :goto_60

    :cond_5d
    add-int/2addr v3, v2

    .line 8
    iput v3, p0, Lcom/google/android/gms/internal/common/zzv;->zzf:I

    .line 7
    :goto_60
    iget-object v2, p0, Lcom/google/android/gms/internal/common/zzv;->zzb:Ljava/lang/CharSequence;

    .line 8
    invoke-interface {v2, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9
    :cond_6b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/common/zzk;->zzb()Ljava/lang/Object;

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v0
.end method

.method abstract zzc(I)I
.end method

.method abstract zzd(I)I
.end method
