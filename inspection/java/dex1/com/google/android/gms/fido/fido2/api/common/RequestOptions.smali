.class public abstract Lcom/google/android/gms/fido/fido2/api/common/RequestOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAuthenticationExtensions()Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;
.end method

.method public abstract getChallenge()[B
.end method

.method public abstract getRequestId()Ljava/lang/Integer;
.end method

.method public abstract getTimeoutSeconds()Ljava/lang/Double;
.end method

.method public abstract getTokenBinding()Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;
.end method

.method public serializeToBytes()[B
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelableSerializer;->serializeToBytes(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)[B

    move-result-object v0

    return-object v0
.end method
