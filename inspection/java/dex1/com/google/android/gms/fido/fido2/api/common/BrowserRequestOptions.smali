.class public abstract Lcom/google/android/gms/fido/fido2/api/common/BrowserRequestOptions;
.super Lcom/google/android/gms/fido/fido2/api/common/RequestOptions;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/fido/fido2/api/common/RequestOptions;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getClientDataHash()[B
.end method

.method public abstract getOrigin()Landroid/net/Uri;
.end method
