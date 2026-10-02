.class final Lcom/google/android/gms/internal/play_billing/zzcm;
.super Lcom/google/android/gms/internal/play_billing/zzcf;
.source "com.android.billingclient:billing@@9.1.0"


# instance fields
.field private final transient zza:Lcom/google/android/gms/internal/play_billing/zzcd;

.field private final transient zzb:Lcom/google/android/gms/internal/play_billing/zzca;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/play_billing/zzcd;Lcom/google/android/gms/internal/play_billing/zzca;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzcf;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzcm;->zza:Lcom/google/android/gms/internal/play_billing/zzcd;

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/zzcm;->zzb:Lcom/google/android/gms/internal/play_billing/zzca;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcm;->zza:Lcom/google/android/gms/internal/play_billing/zzcd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzcd;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcm;->zzb:Lcom/google/android/gms/internal/play_billing/zzca;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzca;->zzn(I)Lcom/google/android/gms/internal/play_billing/zzct;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcm;->zza:Lcom/google/android/gms/internal/play_billing/zzcd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzcd;->size()I

    move-result v0

    return v0
.end method

.method final zza([Ljava/lang/Object;I)I
    .registers 4

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/play_billing/zzcm;->zzb:Lcom/google/android/gms/internal/play_billing/zzca;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzbx;->zza([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public final zzd()Lcom/google/android/gms/internal/play_billing/zzca;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcm;->zzb:Lcom/google/android/gms/internal/play_billing/zzca;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/play_billing/zzcs;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcm;->zzb:Lcom/google/android/gms/internal/play_billing/zzca;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzca;->zzn(I)Lcom/google/android/gms/internal/play_billing/zzct;

    move-result-object v0

    return-object v0
.end method

.method final zzf()Z
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method
