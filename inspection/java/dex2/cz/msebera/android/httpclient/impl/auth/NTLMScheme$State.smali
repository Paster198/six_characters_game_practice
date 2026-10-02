.class final enum Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;
.super Ljava/lang/Enum;
.source "NTLMScheme.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

.field public static final enum CHALLENGE_RECEIVED:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

.field public static final enum FAILED:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

.field public static final enum MSG_TYPE1_GENERATED:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

.field public static final enum MSG_TYPE2_RECEVIED:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

.field public static final enum MSG_TYPE3_GENERATED:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

.field public static final enum UNINITIATED:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 52
    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    const-string v1, "UNINITIATED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->UNINITIATED:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    .line 53
    new-instance v1, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    const-string v2, "CHALLENGE_RECEIVED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->CHALLENGE_RECEIVED:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    .line 54
    new-instance v2, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    const-string v3, "MSG_TYPE1_GENERATED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->MSG_TYPE1_GENERATED:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    .line 55
    new-instance v3, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    const-string v4, "MSG_TYPE2_RECEVIED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->MSG_TYPE2_RECEVIED:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    .line 56
    new-instance v4, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    const-string v5, "MSG_TYPE3_GENERATED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->MSG_TYPE3_GENERATED:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    .line 57
    new-instance v5, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    const-string v6, "FAILED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->FAILED:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    .line 51
    filled-new-array/range {v0 .. v5}, [Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->$VALUES:[Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;
    .registers 2

    .line 51
    const-class v0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    return-object p0
.end method

.method public static values()[Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;
    .registers 1

    .line 51
    sget-object v0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->$VALUES:[Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    invoke-virtual {v0}, [Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    return-object v0
.end method
