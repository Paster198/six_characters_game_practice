.class final Landroidx/credentials/provider/utils/CryptoObjectUtils$Api35Impl;
.super Ljava/lang/Object;
.source "CryptoObjectUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/provider/utils/CryptoObjectUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api35Impl"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c3\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Landroidx/credentials/provider/utils/CryptoObjectUtils$Api35Impl;",
        "",
        "()V",
        "getOperationHandle",
        "",
        "crypto",
        "Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;",
        "credentials_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/credentials/provider/utils/CryptoObjectUtils$Api35Impl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/credentials/provider/utils/CryptoObjectUtils$Api35Impl;

    invoke-direct {v0}, Landroidx/credentials/provider/utils/CryptoObjectUtils$Api35Impl;-><init>()V

    sput-object v0, Landroidx/credentials/provider/utils/CryptoObjectUtils$Api35Impl;->INSTANCE:Landroidx/credentials/provider/utils/CryptoObjectUtils$Api35Impl;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOperationHandle(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;)J
    .registers 4

    const-string v0, "crypto"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getOperationHandle()J

    move-result-wide v0

    return-wide v0
.end method
