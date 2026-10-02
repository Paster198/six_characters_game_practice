.class public final enum Lcz/msebera/android/httpclient/auth/AuthProtocolState;
.super Ljava/lang/Enum;
.source "AuthProtocolState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcz/msebera/android/httpclient/auth/AuthProtocolState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcz/msebera/android/httpclient/auth/AuthProtocolState;

.field public static final enum CHALLENGED:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

.field public static final enum FAILURE:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

.field public static final enum HANDSHAKE:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

.field public static final enum SUCCESS:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

.field public static final enum UNCHALLENGED:Lcz/msebera/android/httpclient/auth/AuthProtocolState;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 31
    new-instance v0, Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    const-string v1, "UNCHALLENGED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/auth/AuthProtocolState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->UNCHALLENGED:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    new-instance v1, Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    const-string v2, "CHALLENGED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcz/msebera/android/httpclient/auth/AuthProtocolState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->CHALLENGED:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    new-instance v2, Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    const-string v3, "HANDSHAKE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcz/msebera/android/httpclient/auth/AuthProtocolState;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->HANDSHAKE:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    new-instance v3, Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    const-string v4, "FAILURE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcz/msebera/android/httpclient/auth/AuthProtocolState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->FAILURE:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    new-instance v4, Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    const-string v5, "SUCCESS"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcz/msebera/android/httpclient/auth/AuthProtocolState;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->SUCCESS:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    .line 29
    filled-new-array {v0, v1, v2, v3, v4}, [Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->$VALUES:[Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcz/msebera/android/httpclient/auth/AuthProtocolState;
    .registers 2

    .line 29
    const-class v0, Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    return-object p0
.end method

.method public static values()[Lcz/msebera/android/httpclient/auth/AuthProtocolState;
    .registers 1

    .line 29
    sget-object v0, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->$VALUES:[Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    invoke-virtual {v0}, [Lcz/msebera/android/httpclient/auth/AuthProtocolState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    return-object v0
.end method
