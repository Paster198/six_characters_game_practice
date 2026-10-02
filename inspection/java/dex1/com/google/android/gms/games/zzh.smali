.class public final Lcom/google/android/gms/games/zzh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"


# instance fields
.field zza:I

.field final zzb:Ljava/util/ArrayList;

.field zzc:Ljava/lang/String;

.field zzd:Lcom/google/android/gms/games/internal/zzi;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1110

    iput v0, p0, Lcom/google/android/gms/games/zzh;->zza:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/games/zzh;->zzb:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/games/zzh;->zzc:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/games/internal/zzi;->zza:Lcom/google/android/gms/games/internal/zzi;

    iput-object v0, p0, Lcom/google/android/gms/games/zzh;->zzd:Lcom/google/android/gms/games/internal/zzi;

    return-void
.end method

.method synthetic constructor <init>([B)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x1110

    iput p1, p0, Lcom/google/android/gms/games/zzh;->zza:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/zzh;->zzb:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/games/zzh;->zzc:Ljava/lang/String;

    sget-object p1, Lcom/google/android/gms/games/internal/zzi;->zza:Lcom/google/android/gms/games/internal/zzi;

    iput-object p1, p0, Lcom/google/android/gms/games/zzh;->zzd:Lcom/google/android/gms/games/internal/zzi;

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/games/zzh;
    .registers 2

    const p1, 0x201113

    iput p1, p0, Lcom/google/android/gms/games/zzh;->zza:I

    return-object p0
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/games/zzh;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/games/zzh;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/games/internal/zzi;)Lcom/google/android/gms/games/zzh;
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/internal/zzi;

    iput-object p1, p0, Lcom/google/android/gms/games/zzh;->zzd:Lcom/google/android/gms/games/internal/zzi;

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/games/zzi;
    .registers 20

    move-object/from16 v0, p0

    .line 1
    iget-object v8, v0, Lcom/google/android/gms/games/zzh;->zzb:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/gms/games/zzi;

    iget v6, v0, Lcom/google/android/gms/games/zzh;->zza:I

    iget-object v15, v0, Lcom/google/android/gms/games/zzh;->zzc:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/gms/games/zzh;->zzd:Lcom/google/android/gms/games/internal/zzi;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x11

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x9

    invoke-direct/range {v1 .. v18}, Lcom/google/android/gms/games/zzi;-><init>(ZZIZILjava/lang/String;Ljava/util/ArrayList;ZZZLjava/lang/String;IILjava/lang/String;Lcom/google/android/gms/games/internal/zzi;Z[B)V

    return-object v1
.end method
