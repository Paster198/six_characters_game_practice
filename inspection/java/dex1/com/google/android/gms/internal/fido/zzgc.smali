.class final Lcom/google/android/gms/internal/fido/zzgc;
.super Lcom/google/android/gms/internal/fido/zzge;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# instance fields
.field final zza:[C


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/fido/zzgb;)V
    .registers 6

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/fido/zzge;-><init>(Lcom/google/android/gms/internal/fido/zzgb;Ljava/lang/Character;)V

    const/16 v0, 0x200

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/google/android/gms/internal/fido/zzgc;->zza:[C

    invoke-static {p1}, Lcom/google/android/gms/internal/fido/zzgb;->zzd(Lcom/google/android/gms/internal/fido/zzgb;)[C

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    move v0, v2

    .line 2
    :goto_17
    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzbm;->zzc(Z)V

    :goto_1a
    const/16 v0, 0x100

    if-ge v2, v0, :cond_37

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzgc;->zza:[C

    ushr-int/lit8 v1, v2, 0x4

    .line 3
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/fido/zzgb;->zza(I)C

    move-result v1

    aput-char v1, v0, v2

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzgc;->zza:[C

    or-int/lit16 v1, v2, 0x100

    and-int/lit8 v3, v2, 0xf

    .line 4
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/fido/zzgb;->zza(I)C

    move-result v3

    aput-char v3, v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_37
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 5
    new-instance p1, Lcom/google/android/gms/internal/fido/zzgb;

    const-string p2, "base16()"

    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/internal/fido/zzgb;-><init>(Ljava/lang/String;[C)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fido/zzgc;-><init>(Lcom/google/android/gms/internal/fido/zzgb;)V

    return-void
.end method


# virtual methods
.method final zza(Lcom/google/android/gms/internal/fido/zzgb;Ljava/lang/Character;)Lcom/google/android/gms/internal/fido/zzgf;
    .registers 3
    .param p2    # Ljava/lang/Character;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    new-instance p2, Lcom/google/android/gms/internal/fido/zzgc;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/fido/zzgc;-><init>(Lcom/google/android/gms/internal/fido/zzgb;)V

    return-object p2
.end method

.method final zzb(Ljava/lang/Appendable;[BII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length p3, p2

    const/4 v0, 0x0

    invoke-static {v0, p4, p3}, Lcom/google/android/gms/internal/fido/zzbm;->zze(III)V

    :goto_5
    if-ge v0, p4, :cond_1e

    .line 2
    aget-byte p3, p2, v0

    and-int/lit16 p3, p3, 0xff

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzgc;->zza:[C

    aget-char v1, v1, p3

    .line 3
    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzgc;->zza:[C

    or-int/lit16 p3, p3, 0x100

    aget-char p3, v1, p3

    .line 4
    invoke-interface {p1, p3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1e
    return-void
.end method
