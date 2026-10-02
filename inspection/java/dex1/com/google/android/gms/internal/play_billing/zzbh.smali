.class public final Lcom/google/android/gms/internal/play_billing/zzbh;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/android/gms/internal/play_billing/zzbg;

.field private zzc:Lcom/google/android/gms/internal/play_billing/zzbg;


# direct methods
.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzbi;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lcom/google/android/gms/internal/play_billing/zzbg;

    invoke-direct {p2}, Lcom/google/android/gms/internal/play_billing/zzbg;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/zzbh;->zzb:Lcom/google/android/gms/internal/play_billing/zzbg;

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/zzbh;->zzc:Lcom/google/android/gms/internal/play_billing/zzbg;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzbh;->zza:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzbh;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzbh;->zzb:Lcom/google/android/gms/internal/play_billing/zzbg;

    iget-object v1, v1, Lcom/google/android/gms/internal/play_billing/zzbg;->zzb:Lcom/google/android/gms/internal/play_billing/zzbg;

    const-string v2, ""

    :goto_17
    if-eqz v1, :cond_45

    iget-object v3, v1, Lcom/google/android/gms/internal/play_billing/zzbg;->zza:Ljava/lang/Object;

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_3d

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_3d

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 4
    invoke-static {v2}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_40

    .line 6
    :cond_3d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5
    :goto_40
    iget-object v1, v1, Lcom/google/android/gms/internal/play_billing/zzbg;->zzb:Lcom/google/android/gms/internal/play_billing/zzbg;

    const-string v2, ", "

    goto :goto_17

    :cond_45
    const/16 v1, 0x7d

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzbh;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzbg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzbg;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzbh;->zzc:Lcom/google/android/gms/internal/play_billing/zzbg;

    iput-object v0, v1, Lcom/google/android/gms/internal/play_billing/zzbg;->zzb:Lcom/google/android/gms/internal/play_billing/zzbg;

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzbh;->zzc:Lcom/google/android/gms/internal/play_billing/zzbg;

    iput-object p1, v0, Lcom/google/android/gms/internal/play_billing/zzbg;->zza:Ljava/lang/Object;

    return-object p0
.end method
