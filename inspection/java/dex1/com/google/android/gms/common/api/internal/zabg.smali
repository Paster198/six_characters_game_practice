.class abstract Lcom/google/android/gms/common/api/internal/zabg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.4.0"


# instance fields
.field private final zaa:Lcom/google/android/gms/common/api/internal/zabf;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/api/internal/zabf;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabg;->zaa:Lcom/google/android/gms/common/api/internal/zabf;

    return-void
.end method


# virtual methods
.method protected abstract zaa()V
.end method

.method public final zab(Lcom/google/android/gms/common/api/internal/zabi;)V
    .registers 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zabi;->zah(Lcom/google/android/gms/common/api/internal/zabi;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_7
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zabi;->zag(Lcom/google/android/gms/common/api/internal/zabi;)Lcom/google/android/gms/common/api/internal/zabf;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabg;->zaa:Lcom/google/android/gms/common/api/internal/zabf;

    if-ne v0, v1, :cond_12

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabg;->zaa()V
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_1a

    .line 5
    :cond_12
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zabi;->zah(Lcom/google/android/gms/common/api/internal/zabi;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_1a
    move-exception v0

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zabi;->zah(Lcom/google/android/gms/common/api/internal/zabi;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 5
    throw v0
.end method
