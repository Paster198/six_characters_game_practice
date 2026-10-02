.class public final Lcom/google/android/gms/internal/auth/zzgy;
.super Ljava/lang/RuntimeException;
.source "com.google.android.gms:play-services-auth-base@@18.0.10"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/auth/zzfx;)V
    .registers 2

    .line 1
    const-string p1, "Message was missing required fields.  (Lite runtime could not determine which fields were missing)."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/auth/zzfb;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/auth/zzfb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzgy;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/auth/zzfb;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
