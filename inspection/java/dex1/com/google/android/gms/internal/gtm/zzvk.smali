.class public Lcom/google/android/gms/internal/gtm/zzvk;
.super Ljava/io/IOException;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# instance fields
.field private zza:Lcom/google/android/gms/internal/gtm/zzwk;

.field private zzb:Z


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzvk;->zza:Lcom/google/android/gms/internal/gtm/zzwk;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzvk;->zza:Lcom/google/android/gms/internal/gtm/zzwk;

    return-void
.end method

.method static zza()Lcom/google/android/gms/internal/gtm/zzvj;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzvj;

    const-string v1, "Protocol message tag had invalid wire type."

    .line 1
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zzvj;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzb()Lcom/google/android/gms/internal/gtm/zzvk;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzvk;

    const-string v1, "Protocol message end-group tag did not match expected tag."

    .line 1
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zzvk;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzc()Lcom/google/android/gms/internal/gtm/zzvk;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzvk;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    .line 1
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zzvk;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzd()Lcom/google/android/gms/internal/gtm/zzvk;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzvk;

    const-string v1, "Protocol message had invalid UTF-8."

    .line 1
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zzvk;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zze()Lcom/google/android/gms/internal/gtm/zzvk;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzvk;

    const-string v1, "CodedInputStream encountered a malformed varint."

    .line 1
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zzvk;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzf()Lcom/google/android/gms/internal/gtm/zzvk;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzvk;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    .line 1
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zzvk;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzg()Lcom/google/android/gms/internal/gtm/zzvk;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzvk;

    const-string v1, "Failed to parse the message."

    .line 1
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zzvk;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzi()Lcom/google/android/gms/internal/gtm/zzvk;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzvk;

    const-string v1, "Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit."

    .line 1
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zzvk;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzj()Lcom/google/android/gms/internal/gtm/zzvk;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzvk;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    .line 1
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zzvk;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final zzh(Lcom/google/android/gms/internal/gtm/zzwk;)Lcom/google/android/gms/internal/gtm/zzvk;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzvk;->zza:Lcom/google/android/gms/internal/gtm/zzwk;

    return-object p0
.end method

.method final zzk()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzvk;->zzb:Z

    return-void
.end method

.method final zzl()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzvk;->zzb:Z

    return v0
.end method
