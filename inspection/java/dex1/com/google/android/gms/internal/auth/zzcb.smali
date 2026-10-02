.class public final Lcom/google/android/gms/internal/auth/zzcb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-base@@18.0.10"


# static fields
.field public static final zza:Landroid/net/Uri;

.field public static final zzb:Landroid/net/Uri;

.field public static final zzc:Ljava/util/regex/Pattern;

.field public static final zzd:Ljava/util/regex/Pattern;

.field static zze:Ljava/util/HashMap;

.field static final zzf:Ljava/util/HashMap;

.field static final zzg:Ljava/util/HashMap;

.field static final zzh:Ljava/util/HashMap;

.field static final zzi:Ljava/util/HashMap;

.field static zzj:Z

.field static final zzk:[Ljava/lang/String;

.field private static final zzl:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static zzm:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    const-string v0, "content://com.google.android.gsf.gservices"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/auth/zzcb;->zza:Landroid/net/Uri;

    const-string v0, "content://com.google.android.gsf.gservices/prefix"

    .line 2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/auth/zzcb;->zzb:Landroid/net/Uri;

    const-string v0, "^(1|true|t|on|yes|y)$"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/auth/zzcb;->zzc:Ljava/util/regex/Pattern;

    const-string v0, "^(0|false|f|off|no|n)$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/auth/zzcb;->zzd:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/auth/zzcb;->zzl:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f800000    # 1.0f

    .line 4
    invoke-direct {v0, v1, v2}, Ljava/util/HashMap;-><init>(IF)V

    sput-object v0, Lcom/google/android/gms/internal/auth/zzcb;->zzf:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    .line 5
    invoke-direct {v0, v1, v2}, Ljava/util/HashMap;-><init>(IF)V

    sput-object v0, Lcom/google/android/gms/internal/auth/zzcb;->zzg:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/util/HashMap;-><init>(IF)V

    sput-object v0, Lcom/google/android/gms/internal/auth/zzcb;->zzh:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    .line 7
    invoke-direct {v0, v1, v2}, Ljava/util/HashMap;-><init>(IF)V

    sput-object v0, Lcom/google/android/gms/internal/auth/zzcb;->zzi:Ljava/util/HashMap;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/auth/zzcb;->zzk:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    .line 1
    const-class p2, Lcom/google/android/gms/internal/auth/zzcb;

    monitor-enter p2

    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/auth/zzcb;->zze:Ljava/util/HashMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_2e

    sget-object v0, Lcom/google/android/gms/internal/auth/zzcb;->zzl:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Ljava/util/HashMap;

    const/16 v4, 0x10

    const/high16 v5, 0x3f800000    # 1.0f

    .line 2
    invoke-direct {v0, v4, v5}, Ljava/util/HashMap;-><init>(IF)V

    sput-object v0, Lcom/google/android/gms/internal/auth/zzcb;->zze:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/auth/zzcb;->zzm:Ljava/lang/Object;

    sput-boolean v2, Lcom/google/android/gms/internal/auth/zzcb;->zzj:Z

    sget-object v0, Lcom/google/android/gms/internal/auth/zzcb;->zza:Landroid/net/Uri;

    new-instance v4, Lcom/google/android/gms/internal/auth/zzca;

    .line 3
    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/auth/zzca;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0, v0, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_58

    .line 43
    :cond_2e
    sget-object v0, Lcom/google/android/gms/internal/auth/zzcb;->zzl:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_58

    sget-object v0, Lcom/google/android/gms/internal/auth/zzcb;->zze:Ljava/util/HashMap;

    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/google/android/gms/internal/auth/zzcb;->zzf:Ljava/util/HashMap;

    .line 6
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/google/android/gms/internal/auth/zzcb;->zzg:Ljava/util/HashMap;

    .line 7
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/google/android/gms/internal/auth/zzcb;->zzh:Ljava/util/HashMap;

    .line 8
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/google/android/gms/internal/auth/zzcb;->zzi:Ljava/util/HashMap;

    .line 9
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/auth/zzcb;->zzm:Ljava/lang/Object;

    sput-boolean v2, Lcom/google/android/gms/internal/auth/zzcb;->zzj:Z

    .line 3
    :cond_58
    :goto_58
    sget-object v0, Lcom/google/android/gms/internal/auth/zzcb;->zzm:Ljava/lang/Object;

    sget-object v4, Lcom/google/android/gms/internal/auth/zzcb;->zze:Ljava/util/HashMap;

    .line 10
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    sget-object p0, Lcom/google/android/gms/internal/auth/zzcb;->zze:Ljava/util/HashMap;

    .line 11
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_6d

    goto :goto_6e

    :cond_6d
    move-object v3, p0

    .line 12
    :goto_6e
    monitor-exit p2

    return-object v3

    :cond_70
    sget-object v4, Lcom/google/android/gms/internal/auth/zzcb;->zzk:[Ljava/lang/String;

    .line 13
    array-length v4, v4

    .line 35
    monitor-exit p2
    :try_end_74
    .catchall {:try_start_3 .. :try_end_74} :catchall_af

    sget-object v6, Lcom/google/android/gms/internal/auth/zzcb;->zza:Landroid/net/Uri;

    new-array v9, v1, [Ljava/lang/String;

    aput-object p1, v9, v2

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, p0

    .line 36
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_85

    return-object v3

    .line 37
    :cond_85
    :try_start_85
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-nez p2, :cond_92

    .line 38
    invoke-static {v0, p1, v3}, Lcom/google/android/gms/internal/auth/zzcb;->zzc(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8e
    .catchall {:try_start_85 .. :try_end_8e} :catchall_a9

    .line 39
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v3

    .line 40
    :cond_92
    :try_start_92
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_96
    .catchall {:try_start_92 .. :try_end_96} :catchall_a9

    .line 39
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    if-eqz p2, :cond_a2

    .line 42
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a2

    move-object p2, v3

    .line 43
    :cond_a2
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/auth/zzcb;->zzc(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_a8

    return-object p2

    :cond_a8
    return-object v3

    :catchall_a9
    move-exception v0

    move-object p1, v0

    .line 39
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 41
    throw p1

    :catchall_af
    move-exception v0

    move-object p0, v0

    .line 35
    :try_start_b1
    monitor-exit p2
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_af

    throw p0
.end method

.method static bridge synthetic zzb()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/auth/zzcb;->zzl:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static zzc(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    const-class v0, Lcom/google/android/gms/internal/auth/zzcb;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/auth/zzcb;->zzm:Ljava/lang/Object;

    if-ne p0, v1, :cond_c

    sget-object p0, Lcom/google/android/gms/internal/auth/zzcb;->zze:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :cond_c
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method
