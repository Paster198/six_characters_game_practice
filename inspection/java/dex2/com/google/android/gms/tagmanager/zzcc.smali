.class final Lcom/google/android/gms/tagmanager/zzcc;
.super Ljava/lang/Thread;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"


# static fields
.field private static zza:Lcom/google/android/gms/tagmanager/zzcc;


# instance fields
.field private final zzb:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile zzc:Z

.field private volatile zzd:Z

.field private volatile zze:Lcom/google/android/gms/tagmanager/zzcd;

.field private final zzf:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "GAThread"

    .line 1
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzcc;->zzb:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzcc;->zzc:Z

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzcc;->zzd:Z

    if-eqz p1, :cond_1a

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzcc;->zzf:Landroid/content/Context;

    goto :goto_1d

    :cond_1a
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzcc;->zzf:Landroid/content/Context;

    :goto_1d
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzcc;->start()V

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/tagmanager/zzcc;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/tagmanager/zzcc;->zzf:Landroid/content/Context;

    return-object p0
.end method

.method static zzb(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/zzcc;
    .registers 2

    sget-object v0, Lcom/google/android/gms/tagmanager/zzcc;->zza:Lcom/google/android/gms/tagmanager/zzcc;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/gms/tagmanager/zzcc;

    .line 1
    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/zzcc;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzcc;->zza:Lcom/google/android/gms/tagmanager/zzcc;

    :cond_b
    sget-object p0, Lcom/google/android/gms/tagmanager/zzcc;->zza:Lcom/google/android/gms/tagmanager/zzcc;

    return-object p0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/tagmanager/zzcc;)Lcom/google/android/gms/tagmanager/zzcd;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/tagmanager/zzcc;->zze:Lcom/google/android/gms/tagmanager/zzcd;

    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/tagmanager/zzcc;Lcom/google/android/gms/tagmanager/zzcd;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzcc;->zze:Lcom/google/android/gms/tagmanager/zzcd;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcc;->zzb:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 1
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iget-boolean v1, p0, Lcom/google/android/gms/tagmanager/zzcc;->zzc:Z

    if-nez v1, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_f} :catch_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_0

    :catch_10
    move-exception v0

    goto :goto_1d

    :catch_12
    move-exception v0

    .line 3
    :try_start_13
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/tagmanager/zzdh;->zzb:Lcom/google/android/gms/tagmanager/zzbg;

    .line 4
    invoke-virtual {v1, v0}, Lcom/google/android/gms/tagmanager/zzbg;->zzb(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1c} :catch_10

    goto :goto_0

    .line 5
    :goto_1d
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    new-instance v2, Ljava/io/PrintStream;

    invoke-direct {v2, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 8
    invoke-virtual {v2}, Ljava/io/PrintStream;->flush()V

    new-instance v0, Ljava/lang/String;

    .line 9
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Error on Google TagManager Thread: "

    if-eqz v1, :cond_43

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_48

    .line 11
    :cond_43
    new-instance v0, Ljava/lang/String;

    .line 10
    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_48
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdh;->zza(Ljava/lang/String;)V

    const-string v0, "Google TagManager is shutting down."

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdh;->zza(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzcc;->zzc:Z

    goto :goto_0
.end method

.method public final zze(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcc;->zzb:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 1
    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final zzf(Ljava/lang/String;J)V
    .registers 11

    new-instance v0, Lcom/google/android/gms/tagmanager/zzcb;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    move-wide v3, p2

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/zzcb;-><init>(Lcom/google/android/gms/tagmanager/zzcc;Lcom/google/android/gms/tagmanager/zzcc;JLjava/lang/String;[B)V

    iget-object p1, v1, Lcom/google/android/gms/tagmanager/zzcc;->zzb:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method
