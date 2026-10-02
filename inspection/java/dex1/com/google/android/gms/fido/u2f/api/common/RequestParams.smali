.class public abstract Lcom/google/android/gms/fido/u2f/api/common/RequestParams;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-fido@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAllAppIds()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAppId()Landroid/net/Uri;
.end method

.method public abstract getChannelIdValue()Lcom/google/android/gms/fido/u2f/api/common/ChannelIdValue;
.end method

.method public abstract getDisplayHint()Ljava/lang/String;
.end method

.method public abstract getRegisteredKeys()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/fido/u2f/api/common/RegisteredKey;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRequestId()Ljava/lang/Integer;
.end method

.method public abstract getTimeoutSeconds()Ljava/lang/Double;
.end method
