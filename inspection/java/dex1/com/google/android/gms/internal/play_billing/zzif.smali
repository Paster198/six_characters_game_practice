.class final Lcom/google/android/gms/internal/play_billing/zzif;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/play_billing/zzii;

.field private zzb:I

.field private zzc:Z

.field private zzd:Ljava/util/Iterator;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/play_billing/zzii;Lcom/google/android/gms/internal/play_billing/zzih;)V
    .registers 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzif;->zza:Lcom/google/android/gms/internal/play_billing/zzii;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzif;->zzb:I

    return-void
.end method

.method private final zza()Ljava/util/Iterator;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzif;->zzd:Ljava/util/Iterator;

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzif;->zza:Lcom/google/android/gms/internal/play_billing/zzii;

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzii;->zzh(Lcom/google/android/gms/internal/play_billing/zzii;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzif;->zzd:Ljava/util/Iterator;

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzif;->zzd:Ljava/util/Iterator;

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzif;->zzb:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/zzif;->zza:Lcom/google/android/gms/internal/play_billing/zzii;

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzii;->zzb(Lcom/google/android/gms/internal/play_billing/zzii;)I

    move-result v3

    if-lt v0, v3, :cond_23

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzii;->zzh(Lcom/google/android/gms/internal/play_billing/zzii;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_22

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzif;->zza()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    return v1

    :cond_22
    return v2

    :cond_23
    return v1
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/zzif;->zzc:Z

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/zzif;->zzb:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/play_billing/zzif;->zzb:I

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzif;->zza:Lcom/google/android/gms/internal/play_billing/zzii;

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzii;->zzb(Lcom/google/android/gms/internal/play_billing/zzii;)I

    move-result v2

    if-ge v1, v2, :cond_19

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzii;->zzk(Lcom/google/android/gms/internal/play_billing/zzii;)[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzie;

    return-object v0

    .line 2
    :cond_19
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzif;->zza()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public final remove()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/zzif;->zzc:Z

    if-eqz v0, :cond_24

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/zzif;->zzc:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzif;->zza:Lcom/google/android/gms/internal/play_billing/zzii;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzii;->zzi(Lcom/google/android/gms/internal/play_billing/zzii;)V

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/zzif;->zzb:I

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzii;->zzb(Lcom/google/android/gms/internal/play_billing/zzii;)I

    move-result v2

    if-ge v1, v2, :cond_1c

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/android/gms/internal/play_billing/zzif;->zzb:I

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzii;->zze(Lcom/google/android/gms/internal/play_billing/zzii;I)Ljava/lang/Object;

    return-void

    .line 4
    :cond_1c
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzif;->zza()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    .line 1
    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() was called before next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
