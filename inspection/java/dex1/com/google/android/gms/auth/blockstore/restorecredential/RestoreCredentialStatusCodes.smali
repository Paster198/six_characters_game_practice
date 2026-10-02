.class public final Lcom/google/android/gms/auth/blockstore/restorecredential/RestoreCredentialStatusCodes;
.super Lcom/google/android/gms/common/api/CommonStatusCodes;
.source "com.google.android.gms:play-services-auth-blockstore@@16.4.0"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0005H\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/google/android/gms/auth/blockstore/restorecredential/RestoreCredentialStatusCodes;",
        "Lcom/google/android/gms/common/api/CommonStatusCodes;",
        "<init>",
        "()V",
        "RESTORE_CREDENTIAL_BASE",
        "",
        "RESTORE_CREDENTIAL_DEVELOPER_ERROR",
        "RESTORE_CREDENTIAL_INTERNAL_FAILURE",
        "RESTORE_CREDENTIAL_FIDO_FAILURE",
        "RESTORE_CREDENTIAL_E2EE_UNAVAILABLE",
        "getStringStatusCode",
        "",
        "statusCode",
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
.field public static final INSTANCE:Lcom/google/android/gms/auth/blockstore/restorecredential/RestoreCredentialStatusCodes;

.field public static final RESTORE_CREDENTIAL_DEVELOPER_ERROR:I = 0x9d08

.field public static final RESTORE_CREDENTIAL_E2EE_UNAVAILABLE:I = 0x9d0b

.field public static final RESTORE_CREDENTIAL_FIDO_FAILURE:I = 0x9d0a

.field public static final RESTORE_CREDENTIAL_INTERNAL_FAILURE:I = 0x9d09


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/auth/blockstore/restorecredential/RestoreCredentialStatusCodes;

    invoke-direct {v0}, Lcom/google/android/gms/auth/blockstore/restorecredential/RestoreCredentialStatusCodes;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/blockstore/restorecredential/RestoreCredentialStatusCodes;->INSTANCE:Lcom/google/android/gms/auth/blockstore/restorecredential/RestoreCredentialStatusCodes;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;-><init>()V

    return-void
.end method
