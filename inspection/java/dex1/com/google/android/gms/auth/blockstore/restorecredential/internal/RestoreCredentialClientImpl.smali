.class public final Lcom/google/android/gms/auth/blockstore/restorecredential/internal/RestoreCredentialClientImpl;
.super Lcom/google/android/gms/common/internal/GmsClient;
.source "com.google.android.gms:play-services-auth-blockstore@@16.4.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/blockstore/restorecredential/internal/RestoreCredentialClientImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/GmsClient<",
        "Lcom/google/android/gms/auth/blockstore/restorecredential/internal/IRestoreCredentialService;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u001e2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001eB/\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0008\u0010\u000f\u001a\u00020\u0010H\u0014J\u0008\u0010\u0011\u001a\u00020\u0010H\u0014J\u0010\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0014H\u0014J\u0013\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016H\u0016\u00a2\u0006\u0002\u0010\u0018J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016J\u0008\u0010\u001b\u001a\u00020\u001cH\u0014J\u0008\u0010\u001d\u001a\u00020\u001cH\u0016\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/google/android/gms/auth/blockstore/restorecredential/internal/RestoreCredentialClientImpl;",
        "Lcom/google/android/gms/common/internal/GmsClient;",
        "Lcom/google/android/gms/auth/blockstore/restorecredential/internal/IRestoreCredentialService;",
        "context",
        "Landroid/content/Context;",
        "looper",
        "Landroid/os/Looper;",
        "clientSettings",
        "Lcom/google/android/gms/common/internal/ClientSettings;",
        "connectionCallbacks",
        "Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;",
        "connectionFailedListener",
        "Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;",
        "<init>",
        "(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;)V",
        "getStartServiceAction",
        "",
        "getServiceDescriptor",
        "createServiceInterface",
        "binder",
        "Landroid/os/IBinder;",
        "getApiFeatures",
        "",
        "Lcom/google/android/gms/common/Feature;",
        "()[Lcom/google/android/gms/common/Feature;",
        "getMinApkVersion",
        "",
        "getUseDynamicLookup",
        "",
        "usesClientTelemetry",
        "Companion",
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
.field public static final Companion:Lcom/google/android/gms/auth/blockstore/restorecredential/internal/RestoreCredentialClientImpl$Companion;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/auth/blockstore/restorecredential/internal/RestoreCredentialClientImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/blockstore/restorecredential/internal/RestoreCredentialClientImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/gms/auth/blockstore/restorecredential/internal/RestoreCredentialClientImpl;->Companion:Lcom/google/android/gms/auth/blockstore/restorecredential/internal/RestoreCredentialClientImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;)V
    .registers 14

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "looper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientSettings"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionCallbacks"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionFailedListener"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x17d

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 1
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/common/internal/GmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/blockstore/restorecredential/internal/RestoreCredentialClientImpl;->createServiceInterface(Landroid/os/IBinder;)Lcom/google/android/gms/auth/blockstore/restorecredential/internal/IRestoreCredentialService;

    move-result-object p1

    check-cast p1, Landroid/os/IInterface;

    return-object p1
.end method

.method protected createServiceInterface(Landroid/os/IBinder;)Lcom/google/android/gms/auth/blockstore/restorecredential/internal/IRestoreCredentialService;
    .registers 3

    const-string v0, "binder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/auth/blockstore/restorecredential/internal/IRestoreCredentialService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/auth/blockstore/restorecredential/internal/IRestoreCredentialService;

    move-result-object p1

    const-string v0, "asInterface(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getApiFeatures()[Lcom/google/android/gms/common/Feature;
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/auth_blockstore/zzab;->zzl:[Lcom/google/android/gms/common/Feature;

    const-string v1, "ALL_FEATURES"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getMinApkVersion()I
    .registers 2

    const v0, 0x1110e58

    return v0
.end method

.method protected getServiceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.auth.blockstore.restorecredential.internal.IRestoreCredentialService"

    return-object v0
.end method

.method protected getStartServiceAction()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.auth.blockstore.restorecredential.service.START_RESTORE_CRED"

    return-object v0
.end method

.method protected getUseDynamicLookup()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public usesClientTelemetry()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
