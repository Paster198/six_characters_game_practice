.class final Lcom/google/android/gms/internal/fido/zzfz;
.super Lcom/google/android/gms/internal/fido/zzfp;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# instance fields
.field private final zza:Ljava/security/MessageDigest;

.field private final zzb:I

.field private zzc:Z


# direct methods
.method synthetic constructor <init>(Ljava/security/MessageDigest;ILcom/google/android/gms/internal/fido/zzfy;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/fido/zzfp;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/fido/zzfz;->zza:Ljava/security/MessageDigest;

    iput p2, p0, Lcom/google/android/gms/internal/fido/zzfz;->zzb:I

    return-void
.end method

.method private final zzd()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/fido/zzfz;->zzc:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot re-use a Hasher after calling hash() on it"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fido/zzbm;->zzf(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final zzb([BII)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/fido/zzfz;->zzd()V

    iget-object p2, p0, Lcom/google/android/gms/internal/fido/zzfz;->zza:Ljava/security/MessageDigest;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p2, p1, v0, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-void
.end method

.method public final zzc()Lcom/google/android/gms/internal/fido/zzft;
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/fido/zzfz;->zzd()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fido/zzfz;->zzc:Z

    iget v0, p0, Lcom/google/android/gms/internal/fido/zzfz;->zzb:I

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzfz;->zza:Ljava/security/MessageDigest;

    .line 2
    invoke-virtual {v1}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v1

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzfz;->zza:Ljava/security/MessageDigest;

    .line 3
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    sget v1, Lcom/google/android/gms/internal/fido/zzft;->zzb:I

    .line 4
    new-instance v1, Lcom/google/android/gms/internal/fido/zzfs;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/fido/zzfs;-><init>([B)V

    return-object v1

    :cond_1e
    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzfz;->zza:Ljava/security/MessageDigest;

    .line 5
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    sget v1, Lcom/google/android/gms/internal/fido/zzft;->zzb:I

    .line 6
    new-instance v1, Lcom/google/android/gms/internal/fido/zzfs;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/fido/zzfs;-><init>([B)V

    return-object v1
.end method
