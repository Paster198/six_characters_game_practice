.class public final Lcom/google/android/gms/auth/api/identity/GetPhoneNumberHintIntentRequest$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth@@21.1.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/identity/GetPhoneNumberHintIntentRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/auth/api/identity/zbj;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/auth/api/identity/GetPhoneNumberHintIntentRequest;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/auth/api/identity/GetPhoneNumberHintIntentRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/identity/GetPhoneNumberHintIntentRequest;-><init>(I)V

    return-object v0
.end method
