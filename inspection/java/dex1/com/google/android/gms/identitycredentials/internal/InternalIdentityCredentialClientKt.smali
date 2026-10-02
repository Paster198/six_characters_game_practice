.class public final Lcom/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClientKt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-identity-credentials@@16.0.0-alpha02"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0004\"\u0014\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0010\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0005\"\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "CLIENT_KEY",
        "Lcom/google/android/gms/common/api/Api$ClientKey;",
        "Lcom/google/android/gms/identitycredentials/internal/IdentityCredentialClientImpl;",
        "clientBuilder",
        "com/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClientKt$clientBuilder$1",
        "Lcom/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClientKt$clientBuilder$1;",
        "API",
        "Lcom/google/android/gms/common/api/Api;",
        "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
        "java.com.google.android.gmscore.integ.client.identity_credentials_identity_credentials"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field private static final CLIENT_KEY:Lcom/google/android/gms/common/api/Api$ClientKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$ClientKey<",
            "Lcom/google/android/gms/identitycredentials/internal/IdentityCredentialClientImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final clientBuilder:Lcom/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClientKt$clientBuilder$1;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$ClientKey;-><init>()V

    sput-object v0, Lcom/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClientKt;->CLIENT_KEY:Lcom/google/android/gms/common/api/Api$ClientKey;

    .line 2
    new-instance v1, Lcom/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClientKt$clientBuilder$1;

    invoke-direct {v1}, Lcom/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClientKt$clientBuilder$1;-><init>()V

    sput-object v1, Lcom/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClientKt;->clientBuilder:Lcom/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClientKt$clientBuilder$1;

    .line 3
    new-instance v2, Lcom/google/android/gms/common/api/Api;

    const-string v3, "IdentityCredentials.API"

    check-cast v1, Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$ClientKey;)V

    sput-object v2, Lcom/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClientKt;->API:Lcom/google/android/gms/common/api/Api;

    return-void
.end method

.method public static final synthetic access$getAPI$p()Lcom/google/android/gms/common/api/Api;
    .registers 1

    sget-object v0, Lcom/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClientKt;->API:Lcom/google/android/gms/common/api/Api;

    return-object v0
.end method
