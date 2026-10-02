.class public final Landroidx/credentials/provider/AuthenticationResult;
.super Ljava/lang/Object;
.source "AuthenticationResult.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/provider/AuthenticationResult$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0013\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\n\u001a\u00020\u0003H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000c"
    }
    d2 = {
        "Landroidx/credentials/provider/AuthenticationResult;",
        "",
        "authenticationType",
        "",
        "(I)V",
        "getAuthenticationType",
        "()I",
        "equals",
        "",
        "other",
        "hashCode",
        "Companion",
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
.field public static final Companion:Landroidx/credentials/provider/AuthenticationResult$Companion;

.field public static final EXTRA_BIOMETRIC_AUTH_RESULT_TYPE:Ljava/lang/String; = "androidx.credentials.provider.BIOMETRIC_AUTH_RESULT"

.field public static final EXTRA_BIOMETRIC_AUTH_RESULT_TYPE_FALLBACK:Ljava/lang/String; = "BIOMETRIC_AUTH_RESULT"

.field private static final biometricFrameworkToJetpackResultMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final authenticationType:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroidx/credentials/provider/AuthenticationResult$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/provider/AuthenticationResult$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/provider/AuthenticationResult;->Companion:Landroidx/credentials/provider/AuthenticationResult$Companion;

    const/4 v0, 0x2

    .line 49
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v0, v0, [Lkotlin/Pair;

    invoke-static {v1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    .line 48
    invoke-static {v0}, Lkotlin/collections/MapsKt;->linkedMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object v0

    sput-object v0, Landroidx/credentials/provider/AuthenticationResult;->biometricFrameworkToJetpackResultMap:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Landroidx/credentials/provider/AuthenticationResult;->authenticationType:I

    return-void
.end method

.method public static final synthetic access$getBiometricFrameworkToJetpackResultMap$cp()Ljava/util/LinkedHashMap;
    .registers 1

    .line 35
    sget-object v0, Landroidx/credentials/provider/AuthenticationResult;->biometricFrameworkToJetpackResultMap:Ljava/util/LinkedHashMap;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 101
    :cond_4
    instance-of v1, p1, Landroidx/credentials/provider/AuthenticationResult;

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    .line 102
    iget v1, p0, Landroidx/credentials/provider/AuthenticationResult;->authenticationType:I

    check-cast p1, Landroidx/credentials/provider/AuthenticationResult;

    iget p1, p1, Landroidx/credentials/provider/AuthenticationResult;->authenticationType:I

    if-ne v1, p1, :cond_12

    return v0

    :cond_12
    return v2
.end method

.method public final getAuthenticationType()I
    .registers 2

    .line 36
    iget v0, p0, Landroidx/credentials/provider/AuthenticationResult;->authenticationType:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 108
    iget v0, p0, Landroidx/credentials/provider/AuthenticationResult;->authenticationType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
