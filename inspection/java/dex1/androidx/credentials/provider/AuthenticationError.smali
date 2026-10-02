.class public final Landroidx/credentials/provider/AuthenticationError;
.super Ljava/lang/Object;
.source "AuthenticationError.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/provider/AuthenticationError$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u001b\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0013\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u000e\u001a\u00020\u0003H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0010"
    }
    d2 = {
        "Landroidx/credentials/provider/AuthenticationError;",
        "",
        "errorCode",
        "",
        "errorMsg",
        "",
        "(ILjava/lang/CharSequence;)V",
        "getErrorCode",
        "()I",
        "getErrorMsg",
        "()Ljava/lang/CharSequence;",
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
.field public static final Companion:Landroidx/credentials/provider/AuthenticationError$Companion;

.field public static final EXTRA_BIOMETRIC_AUTH_ERROR:Ljava/lang/String; = "androidx.credentials.provider.BIOMETRIC_AUTH_ERROR_CODE"

.field public static final EXTRA_BIOMETRIC_AUTH_ERROR_FALLBACK:Ljava/lang/String; = "BIOMETRIC_AUTH_ERROR_CODE"

.field public static final EXTRA_BIOMETRIC_AUTH_ERROR_MESSAGE:Ljava/lang/String; = "androidx.credentials.provider.BIOMETRIC_AUTH_ERROR_MESSAGE"

.field public static final EXTRA_BIOMETRIC_AUTH_ERROR_MESSAGE_FALLBACK:Ljava/lang/String; = "BIOMETRIC_AUTH_ERROR_MESSAGE"

.field private static final TAG:Ljava/lang/String;

.field private static final biometricFrameworkToJetpackErrorMap:Ljava/util/LinkedHashMap;
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
.field private final errorCode:I

.field private final errorMsg:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    new-instance v0, Landroidx/credentials/provider/AuthenticationError$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/provider/AuthenticationError$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/provider/AuthenticationError;->Companion:Landroidx/credentials/provider/AuthenticationError$Companion;

    .line 45
    const-string v0, "AuthenticationError"

    sput-object v0, Landroidx/credentials/provider/AuthenticationError;->TAG:Ljava/lang/String;

    const/16 v0, 0xd

    .line 66
    new-array v0, v0, [Lkotlin/Pair;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/16 v2, 0xc

    .line 68
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x1

    .line 70
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 68
    aput-object v3, v0, v4

    .line 70
    invoke-static {v5, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x2

    .line 86
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 70
    aput-object v3, v0, v4

    const/4 v3, 0x7

    .line 72
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v6, 0x3

    .line 84
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 72
    aput-object v4, v0, v6

    const/16 v4, 0x9

    .line 74
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/4 v8, 0x4

    .line 80
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 74
    aput-object v6, v0, v8

    const/16 v6, 0xb

    .line 76
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    aput-object v8, v0, v1

    const/16 v1, 0xe

    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v8, 0x6

    aput-object v1, v0, v8

    .line 80
    invoke-static {v9, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0xf

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v3, 0x8

    .line 90
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 82
    aput-object v1, v0, v3

    .line 84
    invoke-static {v7, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v4

    .line 86
    invoke-static {v5, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v3, 0xa

    .line 88
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 86
    aput-object v1, v0, v3

    .line 88
    invoke-static {v4, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v6

    .line 90
    invoke-static {v8, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v2

    .line 65
    invoke-static {v0}, Lkotlin/collections/MapsKt;->linkedMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object v0

    sput-object v0, Landroidx/credentials/provider/AuthenticationError;->biometricFrameworkToJetpackErrorMap:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Landroidx/credentials/provider/AuthenticationError;-><init>(ILjava/lang/CharSequence;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;)V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Landroidx/credentials/provider/AuthenticationError;->errorCode:I

    .line 42
    iput-object p2, p0, Landroidx/credentials/provider/AuthenticationError;->errorMsg:Ljava/lang/CharSequence;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/CharSequence;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 40
    :cond_5
    invoke-direct {p0, p1, p2}, Landroidx/credentials/provider/AuthenticationError;-><init>(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public static final synthetic access$getBiometricFrameworkToJetpackErrorMap$cp()Ljava/util/LinkedHashMap;
    .registers 1

    .line 38
    sget-object v0, Landroidx/credentials/provider/AuthenticationError;->biometricFrameworkToJetpackErrorMap:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .registers 1

    .line 38
    sget-object v0, Landroidx/credentials/provider/AuthenticationError;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 142
    :cond_4
    instance-of v1, p1, Landroidx/credentials/provider/AuthenticationError;

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    .line 143
    iget v1, p0, Landroidx/credentials/provider/AuthenticationError;->errorCode:I

    check-cast p1, Landroidx/credentials/provider/AuthenticationError;

    iget v3, p1, Landroidx/credentials/provider/AuthenticationError;->errorCode:I

    if-ne v1, v3, :cond_1c

    iget-object v1, p0, Landroidx/credentials/provider/AuthenticationError;->errorMsg:Ljava/lang/CharSequence;

    iget-object p1, p1, Landroidx/credentials/provider/AuthenticationError;->errorMsg:Ljava/lang/CharSequence;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    return v0

    :cond_1c
    return v2
.end method

.method public final getErrorCode()I
    .registers 2

    .line 41
    iget v0, p0, Landroidx/credentials/provider/AuthenticationError;->errorCode:I

    return v0
.end method

.method public final getErrorMsg()Ljava/lang/CharSequence;
    .registers 2

    .line 42
    iget-object v0, p0, Landroidx/credentials/provider/AuthenticationError;->errorMsg:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 149
    iget v0, p0, Landroidx/credentials/provider/AuthenticationError;->errorCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroidx/credentials/provider/AuthenticationError;->errorMsg:Ljava/lang/CharSequence;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
