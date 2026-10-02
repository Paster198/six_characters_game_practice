.class public final Lcom/google/android/gms/internal/gtm/zzet;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/gtm/zzes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/gtm/zzes<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final zzb:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final zzc:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final zzd:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzes;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;",
            "Lcom/google/android/gms/internal/gtm/zzes<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzet;->zzd:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzet;->zzb:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzet;->zzc:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/gtm/zzet;->zza:Lcom/google/android/gms/internal/gtm/zzes;

    return-void
.end method

.method static zza(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzes;)Lcom/google/android/gms/internal/gtm/zzet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Lcom/google/android/gms/internal/gtm/zzes<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/gtm/zzet<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzet;

    .line 1
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzes;)V

    return-object v0
.end method


# virtual methods
.method public final zzb()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzet;->zzd:Ljava/lang/Object;

    monitor-enter v0

    .line 1
    :try_start_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_7

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzet;->zzb:Ljava/lang/Object;

    return-object v0

    :catchall_7
    move-exception v1

    :try_start_8
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw v1
.end method
