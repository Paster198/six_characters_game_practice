.class final Lcom/google/android/gms/internal/fido/zzfl;
.super Ljava/lang/ThreadLocal;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic initialValue()Ljava/lang/Object;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/fido/zzfm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fido/zzfm;-><init>()V

    return-object v0
.end method
