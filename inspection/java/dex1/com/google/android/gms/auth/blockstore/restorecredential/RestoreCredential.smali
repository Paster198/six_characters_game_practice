.class public final Lcom/google/android/gms/auth/blockstore/restorecredential/RestoreCredential;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-blockstore@@16.4.0"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/google/android/gms/auth/blockstore/restorecredential/RestoreCredential;",
        "",
        "<init>",
        "()V",
        "getRestoreCredentialClient",
        "Lcom/google/android/gms/auth/blockstore/restorecredential/RestoreCredentialClient;",
        "context",
        "Landroid/content/Context;",
        "java.com.google.android.gmscore.integ.client.auth_blockstore_client_auth_blockstore"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/android/gms/auth/blockstore/restorecredential/RestoreCredential;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/auth/blockstore/restorecredential/RestoreCredential;

    invoke-direct {v0}, Lcom/google/android/gms/auth/blockstore/restorecredential/RestoreCredential;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/blockstore/restorecredential/RestoreCredential;->INSTANCE:Lcom/google/android/gms/auth/blockstore/restorecredential/RestoreCredential;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getRestoreCredentialClient(Landroid/content/Context;)Lcom/google/android/gms/auth/blockstore/restorecredential/RestoreCredentialClient;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/google/android/gms/auth/blockstore/restorecredential/internal/InternalRestoreCredentialClient;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/blockstore/restorecredential/internal/InternalRestoreCredentialClient;-><init>(Landroid/content/Context;)V

    check-cast v0, Lcom/google/android/gms/auth/blockstore/restorecredential/RestoreCredentialClient;

    return-object v0
.end method
