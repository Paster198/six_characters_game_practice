.class public final Lcom/google/android/gms/internal/games_v2/zzbq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/games_v2/zzaw;


# instance fields
.field private final zza:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzb:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzc:Ljava/util/Queue;

.field private final zzd:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zze:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzf:Landroid/app/Application;

.field private final zzg:Lcom/google/android/gms/games/internal/zzf;

.field private final zzh:Lcom/google/android/gms/internal/games_v2/zzbr;


# direct methods
.method constructor <init>(Landroid/app/Application;Lcom/google/android/gms/games/internal/zzf;Lcom/google/android/gms/games/internal/v2/resolution/zzb;Lcom/google/android/gms/internal/games_v2/zzbr;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lcom/google/android/gms/internal/games_v2/zzba;->zza:Lcom/google/android/gms/internal/games_v2/zzba;

    invoke-direct {p3, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/games_v2/zzbq;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p3, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lcom/google/android/gms/internal/games_v2/zzaz;->zza:Lcom/google/android/gms/internal/games_v2/zzaz;

    .line 2
    invoke-direct {p3, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/games_v2/zzbq;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p3, Ljava/util/ArrayDeque;

    .line 3
    invoke-direct {p3}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/games_v2/zzbq;->zzc:Ljava/util/Queue;

    new-instance p3, Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    invoke-direct {p3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/games_v2/zzbq;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p3, Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    invoke-direct {p3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/games_v2/zzbq;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzbq;->zzf:Landroid/app/Application;

    iput-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzbq;->zzg:Lcom/google/android/gms/games/internal/zzf;

    iput-object p4, p0, Lcom/google/android/gms/internal/games_v2/zzbq;->zzh:Lcom/google/android/gms/internal/games_v2/zzbr;

    return-void
.end method

.method private final zzm(I)V
    .registers 8

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x2d

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "startAuthenticationIfNecessary() signInType: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GamesApiManager"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/games_v2/zzfu;->zza(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Must be called on the main thread."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbq;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/google/android/gms/internal/games_v2/zzba;->zza:Lcom/google/android/gms/internal/games_v2/zzba;

    sget-object v3, Lcom/google/android/gms/internal/games_v2/zzba;->zzb:Lcom/google/android/gms/internal/games_v2/zzba;

    .line 3
    invoke-static {v0, v2, v3}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_34

    goto :goto_81

    :cond_34
    if-ne p1, v5, :cond_37

    goto :goto_67

    .line 8
    :cond_37
    sget-object p1, Lcom/google/android/gms/internal/games_v2/zzba;->zzd:Lcom/google/android/gms/internal/games_v2/zzba;

    .line 4
    invoke-static {v0, p1, v3}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_80

    iget-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzbq;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/google/android/gms/internal/games_v2/zzaz;->zza:Lcom/google/android/gms/internal/games_v2/zzaz;

    sget-object v3, Lcom/google/android/gms/internal/games_v2/zzaz;->zzb:Lcom/google/android/gms/internal/games_v2/zzaz;

    .line 5
    invoke-static {p1, v2, v3}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    .line 6
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x53

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Explicit sign-in during existing authentication. Marking pending explicit sign-in: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/games_v2/zzfu;->zza(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :goto_67
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Authentication attempt skipped. Already authenticated or authenticating. State: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/games_v2/zzfu;->zza(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_80
    move p1, v4

    .line 3
    :goto_81
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbq;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    if-eqz v1, :cond_95

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "New authentication attempt in progress"

    .line 10
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    .line 11
    :cond_95
    new-instance v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbq;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    if-nez p1, :cond_a4

    sget-object p1, Lcom/google/android/gms/internal/games_v2/zzaz;->zzc:Lcom/google/android/gms/internal/games_v2/zzaz;

    goto :goto_a7

    .line 15
    :cond_a4
    sget-object p1, Lcom/google/android/gms/internal/games_v2/zzaz;->zza:Lcom/google/android/gms/internal/games_v2/zzaz;

    move v4, v5

    .line 13
    :goto_a7
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 14
    invoke-static {v4}, Lcom/google/android/gms/internal/games_v2/zzq;->zza(I)Lcom/google/android/gms/internal/games_v2/zzq;

    move-result-object p1

    .line 15
    invoke-direct {p0, v1, p1}, Lcom/google/android/gms/internal/games_v2/zzbq;->zzn(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/games_v2/zzq;)V

    return-void
.end method

.method private final zzn(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/games_v2/zzq;)V
    .registers 6

    .line 1
    const-string v0, "Attempting authentication: "

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GamesApiManager"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/games_v2/zzfu;->zza(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbq;->zzh:Lcom/google/android/gms/internal/games_v2/zzbr;

    .line 2
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/games_v2/zzbr;->zza(Lcom/google/android/gms/internal/games_v2/zzq;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/games_v2/zzbi;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/gms/internal/games_v2/zzbi;-><init>(Lcom/google/android/gms/internal/games_v2/zzbq;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/games_v2/zzq;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private final zzo(Lcom/google/android/gms/tasks/TaskCompletionSource;ILandroid/app/PendingIntent;ZZ)V
    .registers 12

    .line 1
    const-string v0, "Must be called on the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbq;->zzf:Landroid/app/Application;

    const-string v1, "com.google.android.gms"

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->getClientVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "GmsCore version is %d"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "GamesApiManager"

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/games_v2/zzfu;->zza(Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0xd2952e0

    const/4 v4, 0x0

    .line 23
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    if-ge v1, v2, :cond_69

    .line 3
    const-string v1, "com.android.vending"

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_3a

    const-string p2, "PlayStore is not installed"

    .line 5
    invoke-static {v3, p2}, Lcom/google/android/gms/internal/games_v2/zzfu;->zza(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_54

    .line 6
    :cond_3a
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    const v1, 0x4ea66c8

    if-ge v0, v1, :cond_64

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string p4, "PlayStore version is below resolution threshold: %s"

    .line 8
    invoke-static {p2, p4, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 9
    invoke-static {v3, p2}, Lcom/google/android/gms/internal/games_v2/zzfu;->zza(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :goto_54
    const-string p2, "PlayStore is too old or not available and the version of GmsCore would attempt PGA installation on automatic sign-in. Skipping it."

    .line 10
    invoke-static {v3, p2}, Lcom/google/android/gms/internal/games_v2/zzfu;->zze(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1, v5}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzbq;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, Lcom/google/android/gms/internal/games_v2/zzba;->zzd:Lcom/google/android/gms/internal/games_v2/zzba;

    .line 12
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    .line 9
    :cond_64
    const-string v0, "Installed PlayStore version can be used for resolution."

    .line 13
    invoke-static {v3, v0}, Lcom/google/android/gms/internal/games_v2/zzfu;->zza(Ljava/lang/String;Ljava/lang/String;)V

    :cond_69
    if-eqz p4, :cond_8a

    if-eqz p3, :cond_8a

    iget-object p4, p0, Lcom/google/android/gms/internal/games_v2/zzbq;->zzg:Lcom/google/android/gms/games/internal/zzf;

    .line 14
    invoke-virtual {p4}, Lcom/google/android/gms/games/internal/zzf;->zzd()Landroid/app/Activity;

    move-result-object p4

    if-nez p4, :cond_76

    goto :goto_8a

    .line 15
    :cond_76
    invoke-static {p4, p3}, Lcom/google/android/gms/games/internal/v2/resolution/zzb;->zzb(Landroid/app/Activity;Landroid/app/PendingIntent;)Lcom/google/android/gms/tasks/Task;

    move-result-object p3

    .line 16
    sget-object p4, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    .line 17
    new-instance p5, Lcom/google/android/gms/internal/games_v2/zzbj;

    invoke-direct {p5, p0, p1, p2}, Lcom/google/android/gms/internal/games_v2/zzbj;-><init>(Lcom/google/android/gms/internal/games_v2/zzbq;Lcom/google/android/gms/tasks/TaskCompletionSource;I)V

    .line 16
    invoke-virtual {p3, p4, p5}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    const-string p1, "Resolution triggered"

    .line 18
    invoke-static {v3, p1}, Lcom/google/android/gms/internal/games_v2/zzfu;->zza(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 14
    :cond_8a
    :goto_8a
    iget-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzbq;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p3, Lcom/google/android/gms/internal/games_v2/zzaz;->zzb:Lcom/google/android/gms/internal/games_v2/zzaz;

    sget-object p4, Lcom/google/android/gms/internal/games_v2/zzaz;->zzc:Lcom/google/android/gms/internal/games_v2/zzaz;

    .line 19
    invoke-static {p2, p3, p4}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p5, :cond_a5

    if-eqz p2, :cond_a5

    const-string p2, "Consumed pending explicit sign-in. Attempting explicit sign-in"

    .line 20
    invoke-static {v3, p2}, Lcom/google/android/gms/internal/games_v2/zzfu;->zza(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-static {v4}, Lcom/google/android/gms/internal/games_v2/zzq;->zza(I)Lcom/google/android/gms/internal/games_v2/zzq;

    move-result-object p2

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/games_v2/zzbq;->zzn(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/games_v2/zzq;)V

    return-void

    .line 23
    :cond_a5
    invoke-virtual {p1, v5}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzbq;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, Lcom/google/android/gms/internal/games_v2/zzba;->zzd:Lcom/google/android/gms/internal/games_v2/zzba;

    .line 24
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzbq;->zzc:Ljava/util/Queue;

    .line 25
    invoke-interface {p1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 26
    :goto_b5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_cc

    .line 27
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/games_v2/zzbc;

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbq;->zzr()Lcom/google/android/gms/common/api/ApiException;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/games_v2/zzbc;->zzb(Ljava/lang/Exception;)V

    .line 29
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_b5

    :cond_cc
    return-void
.end method

.method private static zzp()Z
    .registers 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method private static zzq(Lcom/google/android/gms/internal/games_v2/zzhd;)Lcom/google/android/gms/tasks/Task;
    .registers 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbq;->zzp()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2
    invoke-interface {p0}, Lcom/google/android/gms/internal/games_v2/zzhd;->zza()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/tasks/Task;

    return-object p0

    .line 3
    :cond_d
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 4
    sget-object v1, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/games_v2/zzbk;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/games_v2/zzbk;-><init>(Lcom/google/android/gms/internal/games_v2/zzhd;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method private static zzr()Lcom/google/android/gms/common/api/ApiException;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/ApiException;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method private static zzs(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/tasks/TaskCompletionSource;)Lcom/google/android/gms/tasks/Task;
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/games_v2/zzba;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/games_v2/zzba;->ordinal()I

    move-result p0

    if-eqz p0, :cond_63

    const/4 v0, 0x2

    if-eq p0, v0, :cond_5c

    const/4 v0, 0x3

    if-eq p0, v0, :cond_55

    if-nez p1, :cond_1b

    sget-object p0, Lcom/google/android/gms/games/AuthenticationResult;->zzb:Lcom/google/android/gms/games/AuthenticationResult;

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1b
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_38

    sget-object p0, Lcom/google/android/gms/games/AuthenticationResult;->zza:Lcom/google/android/gms/games/AuthenticationResult;

    .line 9
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    :cond_38
    sget-object p0, Lcom/google/android/gms/games/AuthenticationResult;->zzb:Lcom/google/android/gms/games/AuthenticationResult;

    .line 10
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    :cond_3f
    new-instance p1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 11
    invoke-direct {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzhc;->zza()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/games_v2/zzbl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/games_v2/zzbl;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    :cond_55
    sget-object p0, Lcom/google/android/gms/games/AuthenticationResult;->zzb:Lcom/google/android/gms/games/AuthenticationResult;

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    :cond_5c
    sget-object p0, Lcom/google/android/gms/games/AuthenticationResult;->zza:Lcom/google/android/gms/games/AuthenticationResult;

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    .line 4
    :cond_63
    new-instance p0, Lcom/google/android/gms/common/api/ApiException;

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/games_v2/zzav;)Lcom/google/android/gms/tasks/Task;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbq;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/games_v2/zzba;

    .line 2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "GamesApiManager"

    const-string v3, "Executing API call with authentication state: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/games_v2/zzfu;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/internal/games_v2/zzba;->zzc:Lcom/google/android/gms/internal/games_v2/zzba;

    if-ne v0, v1, :cond_2f

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbq;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApi;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/games_v2/zzav;->zza(Lcom/google/android/gms/common/api/GoogleApi;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_2f
    sget-object v1, Lcom/google/android/gms/internal/games_v2/zzba;->zzd:Lcom/google/android/gms/internal/games_v2/zzba;

    if-ne v0, v1, :cond_3c

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbq;->zzr()Lcom/google/android/gms/common/api/ApiException;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_3c
    sget-object v1, Lcom/google/android/gms/internal/games_v2/zzba;->zza:Lcom/google/android/gms/internal/games_v2/zzba;

    if-ne v0, v1, :cond_51

    .line 5
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 6
    :cond_51
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/games_v2/zzbc;

    .line 7
    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/games_v2/zzbc;-><init>(Lcom/google/android/gms/internal/games_v2/zzav;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    new-instance p1, Lcom/google/android/gms/internal/games_v2/zzbn;

    invoke-direct {p1, p0, v1}, Lcom/google/android/gms/internal/games_v2/zzbn;-><init>(Lcom/google/android/gms/internal/games_v2/zzbq;Lcom/google/android/gms/internal/games_v2/zzbc;)V

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbq;->zzp()Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 9
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_6f

    .line 10
    :cond_6a
    sget-object v1, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    invoke-interface {v1, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 11
    :goto_6f
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/games_v2/zzau;Ljava/util/List;)Lcom/google/android/gms/tasks/Task;
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzbd;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/games_v2/zzbd;-><init>(Lcom/google/android/gms/internal/games_v2/zzau;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/games_v2/zzbq;->zza(Lcom/google/android/gms/internal/games_v2/zzav;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/games_v2/zzbe;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/games_v2/zzbe;-><init>(Lcom/google/android/gms/internal/games_v2/zzbq;Lcom/google/android/gms/internal/games_v2/zzau;Ljava/util/List;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzc()Lcom/google/android/gms/tasks/Task;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbq;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v1, p0, Lcom/google/android/gms/internal/games_v2/zzbq;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/games_v2/zzbq;->zzs(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/tasks/TaskCompletionSource;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/tasks/Task;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzbg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/games_v2/zzbg;-><init>(Lcom/google/android/gms/internal/games_v2/zzbq;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/games_v2/zzbq;->zzq(Lcom/google/android/gms/internal/games_v2/zzhd;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/tasks/Task;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzbh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/games_v2/zzbh;-><init>(Lcom/google/android/gms/internal/games_v2/zzbq;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/games_v2/zzbq;->zzq(Lcom/google/android/gms/internal/games_v2/zzhd;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzf(Lcom/google/android/gms/internal/games_v2/zzbc;)V
    .registers 4

    .line 1
    const-string v0, "Must be called on the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbq;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/games_v2/zzba;

    sget-object v1, Lcom/google/android/gms/internal/games_v2/zzba;->zzc:Lcom/google/android/gms/internal/games_v2/zzba;

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbq;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApi;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/games_v2/zzbc;->zza(Lcom/google/android/gms/common/api/GoogleApi;)V

    return-void

    :cond_1d
    sget-object v1, Lcom/google/android/gms/internal/games_v2/zzba;->zzd:Lcom/google/android/gms/internal/games_v2/zzba;

    if-ne v0, v1, :cond_29

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbq;->zzr()Lcom/google/android/gms/common/api/ApiException;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/games_v2/zzbc;->zzb(Ljava/lang/Exception;)V

    return-void

    :cond_29
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbq;->zzc:Ljava/util/Queue;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final synthetic zzg(Lcom/google/android/gms/internal/games_v2/zzau;Ljava/util/List;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .registers 6

    .line 1
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/gamessignin/AuthResponse;

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 3
    :cond_11
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p3

    .line 4
    instance-of v0, p3, Lcom/google/android/gms/common/api/ResolvableApiException;

    if-eqz v0, :cond_6f

    check-cast p3, Lcom/google/android/gms/common/api/ResolvableApiException;

    .line 5
    invoke-virtual {p3}, Lcom/google/android/gms/common/api/ResolvableApiException;->getResolution()Landroid/app/PendingIntent;

    move-result-object p3

    if-nez p3, :cond_2d

    new-instance p3, Ljava/lang/IllegalArgumentException;

    const-string v0, "Resolution intent must not be null."

    .line 6
    invoke-direct {p3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p3

    goto :goto_65

    .line 16
    :cond_2d
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbq;->zzg:Lcom/google/android/gms/games/internal/zzf;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/zzf;->zzd()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_41

    new-instance p3, Ljava/lang/IllegalStateException;

    const-string v0, "Foreground activity is missing."

    .line 8
    invoke-direct {p3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p3

    goto :goto_65

    .line 9
    :cond_41
    new-instance v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 10
    invoke-static {v0, p3}, Lcom/google/android/gms/games/internal/v2/resolution/zzb;->zzb(Landroid/app/Activity;Landroid/app/PendingIntent;)Lcom/google/android/gms/tasks/Task;

    move-result-object p3

    .line 11
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzbp;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzbp;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 11
    invoke-virtual {p3, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p3

    .line 13
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzbo;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzbo;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 13
    invoke-virtual {p3, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p3

    .line 15
    :goto_65
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzbf;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/internal/games_v2/zzbf;-><init>(Lcom/google/android/gms/internal/games_v2/zzbq;Ljava/util/List;Lcom/google/android/gms/internal/games_v2/zzau;)V

    .line 16
    invoke-virtual {p3, v0}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_6f
    if-eqz p3, :cond_72

    goto :goto_7e

    .line 17
    :cond_72
    new-instance p3, Lcom/google/android/gms/common/api/ApiException;

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {p3, p1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 18
    :goto_7e
    invoke-static {p3}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzh(Ljava/util/List;Lcom/google/android/gms/internal/games_v2/zzau;Lcom/google/android/gms/games/internal/v2/resolution/zzc;)Lcom/google/android/gms/tasks/Task;
    .registers 4

    .line 1
    invoke-virtual {p3}, Lcom/google/android/gms/games/internal/v2/resolution/zzc;->zzc()Z

    move-result p3

    if-nez p3, :cond_a

    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzgm;->zzg()Lcom/google/android/gms/internal/games_v2/zzgm;

    move-result-object p1

    :cond_a
    iget-object p3, p0, Lcom/google/android/gms/internal/games_v2/zzbq;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/common/api/GoogleApi;

    invoke-interface {p2, p3, p1}, Lcom/google/android/gms/internal/games_v2/zzau;->zza(Lcom/google/android/gms/common/api/GoogleApi;Ljava/util/List;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzi()Lcom/google/android/gms/tasks/Task;
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/games_v2/zzbq;->zzm(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbq;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v1, p0, Lcom/google/android/gms/internal/games_v2/zzbq;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/games_v2/zzbq;->zzs(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/tasks/TaskCompletionSource;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzj()Lcom/google/android/gms/tasks/Task;
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/games_v2/zzbq;->zzm(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbq;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v1, p0, Lcom/google/android/gms/internal/games_v2/zzbq;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/games_v2/zzbq;->zzs(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/tasks/TaskCompletionSource;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzk(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/games_v2/zzq;Lcom/google/android/gms/tasks/Task;)V
    .registers 10

    .line 1
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    const-string v1, "GamesApiManager"

    const/4 v2, 0x1

    if-nez v0, :cond_2a

    .line 2
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/games_v2/zzgb;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Authentication task failed"

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v1, v3, v0}, Lcom/google/android/gms/internal/games_v2/zzfu;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/games_v2/zzq;->zzc()I

    move-result v2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/games_v2/zzq;->zzd()Z

    move-result v1

    xor-int/lit8 v5, v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/games_v2/zzbq;->zzo(Lcom/google/android/gms/tasks/TaskCompletionSource;ILandroid/app/PendingIntent;ZZ)V

    return-void

    :cond_2a
    move v0, v2

    .line 4
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/games_v2/zzbv;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/games_v2/zzbv;->zzc()Z

    move-result v3

    if-nez v3, :cond_61

    .line 6
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Failed to authenticate: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/games_v2/zzfu;->zza(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/games_v2/zzq;->zzc()I

    move-result v2

    .line 7
    invoke-virtual {v3}, Lcom/google/android/gms/internal/games_v2/zzbv;->zze()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/android/gms/internal/games_v2/zzq;->zzd()Z

    move-result v1

    xor-int/lit8 v5, v1, 0x1

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/games_v2/zzbq;->zzo(Lcom/google/android/gms/tasks/TaskCompletionSource;ILandroid/app/PendingIntent;ZZ)V

    return-void

    :cond_61
    move-object v3, v2

    .line 9
    invoke-virtual {v3}, Lcom/google/android/gms/internal/games_v2/zzbv;->zzd()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7f

    const-string v2, "Unexpected state: game run token absent"

    .line 10
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/games_v2/zzfu;->zze(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/games_v2/zzq;->zzc()I

    move-result v2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/games_v2/zzq;->zzd()Z

    move-result v1

    xor-int/lit8 v5, v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/games_v2/zzbq;->zzo(Lcom/google/android/gms/tasks/TaskCompletionSource;ILandroid/app/PendingIntent;ZZ)V

    return-void

    :cond_7f
    const-string v4, "Successfully authenticated"

    .line 12
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/games_v2/zzfu;->zza(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Must be called on the main thread."

    .line 13
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/google/android/gms/games/zzi;->zza()Lcom/google/android/gms/games/zzh;

    move-result-object v1

    const v4, 0x201113

    .line 15
    invoke-virtual {v1, v4}, Lcom/google/android/gms/games/zzh;->zza(I)Lcom/google/android/gms/games/zzh;

    .line 16
    invoke-virtual {v1, v2}, Lcom/google/android/gms/games/zzh;->zzb(Ljava/lang/String;)Lcom/google/android/gms/games/zzh;

    invoke-static {}, Lcom/google/android/gms/games/internal/zzi;->zzd()Lcom/google/android/gms/games/internal/zzh;

    move-result-object v2

    .line 17
    invoke-virtual {v2, v0}, Lcom/google/android/gms/games/internal/zzh;->zza(Z)Lcom/google/android/gms/games/internal/zzh;

    .line 18
    invoke-virtual {v2, v0}, Lcom/google/android/gms/games/internal/zzh;->zzb(Z)Lcom/google/android/gms/games/internal/zzh;

    .line 19
    invoke-virtual {v2, v0}, Lcom/google/android/gms/games/internal/zzh;->zzc(Z)Lcom/google/android/gms/games/internal/zzh;

    invoke-virtual {v2}, Lcom/google/android/gms/games/internal/zzh;->zzd()Lcom/google/android/gms/games/internal/zzi;

    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Lcom/google/android/gms/games/zzh;->zzc(Lcom/google/android/gms/games/internal/zzi;)Lcom/google/android/gms/games/zzh;

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/games/zzh;->zzd()Lcom/google/android/gms/games/zzi;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/games_v2/zzbq;->zzf:Landroid/app/Application;

    .line 22
    new-instance v4, Lcom/google/android/gms/internal/games_v2/zzf;

    invoke-direct {v4, v2, v1}, Lcom/google/android/gms/internal/games_v2/zzf;-><init>(Landroid/content/Context;Lcom/google/android/gms/games/zzi;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/games_v2/zzbq;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    .line 23
    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/games_v2/zzbq;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/google/android/gms/internal/games_v2/zzba;->zzc:Lcom/google/android/gms/internal/games_v2/zzba;

    .line 24
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 25
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbq;->zzc:Ljava/util/Queue;

    .line 26
    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 27
    :goto_ce
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e1

    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/games_v2/zzbc;

    .line 29
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/games_v2/zzbc;->zza(Lcom/google/android/gms/common/api/GoogleApi;)V

    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_ce

    :cond_e1
    return-void
.end method

.method final synthetic zzl(Lcom/google/android/gms/tasks/TaskCompletionSource;ILcom/google/android/gms/tasks/Task;)V
    .registers 13

    .line 1
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    const-string v1, "GamesApiManager"

    if-nez v0, :cond_20

    .line 2
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/games_v2/zzgb;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Resolution failed"

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/games_v2/zzfu;->zzf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    .line 3
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/games_v2/zzbq;->zzo(Lcom/google/android/gms/tasks/TaskCompletionSource;ILandroid/app/PendingIntent;ZZ)V

    return-void

    .line 4
    :cond_20
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/v2/resolution/zzc;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/v2/resolution/zzc;->zzc()Z

    move-result v2

    if-eqz v2, :cond_41

    const-string v2, "Resolution successful"

    .line 6
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/games_v2/zzfu;->zza(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/v2/resolution/zzc;->zzd()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/games_v2/zzx;->zza(Landroid/content/Intent;)Lcom/google/android/gms/internal/games_v2/zzx;

    move-result-object v0

    .line 8
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/games_v2/zzq;->zzb(ILcom/google/android/gms/internal/games_v2/zzx;)Lcom/google/android/gms/internal/games_v2/zzq;

    move-result-object v0

    .line 9
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/games_v2/zzbq;->zzn(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/games_v2/zzq;)V

    return-void

    :cond_41
    const-string v0, "Resolution attempt was canceled"

    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/games_v2/zzfu;->zza(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/games_v2/zzbq;->zzo(Lcom/google/android/gms/tasks/TaskCompletionSource;ILandroid/app/PendingIntent;ZZ)V

    return-void
.end method
