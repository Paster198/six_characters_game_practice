.class public final Lcom/google/android/gms/identitycredentials/IdentityCredentialManager$Companion;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-identity-credentials@@16.0.0-alpha02"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/identitycredentials/IdentityCredentialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\tH\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/google/android/gms/identitycredentials/IdentityCredentialManager$Companion;",
        "",
        "<init>",
        "()V",
        "getClient",
        "Lcom/google/android/gms/identitycredentials/IdentityCredentialClient;",
        "activity",
        "Landroid/app/Activity;",
        "context",
        "Landroid/content/Context;",
        "java.com.google.android.gmscore.integ.client.identity_credentials_identity_credentials"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/identitycredentials/IdentityCredentialManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getClient(Landroid/app/Activity;)Lcom/google/android/gms/identitycredentials/IdentityCredentialClient;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClient;

    check-cast p1, Landroid/content/Context;

    invoke-direct {v0, p1}, Lcom/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClient;-><init>(Landroid/content/Context;)V

    check-cast v0, Lcom/google/android/gms/identitycredentials/IdentityCredentialClient;

    return-object v0
.end method

.method public final getClient(Landroid/content/Context;)Lcom/google/android/gms/identitycredentials/IdentityCredentialClient;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClient;

    invoke-direct {v0, p1}, Lcom/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClient;-><init>(Landroid/content/Context;)V

    check-cast v0, Lcom/google/android/gms/identitycredentials/IdentityCredentialClient;

    return-object v0
.end method
