.class final Lcom/google/android/gms/internal/play_billing/zzbz;
.super Lcom/google/android/gms/internal/play_billing/zzca;
.source "com.android.billingclient:billing@@9.1.0"


# instance fields
.field final transient zza:I

.field final transient zzb:I

.field final synthetic zzc:Lcom/google/android/gms/internal/play_billing/zzca;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/play_billing/zzca;II)V
    .registers 4

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzbz;->zzc:Lcom/google/android/gms/internal/play_billing/zzca;

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzca;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/play_billing/zzbz;->zza:I

    iput p3, p0, Lcom/google/android/gms/internal/play_billing/zzbz;->zzb:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzbz;->zzb:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzbl;->zza(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzbz;->zzc:Lcom/google/android/gms/internal/play_billing/zzca;

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/zzbz;->zza:I

    add-int/2addr p1, v1

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzca;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzbz;->zzb:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzca;->zzh(II)Lcom/google/android/gms/internal/play_billing/zzca;

    move-result-object p1

    return-object p1
.end method

.method final zzb()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzbz;->zzc:Lcom/google/android/gms/internal/play_billing/zzca;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzbx;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/zzbz;->zza:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/zzbz;->zzb:I

    add-int/2addr v0, v1

    return v0
.end method

.method final zzc()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzbz;->zzc:Lcom/google/android/gms/internal/play_billing/zzca;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzbx;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/zzbz;->zza:I

    add-int/2addr v0, v1

    return v0
.end method

.method final zzf()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method final zzg()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzbz;->zzc:Lcom/google/android/gms/internal/play_billing/zzca;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzbx;->zzg()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final zzh(II)Lcom/google/android/gms/internal/play_billing/zzca;
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzbz;->zzb:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzbl;->zzd(III)V

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzbz;->zza:I

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzbz;->zzc:Lcom/google/android/gms/internal/play_billing/zzca;

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    .line 2
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzca;->zzh(II)Lcom/google/android/gms/internal/play_billing/zzca;

    move-result-object p1

    return-object p1
.end method
