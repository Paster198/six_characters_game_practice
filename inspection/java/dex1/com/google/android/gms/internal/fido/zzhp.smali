.class public abstract Lcom/google/android/gms/internal/fido/zzhp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fido@@21.0.0"

# interfaces
.implements Ljava/lang/Comparable;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zzc(Ljava/lang/Class;)Lcom/google/android/gms/internal/fido/zzhp;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/fido/zzho;
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/fido/zzhp;

    return-object p1

    .line 1
    :cond_d
    new-instance v0, Lcom/google/android/gms/internal/fido/zzho;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected a "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " value, but got "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/fido/zzho;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static zzd(B)I
    .registers 1

    shr-int/lit8 p0, p0, 0x5

    and-int/lit8 p0, p0, 0x7

    return p0
.end method

.method public static zzg(J)Lcom/google/android/gms/internal/fido/zzhk;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/fido/zzhk;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/fido/zzhk;-><init>(J)V

    return-object v0
.end method

.method public static zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/fido/zzhn;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/fido/zzhn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fido/zzhn;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs zzj([B)Lcom/google/android/gms/internal/fido/zzhp;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/fido/zzhj;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v0, p0

    .line 1
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 2
    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p0, Lcom/google/android/gms/internal/fido/zzhs;

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fido/zzhs;-><init>(Ljava/io/InputStream;)V

    .line 4
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/fido/zzhq;->zza(Ljava/io/InputStream;Lcom/google/android/gms/internal/fido/zzhs;)Lcom/google/android/gms/internal/fido/zzhp;

    move-result-object p0

    return-object p0
.end method

.method public static zzk(Ljava/io/InputStream;)Lcom/google/android/gms/internal/fido/zzhp;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/fido/zzhj;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/fido/zzhs;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fido/zzhs;-><init>(Ljava/io/InputStream;)V

    .line 2
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/fido/zzhq;->zza(Ljava/io/InputStream;Lcom/google/android/gms/internal/fido/zzhs;)Lcom/google/android/gms/internal/fido/zzhp;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected abstract zza()I
.end method

.method protected zzb()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final zze()Lcom/google/android/gms/internal/fido/zzhi;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/fido/zzho;
        }
    .end annotation

    .line 1
    const-class v0, Lcom/google/android/gms/internal/fido/zzhi;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fido/zzhp;->zzc(Ljava/lang/Class;)Lcom/google/android/gms/internal/fido/zzhp;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fido/zzhi;

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/fido/zzhk;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/fido/zzho;
        }
    .end annotation

    .line 1
    const-class v0, Lcom/google/android/gms/internal/fido/zzhk;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fido/zzhp;->zzc(Ljava/lang/Class;)Lcom/google/android/gms/internal/fido/zzhp;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fido/zzhk;

    return-object v0
.end method

.method public final zzh()Lcom/google/android/gms/internal/fido/zzhm;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/fido/zzho;
        }
    .end annotation

    .line 1
    const-class v0, Lcom/google/android/gms/internal/fido/zzhm;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fido/zzhp;->zzc(Ljava/lang/Class;)Lcom/google/android/gms/internal/fido/zzhp;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fido/zzhm;

    return-object v0
.end method
