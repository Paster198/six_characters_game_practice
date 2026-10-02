.class final Lcom/google/android/gms/internal/gtm/zzsx;
.super Lcom/google/android/gms/internal/gtm/zzta;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# instance fields
.field private final zzc:I

.field private final zzd:I


# direct methods
.method constructor <init>([BII)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzta;-><init>([B)V

    add-int v0, p2, p3

    .line 2
    array-length p1, p1

    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/gtm/zzsx;->zzk(III)I

    iput p2, p0, Lcom/google/android/gms/internal/gtm/zzsx;->zzc:I

    iput p3, p0, Lcom/google/android/gms/internal/gtm/zzsx;->zzd:I

    return-void
.end method


# virtual methods
.method public final zza(I)B
    .registers 6

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsx;->zzd:I

    add-int/lit8 v1, p1, 0x1

    sub-int v1, v0, v1

    or-int/2addr v1, p1

    if-gez v1, :cond_45

    if-gez p1, :cond_24

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x16

    .line 2
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Index < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x28

    .line 3
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Index > length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_45
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzsx;->zza:[B

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzsx;->zzc:I

    add-int/2addr v1, p1

    .line 1
    aget-byte p1, v0, v1

    return p1
.end method

.method final zzb(I)B
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzsx;->zza:[B

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzsx;->zzc:I

    add-int/2addr v1, p1

    .line 1
    aget-byte p1, v0, v1

    return p1
.end method

.method protected final zzc()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsx;->zzc:I

    return v0
.end method

.method public final zzd()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsx;->zzd:I

    return v0
.end method

.method protected final zze([BIII)V
    .registers 6

    iget-object p2, p0, Lcom/google/android/gms/internal/gtm/zzsx;->zza:[B

    iget p3, p0, Lcom/google/android/gms/internal/gtm/zzsx;->zzc:I

    const/4 v0, 0x0

    .line 1
    invoke-static {p2, p3, p1, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
