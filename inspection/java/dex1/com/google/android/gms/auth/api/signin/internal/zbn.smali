.class public final Lcom/google/android/gms/auth/api/signin/internal/zbn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth@@21.1.1"


# static fields
.field private static zbd:Lcom/google/android/gms/auth/api/signin/internal/zbn;


# instance fields
.field final zba:Lcom/google/android/gms/auth/api/signin/internal/Storage;

.field zbb:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

.field zbc:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/Storage;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zbn;->zba:Lcom/google/android/gms/auth/api/signin/internal/Storage;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->getSavedDefaultGoogleSignInAccount()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zbn;->zbb:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->getSavedDefaultGoogleSignInOptions()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zbn;->zbc:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    return-void
.end method

.method public static declared-synchronized zbc(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/zbn;
    .registers 2

    const-class v0, Lcom/google/android/gms/auth/api/signin/internal/zbn;

    monitor-enter v0

    .line 1
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/auth/api/signin/internal/zbn;->zbf(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/zbn;

    move-result-object p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p0
.end method

.method private static declared-synchronized zbf(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/zbn;
    .registers 3

    const-class v0, Lcom/google/android/gms/auth/api/signin/internal/zbn;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lcom/google/android/gms/auth/api/signin/internal/zbn;->zbd:Lcom/google/android/gms/auth/api/signin/internal/zbn;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_12

    if-eqz v1, :cond_9

    monitor-exit v0

    return-object v1

    :cond_9
    :try_start_9
    new-instance v1, Lcom/google/android/gms/auth/api/signin/internal/zbn;

    invoke-direct {v1, p0}, Lcom/google/android/gms/auth/api/signin/internal/zbn;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/gms/auth/api/signin/internal/zbn;->zbd:Lcom/google/android/gms/auth/api/signin/internal/zbn;
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception p0

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p0
.end method


# virtual methods
.method public final declared-synchronized zba()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zbn;->zbb:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public final declared-synchronized zbb()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zbn;->zbc:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public final declared-synchronized zbd()V
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zbn;->zba:Lcom/google/android/gms/auth/api/signin/internal/Storage;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zbn;->zbb:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zbn;->zbc:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method

.method public final declared-synchronized zbe(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zbn;->zba:Lcom/google/android/gms/auth/api/signin/internal/Storage;

    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->saveDefaultGoogleSignInAccount(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    iput-object p2, p0, Lcom/google/android/gms/auth/api/signin/internal/zbn;->zbb:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zbn;->zbc:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method
