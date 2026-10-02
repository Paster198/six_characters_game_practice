.class public final Lcom/google/android/gms/internal/play_billing/zzdu;
.super Lcom/google/android/gms/internal/play_billing/zzgp;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzhs;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zzdu;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzdu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzdu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzdu;->zzb:Lcom/google/android/gms/internal/play_billing/zzdu;

    const-class v1, Lcom/google/android/gms/internal/play_billing/zzdu;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzB(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzgp;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzgp;-><init>()V

    return-void
.end method

.method static bridge synthetic zza()Lcom/google/android/gms/internal/play_billing/zzdu;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzdu;->zzb:Lcom/google/android/gms/internal/play_billing/zzdu;

    return-object v0
.end method

.method public static zzb()Lcom/google/android/gms/internal/play_billing/zzdu;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzdu;->zzb:Lcom/google/android/gms/internal/play_billing/zzdu;

    return-object v0
.end method


# virtual methods
.method public final zzc()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/zzdu;->zzf:Z

    return v0
.end method

.method protected final zzd(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_34

    const/4 p2, 0x2

    if-eq p1, p2, :cond_21

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1b

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_15

    const/4 p2, 0x5

    if-ne p1, p2, :cond_14

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzdu;->zzb:Lcom/google/android/gms/internal/play_billing/zzdu;

    return-object p1

    .line 4
    :cond_14
    throw p3

    .line 2
    :cond_15
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzds;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/play_billing/zzds;-><init>(Lcom/google/android/gms/internal/play_billing/zzdt;)V

    return-object p1

    :cond_1b
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzdu;

    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/zzdu;-><init>()V

    return-object p1

    .line 1
    :cond_21
    const-string p1, "zze"

    const-string p2, "zzf"

    const-string p3, "zzd"

    filled-new-array {p3, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzdu;->zzb:Lcom/google/android/gms/internal/play_billing/zzdu;

    const-string p3, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u1007\u0001"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzdu;->zzy(Lcom/google/android/gms/internal/play_billing/zzhr;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_34
    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zze()I
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzdu;->zze:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_f

    if-eq v0, v2, :cond_e

    if-eq v0, v1, :cond_c

    const/4 v1, 0x0

    goto :goto_f

    :cond_c
    const/4 v1, 0x4

    goto :goto_f

    :cond_e
    const/4 v1, 0x3

    :cond_f
    :goto_f
    if-nez v1, :cond_12

    return v2

    :cond_12
    return v1
.end method
