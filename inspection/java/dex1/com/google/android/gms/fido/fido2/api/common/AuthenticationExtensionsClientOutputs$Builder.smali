.class public final Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensionsClientOutputs$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensionsClientOutputs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zza:Lcom/google/android/gms/fido/fido2/api/common/UvmEntries;

.field private zzb:Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensionsCredPropsOutputs;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensionsClientOutputs;
    .registers 7

    .line 1
    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensionsClientOutputs;

    iget-object v1, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensionsClientOutputs$Builder;->zza:Lcom/google/android/gms/fido/fido2/api/common/UvmEntries;

    iget-object v3, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensionsClientOutputs$Builder;->zzb:Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensionsCredPropsOutputs;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensionsClientOutputs;-><init>(Lcom/google/android/gms/fido/fido2/api/common/UvmEntries;Lcom/google/android/gms/fido/fido2/api/common/zzf;Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensionsCredPropsOutputs;Lcom/google/android/gms/fido/fido2/api/common/zzh;Ljava/lang/String;)V

    return-object v0
.end method

.method public setCredProps(Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensionsCredPropsOutputs;)Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensionsClientOutputs$Builder;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensionsClientOutputs$Builder;->zzb:Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensionsCredPropsOutputs;

    return-object p0
.end method

.method public setUserVerificationMethodEntries(Lcom/google/android/gms/fido/fido2/api/common/UvmEntries;)Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensionsClientOutputs$Builder;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensionsClientOutputs$Builder;->zza:Lcom/google/android/gms/fido/fido2/api/common/UvmEntries;

    return-object p0
.end method
