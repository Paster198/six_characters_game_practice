.class public final Lcom/google/android/gms/internal/fido/zzhr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# instance fields
.field private final zza:B

.field private final zzb:B


# direct methods
.method constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit16 v0, p1, 0xe0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/google/android/gms/internal/fido/zzhr;->zza:B

    and-int/lit8 p1, p1, 0x1f

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/gms/internal/fido/zzhr;->zzb:B

    return-void
.end method


# virtual methods
.method public final zza()B
    .registers 2

    iget-byte v0, p0, Lcom/google/android/gms/internal/fido/zzhr;->zzb:B

    return v0
.end method

.method public final zzb()B
    .registers 2

    iget-byte v0, p0, Lcom/google/android/gms/internal/fido/zzhr;->zza:B

    return v0
.end method

.method public final zzc()I
    .registers 2

    iget-byte v0, p0, Lcom/google/android/gms/internal/fido/zzhr;->zza:B

    shr-int/lit8 v0, v0, 0x5

    and-int/lit8 v0, v0, 0x7

    return v0
.end method
