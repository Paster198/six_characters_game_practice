.class public final enum Lcom/google/android/gms/fido/u2f/api/messagebased/ResponseType;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/fido/u2f/api/messagebased/ResponseType;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final enum REGISTER:Lcom/google/android/gms/fido/u2f/api/messagebased/ResponseType;

.field public static final enum SIGN:Lcom/google/android/gms/fido/u2f/api/messagebased/ResponseType;

.field private static final synthetic zza:[Lcom/google/android/gms/fido/u2f/api/messagebased/ResponseType;


# instance fields
.field private final zzb:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/fido/u2f/api/messagebased/ResponseType;

    const-string v1, "REGISTER"

    const/4 v2, 0x0

    const-string v3, "u2f_register_response"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/fido/u2f/api/messagebased/ResponseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/fido/u2f/api/messagebased/ResponseType;->REGISTER:Lcom/google/android/gms/fido/u2f/api/messagebased/ResponseType;

    new-instance v1, Lcom/google/android/gms/fido/u2f/api/messagebased/ResponseType;

    const-string v2, "SIGN"

    const/4 v3, 0x1

    .line 2
    const-string v4, "u2f_sign_response"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/fido/u2f/api/messagebased/ResponseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/gms/fido/u2f/api/messagebased/ResponseType;->SIGN:Lcom/google/android/gms/fido/u2f/api/messagebased/ResponseType;

    filled-new-array {v0, v1}, [Lcom/google/android/gms/fido/u2f/api/messagebased/ResponseType;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fido/u2f/api/messagebased/ResponseType;->zza:[Lcom/google/android/gms/fido/u2f/api/messagebased/ResponseType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/gms/fido/u2f/api/messagebased/ResponseType;->zzb:Ljava/lang/String;

    return-void
.end method

.method public static getResponseTypeForRequestType(Lcom/google/android/gms/fido/u2f/api/messagebased/RequestType;)Lcom/google/android/gms/fido/u2f/api/messagebased/ResponseType;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/fido/u2f/api/messagebased/RequestType$UnsupportedRequestTypeException;
        }
    .end annotation

    if-eqz p0, :cond_1b

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/fido/u2f/api/messagebased/RequestType;->ordinal()I

    move-result v0

    if-eqz v0, :cond_18

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 3
    sget-object p0, Lcom/google/android/gms/fido/u2f/api/messagebased/ResponseType;->SIGN:Lcom/google/android/gms/fido/u2f/api/messagebased/ResponseType;

    return-object p0

    .line 2
    :cond_e
    new-instance v0, Lcom/google/android/gms/fido/u2f/api/messagebased/RequestType$UnsupportedRequestTypeException;

    invoke-virtual {p0}, Lcom/google/android/gms/fido/u2f/api/messagebased/RequestType;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/fido/u2f/api/messagebased/RequestType$UnsupportedRequestTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    sget-object p0, Lcom/google/android/gms/fido/u2f/api/messagebased/ResponseType;->REGISTER:Lcom/google/android/gms/fido/u2f/api/messagebased/ResponseType;

    return-object p0

    .line 1
    :cond_1b
    new-instance p0, Lcom/google/android/gms/fido/u2f/api/messagebased/RequestType$UnsupportedRequestTypeException;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/fido/u2f/api/messagebased/RequestType$UnsupportedRequestTypeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/fido/u2f/api/messagebased/ResponseType;
    .registers 2

    .line 1
    const-class v0, Lcom/google/android/gms/fido/u2f/api/messagebased/ResponseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/fido/u2f/api/messagebased/ResponseType;

    return-object p0
.end method

.method public static values()[Lcom/google/android/gms/fido/u2f/api/messagebased/ResponseType;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/fido/u2f/api/messagebased/ResponseType;->zza:[Lcom/google/android/gms/fido/u2f/api/messagebased/ResponseType;

    invoke-virtual {v0}, [Lcom/google/android/gms/fido/u2f/api/messagebased/ResponseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/fido/u2f/api/messagebased/ResponseType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fido/u2f/api/messagebased/ResponseType;->zzb:Ljava/lang/String;

    return-object v0
.end method
