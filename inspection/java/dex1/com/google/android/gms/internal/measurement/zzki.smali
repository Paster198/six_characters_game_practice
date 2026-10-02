.class public abstract Lcom/google/android/gms/internal/measurement/zzki;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"


# static fields
.field public static final synthetic zzc:I = 0x0

.field private static final zzd:Ljava/lang/Object;

.field private static volatile zze:Lcom/google/android/gms/internal/measurement/zzkg; = null
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static volatile zzf:Z = false

.field private static final zzg:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field final zza:Lcom/google/android/gms/internal/measurement/zzkf;

.field final zzb:Ljava/lang/String;

.field private zzh:Ljava/lang/Object;

.field private volatile zzi:I

.field private volatile zzj:Ljava/lang/Object;

.field private volatile zzk:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzki;->zzd:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzka;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzka;-><init>()V

    const-string v1, "BuildInfo must be non-null"

    .line 2
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzki;->zzg:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzkf;Ljava/lang/String;Ljava/lang/Object;ZLcom/google/android/gms/internal/measurement/zzkh;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, -0x1

    iput p4, p0, Lcom/google/android/gms/internal/measurement/zzki;->zzi:I

    iget-object p4, p1, Lcom/google/android/gms/internal/measurement/zzkf;->zza:Landroid/net/Uri;

    if-eqz p4, :cond_14

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzki;->zza:Lcom/google/android/gms/internal/measurement/zzkf;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzki;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzki;->zzh:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzki;->zzk:Z

    return-void

    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must pass a valid SharedPreferences file name or ContentProvider URI"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static zzc()V
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzki;->zzg:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public static zzd(Landroid/content/Context;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzki;->zze:Lcom/google/android/gms/internal/measurement/zzkg;

    if-nez v0, :cond_4a

    if-nez p0, :cond_7

    goto :goto_4a

    :cond_7
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzki;->zzd:Ljava/lang/Object;

    monitor-enter v0

    :try_start_a
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzki;->zze:Lcom/google/android/gms/internal/measurement/zzkg;

    if-nez v1, :cond_45

    monitor-enter v0
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_47

    :try_start_f
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzki;->zze:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_18

    move-object p0, v2

    :cond_18
    if-eqz v1, :cond_20

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzkg;->zza()Landroid/content/Context;

    move-result-object v2

    if-eq v2, p0, :cond_40

    :cond_20
    if-eqz v1, :cond_2b

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjm;->zze()V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkk;->zzd()V

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzju;->zze()V

    .line 5
    :cond_2b
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzjz;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/zzjz;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-static {v1}, Lcom/google/common/base/Suppliers;->memoize(Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzjj;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/measurement/zzjj;-><init>(Landroid/content/Context;Lcom/google/common/base/Supplier;)V

    sput-object v2, Lcom/google/android/gms/internal/measurement/zzki;->zze:Lcom/google/android/gms/internal/measurement/zzkg;

    sget-object p0, Lcom/google/android/gms/internal/measurement/zzki;->zzg:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 8
    :cond_40
    monitor-exit v0

    goto :goto_45

    :catchall_42
    move-exception p0

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_f .. :try_end_44} :catchall_42

    :try_start_44
    throw p0

    .line 9
    :cond_45
    :goto_45
    monitor-exit v0

    return-void

    :catchall_47
    move-exception p0

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_44 .. :try_end_49} :catchall_47

    throw p0

    :cond_4a
    :goto_4a
    return-void
.end method


