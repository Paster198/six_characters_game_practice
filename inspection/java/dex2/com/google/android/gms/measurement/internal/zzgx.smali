.class public final Lcom/google/android/gms/measurement/internal/zzgx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"


# static fields
.field protected static final zza:Ljava/util/concurrent/atomic/AtomicReference;

.field protected static final zzb:Ljava/util/concurrent/atomic/AtomicReference;

.field protected static final zzc:Ljava/util/concurrent/atomic/AtomicReference;


# instance fields
.field private final zzd:Lcom/google/android/gms/measurement/internal/zzgw;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzgx;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzgx;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzgx;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzgw;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzd:Lcom/google/android/gms/measurement/internal/zzgw;

    return-void
.end method

.method private static final zzg(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/String;
    .registers 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    move v0, v2

    .line 4
    :goto_11
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    :goto_14
    array-length v0, p1

    if-ge v2, v0, :cond_59

    .line 5
    aget-object v0, p1, v2

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 6
    monitor-enter p3

    .line 7
    :try_start_20
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    if-nez p0, :cond_2e

    array-length p0, p2

    new-array p0, p0, [Ljava/lang/String;

    .line 8
    invoke-virtual {p3, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 9
    :cond_2e
    aget-object v0, p0, v2

    if-nez v0, :cond_51

    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    aget-object p2, p2, v2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "("

    .line 12
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    aget-object p1, p1, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15
    aput-object v0, p0, v2

    .line 16
    :cond_51
    monitor-exit p3

    return-object v0

    :catchall_53
    move-exception p0

    .line 17
    monitor-exit p3
    :try_end_55
    .catchall {:try_start_20 .. :try_end_55} :catchall_53

    throw p0

    :cond_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_59
    return-object p0
.end method


# virtual methods
.method protected final zza([Ljava/lang/Object;)Ljava/lang/String;
    .registers 7

    if-nez p1, :cond_5

    .line 1
    const-string p1, "[]"

    return-object p1

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_10
    array-length v2, p1

    if-ge v1, v2, :cond_38

    .line 3
    aget-object v2, p1, v1

    .line 4
    instance-of v3, v2, Landroid/os/Bundle;

    if-eqz v3, :cond_20

    .line 5
    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/zzgx;->zzb(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    goto :goto_24

    .line 6
    :cond_20
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_24
    if-eqz v2, :cond_35

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_32

    const-string v3, ", "

    .line 8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 6
    :cond_38
    const-string p1, "]"

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final zzb(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 7

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzd:Lcom/google/android/gms/measurement/internal/zzgw;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/zzgw;->zza()Z

    move-result v0

    if-nez v0, :cond_11

    .line 2
    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bundle[{"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_3c

    const-string v3, ", "

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :cond_3c
    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/zzgx;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    .line 9
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 11
    instance-of v3, v2, Landroid/os/Bundle;

    if-eqz v3, :cond_59

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 12
    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/zzgx;->zza([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_77

    .line 13
    :cond_59
    instance-of v3, v2, [Ljava/lang/Object;

    if-eqz v3, :cond_64

    .line 14
    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/zzgx;->zza([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_77

    .line 15
    :cond_64
    instance-of v3, v2, Ljava/util/ArrayList;

    if-eqz v3, :cond_73

    .line 16
    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/zzgx;->zza([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_77

    .line 17
    :cond_73
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 10
    :goto_77
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_23

    .line 17
    :cond_7b
    const-string p1, "}]"

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final zzc(Lcom/google/android/gms/measurement/internal/zzbh;)Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzd:Lcom/google/android/gms/measurement/internal/zzgw;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/zzgw;->zza()Z

    move-result v1

    if-nez v1, :cond_d

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbh;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "origin="

    .line 3
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzbh;->zzc:Ljava/lang/String;

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",name="

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzbh;->zza:Ljava/lang/String;

    .line 7
    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",params="

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzbh;->zzb:Lcom/google/android/gms/measurement/internal/zzbf;

    if-nez p1, :cond_32

    const/4 p1, 0x0

    goto :goto_45

    .line 9
    :cond_32
    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/zzgw;->zza()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbf;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_45

    .line 11
    :cond_3d
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbf;->zzc()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzgx;->zzb(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    .line 12
    :goto_45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final zzd(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzd:Lcom/google/android/gms/measurement/internal/zzgw;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/zzgw;->zza()Z

    move-result v0

    if-nez v0, :cond_d

    return-object p1

    .line 2
    :cond_d
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzjy;->zzc:[Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzjy;->zza:[Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzgx;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final zze(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzd:Lcom/google/android/gms/measurement/internal/zzgw;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/zzgw;->zza()Z

    move-result v0

    if-nez v0, :cond_d

    return-object p1

    .line 2
    :cond_d
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzjz;->zzb:[Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzjz;->zza:[Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzgx;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final zzf(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzd:Lcom/google/android/gms/measurement/internal/zzgw;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/zzgw;->zza()Z

    move-result v0

    if-nez v0, :cond_d

    return-object p1

    :cond_d
    const-string v0, "_exp_"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "experiment_id("

    .line 3
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :cond_29
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzka;->zzb:[Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzka;->zza:[Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzgx;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
