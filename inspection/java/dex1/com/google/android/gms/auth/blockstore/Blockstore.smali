.class public final Lcom/google/android/gms/auth/blockstore/Blockstore;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-blockstore@@16.4.0"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClient(Landroid/content/Context;)Lcom/google/android/gms/auth/blockstore/BlockstoreClient;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/auth_blockstore/zzaa;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/auth_blockstore/zzaa;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