# virtual methods
.method abstract zza(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public final zzb()Ljava/lang/Object;
    .registers 10

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzki;->zzg:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzki;->zzi:I

    if-ge v1, v0, :cond_d2

    monitor-enter p0

    :try_start_b
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzki;->zzi:I

    if-ge v1, v0, :cond_cd

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzki;->zze:Lcom/google/android/gms/internal/measurement/zzkg;

    .line 2
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v1, :cond_47

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzb()Lcom/google/common/base/Supplier;

    move-result-object v4

    if-eqz v4, :cond_47

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzkg;->zzb()Lcom/google/common/base/Supplier;

    move-result-object v2

    .line 3
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/base/Supplier;

    invoke-interface {v2}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/base/Optional;

    .line 4
    invoke-virtual {v2}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_47

    .line 5
    invoke-virtual {v2}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzjo;

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzki;->zza:Lcom/google/android/gms/internal/measurement/zzkf;

    iget-object v6, v5, Lcom/google/android/gms/internal/measurement/zzkf;->zza:Landroid/net/Uri;

    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/zzkf;->zzc:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/internal/measurement/zzki;->zzb:Ljava/lang/String;

    .line 6
    invoke-virtual {v4, v6, v3, v5, v7}, Lcom/google/android/gms/internal/measurement/zzjo;->zza(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_48

    :cond_47
    move-object v4, v3

    :goto_48
    if-eqz v1, :cond_4c

    const/4 v5, 0x1

    goto :goto_4d

    :cond_4c
    const/4 v5, 0x0

    :goto_4d
    const-string v6, "Must call PhenotypeFlagInitializer.maybeInit() first"

    .line 7
    invoke-static {v5, v6}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzki;->zza:Lcom/google/android/gms/internal/measurement/zzkf;

    iget-object v6, v5, Lcom/google/android/gms/internal/measurement/zzkf;->zza:Landroid/net/Uri;

    if-eqz v6, :cond_76

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzkg;->zza()Landroid/content/Context;

    move-result-object v7

    .line 9
    invoke-static {v7, v6}, Lcom/google/android/gms/internal/measurement/zzjw;->zza(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v7

    if-eqz v7, :cond_74

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzkg;->zza()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/internal/measurement/zzjy;

    invoke-direct {v8}, Lcom/google/android/gms/internal/measurement/zzjy;-><init>()V

    .line 11
    invoke-static {v7, v6, v8}, Lcom/google/android/gms/internal/measurement/zzjm;->zza(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Runnable;)Lcom/google/android/gms/internal/measurement/zzjm;

    move-result-object v6

    goto :goto_89

    :cond_74
    move-object v6, v3

    goto :goto_89

    .line 12
    :cond_76
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzkg;->zza()Landroid/content/Context;

    move-result-object v6

    .line 13
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    new-instance v8, Lcom/google/android/gms/internal/measurement/zzjy;

    invoke-direct {v8}, Lcom/google/android/gms/internal/measurement/zzjy;-><init>()V

    .line 14
    invoke-static {v6, v7, v8}, Lcom/google/android/gms/internal/measurement/zzkk;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)Lcom/google/android/gms/internal/measurement/zzkk;

    move-result-object v6

    :goto_89
    if-eqz v6, :cond_98

    .line 11
    iget-object v7, p0, Lcom/google/android/gms/internal/measurement/zzki;->zzb:Ljava/lang/String;

    .line 15
    invoke-interface {v6, v7}, Lcom/google/android/gms/internal/measurement/zzjr;->zzb(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_98

    .line 16
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/measurement/zzki;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_99

    :cond_98
    move-object v6, v3

    :goto_99
    if-eqz v6, :cond_9c

    goto :goto_ba

    .line 21
    :cond_9c
    iget-boolean v5, v5, Lcom/google/android/gms/internal/measurement/zzkf;->zzd:Z

    if-nez v5, :cond_b4

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzkg;->zza()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzju;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzju;

    move-result-object v1

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzki;->zzb:Ljava/lang/String;

    .line 18
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/measurement/zzju;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b4

    .line 19
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzki;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :cond_b4
    if-nez v3, :cond_b9

    iget-object v6, p0, Lcom/google/android/gms/internal/measurement/zzki;->zzh:Ljava/lang/Object;

    goto :goto_ba

    :cond_b9
    move-object v6, v3

    .line 20
    :goto_ba
    invoke-virtual {v2}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_c9

    if-nez v4, :cond_c5

    iget-object v6, p0, Lcom/google/android/gms/internal/measurement/zzki;->zzh:Ljava/lang/Object;

    goto :goto_c9

    .line 21
    :cond_c5
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/measurement/zzki;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 20
    :cond_c9
    :goto_c9
    iput-object v6, p0, Lcom/google/android/gms/internal/measurement/zzki;->zzj:Ljava/lang/Object;

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzki;->zzi:I

    .line 22
    :cond_cd
    monitor-exit p0

    goto :goto_d2

    :catchall_cf
    move-exception v0

    monitor-exit p0
    :try_end_d1
    .catchall {:try_start_b .. :try_end_d1} :catchall_cf

    throw v0

    :cond_d2
    :goto_d2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzki;->zzj:Ljava/lang/Object;

    return-object v0
.end method
