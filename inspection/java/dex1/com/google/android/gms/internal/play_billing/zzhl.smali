.class public final Lcom/google/android/gms/internal/play_billing/zzhl;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/play_billing/zzhk;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/play_billing/zzjg;Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzjg;Ljava/lang/Object;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lcom/google/android/gms/internal/play_billing/zzhk;

    const-string v0, ""

    invoke-direct {p2, p1, v0, p3, p4}, Lcom/google/android/gms/internal/play_billing/zzhk;-><init>(Lcom/google/android/gms/internal/play_billing/zzjg;Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzjg;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/zzhl;->zza:Lcom/google/android/gms/internal/play_billing/zzhk;

    return-void
.end method

.method static zzb(Lcom/google/android/gms/internal/play_billing/zzhk;Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzhk;->zza:Lcom/google/android/gms/internal/play_billing/zzjg;

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzhk;->zzc:Lcom/google/android/gms/internal/play_billing/zzjg;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/zzgh;->zza(Lcom/google/android/gms/internal/play_billing/zzjg;ILjava/lang/Object;)I

    move-result p1

    const/4 v0, 0x2

    .line 2
    invoke-static {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/zzgh;->zza(Lcom/google/android/gms/internal/play_billing/zzjg;ILjava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method public static zzd(Lcom/google/android/gms/internal/play_billing/zzjg;Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzjg;Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzhl;
    .registers 5

    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzhl;

    const-string v0, ""

    invoke-direct {p1, p0, v0, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzhl;-><init>(Lcom/google/android/gms/internal/play_billing/zzjg;Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzjg;Ljava/lang/Object;)V

    return-object p1
.end method

.method static zze(Lcom/google/android/gms/internal/play_billing/zzfx;Lcom/google/android/gms/internal/play_billing/zzhk;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/play_billing/zzhk;->zza:Lcom/google/android/gms/internal/play_billing/zzjg;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p2}, Lcom/google/android/gms/internal/play_billing/zzgh;->zzi(Lcom/google/android/gms/internal/play_billing/zzfx;Lcom/google/android/gms/internal/play_billing/zzjg;ILjava/lang/Object;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/zzhk;->zzc:Lcom/google/android/gms/internal/play_billing/zzjg;

    const/4 p2, 0x2

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzgh;->zzi(Lcom/google/android/gms/internal/play_billing/zzfx;Lcom/google/android/gms/internal/play_billing/zzjg;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final zza(ILjava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzhl;->zza:Lcom/google/android/gms/internal/play_billing/zzhk;

    shl-int/lit8 p1, p1, 0x3

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result p1

    .line 2
    invoke-static {v0, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzhl;->zzb(Lcom/google/android/gms/internal/play_billing/zzhk;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result p3

    add-int/2addr p3, p2

    add-int/2addr p1, p3

    return p1
.end method

.method final zzc()Lcom/google/android/gms/internal/play_billing/zzhk;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzhl;->zza:Lcom/google/android/gms/internal/play_billing/zzhk;

    return-object v0
.end method
