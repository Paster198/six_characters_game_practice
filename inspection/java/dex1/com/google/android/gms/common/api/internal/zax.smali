.class final Lcom/google/android/gms/common/api/internal/zax;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.4.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zabz;


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/common/api/internal/zaaa;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/zaaa;Lcom/google/android/gms/common/api/internal/zaw;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zax;->zaa:Lcom/google/android/gms/common/api/internal/zaaa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zaa(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zaa:Lcom/google/android/gms/common/api/internal/zaaa;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaaa;->zaj(Lcom/google/android/gms/common/api/internal/zaaa;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zaa:Lcom/google/android/gms/common/api/internal/zaaa;

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/zaaa;->zak(Lcom/google/android/gms/common/api/internal/zaaa;Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zax;->zaa:Lcom/google/android/gms/common/api/internal/zaaa;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaaa;->zap(Lcom/google/android/gms/common/api/internal/zaaa;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_1d

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zax;->zaa:Lcom/google/android/gms/common/api/internal/zaaa;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaaa;->zaj(Lcom/google/android/gms/common/api/internal/zaaa;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_1d
    move-exception p1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zaa:Lcom/google/android/gms/common/api/internal/zaaa;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaaa;->zaj(Lcom/google/android/gms/common/api/internal/zaaa;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 5
    throw p1
.end method

.method public final zab(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zaa:Lcom/google/android/gms/common/api/internal/zaaa;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaaa;->zaj(Lcom/google/android/gms/common/api/internal/zaaa;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zaa:Lcom/google/android/gms/common/api/internal/zaaa;

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/zaaa;->zao(Lcom/google/android/gms/common/api/internal/zaaa;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zax;->zaa:Lcom/google/android/gms/common/api/internal/zaaa;

    .line 3
    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {p1, v0}, Lcom/google/android/gms/common/api/internal/zaaa;->zak(Lcom/google/android/gms/common/api/internal/zaaa;Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zax;->zaa:Lcom/google/android/gms/common/api/internal/zaaa;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaaa;->zap(Lcom/google/android/gms/common/api/internal/zaaa;)V
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_24

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zax;->zaa:Lcom/google/android/gms/common/api/internal/zaaa;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaaa;->zaj(Lcom/google/android/gms/common/api/internal/zaaa;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_24
    move-exception p1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zaa:Lcom/google/android/gms/common/api/internal/zaaa;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaaa;->zaj(Lcom/google/android/gms/common/api/internal/zaaa;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 6
    throw p1
.end method

.method public final zac(IZ)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zaa:Lcom/google/android/gms/common/api/internal/zaaa;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaaa;->zaj(Lcom/google/android/gms/common/api/internal/zaaa;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zaa:Lcom/google/android/gms/common/api/internal/zaaa;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaaa;->zav(Lcom/google/android/gms/common/api/internal/zaaa;)Z

    move-result v1

    if-nez v1, :cond_32

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaaa;->zaa(Lcom/google/android/gms/common/api/internal/zaaa;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    if-eqz v1, :cond_32

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaaa;->zaa(Lcom/google/android/gms/common/api/internal/zaaa;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_32

    .line 7
    :cond_22
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zax;->zaa:Lcom/google/android/gms/common/api/internal/zaaa;

    const/4 v0, 0x1

    .line 5
    invoke-static {p2, v0}, Lcom/google/android/gms/common/api/internal/zaaa;->zam(Lcom/google/android/gms/common/api/internal/zaaa;Z)V

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zax;->zaa:Lcom/google/android/gms/common/api/internal/zaaa;

    invoke-static {p2}, Lcom/google/android/gms/common/api/internal/zaaa;->zai(Lcom/google/android/gms/common/api/internal/zaaa;)Lcom/google/android/gms/common/api/internal/zabi;

    move-result-object p2

    .line 6
    invoke-virtual {p2, p1}, Lcom/google/android/gms/common/api/internal/zabi;->onConnectionSuspended(I)V

    goto :goto_3d

    .line 2
    :cond_32
    :goto_32
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zaa:Lcom/google/android/gms/common/api/internal/zaaa;

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/zaaa;->zam(Lcom/google/android/gms/common/api/internal/zaaa;Z)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zaa:Lcom/google/android/gms/common/api/internal/zaaa;

    .line 4
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/common/api/internal/zaaa;->zan(Lcom/google/android/gms/common/api/internal/zaaa;IZ)V
    :try_end_3d
    .catchall {:try_start_9 .. :try_end_3d} :catchall_47

    :goto_3d
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zax;->zaa:Lcom/google/android/gms/common/api/internal/zaaa;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaaa;->zaj(Lcom/google/android/gms/common/api/internal/zaaa;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_47
    move-exception p1

    .line 6
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zax;->zaa:Lcom/google/android/gms/common/api/internal/zaaa;

    invoke-static {p2}, Lcom/google/android/gms/common/api/internal/zaaa;->zaj(Lcom/google/android/gms/common/api/internal/zaaa;)Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    .line 7
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 8
    throw p1
.end method
