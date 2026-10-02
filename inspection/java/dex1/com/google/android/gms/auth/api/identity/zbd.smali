.class public final enum Lcom/google/android/gms/auth/api/identity/zbd;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-auth@@21.1.1"


# static fields
.field public static final enum zba:Lcom/google/android/gms/auth/api/identity/zbd;

.field public static final enum zbb:Lcom/google/android/gms/auth/api/identity/zbd;

.field private static final synthetic zbd:[Lcom/google/android/gms/auth/api/identity/zbd;


# instance fields
.field final zbc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/auth/api/identity/zbd;

    const-string v1, "ACCOUNT_SELECTION_TOKEN"

    const/4 v2, 0x0

    const-string v3, "account_selection_token"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/api/identity/zbd;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/api/identity/zbd;->zba:Lcom/google/android/gms/auth/api/identity/zbd;

    new-instance v1, Lcom/google/android/gms/auth/api/identity/zbd;

    const-string v2, "ACCOUNT_SELECTION_STATE"

    const/4 v3, 0x1

    .line 2
    const-string v4, "account_selection_state"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/auth/api/identity/zbd;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/gms/auth/api/identity/zbd;->zbb:Lcom/google/android/gms/auth/api/identity/zbd;

    filled-new-array {v0, v1}, [Lcom/google/android/gms/auth/api/identity/zbd;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/api/identity/zbd;->zbd:[Lcom/google/android/gms/auth/api/identity/zbd;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/gms/auth/api/identity/zbd;->zbc:Ljava/lang/String;

    return-void
.end method

.method public static values()[Lcom/google/android/gms/auth/api/identity/zbd;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/auth/api/identity/zbd;->zbd:[Lcom/google/android/gms/auth/api/identity/zbd;

    invoke-virtual {v0}, [Lcom/google/android/gms/auth/api/identity/zbd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/auth/api/identity/zbd;

    return-object v0
.end method
