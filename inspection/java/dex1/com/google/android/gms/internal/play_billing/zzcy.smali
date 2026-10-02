.class public final synthetic Lcom/google/android/gms/internal/play_billing/zzcy;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzcv$zzd;->zzh()Lsun/misc/Unsafe;

    move-result-object v0

    return-object v0
.end method
