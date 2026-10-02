.class final Lcom/google/android/gms/internal/gtm/zzcm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/gtm/zzcn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzcn;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzcm;->zza:Lcom/google/android/gms/internal/gtm/zzcn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcm;->zza:Lcom/google/android/gms/internal/gtm/zzcn;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzcn;->zza(Lcom/google/android/gms/internal/gtm/zzcn;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
