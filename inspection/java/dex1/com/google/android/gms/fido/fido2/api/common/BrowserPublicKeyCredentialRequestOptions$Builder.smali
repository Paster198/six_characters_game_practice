.class public final Lcom/google/android/gms/fido/fido2/api/common/BrowserPublicKeyCredentialRequestOptions$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fido/fido2/api/common/BrowserPublicKeyCredentialRequestOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zza:Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;

.field private zzb:Landroid/net/Uri;

.field private zzc:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/fido/fido2/api/common/BrowserPublicKeyCredentialRequestOptions;
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/BrowserPublicKeyCredentialRequestOptions;

    iget-object v1, p0, Lcom/google/android/gms/fido/fido2/api/common/BrowserPublicKeyCredentialRequestOptions$Builder;->zza:Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;

    iget-object v2, p0, Lcom/google/android/gms/fido/fido2/api/common/BrowserPublicKeyCredentialRequestOptions$Builder;->zzb:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/gms/fido/fido2/api/common/BrowserPublicKeyCredentialRequestOptions$Builder;->zzc:[B

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/fido/fido2/api/common/BrowserPublicKeyCredentialRequestOptions;-><init>(Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;Landroid/net/Uri;[B)V

    return-object v0
.end method

.method public setClientDataHash([B)Lcom/google/android/gms/fido/fido2/api/common/BrowserPublicKeyCredentialRequestOptions$Builder;
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/fido/fido2/api/common/BrowserPublicKeyCredentialRequestOptions;->zzb([B)[B

    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/BrowserPublicKeyCredentialRequestOptions$Builder;->zzc:[B

    return-object p0
.end method

.method public setOrigin(Landroid/net/Uri;)Lcom/google/android/gms/fido/fido2/api/common/BrowserPublicKeyCredentialRequestOptions$Builder;
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/fido/fido2/api/common/BrowserPublicKeyCredentialRequestOptions;->zza(Landroid/net/Uri;)Landroid/net/Uri;

    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/BrowserPublicKeyCredentialRequestOptions$Builder;->zzb:Landroid/net/Uri;

    return-object p0
.end method

.method public setPublicKeyCredentialRequestOptions(Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;)Lcom/google/android/gms/fido/fido2/api/common/BrowserPublicKeyCredentialRequestOptions$Builder;
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;

    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/BrowserPublicKeyCredentialRequestOptions$Builder;->zza:Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;

    return-object p0
.end method
