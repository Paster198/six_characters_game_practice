.class public final Lcom/google/android/gms/internal/play_billing/zzce;
.super Lcom/google/android/gms/internal/play_billing/zzbv;
.source "com.android.billingclient:billing@@9.1.0"


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzbv;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzce;
    .registers 5

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzbv;->zza:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/zzbv;->zzb:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzbv;->zza(II)I

    move-result v1

    if-gt v1, v0, :cond_14

    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/zzbv;->zzc:Z

    if-eqz v0, :cond_1f

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzbv;->zza:[Ljava/lang/Object;

    .line 2
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzbv;->zza:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/zzbv;->zzc:Z

    .line 4
    :cond_1f
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzbv;->zza:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/zzbv;->zzb:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/play_billing/zzbv;->zzb:I

    .line 3
    aput-object p1, v0, v1

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/play_billing/zzcf;
    .registers 4

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzce;->zzb:I

    if-eqz v0, :cond_25

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/zzce;->zza:[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzcf;->zzj(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzcf;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzcf;->size()I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/play_billing/zzce;->zzb:I

    iput-boolean v1, p0, Lcom/google/android/gms/internal/play_billing/zzce;->zzc:Z

    return-object v0

    .line 1
    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzce;->zza:[Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzcr;

    .line 3
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzcr;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 1
    :cond_25
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzcp;->zza:Lcom/google/android/gms/internal/play_billing/zzcp;

    return-object v0
.end method
