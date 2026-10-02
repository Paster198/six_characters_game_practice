.class public final Lcom/google/android/gms/fido/fido2/api/common/UvmEntry$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fido/fido2/api/common/UvmEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zza:I

.field private zzb:S

.field private zzc:S


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/fido/fido2/api/common/UvmEntry;
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/UvmEntry;

    iget v1, p0, Lcom/google/android/gms/fido/fido2/api/common/UvmEntry$Builder;->zza:I

    iget-short v2, p0, Lcom/google/android/gms/fido/fido2/api/common/UvmEntry$Builder;->zzb:S

    iget-short v3, p0, Lcom/google/android/gms/fido/fido2/api/common/UvmEntry$Builder;->zzc:S

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/fido/fido2/api/common/UvmEntry;-><init>(ISS)V

    return-object v0
.end method

.method public setKeyProtectionType(S)Lcom/google/android/gms/fido/fido2/api/common/UvmEntry$Builder;
    .registers 2

    iput-short p1, p0, Lcom/google/android/gms/fido/fido2/api/common/UvmEntry$Builder;->zzb:S

    return-object p0
.end method

.method public setMatcherProtectionType(S)Lcom/google/android/gms/fido/fido2/api/common/UvmEntry$Builder;
    .registers 2

    iput-short p1, p0, Lcom/google/android/gms/fido/fido2/api/common/UvmEntry$Builder;->zzc:S

    return-object p0
.end method

.method public setUserVerificationMethod(I)Lcom/google/android/gms/fido/fido2/api/common/UvmEntry$Builder;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/fido/fido2/api/common/UvmEntry$Builder;->zza:I

    return-object p0
.end method
