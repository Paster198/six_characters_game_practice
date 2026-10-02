.class final Lcom/google/android/gms/internal/auth/zzgf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-base@@18.0.10"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/auth/zzgf;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/auth/zzgj;

.field private final zzc:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/auth/zzgf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/auth/zzgf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/auth/zzgf;->zza:Lcom/google/android/gms/internal/auth/zzgf;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/auth/zzgf;->zzc:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Lcom/google/android/gms/internal/auth/zzfp;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/auth/zzfp;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/auth/zzgf;->zzb:Lcom/google/android/gms/internal/auth/zzgj;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/auth/zzgf;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/auth/zzgf;->zza:Lcom/google/android/gms/internal/auth/zzgf;

    return-object v0
.end method


# virtual methods
.method public final zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/auth/zzgi;
    .registers 4

    .line 1
    const-string v0, "messageType"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/auth/zzfa;->zzc(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzgf;->zzc:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/auth/zzgi;

    if-nez v1, :cond_24

    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzgf;->zzb:Lcom/google/android/gms/internal/auth/zzgj;

    .line 3
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/auth/zzgj;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/auth/zzgi;

    move-result-object v1

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/auth/zzfa;->zzc(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgf;->zzc:Ljava/util/concurrent/ConcurrentMap;

    .line 5
    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/auth/zzgi;

    if-nez p1, :cond_23

    return-object v1

    :cond_23
    return-object p1

    :cond_24
    return-object v1
.end method
