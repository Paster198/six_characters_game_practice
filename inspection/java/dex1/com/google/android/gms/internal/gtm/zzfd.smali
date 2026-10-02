.class final Lcom/google/android/gms/internal/gtm/zzfd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/gtm/zzfe;

.field private zzb:I

.field private final zzc:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzfe;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzfd;->zza:Lcom/google/android/gms/internal/gtm/zzfe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzfd;->zzc:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public final zza()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzfd;->zzb:I

    return v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/gtm/zzex;)Z
    .registers 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzfd;->zzb:I

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzfd;->zza:Lcom/google/android/gms/internal/gtm/zzfe;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzct;->zzg()I

    move-result v2

    const/4 v3, 0x0

    if-le v0, v2, :cond_14

    return v3

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzfd;->zza:Lcom/google/android/gms/internal/gtm/zzfe;

    .line 3
    invoke-virtual {v0, p1, v3}, Lcom/google/android/gms/internal/gtm/zzfe;->zza(Lcom/google/android/gms/internal/gtm/zzex;Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzfd;->zza:Lcom/google/android/gms/internal/gtm/zzfe;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzz()Lcom/google/android/gms/internal/gtm/zzfb;

    move-result-object v0

    const-string v2, "Error formatting hit"

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/gtm/zzfb;->zzb(Lcom/google/android/gms/internal/gtm/zzex;Ljava/lang/String;)V

    return v1

    .line 5
    :cond_28
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 6
    array-length v2, v0

    iget-object v4, p0, Lcom/google/android/gms/internal/gtm/zzfd;->zza:Lcom/google/android/gms/internal/gtm/zzfe;

    .line 7
    invoke-virtual {v4}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzct;->zzf()I

    move-result v4

    if-le v2, v4, :cond_44

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzfd;->zza:Lcom/google/android/gms/internal/gtm/zzfe;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzz()Lcom/google/android/gms/internal/gtm/zzfb;

    move-result-object v0

    const-string v2, "Hit size exceeds the maximum size limit"

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/gtm/zzfb;->zzb(Lcom/google/android/gms/internal/gtm/zzex;Ljava/lang/String;)V

    return v1

    :cond_44
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzfd;->zzc:Ljava/io/ByteArrayOutputStream;

    .line 9
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    if-lez p1, :cond_4e

    add-int/lit8 v2, v2, 0x1

    :cond_4e
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzfd;->zzc:Ljava/io/ByteArrayOutputStream;

    .line 10
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    iget-object v4, p0, Lcom/google/android/gms/internal/gtm/zzfd;->zza:Lcom/google/android/gms/internal/gtm/zzfe;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    add-int/2addr p1, v2

    .line 11
    sget-object v2, Lcom/google/android/gms/internal/gtm/zzeu;->zzA:Lcom/google/android/gms/internal/gtm/zzet;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzet;->zzb()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le p1, v2, :cond_69

    return v3

    :cond_69
    :try_start_69
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzfd;->zzc:Ljava/io/ByteArrayOutputStream;

    .line 12
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    if-lez p1, :cond_7a

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzfd;->zzc:Ljava/io/ByteArrayOutputStream;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzfe;->zzf()[B

    move-result-object v2

    .line 13
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_7a
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzfd;->zzc:Ljava/io/ByteArrayOutputStream;

    .line 14
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_7f} :catch_85

    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzfd;->zzb:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzfd;->zzb:I

    return v1

    :catch_85
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzfd;->zza:Lcom/google/android/gms/internal/gtm/zzfe;

    const-string v2, "Failed to write payload when batching hits"

    .line 15
    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    return v1
.end method

.method public final zzc()[B
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzfd;->zzc:Ljava/io/ByteArrayOutputStream;

    .line 1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
