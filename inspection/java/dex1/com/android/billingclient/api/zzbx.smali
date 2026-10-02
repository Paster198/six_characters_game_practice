.class public final synthetic Lcom/android/billingclient/api/zzbx;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/android/billingclient/api/zzbz;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/zzbz;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzbx;->zza:Lcom/android/billingclient/api/zzbz;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/billingclient/api/zzbx;->zza:Lcom/android/billingclient/api/zzbz;

    invoke-static {v0}, Lcom/android/billingclient/api/zzbz;->zza(Lcom/android/billingclient/api/zzbz;)Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method
