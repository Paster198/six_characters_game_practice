.class public final Lcom/google/android/gms/internal/auth/zzfb;
.super Ljava/io/IOException;
.source "com.google.android.gms:play-services-auth-base@@18.0.10"


# instance fields
.field private zza:Lcom/google/android/gms/internal/auth/zzfx;


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzfb;->zza:Lcom/google/android/gms/internal/auth/zzfx;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzfb;->zza:Lcom/google/android/gms/internal/auth/zzfx;

    return-void
.end method

.method static zza()Lcom/google/android/gms/internal/auth/zzfb;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/auth/zzfb;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/auth/zzfb;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzb()Lcom/google/android/gms/internal/auth/zzfb;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/auth/zzfb;

    const-string v1, "Protocol message had invalid UTF-8."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/auth/zzfb;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzc()Lcom/google/android/gms/internal/auth/zzfb;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/auth/zzfb;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/auth/zzfb;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzd()Lcom/google/android/gms/internal/auth/zzfb;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/auth/zzfb;

    const-string v1, "Failed to parse the message."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/auth/zzfb;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzf()Lcom/google/android/gms/internal/auth/zzfb;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/auth/zzfb;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/auth/zzfb;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/internal/auth/zzfx;)Lcom/google/android/gms/internal/auth/zzfb;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzfb;->zza:Lcom/google/android/gms/internal/auth/zzfx;

    return-object p0
.end method
