.class final Lcom/google/android/gms/internal/measurement/zzky;
.super Lcom/google/android/gms/internal/measurement/zzlb;
.source "com.google.android.gms:play-services-measurement-base@@22.4.0"


# instance fields
.field private final zzc:I


# direct methods
.method constructor <init>([BII)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzlb;-><init>([B)V

    const/4 p2, 0x0

    array-length p1, p1

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzky;->zzh(III)I

    iput p3, p0, Lcom/google/android/gms/internal/measurement/zzky;->zzc:I

    return-void
.end method


# virtual methods
.method public final zza(I)B
    .registers 6

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzky;->zzc:I

    add-int/lit8 v1, p1, 0x1

    sub-int v1, v0, v1

    or-int/2addr v1, p1

    if-gez v1, :cond_3b

    if-gez p1, :cond_1f

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Index < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Index > length: "

    .line 3
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3b
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzky;->zza:[B

    .line 1
    aget-byte p1, v0, p1

    return p1
.end method

.method final zzb(I)B
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzky;->zza:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method protected final zzc()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final zzd()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzky;->zzc:I

    return v0
.end method
