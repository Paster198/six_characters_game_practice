.class final Lcom/google/android/gms/internal/play_billing/zzhu;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzib;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/play_billing/zzib<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final zza:[I

.field private static final zzb:Lsun/misc/Unsafe;


# instance fields
.field private final zzc:[I

.field private final zzd:[Ljava/lang/Object;

.field private final zze:I

.field private final zzf:I

.field private final zzg:Lcom/google/android/gms/internal/play_billing/zzhr;

.field private final zzh:Z

.field private final zzi:[I

.field private final zzj:I

.field private final zzk:I

.field private final zzl:Lcom/google/android/gms/internal/play_billing/zziq;

.field private final zzm:Lcom/google/android/gms/internal/play_billing/zzgd;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 1
    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzhu;->zza:[I

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzix;->zzg()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzhu;->zzb:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/play_billing/zzhr;Z[IIILcom/google/android/gms/internal/play_billing/zzhw;Lcom/google/android/gms/internal/play_billing/zzhe;Lcom/google/android/gms/internal/play_billing/zziq;Lcom/google/android/gms/internal/play_billing/zzgd;Lcom/google/android/gms/internal/play_billing/zzhn;)V
    .registers 15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzhu;->zzc:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/zzhu;->zzd:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/play_billing/zzhu;->zze:I

    iput p4, p0, Lcom/google/android/gms/internal/play_billing/zzhu;->zzf:I

    const/4 p1, 0x0

    if-eqz p13, :cond_13

    instance-of p2, p5, Lcom/google/android/gms/internal/play_billing/zzgm;

    if-eqz p2, :cond_13

    const/4 p1, 0x1

    :cond_13
    iput-boolean p1, p0, Lcom/google/android/gms/internal/play_billing/zzhu;->zzh:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/play_billing/zzhu;->zzi:[I

    iput p8, p0, Lcom/google/android/gms/internal/play_billing/zzhu;->zzj:I

    iput p9, p0, Lcom/google/android/gms/internal/play_billing/zzhu;->zzk:I

    iput-object p12, p0, Lcom/google/android/gms/internal/play_billing/zzhu;->zzl:Lcom/google/android/gms/internal/play_billing/zziq;

    iput-object p13, p0, Lcom/google/android/gms/internal/play_billing/zzhu;->zzm:Lcom/google/android/gms/internal/play_billing/zzgd;

    iput-object p5, p0, Lcom/google/android/gms/internal/play_billing/zzhu;->zzg:Lcom/google/android/gms/internal/play_billing/zzhr;

    return-void
.end method

.method private final zzA(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 9

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzH(Ljava/lang/Object;I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2
    :cond_7
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzq(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzhu;->zzb:Lsun/misc/Unsafe;

    int-to-long v2, v0

    .line 3
    invoke-virtual {v1, p2, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 6
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzt(I)Lcom/google/android/gms/internal/play_billing/zzib;

    move-result-object p2

    .line 7
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzH(Ljava/lang/Object;I)Z

    move-result v4

    if-nez v4, :cond_3a

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzK(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 9
    invoke-virtual {v1, p1, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_36

    .line 10
    :cond_2c
    invoke-interface {p2}, Lcom/google/android/gms/internal/play_billing/zzib;->zze()Ljava/lang/Object;

    move-result-object v4

    .line 11
    invoke-interface {p2, v4, v0}, Lcom/google/android/gms/internal/play_billing/zzib;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 13
    :goto_36
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzC(Ljava/lang/Object;I)V

    return-void

    .line 14
    :cond_3a
    invoke-virtual {v1, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    .line 15
    invoke-static {p3}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzK(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4f

    .line 16
    invoke-interface {p2}, Lcom/google/android/gms/internal/play_billing/zzib;->zze()Ljava/lang/Object;

    move-result-object v4

    .line 17
    invoke-interface {p2, v4, p3}, Lcom/google/android/gms/internal/play_billing/zzib;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p3, v4

    .line 19
    :cond_4f
    invoke-interface {p2, p3, v0}, Lcom/google/android/gms/internal/play_billing/zzib;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_53
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzhu;->zzc:[I

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 4
    aget p1, p1, p3

    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Source subfield "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is present but null: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzB(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzhu;->zzc:[I

    aget v1, v0, p3

    .line 2
    invoke-direct {p0, p2, v1, p3}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-nez v2, :cond_b

    return-void

    .line 3
    :cond_b
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzq(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v2, v3

    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzhu;->zzb:Lsun/misc/Unsafe;

    int-to-long v4, v2

    .line 4
    invoke-virtual {v3, p2, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_57

    .line 7
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzt(I)Lcom/google/android/gms/internal/play_billing/zzib;

    move-result-object p2

    .line 8
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 9
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzK(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 10
    invoke-virtual {v3, p1, v4, v5, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_3a

    .line 11
    :cond_30
    invoke-interface {p2}, Lcom/google/android/gms/internal/play_billing/zzib;->zze()Ljava/lang/Object;

    move-result-object v0

    .line 12
    invoke-interface {p2, v0, v2}, Lcom/google/android/gms/internal/play_billing/zzib;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    invoke-virtual {v3, p1, v4, v5, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 14
    :goto_3a
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzD(Ljava/lang/Object;II)V

    return-void

    .line 15
    :cond_3e
    invoke-virtual {v3, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    .line 16
    invoke-static {p3}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzK(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    .line 17
    invoke-interface {p2}, Lcom/google/android/gms/internal/play_billing/zzib;->zze()Ljava/lang/Object;

    move-result-object v0

    .line 18
    invoke-interface {p2, v0, p3}, Lcom/google/android/gms/internal/play_billing/zzib;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    invoke-virtual {v3, p1, v4, v5, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p3, v0

    .line 20
    :cond_53
    invoke-interface {p2, p3, v2}, Lcom/google/android/gms/internal/play_billing/zzib;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_57
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 5
    aget p3, v0, p3

    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Source subfield "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " is present but null: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final zzC(Ljava/lang/Object;I)V
    .registers 7

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzn(I)I

    move-result p2

    const v0, 0xfffff

    and-int/2addr v0, p2

    int-to-long v0, v0

    const-wide/32 v2, 0xfffff

    cmp-long v2, v0, v2

    if-nez v2, :cond_11

    return-void

    :cond_11
    ushr-int/lit8 p2, p2, 0x14

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzix;->zzc(Ljava/lang/Object;J)I

    move-result v2

    const/4 v3, 0x1

    shl-int p2, v3, p2

    or-int/2addr p2, v2

    .line 3
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/play_billing/zzix;->zzn(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzD(Ljava/lang/Object;II)V
    .registers 6

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzn(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/play_billing/zzix;->zzn(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzE(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 7

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzhu;->zzb:Lsun/misc/Unsafe;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzq(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzC(Ljava/lang/Object;I)V

    return-void
.end method

.method private final zzF(Ljava/lang/Object;IILjava/lang/Object;)V
    .registers 8

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzhu;->zzb:Lsun/misc/Unsafe;

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzq(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzD(Ljava/lang/Object;II)V

    return-void
.end method

.method private final zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .registers 4

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzH(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzH(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method private final zzH(Ljava/lang/Object;I)Z
    .registers 10

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzn(I)I

    move-result v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_ec

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzq(I)I

    move-result p2

    and-int v0, p2, v1

    invoke-static {p2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzp(I)I

    move-result p2

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    packed-switch p2, :pswitch_data_fa

    .line 25
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzN()Z

    move-result p1

    return p1

    .line 3
    :pswitch_28
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzix;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2f

    return v6

    :cond_2f
    return v5

    .line 4
    :pswitch_30
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzix;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_39

    return v6

    :cond_39
    return v5

    .line 5
    :pswitch_3a
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzix;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_41

    return v6

    :cond_41
    return v5

    .line 6
    :pswitch_42
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzix;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_4b

    return v6

    :cond_4b
    return v5

    .line 7
    :pswitch_4c
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzix;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_53

    return v6

    :cond_53
    return v5

    .line 8
    :pswitch_54
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzix;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5b

    return v6

    :cond_5b
    return v5

    .line 9
    :pswitch_5c
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzix;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_63

    return v6

    :cond_63
    return v5

    .line 10
    :pswitch_64
    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzfp;->zza:Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzix;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/zzfp;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_71

    return v6

    :cond_71
    return v5

    .line 11
    :pswitch_72
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzix;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_79

    return v6

    :cond_79
    return v5

    .line 12
    :pswitch_7a
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzix;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 13
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_8c

    .line 14
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8b

    return v6

    :cond_8b
    return v5

    :cond_8c
    instance-of p2, p1, Lcom/google/android/gms/internal/play_billing/zzfp;

    if-eqz p2, :cond_9a

    .line 15
    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzfp;->zza:Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/zzfp;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_99

    return v6

    :cond_99
    return v5

    .line 16
    :cond_9a
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzN()Z

    move-result p1

    return p1

    .line 17
    :pswitch_9f
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzix;->zzt(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 18
    :pswitch_a4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzix;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_ab

    return v6

    :cond_ab
    return v5

    .line 19
    :pswitch_ac
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzix;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_b5

    return v6

    :cond_b5
    return v5

    .line 20
    :pswitch_b6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzix;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_bd

    return v6

    :cond_bd
    return v5

    .line 21
    :pswitch_be
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzix;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_c7

    return v6

    :cond_c7
    return v5

    .line 22
    :pswitch_c8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzix;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_d1

    return v6

    :cond_d1
    return v5

    .line 23
    :pswitch_d2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzix;->zzb(Ljava/lang/Object;J)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    if-eqz p1, :cond_dd

    return v6

    :cond_dd
    return v5

    .line 24
    :pswitch_de
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzix;->zza(Ljava/lang/Object;J)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_eb

    return v6

    :cond_eb
    return v5

    :cond_ec
    ushr-int/lit8 p2, v0, 0x14

    shl-int p2, v6, p2

    .line 26
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzix;->zzc(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_f8

    return v6

    :cond_f8
    return v5

    nop

    :pswitch_data_fa
    .packed-switch 0x0
        :pswitch_de
        :pswitch_d2
        :pswitch_c8
        :pswitch_be
        :pswitch_b6
        :pswitch_ac
        :pswitch_a4
        :pswitch_9f
        :pswitch_7a
        :pswitch_72
        :pswitch_64
        :pswitch_5c
        :pswitch_54
        :pswitch_4c
        :pswitch_42
        :pswitch_3a
        :pswitch_30
        :pswitch_28
    .end packed-switch
.end method

.method private final zzI(Ljava/lang/Object;IIII)Z
    .registers 7

    const v0, 0xfffff

    if-ne p3, v0, :cond_a

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzH(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_a
    and-int p1, p4, p5

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method private static zzJ(Ljava/lang/Object;ILcom/google/android/gms/internal/play_billing/zzib;)Z
    .registers 5

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    .line 1
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzix;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 2
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/play_billing/zzib;->zzk(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static zzK(Ljava/lang/Object;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_4
    instance-of v0, p0, Lcom/google/android/gms/internal/play_billing/zzgp;

    if-eqz v0, :cond_f

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzgp;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzF()Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x1

    return p0
.end method

.method private final zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .registers 6

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzn(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzix;->zzc(Ljava/lang/Object;J)I

    move-result p1

    .line 3
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzix;->zzc(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_15

    const/4 p1, 0x1

    return p1

    :cond_15
    const/4 p1, 0x0

    return p1
.end method

.method private final zzM(Ljava/lang/Object;II)Z
    .registers 6

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzn(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzix;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_11

    const/4 p1, 0x1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method private zzN()Z
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static final zzO([BIILcom/google/android/gms/internal/play_billing/zzjg;Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzfd;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjg;->zza:Lcom/google/android/gms/internal/play_billing/zzjg;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/play_billing/zzjg;->ordinal()I

    move-result p3

    packed-switch p3, :pswitch_data_b6

    .line 21
    :pswitch_9
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "unsupported field type."

    .line 22
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :pswitch_11
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzl([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result p0

    iget-wide p1, p5, Lcom/google/android/gms/internal/play_billing/zzfd;->zzb:J

    .line 4
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzft;->zzc(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/play_billing/zzfd;->zzc:Ljava/lang/Object;

    return p0

    .line 5
    :pswitch_22
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzi([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result p0

    iget p1, p5, Lcom/google/android/gms/internal/play_billing/zzfd;->zza:I

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzft;->zzb(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/play_billing/zzfd;->zzc:Ljava/lang/Object;

    return p0

    .line 19
    :pswitch_33
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/play_billing/zzfe;->zza([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result p0

    return p0

    .line 7
    :pswitch_38
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzhy;->zza()Lcom/google/android/gms/internal/play_billing/zzhy;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/play_billing/zzhy;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzib;

    move-result-object p3

    .line 8
    invoke-static {p3, p0, p1, p2, p5}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzd(Lcom/google/android/gms/internal/play_billing/zzib;[BIILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result p0

    return p0

    .line 2
    :pswitch_45
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzg([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result p0

    return p0

    .line 20
    :pswitch_4a
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzl([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result p0

    iget-wide p1, p5, Lcom/google/android/gms/internal/play_billing/zzfd;->zzb:J

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-eqz p1, :cond_58

    const/4 p1, 0x1

    goto :goto_59

    :cond_58
    const/4 p1, 0x0

    .line 21
    :goto_59
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/play_billing/zzfd;->zzc:Ljava/lang/Object;

    return p0

    :pswitch_60
    add-int/lit8 p2, p1, 0x4

    .line 16
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzb([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/play_billing/zzfd;->zzc:Ljava/lang/Object;

    return p2

    :pswitch_6d
    add-int/lit8 p2, p1, 0x8

    .line 15
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzp([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/play_billing/zzfd;->zzc:Ljava/lang/Object;

    return p2

    .line 11
    :pswitch_7a
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzi([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result p0

    iget p1, p5, Lcom/google/android/gms/internal/play_billing/zzfd;->zza:I

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/play_billing/zzfd;->zzc:Ljava/lang/Object;

    return p0

    .line 9
    :pswitch_87
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzl([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result p0

    iget-wide p1, p5, Lcom/google/android/gms/internal/play_billing/zzfd;->zzb:J

    .line 10
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/play_billing/zzfd;->zzc:Ljava/lang/Object;

    return p0

    :pswitch_94
    add-int/lit8 p2, p1, 0x4

    .line 13
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzb([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    .line 14
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/play_billing/zzfd;->zzc:Ljava/lang/Object;

    return p2

    :pswitch_a5
    add-int/lit8 p2, p1, 0x8

    .line 17
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzp([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    .line 18
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/play_billing/zzfd;->zzc:Ljava/lang/Object;

    return p2

    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_a5
        :pswitch_94
        :pswitch_87
        :pswitch_87
        :pswitch_7a
        :pswitch_6d
        :pswitch_60
        :pswitch_4a
        :pswitch_45
        :pswitch_9
        :pswitch_38
        :pswitch_33
        :pswitch_7a
        :pswitch_7a
        :pswitch_60
        :pswitch_6d
        :pswitch_22
        :pswitch_11
    .end packed-switch
.end method

.method private static final zzP(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzji;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 2
    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/play_billing/zzji;->zzH(ILjava/lang/String;)V

    return-void

    .line 3
    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/play_billing/zzji;->zzd(ILcom/google/android/gms/internal/play_billing/zzfp;)V

    return-void
.end method

.method static zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzir;
    .registers 3

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzgp;

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzc:Lcom/google/android/gms/internal/play_billing/zzir;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzir;->zzc()Lcom/google/android/gms/internal/play_billing/zzir;

    move-result-object v1

    if-ne v0, v1, :cond_10

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzir;->zzf()Lcom/google/android/gms/internal/play_billing/zzir;

    move-result-object v0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzc:Lcom/google/android/gms/internal/play_billing/zzir;

    :cond_10
    return-object v0
.end method

.method static zzl(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzhp;Lcom/google/android/gms/internal/play_billing/zzhw;Lcom/google/android/gms/internal/play_billing/zzhe;Lcom/google/android/gms/internal/play_billing/zziq;Lcom/google/android/gms/internal/play_billing/zzgd;Lcom/google/android/gms/internal/play_billing/zzhn;)Lcom/google/android/gms/internal/play_billing/zzhu;
    .registers 39

    move-object/from16 v0, p1

    .line 1
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzhu;->zzb:Lsun/misc/Unsafe;

    if-eqz v1, :cond_3f9

    instance-of v2, v0, Lcom/google/android/gms/internal/play_billing/zzia;

    if-eqz v2, :cond_3f5

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzia;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzia;->zzd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    .line 4
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v6, 0xd800

    if-lt v5, v6, :cond_29

    const/4 v5, 0x1

    :goto_1f
    add-int/lit8 v8, v5, 0x1

    .line 5
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_2a

    move v5, v8

    goto :goto_1f

    :cond_29
    const/4 v8, 0x1

    :cond_2a
    add-int/lit8 v5, v8, 0x1

    .line 6
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v6, :cond_49

    and-int/lit16 v8, v8, 0x1fff

    const/16 v10, 0xd

    :goto_36
    add-int/lit8 v11, v5, 0x1

    .line 7
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_46

    and-int/lit16 v5, v5, 0x1fff

    shl-int/2addr v5, v10

    or-int/2addr v8, v5

    add-int/lit8 v10, v10, 0xd

    move v5, v11

    goto :goto_36

    :cond_46
    shl-int/2addr v5, v10

    or-int/2addr v8, v5

    move v5, v11

    :cond_49
    if-nez v8, :cond_5a

    sget-object v8, Lcom/google/android/gms/internal/play_billing/zzhu;->zza:[I

    move v12, v4

    move v13, v12

    move v14, v13

    move/from16 v16, v14

    move/from16 v18, v16

    move-object/from16 v17, v8

    move/from16 v8, v18

    goto/16 :goto_15f

    :cond_5a
    add-int/lit8 v8, v5, 0x1

    .line 8
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_79

    and-int/lit16 v5, v5, 0x1fff

    const/16 v10, 0xd

    :goto_66
    add-int/lit8 v11, v8, 0x1

    .line 9
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v6, :cond_76

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v10

    or-int/2addr v5, v8

    add-int/lit8 v10, v10, 0xd

    move v8, v11

    goto :goto_66

    :cond_76
    shl-int/2addr v8, v10

    or-int/2addr v5, v8

    move v8, v11

    :cond_79
    add-int/lit8 v10, v8, 0x1

    .line 10
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v6, :cond_98

    and-int/lit16 v8, v8, 0x1fff

    const/16 v11, 0xd

    :goto_85
    add-int/lit8 v12, v10, 0x1

    .line 11
    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_95

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v11

    or-int/2addr v8, v10

    add-int/lit8 v11, v11, 0xd

    move v10, v12

    goto :goto_85

    :cond_95
    shl-int/2addr v10, v11

    or-int/2addr v8, v10

    move v10, v12

    :cond_98
    add-int/lit8 v11, v10, 0x1

    .line 12
    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_b7

    and-int/lit16 v10, v10, 0x1fff

    const/16 v12, 0xd

    :goto_a4
    add-int/lit8 v13, v11, 0x1

    .line 13
    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v6, :cond_b4

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_a4

    :cond_b4
    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    move v11, v13

    :cond_b7
    add-int/lit8 v12, v11, 0x1

    .line 14
    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v6, :cond_d6

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_c3
    add-int/lit8 v14, v12, 0x1

    .line 15
    invoke-virtual {v2, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_d3

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_c3

    :cond_d3
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    :cond_d6
    add-int/lit8 v13, v12, 0x1

    .line 16
    invoke-virtual {v2, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_f5

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_e2
    add-int/lit8 v15, v13, 0x1

    .line 17
    invoke-virtual {v2, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_f2

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_e2

    :cond_f2
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_f5
    add-int/lit8 v14, v13, 0x1

    .line 18
    invoke-virtual {v2, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_116

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_101
    add-int/lit8 v16, v14, 0x1

    .line 19
    invoke-virtual {v2, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_112

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_101

    :cond_112
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_116
    add-int/lit8 v15, v14, 0x1

    .line 20
    invoke-virtual {v2, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_129

    :goto_11e
    add-int/lit8 v14, v15, 0x1

    .line 21
    invoke-virtual {v2, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_128

    move v15, v14

    goto :goto_11e

    :cond_128
    move v15, v14

    :cond_129
    add-int/lit8 v14, v15, 0x1

    .line 22
    invoke-virtual {v2, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_14c

    and-int/lit16 v15, v15, 0x1fff

    const/16 v16, 0xd

    :goto_135
    add-int/lit8 v17, v14, 0x1

    .line 23
    invoke-virtual {v2, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_147

    and-int/lit16 v14, v14, 0x1fff

    shl-int v14, v14, v16

    or-int/2addr v15, v14

    add-int/lit8 v16, v16, 0xd

    move/from16 v14, v17

    goto :goto_135

    :cond_147
    shl-int v14, v14, v16

    or-int/2addr v15, v14

    move/from16 v14, v17

    :cond_14c
    add-int v16, v15, v13

    add-int v4, v16, v5

    add-int v16, v5, v5

    add-int v16, v16, v8

    .line 24
    new-array v8, v4, [I

    move v4, v5

    move-object/from16 v17, v8

    move v8, v13

    move v5, v14

    move/from16 v18, v15

    move v13, v10

    move v14, v11

    .line 25
    :goto_15f
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzia;->zze()[Ljava/lang/Object;

    move-result-object v10

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzia;->zza()Lcom/google/android/gms/internal/play_billing/zzhr;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    add-int v19, v18, v8

    add-int v8, v12, v12

    mul-int/lit8 v12, v12, 0x3

    .line 27
    new-array v12, v12, [I

    .line 28
    new-array v8, v8, [Ljava/lang/Object;

    move/from16 v22, v18

    move/from16 v21, v19

    const/4 v15, 0x0

    const/16 v20, 0x0

    :goto_17c
    if-ge v5, v3, :cond_3db

    add-int/lit8 v23, v5, 0x1

    .line 29
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_1a4

    and-int/lit16 v5, v5, 0x1fff

    move/from16 v9, v23

    const/16 v23, 0xd

    :goto_18c
    add-int/lit8 v24, v9, 0x1

    .line 30
    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_19e

    and-int/lit16 v9, v9, 0x1fff

    shl-int v9, v9, v23

    or-int/2addr v5, v9

    add-int/lit8 v23, v23, 0xd

    move/from16 v9, v24

    goto :goto_18c

    :cond_19e
    shl-int v9, v9, v23

    or-int/2addr v5, v9

    move/from16 v9, v24

    goto :goto_1a6

    :cond_1a4
    move/from16 v9, v23

    :goto_1a6
    add-int/lit8 v23, v9, 0x1

    .line 31
    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_1cc

    and-int/lit16 v9, v9, 0x1fff

    move/from16 v7, v23

    const/16 v23, 0xd

    :goto_1b4
    add-int/lit8 v25, v7, 0x1

    .line 32
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_1c6

    and-int/lit16 v7, v7, 0x1fff

    shl-int v7, v7, v23

    or-int/2addr v9, v7

    add-int/lit8 v23, v23, 0xd

    move/from16 v7, v25

    goto :goto_1b4

    :cond_1c6
    shl-int v7, v7, v23

    or-int/2addr v9, v7

    move/from16 v7, v25

    goto :goto_1ce

    :cond_1cc
    move/from16 v7, v23

    :goto_1ce
    and-int/lit16 v6, v9, 0x400

    if-eqz v6, :cond_1d7

    add-int/lit8 v6, v15, 0x1

    .line 33
    aput v20, v17, v15

    move v15, v6

    :cond_1d7
    and-int/lit16 v6, v9, 0xff

    move-object/from16 v25, v0

    and-int/lit16 v0, v9, 0x800

    move/from16 v26, v0

    const/16 v0, 0x33

    if-lt v6, v0, :cond_29f

    add-int/lit8 v0, v7, 0x1

    .line 34
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move/from16 v27, v0

    const v0, 0xd800

    if-lt v7, v0, :cond_217

    and-int/lit16 v7, v7, 0x1fff

    move/from16 v30, v27

    move/from16 v27, v7

    move/from16 v7, v30

    const/16 v30, 0xd

    :goto_1fa
    add-int/lit8 v31, v7, 0x1

    .line 35
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v0, :cond_210

    and-int/lit16 v0, v7, 0x1fff

    shl-int v0, v0, v30

    or-int v27, v27, v0

    add-int/lit8 v30, v30, 0xd

    move/from16 v7, v31

    const v0, 0xd800

    goto :goto_1fa

    :cond_210
    shl-int v0, v7, v30

    or-int v7, v27, v0

    move/from16 v0, v31

    goto :goto_219

    :cond_217
    move/from16 v0, v27

    :goto_219
    move/from16 v27, v0

    add-int/lit8 v0, v6, -0x33

    move/from16 v30, v3

    const/16 v3, 0x9

    if-eq v0, v3, :cond_245

    const/16 v3, 0x11

    if-ne v0, v3, :cond_228

    goto :goto_245

    :cond_228
    const/16 v3, 0xc

    if-ne v0, v3, :cond_254

    .line 37
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/gms/internal/play_billing/zzia;->zzc()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_238

    if-eqz v26, :cond_236

    goto :goto_238

    :cond_236
    const/4 v0, 0x0

    goto :goto_256

    :cond_238
    :goto_238
    add-int/lit8 v0, v16, 0x1

    div-int/lit8 v24, v20, 0x3

    add-int v24, v24, v24

    add-int/lit8 v24, v24, 0x1

    .line 38
    aget-object v16, v10, v16

    aput-object v16, v8, v24

    goto :goto_252

    :cond_245
    :goto_245
    const/4 v3, 0x1

    add-int/lit8 v0, v16, 0x1

    .line 35
    div-int/lit8 v24, v20, 0x3

    add-int v24, v24, v24

    add-int/lit8 v28, v24, 0x1

    .line 36
    aget-object v3, v10, v16

    aput-object v3, v8, v28

    :goto_252
    move/from16 v16, v0

    :cond_254
    move/from16 v0, v26

    :goto_256
    add-int/2addr v7, v7

    .line 39
    aget-object v3, v10, v7

    move/from16 v26, v0

    .line 40
    instance-of v0, v3, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_262

    .line 41
    check-cast v3, Ljava/lang/reflect/Field;

    goto :goto_270

    .line 42
    :cond_262
    check-cast v3, Ljava/lang/String;

    invoke-static {v11, v3}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzy(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 43
    aput-object v3, v10, v7

    add-int/lit8 v0, v21, 0x1

    .line 44
    aput v20, v17, v21

    move/from16 v21, v0

    :goto_270
    move v0, v4

    .line 45
    invoke-virtual {v1, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    long-to-int v3, v3

    add-int/lit8 v7, v7, 0x1

    .line 46
    aget-object v4, v10, v7

    move/from16 v31, v0

    .line 47
    instance-of v0, v4, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_283

    .line 48
    check-cast v4, Ljava/lang/reflect/Field;

    goto :goto_28b

    .line 49
    :cond_283
    check-cast v4, Ljava/lang/String;

    invoke-static {v11, v4}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzy(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 50
    aput-object v4, v10, v7

    :goto_28b
    move v0, v3

    .line 51
    invoke-virtual {v1, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    long-to-int v3, v3

    move-object/from16 v28, v2

    move/from16 v7, v27

    const/4 v2, 0x0

    move/from16 v27, v16

    move/from16 v16, v3

    move v3, v0

    move/from16 v0, v26

    goto/16 :goto_39b

    :cond_29f
    move/from16 v30, v3

    move/from16 v31, v4

    add-int/lit8 v0, v16, 0x1

    .line 52
    aget-object v3, v10, v16

    check-cast v3, Ljava/lang/String;

    invoke-static {v11, v3}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzy(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/16 v4, 0x9

    if-eq v6, v4, :cond_326

    const/16 v4, 0x11

    if-ne v6, v4, :cond_2b7

    goto/16 :goto_326

    :cond_2b7
    const/16 v4, 0x1b

    if-eq v6, v4, :cond_316

    const/16 v4, 0x31

    if-ne v6, v4, :cond_2c5

    add-int/lit8 v16, v16, 0x2

    move/from16 v27, v0

    const/4 v0, 0x1

    goto :goto_31b

    :cond_2c5
    const/16 v4, 0xc

    if-eq v6, v4, :cond_2fc

    const/16 v4, 0x1e

    if-eq v6, v4, :cond_2fc

    const/16 v4, 0x2c

    if-ne v6, v4, :cond_2d2

    goto :goto_2fc

    :cond_2d2
    const/16 v4, 0x32

    if-ne v6, v4, :cond_2f0

    add-int/lit8 v4, v16, 0x2

    add-int/lit8 v27, v22, 0x1

    .line 57
    aput v20, v17, v22

    div-int/lit8 v22, v20, 0x3

    .line 58
    aget-object v0, v10, v0

    add-int v22, v22, v22

    aput-object v0, v8, v22

    if-eqz v26, :cond_2f4

    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v0, v16, 0x3

    .line 59
    aget-object v4, v10, v4

    aput-object v4, v8, v22

    move/from16 v22, v27

    :cond_2f0
    move/from16 v27, v0

    const/4 v0, 0x1

    goto :goto_333

    :cond_2f4
    move/from16 v22, v27

    const/4 v0, 0x1

    const/16 v26, 0x0

    move/from16 v27, v4

    goto :goto_333

    .line 55
    :cond_2fc
    :goto_2fc
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/gms/internal/play_billing/zzia;->zzc()I

    move-result v4

    move/from16 v27, v0

    const/4 v0, 0x1

    if-eq v4, v0, :cond_30b

    if-eqz v26, :cond_308

    goto :goto_30b

    :cond_308
    const/16 v26, 0x0

    goto :goto_333

    :cond_30b
    :goto_30b
    add-int/lit8 v16, v16, 0x2

    div-int/lit8 v4, v20, 0x3

    add-int/2addr v4, v4

    add-int/2addr v4, v0

    .line 56
    aget-object v24, v10, v27

    aput-object v24, v8, v4

    goto :goto_323

    :cond_316
    move/from16 v27, v0

    const/4 v0, 0x1

    add-int/lit8 v16, v16, 0x2

    .line 67
    :goto_31b
    div-int/lit8 v4, v20, 0x3

    add-int/2addr v4, v4

    add-int/2addr v4, v0

    .line 54
    aget-object v24, v10, v27

    aput-object v24, v8, v4

    :goto_323
    move/from16 v27, v16

    goto :goto_333

    :cond_326
    :goto_326
    move/from16 v27, v0

    const/4 v0, 0x1

    .line 52
    div-int/lit8 v4, v20, 0x3

    add-int/2addr v4, v4

    add-int/2addr v4, v0

    .line 53
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v16

    aput-object v16, v8, v4

    .line 60
    :goto_333
    invoke-virtual {v1, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    long-to-int v3, v3

    and-int/lit16 v4, v9, 0x1000

    const v16, 0xfffff

    if-eqz v4, :cond_394

    const/16 v4, 0x11

    if-gt v6, v4, :cond_394

    add-int/lit8 v4, v7, 0x1

    .line 61
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const v0, 0xd800

    if-lt v7, v0, :cond_369

    and-int/lit16 v7, v7, 0x1fff

    const/16 v16, 0xd

    :goto_352
    add-int/lit8 v23, v4, 0x1

    .line 62
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v0, :cond_364

    and-int/lit16 v4, v4, 0x1fff

    shl-int v4, v4, v16

    or-int/2addr v7, v4

    add-int/lit8 v16, v16, 0xd

    move/from16 v4, v23

    goto :goto_352

    :cond_364
    shl-int v4, v4, v16

    or-int/2addr v7, v4

    move/from16 v4, v23

    :cond_369
    add-int v16, v31, v31

    div-int/lit8 v23, v7, 0x20

    add-int v16, v16, v23

    .line 63
    aget-object v0, v10, v16

    move-object/from16 v28, v2

    .line 64
    instance-of v2, v0, Ljava/lang/reflect/Field;

    if-eqz v2, :cond_37a

    .line 65
    check-cast v0, Ljava/lang/reflect/Field;

    goto :goto_382

    .line 66
    :cond_37a
    check-cast v0, Ljava/lang/String;

    invoke-static {v11, v0}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzy(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 67
    aput-object v0, v10, v16

    :goto_382
    move/from16 v29, v3

    .line 68
    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    long-to-int v3, v2

    rem-int/lit8 v7, v7, 0x20

    move/from16 v16, v3

    move v2, v7

    move/from16 v0, v26

    move/from16 v3, v29

    move v7, v4

    goto :goto_39b

    :cond_394
    move-object/from16 v28, v2

    move/from16 v29, v3

    move/from16 v0, v26

    const/4 v2, 0x0

    :goto_39b
    add-int/lit8 v4, v20, 0x1

    .line 69
    aput v5, v12, v20

    add-int/lit8 v5, v20, 0x2

    move/from16 v26, v0

    and-int/lit16 v0, v9, 0x200

    if-eqz v0, :cond_3aa

    const/high16 v0, 0x20000000

    goto :goto_3ab

    :cond_3aa
    const/4 v0, 0x0

    :goto_3ab
    and-int/lit16 v9, v9, 0x100

    if-eqz v9, :cond_3b2

    const/high16 v9, 0x10000000

    goto :goto_3b3

    :cond_3b2
    const/4 v9, 0x0

    :goto_3b3
    if-eqz v26, :cond_3b8

    const/high16 v26, -0x80000000

    goto :goto_3ba

    :cond_3b8
    const/16 v26, 0x0

    :goto_3ba
    shl-int/lit8 v6, v6, 0x14

    or-int/2addr v0, v9

    or-int v0, v0, v26

    or-int/2addr v0, v6

    or-int/2addr v0, v3

    .line 70
    aput v0, v12, v4

    add-int/lit8 v20, v20, 0x3

    shl-int/lit8 v0, v2, 0x14

    or-int v0, v0, v16

    .line 71
    aput v0, v12, v5

    move v5, v7

    move-object/from16 v0, v25

    move/from16 v16, v27

    move-object/from16 v2, v28

    move/from16 v3, v30

    move/from16 v4, v31

    const v6, 0xd800

    goto/16 :goto_17c

    :cond_3db
    move-object/from16 v25, v0

    .line 59
    new-instance v10, Lcom/google/android/gms/internal/play_billing/zzhu;

    .line 72
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/gms/internal/play_billing/zzia;->zza()Lcom/google/android/gms/internal/play_billing/zzhr;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v20, p2

    move-object/from16 v21, p3

    move-object/from16 v22, p4

    move-object/from16 v23, p5

    move-object/from16 v24, p6

    move-object v11, v12

    move-object v12, v8

    invoke-direct/range {v10 .. v24}, Lcom/google/android/gms/internal/play_billing/zzhu;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/play_billing/zzhr;Z[IIILcom/google/android/gms/internal/play_billing/zzhw;Lcom/google/android/gms/internal/play_billing/zzhe;Lcom/google/android/gms/internal/play_billing/zziq;Lcom/google/android/gms/internal/play_billing/zzgd;Lcom/google/android/gms/internal/play_billing/zzhn;)V

    return-object v10

    .line 73
    :cond_3f5
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzin;

    const/4 v0, 0x0

    .line 74
    throw v0

    .line 1
    :cond_3f9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Lite gencode is primarily intended for Android use and uses sun.misc.Unsafe which is not available in the current environment. To run in this environment, you may need to switch to standard gencode."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static zzm(Ljava/lang/Object;J)I
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzix;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private final zzn(I)I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzhu;->zzc:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method private final zzo(II)I
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzhu;->zzc:[I

    array-length v1, v0

    div-int/lit8 v1, v1, 0x3

    const/4 v2, -0x1

    add-int/2addr v1, v2

    :goto_7
    if-gt p2, v1, :cond_1c

    add-int v3, v1, p2

    ushr-int/lit8 v3, v3, 0x1

    mul-int/lit8 v4, v3, 0x3

    aget v5, v0, v4

    if-ne p1, v5, :cond_14

    return v4

    :cond_14
    if-ge p1, v5, :cond_19

    add-int/lit8 v1, v3, -0x1

    goto :goto_7

    :cond_19
    add-int/lit8 p2, v3, 0x1

    goto :goto_7

    :cond_1c
    return v2
.end method

.method private static zzp(I)I
    .registers 1

    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private final zzq(I)I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzhu;->zzc:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method private static zzr(Ljava/lang/Object;J)J
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzix;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private final zzs(I)Lcom/google/android/gms/internal/play_billing/zzgs;
    .registers 3

    .line 1
    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzhu;->zzd:[Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzgs;

    return-object p1
.end method

.method private final zzt(I)Lcom/google/android/gms/internal/play_billing/zzib;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzhu;->zzd:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    aget-object v1, v0, p1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzib;

    if-eqz v1, :cond_c

    return-object v1

    :cond_c
    add-int/lit8 v1, p1, 0x1

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzhy;->zza()Lcom/google/android/gms/internal/play_billing/zzhy;

    move-result-object v2

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/play_billing/zzhy;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzib;

    move-result-object v1

    .line 3
    aput-object v1, v0, p1

    return-object v1
.end method

.method private final zzu(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zziq;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    .line 1
    iget-object p4, p0, Lcom/google/android/gms/internal/play_billing/zzhu;->zzc:[I

    aget p4, p4, p2

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzq(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    .line 3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzix;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_14

    goto :goto_1a

    .line 4
    :cond_14
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzs(I)Lcom/google/android/gms/internal/play_billing/zzgs;

    move-result-object v0

    if-nez v0, :cond_1b

    :goto_1a
    return-object p3

    .line 5
    :cond_1b
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzhm;

    .line 6
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzv(I)Ljava/lang/Object;

    move-result-object p2

    .line 7
    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzhl;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzhl;->zzc()Lcom/google/android/gms/internal/play_billing/zzhk;

    move-result-object p2

    .line 8
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2f
    :goto_2f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 9
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzgs;->zza(I)Z

    move-result v2

    if-nez v2, :cond_2f

    if-nez p3, :cond_51

    .line 11
    invoke-static {p5}, Lcom/google/android/gms/internal/play_billing/zzis;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzir;

    move-result-object p3

    .line 12
    :cond_51
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzhl;->zzb(Lcom/google/android/gms/internal/play_billing/zzhk;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 13
    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzfp;->zza:Lcom/google/android/gms/internal/play_billing/zzfp;

    .line 14
    new-array v3, v2, [B

    new-instance v4, Lcom/google/android/gms/internal/play_billing/zzfu;

    const/4 v5, 0x0

    .line 15
    invoke-direct {v4, v3, v5, v2}, Lcom/google/android/gms/internal/play_billing/zzfu;-><init>([BII)V

    .line 16
    :try_start_67
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v4, p2, v2, v1}, Lcom/google/android/gms/internal/play_billing/zzhl;->zze(Lcom/google/android/gms/internal/play_billing/zzfx;Lcom/google/android/gms/internal/play_billing/zzhk;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_72} :catch_84

    .line 17
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/play_billing/zzfl;->zza(Lcom/google/android/gms/internal/play_billing/zzfx;[B)Lcom/google/android/gms/internal/play_billing/zzfp;

    move-result-object v1

    .line 18
    move-object v2, p3

    check-cast v2, Lcom/google/android/gms/internal/play_billing/zzir;

    shl-int/lit8 v3, p4, 0x3

    or-int/lit8 v3, v3, 0x2

    .line 19
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/play_billing/zzir;->zzj(ILjava/lang/Object;)V

    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_2f

    :catch_84
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    .line 21
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_8b
    return-object p3
.end method

.method private final zzv(I)Ljava/lang/Object;
    .registers 3

    .line 1
    div-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzhu;->zzd:[Ljava/lang/Object;

    add-int/2addr p1, p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private final zzw(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 6

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzt(I)Lcom/google/android/gms/internal/play_billing/zzib;

    move-result-object v0

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzq(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzH(Ljava/lang/Object;I)Z

    move-result p2

    if-nez p2, :cond_17

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzib;->zze()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_17
    int-to-long v1, v1

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzhu;->zzb:Lsun/misc/Unsafe;

    .line 5
    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzK(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_25

    return-object p1

    .line 7
    :cond_25
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzib;->zze()Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_2e

    .line 8
    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/play_billing/zzib;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    return-object p2
.end method

.method private final zzx(Ljava/lang/Object;II)Ljava/lang/Object;
    .registers 7

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzt(I)Lcom/google/android/gms/internal/play_billing/zzib;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzM(Ljava/lang/Object;II)Z

    move-result p2

    if-nez p2, :cond_f

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzib;->zze()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_f
    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzhu;->zzb:Lsun/misc/Unsafe;

    .line 4
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzq(I)I

    move-result p3

    const v1, 0xfffff

    and-int/2addr p3, v1

    int-to-long v1, p3

    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzK(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_25

    return-object p1

    .line 6
    :cond_25
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzib;->zze()Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_2e

    .line 7
    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/play_billing/zzib;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    return-object p2
.end method

.method private static zzy(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 8

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 3
    array-length v2, v1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_1e

    aget-object v4, v1, v3

    .line 4
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    return-object v4

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1e
    new-instance v2, Ljava/lang/RuntimeException;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Field "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static zzz(Ljava/lang/Object;)V
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzK(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Mutating immutable message: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    sget-object v6, Lcom/google/android/gms/internal/play_billing/zzhu;->zzb:Lsun/misc/Unsafe;

    const/4 v7, 0x0

    const v8, 0xfffff

    move v2, v7

    move v4, v2

    move v9, v4

    move v3, v8

    :goto_e
    iget-object v5, v0, Lcom/google/android/gms/internal/play_billing/zzhu;->zzc:[I

    array-length v10, v5

    if-ge v2, v10, :cond_724

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzq(I)I

    move-result v10

    invoke-static {v10}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzp(I)I

    move-result v11

    .line 2
    aget v12, v5, v2

    add-int/lit8 v13, v2, 0x2

    .line 3
    aget v5, v5, v13

    and-int v13, v5, v8

    const/16 v14, 0x11

    const/4 v15, 0x1

    if-gt v11, v14, :cond_3a

    if-eq v13, v3, :cond_35

    if-ne v13, v8, :cond_2e

    move v3, v7

    goto :goto_33

    :cond_2e
    int-to-long v3, v13

    .line 4
    invoke-virtual {v6, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    :goto_33
    move v4, v3

    move v3, v13

    :cond_35
    ushr-int/lit8 v5, v5, 0x14

    shl-int v5, v15, v5

    goto :goto_3b

    :cond_3a
    move v5, v7

    :goto_3b
    and-int/2addr v10, v8

    .line 5
    sget-object v13, Lcom/google/android/gms/internal/play_billing/zzgi;->zzJ:Lcom/google/android/gms/internal/play_billing/zzgi;

    .line 6
    invoke-virtual {v13}, Lcom/google/android/gms/internal/play_billing/zzgi;->zza()I

    move-result v13

    if-lt v11, v13, :cond_49

    sget-object v13, Lcom/google/android/gms/internal/play_billing/zzgi;->zzW:Lcom/google/android/gms/internal/play_billing/zzgi;

    .line 5
    invoke-virtual {v13}, Lcom/google/android/gms/internal/play_billing/zzgi;->zza()I

    :cond_49
    int-to-long v13, v10

    const/16 v10, 0x3f

    packed-switch v11, :pswitch_data_786

    goto/16 :goto_71e

    .line 7
    :pswitch_51
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_71e

    .line 8
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzhr;

    .line 9
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzt(I)Lcom/google/android/gms/internal/play_billing/zzib;

    move-result-object v10

    .line 10
    invoke-static {v12, v5, v10}, Lcom/google/android/gms/internal/play_billing/zzic;->zza(ILcom/google/android/gms/internal/play_billing/zzhr;Lcom/google/android/gms/internal/play_billing/zzib;)I

    move-result v5

    goto/16 :goto_589

    .line 11
    :pswitch_67
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_71e

    shl-int/lit8 v5, v12, 0x3

    .line 12
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzr(Ljava/lang/Object;J)J

    move-result-wide v11

    add-long v13, v11, v11

    shr-long v10, v11, v10

    .line 13
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v5

    xor-long/2addr v10, v13

    .line 14
    invoke-static {v10, v11}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzz(J)I

    move-result v10

    goto/16 :goto_1be

    .line 15
    :pswitch_82
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_71e

    shl-int/lit8 v5, v12, 0x3

    .line 16
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzm(Ljava/lang/Object;J)I

    move-result v10

    add-int v11, v10, v10

    shr-int/lit8 v10, v10, 0x1f

    .line 17
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v5

    xor-int/2addr v10, v11

    .line 18
    invoke-static {v10}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v10

    goto/16 :goto_1be

    .line 19
    :pswitch_9d
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_71e

    shl-int/lit8 v5, v12, 0x3

    .line 20
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v5

    goto/16 :goto_1dd

    .line 21
    :pswitch_ab
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_71e

    shl-int/lit8 v5, v12, 0x3

    .line 22
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v5

    goto/16 :goto_1cd

    .line 23
    :pswitch_b9
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_71e

    shl-int/lit8 v5, v12, 0x3

    .line 24
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzm(Ljava/lang/Object;J)I

    move-result v10

    int-to-long v10, v10

    .line 25
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v5

    .line 26
    invoke-static {v10, v11}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzz(J)I

    move-result v10

    goto/16 :goto_1be

    .line 27
    :pswitch_d0
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_71e

    shl-int/lit8 v5, v12, 0x3

    .line 28
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzm(Ljava/lang/Object;J)I

    move-result v10

    .line 29
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v5

    .line 30
    invoke-static {v10}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v10

    goto/16 :goto_1be

    .line 31
    :pswitch_e6
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_71e

    shl-int/lit8 v5, v12, 0x3

    .line 32
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/play_billing/zzfp;

    .line 33
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v5

    .line 34
    invoke-virtual {v10}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzd()I

    move-result v10

    .line 35
    invoke-static {v10}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v11

    goto/16 :goto_65e

    .line 36
    :pswitch_102
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_71e

    shl-int/lit8 v5, v12, 0x3

    .line 37
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    .line 38
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzt(I)Lcom/google/android/gms/internal/play_billing/zzib;

    move-result-object v11

    sget v12, Lcom/google/android/gms/internal/play_billing/zzic;->zza:I

    .line 39
    check-cast v10, Lcom/google/android/gms/internal/play_billing/zzfa;

    .line 40
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v5

    .line 41
    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/play_billing/zzfa;->zzi(Lcom/google/android/gms/internal/play_billing/zzib;)I

    move-result v10

    .line 42
    invoke-static {v10}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v11

    goto/16 :goto_65e

    .line 43
    :pswitch_124
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_71e

    shl-int/lit8 v5, v12, 0x3

    .line 44
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    instance-of v11, v10, Lcom/google/android/gms/internal/play_billing/zzfp;

    if-eqz v11, :cond_144

    .line 45
    check-cast v10, Lcom/google/android/gms/internal/play_billing/zzfp;

    .line 46
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v5

    .line 47
    invoke-virtual {v10}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzd()I

    move-result v10

    .line 48
    invoke-static {v10}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v11

    goto/16 :goto_65e

    .line 49
    :cond_144
    check-cast v10, Ljava/lang/String;

    .line 50
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v5

    .line 51
    sget v11, Lcom/google/android/gms/internal/play_billing/zzjc;->zza:I

    .line 52
    invoke-static {v10}, Lcom/google/android/gms/internal/play_billing/zziz;->zzb(Ljava/lang/String;)I

    move-result v10

    .line 53
    invoke-static {v10}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v11

    goto/16 :goto_65e

    .line 54
    :pswitch_156
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_71e

    shl-int/lit8 v5, v12, 0x3

    .line 55
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v5

    add-int/2addr v5, v15

    goto/16 :goto_589

    .line 56
    :pswitch_165
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_71e

    shl-int/lit8 v5, v12, 0x3

    .line 57
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v5

    goto :goto_1cd

    .line 58
    :pswitch_172
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_71e

    shl-int/lit8 v5, v12, 0x3

    .line 59
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v5

    goto :goto_1dd

    .line 60
    :pswitch_17f
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_71e

    shl-int/lit8 v5, v12, 0x3

    .line 61
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzm(Ljava/lang/Object;J)I

    move-result v10

    int-to-long v10, v10

    .line 62
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v5

    .line 63
    invoke-static {v10, v11}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzz(J)I

    move-result v10

    goto :goto_1be

    .line 64
    :pswitch_195
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_71e

    shl-int/lit8 v5, v12, 0x3

    .line 65
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzr(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 66
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v5

    .line 67
    invoke-static {v10, v11}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzz(J)I

    move-result v10

    goto :goto_1be

    .line 68
    :pswitch_1aa
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_71e

    shl-int/lit8 v5, v12, 0x3

    .line 69
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzr(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 70
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v5

    .line 71
    invoke-static {v10, v11}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzz(J)I

    move-result v10

    :goto_1be
    add-int/2addr v5, v10

    goto/16 :goto_589

    .line 72
    :pswitch_1c1
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_71e

    shl-int/lit8 v5, v12, 0x3

    .line 73
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v5

    :goto_1cd
    add-int/lit8 v5, v5, 0x4

    goto/16 :goto_589

    .line 74
    :pswitch_1d1
    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_71e

    shl-int/lit8 v5, v12, 0x3

    .line 75
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v5

    :goto_1dd
    add-int/lit8 v5, v5, 0x8

    goto/16 :goto_589

    .line 76
    :pswitch_1e1
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzv(I)Ljava/lang/Object;

    move-result-object v10

    .line 77
    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzhm;

    .line 78
    check-cast v10, Lcom/google/android/gms/internal/play_billing/zzhl;

    .line 79
    invoke-virtual {v5}, Lcom/google/android/gms/internal/play_billing/zzhm;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1f5

    goto/16 :goto_55f

    .line 80
    :cond_1f5
    invoke-virtual {v5}, Lcom/google/android/gms/internal/play_billing/zzhm;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v11, v7

    :goto_1fe
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_571

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 81
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v10, v12, v14, v13}, Lcom/google/android/gms/internal/play_billing/zzhl;->zza(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v13

    add-int/2addr v11, v13

    goto :goto_1fe

    .line 82
    :pswitch_218
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 83
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzt(I)Lcom/google/android/gms/internal/play_billing/zzib;

    move-result-object v10

    .line 84
    sget v11, Lcom/google/android/gms/internal/play_billing/zzic;->zza:I

    .line 85
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_22c

    move v14, v7

    goto :goto_23e

    :cond_22c
    move v13, v7

    move v14, v13

    :goto_22e
    if-ge v13, v11, :cond_23e

    .line 86
    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/play_billing/zzhr;

    invoke-static {v12, v15, v10}, Lcom/google/android/gms/internal/play_billing/zzic;->zza(ILcom/google/android/gms/internal/play_billing/zzhr;Lcom/google/android/gms/internal/play_billing/zzib;)I

    move-result v15

    add-int/2addr v14, v15

    add-int/lit8 v13, v13, 0x1

    goto :goto_22e

    :cond_23e
    :goto_23e
    add-int/2addr v9, v14

    goto/16 :goto_71e

    .line 87
    :pswitch_241
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 88
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzic;->zzj(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_71e

    shl-int/lit8 v10, v12, 0x3

    .line 89
    invoke-static {v10}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v10

    .line 90
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v11

    goto/16 :goto_38d

    .line 91
    :pswitch_259
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 92
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzic;->zzi(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_71e

    shl-int/lit8 v10, v12, 0x3

    .line 93
    invoke-static {v10}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v10

    .line 94
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v11

    goto/16 :goto_38d

    .line 95
    :pswitch_271
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 96
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzic;->zzf(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_71e

    shl-int/lit8 v10, v12, 0x3

    .line 97
    invoke-static {v10}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v10

    .line 98
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v11

    goto/16 :goto_38d

    .line 99
    :pswitch_289
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 100
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzic;->zzd(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_71e

    shl-int/lit8 v10, v12, 0x3

    .line 101
    invoke-static {v10}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v10

    .line 102
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v11

    goto/16 :goto_38d

    .line 103
    :pswitch_2a1
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 104
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzic;->zzb(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_71e

    shl-int/lit8 v10, v12, 0x3

    .line 105
    invoke-static {v10}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v10

    .line 106
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v11

    goto/16 :goto_38d

    .line 107
    :pswitch_2b9
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 108
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzic;->zzk(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_71e

    shl-int/lit8 v10, v12, 0x3

    .line 109
    invoke-static {v10}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v10

    .line 110
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v11

    goto/16 :goto_38d

    .line 111
    :pswitch_2d1
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 112
    sget v10, Lcom/google/android/gms/internal/play_billing/zzic;->zza:I

    .line 113
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_71e

    shl-int/lit8 v10, v12, 0x3

    .line 114
    invoke-static {v10}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v10

    .line 115
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v11

    goto/16 :goto_38d

    .line 116
    :pswitch_2eb
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 117
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzic;->zzd(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_71e

    shl-int/lit8 v10, v12, 0x3

    .line 118
    invoke-static {v10}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v10

    .line 119
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v11

    goto/16 :goto_38d

    .line 120
    :pswitch_303
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 121
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzic;->zzf(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_71e

    shl-int/lit8 v10, v12, 0x3

    .line 122
    invoke-static {v10}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v10

    .line 123
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v11

    goto/16 :goto_38d

    .line 124
    :pswitch_31b
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 125
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzic;->zzg(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_71e

    shl-int/lit8 v10, v12, 0x3

    .line 126
    invoke-static {v10}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v10

    .line 127
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v11

    goto :goto_38d

    .line 128
    :pswitch_332
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 129
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzic;->zzl(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_71e

    shl-int/lit8 v10, v12, 0x3

    .line 130
    invoke-static {v10}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v10

    .line 131
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v11

    goto :goto_38d

    .line 132
    :pswitch_349
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 133
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzic;->zzh(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_71e

    shl-int/lit8 v10, v12, 0x3

    .line 134
    invoke-static {v10}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v10

    .line 135
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v11

    goto :goto_38d

    .line 136
    :pswitch_360
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 137
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzic;->zzd(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_71e

    shl-int/lit8 v10, v12, 0x3

    .line 138
    invoke-static {v10}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v10

    .line 139
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v11

    goto :goto_38d

    .line 140
    :pswitch_377
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 141
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzic;->zzf(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_71e

    shl-int/lit8 v10, v12, 0x3

    .line 142
    invoke-static {v10}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v10

    .line 143
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v11

    :goto_38d
    add-int/2addr v10, v11

    add-int/2addr v10, v5

    :cond_38f
    :goto_38f
    add-int/2addr v9, v10

    goto/16 :goto_71e

    .line 144
    :pswitch_392
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 145
    sget v10, Lcom/google/android/gms/internal/play_billing/zzic;->zza:I

    .line 146
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_3a3

    :goto_3a0
    move v5, v7

    goto/16 :goto_589

    :cond_3a3
    shl-int/lit8 v11, v12, 0x3

    .line 147
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzic;->zzj(Ljava/util/List;)I

    move-result v5

    .line 148
    invoke-static {v11}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v11

    :goto_3ad
    mul-int/2addr v10, v11

    goto/16 :goto_1be

    .line 149
    :pswitch_3b0
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 150
    sget v10, Lcom/google/android/gms/internal/play_billing/zzic;->zza:I

    .line 151
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_3bf

    goto :goto_3a0

    :cond_3bf
    shl-int/lit8 v11, v12, 0x3

    .line 152
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzic;->zzi(Ljava/util/List;)I

    move-result v5

    .line 153
    invoke-static {v11}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v11

    goto :goto_3ad

    .line 154
    :pswitch_3ca
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 155
    invoke-static {v12, v5, v7}, Lcom/google/android/gms/internal/play_billing/zzic;->zze(ILjava/util/List;Z)I

    move-result v5

    goto/16 :goto_589

    .line 156
    :pswitch_3d6
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 157
    invoke-static {v12, v5, v7}, Lcom/google/android/gms/internal/play_billing/zzic;->zzc(ILjava/util/List;Z)I

    move-result v5

    goto/16 :goto_589

    .line 158
    :pswitch_3e2
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 159
    sget v10, Lcom/google/android/gms/internal/play_billing/zzic;->zza:I

    .line 160
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_3f1

    goto :goto_3a0

    :cond_3f1
    shl-int/lit8 v11, v12, 0x3

    .line 161
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzic;->zzb(Ljava/util/List;)I

    move-result v5

    .line 162
    invoke-static {v11}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v11

    goto :goto_3ad

    .line 163
    :pswitch_3fc
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 164
    sget v10, Lcom/google/android/gms/internal/play_billing/zzic;->zza:I

    .line 165
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_40b

    goto :goto_3a0

    :cond_40b
    shl-int/lit8 v11, v12, 0x3

    .line 166
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzic;->zzk(Ljava/util/List;)I

    move-result v5

    .line 167
    invoke-static {v11}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v11

    goto :goto_3ad

    .line 168
    :pswitch_416
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 169
    sget v10, Lcom/google/android/gms/internal/play_billing/zzic;->zza:I

    .line 170
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_427

    move v10, v7

    goto/16 :goto_38f

    :cond_427
    shl-int/lit8 v11, v12, 0x3

    .line 171
    invoke-static {v11}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v11

    mul-int/2addr v10, v11

    move v11, v7

    .line 172
    :goto_42f
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_38f

    .line 173
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/play_billing/zzfp;

    .line 174
    invoke-virtual {v12}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzd()I

    move-result v12

    .line 175
    invoke-static {v12}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v13

    add-int/2addr v13, v12

    add-int/2addr v10, v13

    add-int/lit8 v11, v11, 0x1

    goto :goto_42f

    .line 176
    :pswitch_448
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzt(I)Lcom/google/android/gms/internal/play_billing/zzib;

    move-result-object v10

    .line 177
    sget v11, Lcom/google/android/gms/internal/play_billing/zzic;->zza:I

    .line 178
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_45c

    move v12, v7

    goto :goto_479

    :cond_45c
    shl-int/lit8 v12, v12, 0x3

    .line 179
    invoke-static {v12}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v12

    mul-int/2addr v12, v11

    move v13, v7

    :goto_464
    if-ge v13, v11, :cond_479

    .line 180
    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    .line 181
    check-cast v14, Lcom/google/android/gms/internal/play_billing/zzfa;

    .line 182
    invoke-virtual {v14, v10}, Lcom/google/android/gms/internal/play_billing/zzfa;->zzi(Lcom/google/android/gms/internal/play_billing/zzib;)I

    move-result v14

    .line 183
    invoke-static {v14}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v15

    add-int/2addr v15, v14

    add-int/2addr v12, v15

    add-int/lit8 v13, v13, 0x1

    goto :goto_464

    :cond_479
    :goto_479
    add-int/2addr v9, v12

    goto/16 :goto_71e

    .line 184
    :pswitch_47c
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget v10, Lcom/google/android/gms/internal/play_billing/zzic;->zza:I

    .line 185
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_48c

    goto/16 :goto_55f

    :cond_48c
    shl-int/lit8 v11, v12, 0x3

    .line 186
    invoke-static {v11}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v11

    mul-int/2addr v11, v10

    instance-of v12, v5, Lcom/google/android/gms/internal/play_billing/zzhd;

    if-eqz v12, :cond_4c0

    .line 195
    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzhd;

    move v12, v7

    :goto_49a
    if-ge v12, v10, :cond_571

    .line 196
    invoke-interface {v5}, Lcom/google/android/gms/internal/play_billing/zzhd;->zza()Ljava/lang/Object;

    move-result-object v13

    instance-of v14, v13, Lcom/google/android/gms/internal/play_billing/zzfp;

    if-eqz v14, :cond_4af

    .line 197
    check-cast v13, Lcom/google/android/gms/internal/play_billing/zzfp;

    .line 198
    invoke-virtual {v13}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzd()I

    move-result v13

    .line 199
    invoke-static {v13}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v14

    goto :goto_4bb

    .line 200
    :cond_4af
    check-cast v13, Ljava/lang/String;

    .line 201
    sget v14, Lcom/google/android/gms/internal/play_billing/zzjc;->zza:I

    .line 202
    invoke-static {v13}, Lcom/google/android/gms/internal/play_billing/zziz;->zzb(Ljava/lang/String;)I

    move-result v13

    .line 203
    invoke-static {v13}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v14

    :goto_4bb
    add-int/2addr v14, v13

    add-int/2addr v11, v14

    add-int/lit8 v12, v12, 0x1

    goto :goto_49a

    :cond_4c0
    move v12, v7

    :goto_4c1
    if-ge v12, v10, :cond_571

    .line 187
    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    instance-of v14, v13, Lcom/google/android/gms/internal/play_billing/zzfp;

    if-eqz v14, :cond_4d6

    .line 188
    check-cast v13, Lcom/google/android/gms/internal/play_billing/zzfp;

    .line 189
    invoke-virtual {v13}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzd()I

    move-result v13

    .line 190
    invoke-static {v13}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v14

    goto :goto_4e2

    .line 191
    :cond_4d6
    check-cast v13, Ljava/lang/String;

    .line 192
    sget v14, Lcom/google/android/gms/internal/play_billing/zzjc;->zza:I

    .line 193
    invoke-static {v13}, Lcom/google/android/gms/internal/play_billing/zziz;->zzb(Ljava/lang/String;)I

    move-result v13

    .line 194
    invoke-static {v13}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v14

    :goto_4e2
    add-int/2addr v14, v13

    add-int/2addr v11, v14

    add-int/lit8 v12, v12, 0x1

    goto :goto_4c1

    .line 204
    :pswitch_4e7
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 205
    sget v10, Lcom/google/android/gms/internal/play_billing/zzic;->zza:I

    .line 206
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_4f7

    goto/16 :goto_3a0

    :cond_4f7
    shl-int/lit8 v10, v12, 0x3

    .line 207
    invoke-static {v10}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v10

    add-int/2addr v10, v15

    mul-int/2addr v5, v10

    goto/16 :goto_589

    .line 208
    :pswitch_501
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 209
    invoke-static {v12, v5, v7}, Lcom/google/android/gms/internal/play_billing/zzic;->zzc(ILjava/util/List;Z)I

    move-result v5

    goto/16 :goto_589

    .line 210
    :pswitch_50d
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 211
    invoke-static {v12, v5, v7}, Lcom/google/android/gms/internal/play_billing/zzic;->zze(ILjava/util/List;Z)I

    move-result v5

    goto/16 :goto_589

    .line 212
    :pswitch_519
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 213
    sget v10, Lcom/google/android/gms/internal/play_billing/zzic;->zza:I

    .line 214
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_529

    goto/16 :goto_3a0

    :cond_529
    shl-int/lit8 v11, v12, 0x3

    .line 215
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzic;->zzg(Ljava/util/List;)I

    move-result v5

    .line 216
    invoke-static {v11}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v11

    goto/16 :goto_3ad

    .line 217
    :pswitch_535
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 218
    sget v10, Lcom/google/android/gms/internal/play_billing/zzic;->zza:I

    .line 219
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_545

    goto/16 :goto_3a0

    :cond_545
    shl-int/lit8 v11, v12, 0x3

    .line 220
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzic;->zzl(Ljava/util/List;)I

    move-result v5

    .line 221
    invoke-static {v11}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v11

    goto/16 :goto_3ad

    .line 222
    :pswitch_551
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 223
    sget v10, Lcom/google/android/gms/internal/play_billing/zzic;->zza:I

    .line 224
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_561

    :goto_55f
    move v11, v7

    goto :goto_571

    :cond_561
    shl-int/lit8 v10, v12, 0x3

    .line 225
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzic;->zzh(Ljava/util/List;)I

    move-result v11

    .line 226
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 227
    invoke-static {v10}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v10

    mul-int/2addr v5, v10

    add-int/2addr v11, v5

    :cond_571
    :goto_571
    add-int/2addr v9, v11

    goto/16 :goto_71e

    .line 228
    :pswitch_574
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 229
    invoke-static {v12, v5, v7}, Lcom/google/android/gms/internal/play_billing/zzic;->zzc(ILjava/util/List;Z)I

    move-result v5

    goto :goto_589

    .line 230
    :pswitch_57f
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 231
    invoke-static {v12, v5, v7}, Lcom/google/android/gms/internal/play_billing/zzic;->zze(ILjava/util/List;Z)I

    move-result v5

    :goto_589
    add-int/2addr v9, v5

    goto/16 :goto_71e

    .line 232
    :pswitch_58c
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_71e

    .line 233
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzhr;

    .line 234
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzt(I)Lcom/google/android/gms/internal/play_billing/zzib;

    move-result-object v10

    .line 235
    invoke-static {v12, v5, v10}, Lcom/google/android/gms/internal/play_billing/zzic;->zza(ILcom/google/android/gms/internal/play_billing/zzhr;Lcom/google/android/gms/internal/play_billing/zzib;)I

    move-result v5

    goto :goto_589

    .line 236
    :pswitch_5a1
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_70c

    shl-int/lit8 v0, v12, 0x3

    .line 237
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    add-long v13, v11, v11

    shr-long v10, v11, v10

    .line 238
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v0

    xor-long/2addr v10, v13

    .line 239
    invoke-static {v10, v11}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzz(J)I

    move-result v5

    goto/16 :goto_6fb

    .line 240
    :pswitch_5bc
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_70c

    shl-int/lit8 v0, v12, 0x3

    .line 241
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    add-int v10, v5, v5

    shr-int/lit8 v5, v5, 0x1f

    .line 242
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v0

    xor-int/2addr v5, v10

    .line 243
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v5

    goto/16 :goto_6fb

    .line 244
    :pswitch_5d7
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_70c

    shl-int/lit8 v0, v12, 0x3

    .line 245
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v0

    goto/16 :goto_6b9

    .line 246
    :pswitch_5e5
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_70c

    shl-int/lit8 v0, v12, 0x3

    .line 247
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v0

    goto/16 :goto_709

    .line 248
    :pswitch_5f3
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_70c

    shl-int/lit8 v0, v12, 0x3

    .line 249
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    int-to-long v10, v5

    .line 250
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v0

    .line 251
    invoke-static {v10, v11}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzz(J)I

    move-result v5

    goto/16 :goto_6fb

    .line 252
    :pswitch_60a
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_70c

    shl-int/lit8 v0, v12, 0x3

    .line 253
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    .line 254
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v0

    .line 255
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v5

    goto/16 :goto_6fb

    .line 256
    :pswitch_620
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_70c

    shl-int/lit8 v0, v12, 0x3

    .line 257
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzfp;

    .line 258
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v0

    .line 259
    invoke-virtual {v5}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzd()I

    move-result v5

    .line 260
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v10

    :goto_63a
    add-int/2addr v10, v5

    add-int/2addr v0, v10

    goto/16 :goto_70b

    .line 261
    :pswitch_63e
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_71e

    shl-int/lit8 v5, v12, 0x3

    .line 262
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    .line 263
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzt(I)Lcom/google/android/gms/internal/play_billing/zzib;

    move-result-object v11

    sget v12, Lcom/google/android/gms/internal/play_billing/zzic;->zza:I

    .line 264
    check-cast v10, Lcom/google/android/gms/internal/play_billing/zzfa;

    .line 265
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v5

    .line 266
    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/play_billing/zzfa;->zzi(Lcom/google/android/gms/internal/play_billing/zzib;)I

    move-result v10

    .line 267
    invoke-static {v10}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v11

    :goto_65e
    add-int/2addr v11, v10

    add-int/2addr v5, v11

    goto/16 :goto_589

    .line 268
    :pswitch_662
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_70c

    shl-int/lit8 v0, v12, 0x3

    .line 269
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    instance-of v10, v5, Lcom/google/android/gms/internal/play_billing/zzfp;

    if-eqz v10, :cond_681

    .line 270
    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzfp;

    .line 271
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v0

    .line 272
    invoke-virtual {v5}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzd()I

    move-result v5

    .line 273
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v10

    goto :goto_63a

    .line 274
    :cond_681
    check-cast v5, Ljava/lang/String;

    .line 275
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v0

    .line 276
    sget v10, Lcom/google/android/gms/internal/play_billing/zzjc;->zza:I

    .line 277
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zziz;->zzb(Ljava/lang/String;)I

    move-result v5

    .line 278
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v10

    goto :goto_63a

    .line 279
    :pswitch_692
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_70c

    shl-int/lit8 v0, v12, 0x3

    .line 280
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v0

    add-int/2addr v0, v15

    goto :goto_70b

    .line 281
    :pswitch_6a0
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_70c

    shl-int/lit8 v0, v12, 0x3

    .line 282
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v0

    goto :goto_709

    .line 283
    :pswitch_6ad
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_70c

    shl-int/lit8 v0, v12, 0x3

    .line 284
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v0

    :goto_6b9
    add-int/lit8 v0, v0, 0x8

    goto :goto_70b

    .line 285
    :pswitch_6bc
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_70c

    shl-int/lit8 v0, v12, 0x3

    .line 286
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    int-to-long v10, v5

    .line 287
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v0

    .line 288
    invoke-static {v10, v11}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzz(J)I

    move-result v5

    goto :goto_6fb

    .line 289
    :pswitch_6d2
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_70c

    shl-int/lit8 v0, v12, 0x3

    .line 290
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 291
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v0

    .line 292
    invoke-static {v10, v11}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzz(J)I

    move-result v5

    goto :goto_6fb

    .line 293
    :pswitch_6e7
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_70c

    shl-int/lit8 v0, v12, 0x3

    .line 294
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 295
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v0

    .line 296
    invoke-static {v10, v11}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzz(J)I

    move-result v5

    :goto_6fb
    add-int/2addr v0, v5

    goto :goto_70b

    .line 297
    :pswitch_6fd
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_70c

    shl-int/lit8 v0, v12, 0x3

    .line 298
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v0

    :goto_709
    add-int/lit8 v0, v0, 0x4

    :goto_70b
    add-int/2addr v9, v0

    :cond_70c
    move-object/from16 v0, p0

    goto :goto_71e

    .line 299
    :pswitch_70f
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_71e

    shl-int/lit8 v1, v12, 0x3

    .line 300
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v9, v1

    :cond_71e
    :goto_71e
    add-int/lit8 v2, v2, 0x3

    move-object/from16 v1, p1

    goto/16 :goto_e

    .line 301
    :cond_724
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzgp;

    iget-object v1, v1, Lcom/google/android/gms/internal/play_billing/zzgp;->zzc:Lcom/google/android/gms/internal/play_billing/zzir;

    .line 302
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/play_billing/zzir;

    .line 303
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzir;->zza()I

    move-result v1

    add-int/2addr v9, v1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/play_billing/zzhu;->zzh:Z

    if-eqz v1, :cond_784

    .line 304
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzgm;

    iget-object v1, v1, Lcom/google/android/gms/internal/play_billing/zzgm;->zzb:Lcom/google/android/gms/internal/play_billing/zzgh;

    iget-object v1, v1, Lcom/google/android/gms/internal/play_billing/zzgh;->zza:Lcom/google/android/gms/internal/play_billing/zzii;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzii;->zzc()I

    move-result v2

    move v3, v7

    :goto_743
    if-ge v7, v2, :cond_75f

    .line 305
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/play_billing/zzii;->zzg(I)Ljava/util/Map$Entry;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzie;

    .line 306
    invoke-virtual {v5}, Lcom/google/android/gms/internal/play_billing/zzie;->zza()Lcom/google/android/gms/internal/play_billing/zzgg;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/google/android/gms/internal/play_billing/zzgg;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/play_billing/zzgh;->zzc(Lcom/google/android/gms/internal/play_billing/zzgg;Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v7, v7, 0x1

    goto :goto_743

    .line 307
    :cond_75f
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzii;->zzd()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_767
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_783

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 308
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/play_billing/zzgg;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/android/gms/internal/play_billing/zzgh;->zzc(Lcom/google/android/gms/internal/play_billing/zzgg;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v3, v2

    goto :goto_767

    :cond_783
    add-int/2addr v9, v3

    :cond_784
    return v9

    nop

    :pswitch_data_786
    .packed-switch 0x0
        :pswitch_70f
        :pswitch_6fd
        :pswitch_6e7
        :pswitch_6d2
        :pswitch_6bc
        :pswitch_6ad
        :pswitch_6a0
        :pswitch_692
        :pswitch_662
        :pswitch_63e
        :pswitch_620
        :pswitch_60a
        :pswitch_5f3
        :pswitch_5e5
        :pswitch_5d7
        :pswitch_5bc
        :pswitch_5a1
        :pswitch_58c
        :pswitch_57f
        :pswitch_574
        :pswitch_551
        :pswitch_535
        :pswitch_519
        :pswitch_50d
        :pswitch_501
        :pswitch_4e7
        :pswitch_47c
        :pswitch_448
        :pswitch_416
        :pswitch_3fc
        :pswitch_3e2
        :pswitch_3d6
        :pswitch_3ca
        :pswitch_3b0
        :pswitch_392
        :pswitch_377
        :pswitch_360
        :pswitch_349
        :pswitch_332
        :pswitch_31b
        :pswitch_303
        :pswitch_2eb
        :pswitch_2d1
        :pswitch_2b9
        :pswitch_2a1
        :pswitch_289
        :pswitch_271
        :pswitch_259
        :pswitch_241
        :pswitch_218
        :pswitch_1e1
        :pswitch_1d1
        :pswitch_1c1
        :pswitch_1aa
        :pswitch_195
        :pswitch_17f
        :pswitch_172
        :pswitch_165
        :pswitch_156
        :pswitch_124
        :pswitch_102
        :pswitch_e6
        :pswitch_d0
        :pswitch_b9
        :pswitch_ab
        :pswitch_9d
        :pswitch_82
        :pswitch_67
        :pswitch_51
    .end packed-switch
.end method

.method public final zzb(Ljava/lang/Object;)I
    .registers 10

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 1
    :goto_3
    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/zzhu;->zzc:[I

    array-length v3, v3

    const v4, 0xfffff

    if-ge v1, v3, :cond_fa

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzq(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzp(I)I

    move-result v5

    const/16 v6, 0x32

    if-le v5, v6, :cond_1b

    const/16 v6, 0x45

    if-lt v5, v6, :cond_f6

    :cond_1b
    and-int/2addr v3, v4

    int-to-long v3, v3

    const/16 v6, 0x25

    const/16 v7, 0x20

    packed-switch v5, :pswitch_data_13c

    goto/16 :goto_f6

    :pswitch_26
    mul-int/lit8 v2, v2, 0x35

    .line 2
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzix;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_f5

    :pswitch_32
    mul-int/lit8 v2, v2, 0x35

    .line 3
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzix;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_f5

    :pswitch_3e
    mul-int/lit8 v2, v2, 0x35

    .line 4
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzix;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_97

    .line 5
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v6

    goto :goto_97

    :pswitch_4b
    mul-int/lit8 v2, v2, 0x35

    .line 6
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzix;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzgv;->zza:[B

    goto/16 :goto_f1

    :pswitch_55
    mul-int/lit8 v2, v2, 0x35

    .line 7
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzix;->zzc(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_f5

    :pswitch_5d
    mul-int/lit8 v2, v2, 0x35

    .line 8
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzix;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzgv;->zza:[B

    goto/16 :goto_f1

    :pswitch_67
    mul-int/lit8 v2, v2, 0x35

    .line 9
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzix;->zzc(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_f5

    :pswitch_6f
    mul-int/lit8 v2, v2, 0x35

    .line 10
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzix;->zzc(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_f5

    :pswitch_77
    mul-int/lit8 v2, v2, 0x35

    .line 11
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzix;->zzc(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_f5

    :pswitch_7f
    mul-int/lit8 v2, v2, 0x35

    .line 12
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzix;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_f5

    :pswitch_8b
    mul-int/lit8 v2, v2, 0x35

    .line 13
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzix;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_97

    .line 14
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v6

    :cond_97
    :goto_97
    add-int/2addr v2, v6

    goto :goto_f6

    :pswitch_99
    mul-int/lit8 v2, v2, 0x35

    .line 15
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzix;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_f5

    :pswitch_a6
    mul-int/lit8 v2, v2, 0x35

    .line 16
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzix;->zzt(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzgv;->zza(Z)I

    move-result v3

    goto :goto_f5

    :pswitch_b1
    mul-int/lit8 v2, v2, 0x35

    .line 17
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzix;->zzc(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_f5

    :pswitch_b8
    mul-int/lit8 v2, v2, 0x35

    .line 18
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzix;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzgv;->zza:[B

    goto :goto_f1

    :pswitch_c1
    mul-int/lit8 v2, v2, 0x35

    .line 19
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzix;->zzc(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_f5

    :pswitch_c8
    mul-int/lit8 v2, v2, 0x35

    .line 20
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzix;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzgv;->zza:[B

    goto :goto_f1

    :pswitch_d1
    mul-int/lit8 v2, v2, 0x35

    .line 21
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzix;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzgv;->zza:[B

    goto :goto_f1

    :pswitch_da
    mul-int/lit8 v2, v2, 0x35

    .line 22
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzix;->zzb(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_f5

    :pswitch_e5
    mul-int/lit8 v2, v2, 0x35

    .line 23
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzix;->zza(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 24
    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzgv;->zza:[B

    :goto_f1
    ushr-long v5, v3, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    :goto_f5
    add-int/2addr v2, v3

    :cond_f6
    :goto_f6
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_3

    .line 22
    :cond_fa
    iget v1, p0, Lcom/google/android/gms/internal/play_billing/zzhu;->zzk:I

    :goto_fc
    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/zzhu;->zzi:[I

    array-length v5, v3

    if-ge v1, v5, :cond_11d

    .line 25
    aget v3, v3, v1

    .line 26
    invoke-direct {p0, p1, v0, v3}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-nez v5, :cond_11a

    mul-int/lit8 v2, v2, 0x35

    .line 27
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzq(I)I

    move-result v3

    and-int/2addr v3, v4

    int-to-long v5, v3

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzix;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    :cond_11a
    add-int/lit8 v1, v1, 0x1

    goto :goto_fc

    :cond_11d
    mul-int/lit8 v2, v2, 0x35

    .line 28
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzgp;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzc:Lcom/google/android/gms/internal/play_billing/zzir;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/zzhu;->zzh:Z

    if-eqz v0, :cond_13a

    mul-int/lit8 v2, v2, 0x35

    .line 30
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzgm;

    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/zzgm;->zzb:Lcom/google/android/gms/internal/play_billing/zzgh;

    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/zzgh;->zza:Lcom/google/android/gms/internal/play_billing/zzii;

    .line 31
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzii;->hashCode()I

    move-result p1

    add-int/2addr v2, p1

    :cond_13a
    return v2

    nop

    :pswitch_data_13c
    .packed-switch 0x0
        :pswitch_e5
        :pswitch_da
        :pswitch_d1
        :pswitch_c8
        :pswitch_c1
        :pswitch_b8
        :pswitch_b1
        :pswitch_a6
        :pswitch_99
        :pswitch_8b
        :pswitch_7f
        :pswitch_77
        :pswitch_6f
        :pswitch_67
        :pswitch_5d
        :pswitch_55
        :pswitch_4b
        :pswitch_3e
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_26
    .end packed-switch
.end method

.method final zzc(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/play_billing/zzfd;)I
    .registers 41
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v7, p2

    move/from16 v8, p4

    move-object/from16 v10, p6

    .line 1
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzz(Ljava/lang/Object;)V

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzhu;->zzb:Lsun/misc/Unsafe;

    move/from16 v3, p3

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v14, 0xfffff

    const/4 v15, 0x0

    :goto_18
    const v16, 0xfffff

    :goto_1b
    const-string v13, "Failed to parse the message."

    const/16 v17, 0x0

    if-ge v3, v8, :cond_e6b

    add-int/lit8 v6, v3, 0x1

    .line 2
    aget-byte v3, v7, v3

    if-gez v3, :cond_2d

    .line 3
    invoke-static {v3, v7, v6, v10}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzj(I[BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v6

    iget v3, v10, Lcom/google/android/gms/internal/play_billing/zzfd;->zza:I

    :cond_2d
    move/from16 v33, v6

    move v6, v3

    move/from16 v3, v33

    ushr-int/lit8 v12, v6, 0x3

    const/4 v11, 0x3

    if-le v12, v4, :cond_49

    div-int/2addr v5, v11

    iget v4, v0, Lcom/google/android/gms/internal/play_billing/zzhu;->zze:I

    if-lt v12, v4, :cond_45

    iget v4, v0, Lcom/google/android/gms/internal/play_billing/zzhu;->zzf:I

    if-gt v12, v4, :cond_45

    .line 5
    invoke-direct {v0, v12, v5}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzo(II)I

    move-result v4

    goto :goto_46

    :cond_45
    const/4 v4, -0x1

    :goto_46
    move v5, v4

    const/4 v4, 0x0

    goto :goto_59

    .line 275
    :cond_49
    iget v4, v0, Lcom/google/android/gms/internal/play_billing/zzhu;->zze:I

    if-lt v12, v4, :cond_57

    iget v4, v0, Lcom/google/android/gms/internal/play_billing/zzhu;->zzf:I

    if-gt v12, v4, :cond_57

    const/4 v4, 0x0

    .line 4
    invoke-direct {v0, v12, v4}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzo(II)I

    move-result v5

    goto :goto_59

    :cond_57
    const/4 v4, 0x0

    const/4 v5, -0x1

    :goto_59
    const/4 v11, -0x1

    if-ne v5, v11, :cond_6f

    move/from16 v11, p5

    move-object v9, v0

    move/from16 v18, v4

    move-object v8, v10

    move-object/from16 v29, v13

    move/from16 v19, v14

    move/from16 v20, v15

    move-object v15, v1

    move-object v10, v2

    move/from16 v13, v18

    move v14, v6

    goto/16 :goto_e09

    :cond_6f
    and-int/lit8 v4, v6, 0x7

    .line 286
    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/zzhu;->zzc:[I

    add-int/lit8 v19, v5, 0x1

    move/from16 v20, v5

    .line 6
    aget v5, v11, v19

    move/from16 v19, v6

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzp(I)I

    move-result v6

    and-int v8, v5, v16

    int-to-long v8, v8

    move-wide/from16 v21, v8

    const/high16 v23, 0x20000000

    const-string v9, ""

    const-wide/16 v24, 0x0

    const-string v8, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    move-object/from16 v27, v11

    const/16 v28, 0x1

    const/16 v11, 0x11

    if-gt v6, v11, :cond_394

    add-int/lit8 v11, v20, 0x2

    .line 7
    aget v11, v27, v11

    ushr-int/lit8 v26, v11, 0x14

    shl-int v26, v28, v26

    and-int v11, v11, v16

    move-object/from16 v29, v13

    if-eq v11, v14, :cond_b8

    move/from16 v13, v16

    if-eq v14, v13, :cond_ad

    int-to-long v13, v14

    .line 8
    invoke-virtual {v1, v2, v13, v14, v15}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const v13, 0xfffff

    :cond_ad
    if-ne v11, v13, :cond_b1

    const/4 v15, 0x0

    goto :goto_b7

    :cond_b1
    int-to-long v13, v11

    .line 9
    invoke-virtual {v1, v2, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v13

    move v15, v13

    :goto_b7
    move v14, v11

    :cond_b8
    packed-switch v6, :pswitch_data_ecc

    move-object/from16 p3, v10

    move-object v10, v7

    move-object/from16 v7, p3

    move/from16 p3, v14

    move/from16 v11, v19

    move/from16 v13, v20

    const/16 v18, 0x0

    move-object v14, v2

    move/from16 v19, v15

    move-object v15, v1

    const/4 v1, 0x3

    if-ne v4, v1, :cond_385

    or-int v8, v19, v26

    .line 10
    invoke-direct {v0, v14, v13}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzw(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    shl-int/lit8 v2, v12, 0x3

    or-int/lit8 v6, v2, 0x4

    .line 11
    invoke-direct {v0, v13}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzt(I)Lcom/google/android/gms/internal/play_billing/zzib;

    move-result-object v2

    move/from16 v5, p4

    move v4, v3

    move-object v3, v10

    .line 12
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzm(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzib;[BIIILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v2

    .line 13
    invoke-direct {v0, v14, v13, v1}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzE(Ljava/lang/Object;ILjava/lang/Object;)V

    move-object/from16 v7, p2

    move-object/from16 v10, p6

    move v3, v2

    move v6, v11

    move v4, v12

    move v5, v13

    move-object v2, v14

    move-object v1, v15

    const v16, 0xfffff

    move/from16 v14, p3

    move v15, v8

    goto/16 :goto_31e

    :pswitch_fa
    if-nez v4, :cond_116

    or-int v15, v15, v26

    .line 14
    invoke-static {v7, v3, v10}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzl([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v8

    iget-wide v3, v10, Lcom/google/android/gms/internal/play_billing/zzfd;->zzb:J

    .line 15
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzft;->zzc(J)J

    move-result-wide v5

    move/from16 v11, v19

    move/from16 v13, v20

    move-wide/from16 v3, v21

    const/16 v18, 0x0

    .line 16
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move v3, v8

    goto/16 :goto_318

    :cond_116
    move/from16 v11, v19

    move/from16 v13, v20

    const/16 v18, 0x0

    move/from16 p3, v14

    move/from16 v19, v15

    goto/16 :goto_322

    :pswitch_122
    move-object v9, v2

    move/from16 v11, v19

    move/from16 v13, v20

    move-wide/from16 v5, v21

    const/16 v18, 0x0

    if-nez v4, :cond_140

    or-int v15, v15, v26

    .line 17
    invoke-static {v7, v3, v10}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzi([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v3

    iget v2, v10, Lcom/google/android/gms/internal/play_billing/zzfd;->zza:I

    .line 18
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzft;->zzb(I)I

    move-result v2

    .line 19
    invoke-virtual {v1, v9, v5, v6, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move/from16 v8, p4

    goto/16 :goto_1d7

    :cond_140
    move/from16 p3, v14

    move/from16 v19, v15

    move-object v15, v1

    goto/16 :goto_1e3

    :pswitch_147
    move-object v9, v2

    move/from16 p3, v14

    move v2, v15

    move/from16 v11, v19

    move/from16 v13, v20

    move-wide/from16 v14, v21

    const/16 v18, 0x0

    if-nez v4, :cond_1a0

    .line 20
    invoke-static {v7, v3, v10}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzi([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v3

    iget v4, v10, Lcom/google/android/gms/internal/play_billing/zzfd;->zza:I

    .line 21
    invoke-direct {v0, v13}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzs(I)Lcom/google/android/gms/internal/play_billing/zzgs;

    move-result-object v6

    const/high16 v8, -0x80000000

    and-int/2addr v5, v8

    if-eqz v5, :cond_17a

    if-eqz v6, :cond_17a

    invoke-interface {v6, v4}, Lcom/google/android/gms/internal/play_billing/zzgs;->zza(I)Z

    move-result v5

    if-eqz v5, :cond_16d

    goto :goto_17a

    .line 23
    :cond_16d
    invoke-static {v9}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzir;

    move-result-object v5

    int-to-long v14, v4

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v11, v4}, Lcom/google/android/gms/internal/play_billing/zzir;->zzj(ILjava/lang/Object;)V

    goto :goto_19a

    :cond_17a
    :goto_17a
    or-int v2, v2, v26

    .line 22
    invoke-virtual {v1, v9, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_19a

    :pswitch_180
    move-object v9, v2

    move/from16 p3, v14

    move v2, v15

    move/from16 v11, v19

    move/from16 v13, v20

    move-wide/from16 v14, v21

    const/4 v6, 0x2

    const/16 v18, 0x0

    if-ne v4, v6, :cond_1a0

    or-int v2, v2, v26

    .line 24
    invoke-static {v7, v3, v10}, Lcom/google/android/gms/internal/play_billing/zzfe;->zza([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v3

    iget-object v4, v10, Lcom/google/android/gms/internal/play_billing/zzfd;->zzc:Ljava/lang/Object;

    .line 25
    invoke-virtual {v1, v9, v14, v15, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_19a
    move/from16 v14, p3

    move/from16 v8, p4

    move v15, v2

    goto :goto_1d7

    :cond_1a0
    move-object v15, v1

    move/from16 v19, v2

    goto :goto_1e3

    :pswitch_1a4
    move-object v9, v2

    move/from16 p3, v14

    move v2, v15

    move/from16 v11, v19

    move/from16 v13, v20

    const/4 v6, 0x2

    const/16 v18, 0x0

    if-ne v4, v6, :cond_1da

    or-int v15, v2, v26

    move-object v2, v1

    .line 26
    invoke-direct {v0, v9, v13}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzw(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v2

    .line 27
    invoke-direct {v0, v13}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzt(I)Lcom/google/android/gms/internal/play_billing/zzib;

    move-result-object v2

    move-object v5, v4

    move v4, v3

    move-object v3, v7

    move-object v7, v5

    move/from16 v5, p4

    move-object v6, v10

    .line 28
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzib;[BIILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v2

    move-object v10, v3

    move-object v3, v1

    move-object v1, v6

    .line 29
    invoke-direct {v0, v9, v13, v3}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzE(Ljava/lang/Object;ILjava/lang/Object;)V

    move-object v3, v10

    move-object v10, v1

    move-object v1, v7

    move-object v7, v3

    move/from16 v14, p3

    move/from16 v8, p4

    move v3, v2

    :goto_1d7
    move-object v2, v9

    goto/16 :goto_2ed

    :cond_1da
    move-object/from16 v33, v7

    move-object v7, v1

    move-object v1, v10

    move-object/from16 v10, v33

    move/from16 v19, v2

    move-object v15, v7

    :goto_1e3
    move-object v14, v9

    goto/16 :goto_385

    :pswitch_1e6
    move-object/from16 p3, v7

    move-object v7, v1

    move-object v1, v10

    move-object/from16 v10, p3

    move/from16 p3, v14

    move/from16 v11, v19

    move/from16 v13, v20

    const/4 v6, 0x2

    const/16 v18, 0x0

    move/from16 v19, v15

    move-wide/from16 v14, v21

    if-ne v4, v6, :cond_28e

    and-int v4, v5, v23

    if-eqz v4, :cond_207

    or-int v4, v19, v26

    .line 32
    invoke-static {v10, v3, v1}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzg([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v3

    move v5, v4

    goto :goto_220

    .line 30
    :cond_207
    invoke-static {v10, v3, v1}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzi([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v3

    iget v4, v1, Lcom/google/android/gms/internal/play_billing/zzfd;->zza:I

    if-ltz v4, :cond_22f

    or-int v5, v19, v26

    if-nez v4, :cond_216

    .line 288
    iput-object v9, v1, Lcom/google/android/gms/internal/play_billing/zzfd;->zzc:Ljava/lang/Object;

    goto :goto_220

    :cond_216
    new-instance v6, Ljava/lang/String;

    .line 31
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v10, v3, v4, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v6, v1, Lcom/google/android/gms/internal/play_billing/zzfd;->zzc:Ljava/lang/Object;

    add-int/2addr v3, v4

    .line 32
    :goto_220
    iget-object v4, v1, Lcom/google/android/gms/internal/play_billing/zzfd;->zzc:Ljava/lang/Object;

    .line 33
    invoke-virtual {v7, v2, v14, v15, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v4, v10

    move-object v10, v1

    move-object v1, v7

    move-object v7, v4

    move/from16 v14, p3

    move/from16 v8, p4

    goto/16 :goto_28b

    .line 30
    :cond_22f
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzhb;

    .line 287
    invoke-direct {v1, v8}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    .line 288
    throw v1

    :pswitch_235
    move-object/from16 p3, v7

    move-object v7, v1

    move-object v1, v10

    move-object/from16 v10, p3

    move/from16 p3, v14

    move/from16 v11, v19

    move/from16 v13, v20

    const/16 v18, 0x0

    move/from16 v19, v15

    move-wide/from16 v14, v21

    if-nez v4, :cond_28e

    or-int v4, v19, v26

    .line 34
    invoke-static {v10, v3, v1}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzl([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v3

    iget-wide v5, v1, Lcom/google/android/gms/internal/play_billing/zzfd;->zzb:J

    cmp-long v5, v5, v24

    if-eqz v5, :cond_258

    move/from16 v5, v28

    goto :goto_25a

    :cond_258
    move/from16 v5, v18

    .line 35
    :goto_25a
    invoke-static {v2, v14, v15, v5}, Lcom/google/android/gms/internal/play_billing/zzix;->zzk(Ljava/lang/Object;JZ)V

    move-object v5, v10

    move-object v10, v1

    move-object v1, v7

    goto/16 :goto_2e7

    :pswitch_262
    move-object/from16 p3, v7

    move-object v7, v1

    move-object v1, v10

    move-object/from16 v10, p3

    move/from16 p3, v14

    move/from16 v11, v19

    move/from16 v13, v20

    const/4 v5, 0x5

    const/16 v18, 0x0

    move/from16 v19, v15

    move-wide/from16 v14, v21

    if-ne v4, v5, :cond_28e

    add-int/lit8 v4, v3, 0x4

    or-int v5, v19, v26

    .line 36
    invoke-static {v10, v3}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzb([BI)I

    move-result v3

    invoke-virtual {v7, v2, v14, v15, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move-object v3, v10

    move-object v10, v1

    move-object v1, v7

    move-object v7, v3

    move/from16 v14, p3

    move/from16 v8, p4

    move v3, v4

    :goto_28b
    move v15, v5

    goto/16 :goto_2ed

    :cond_28e
    move-object v14, v2

    move-object v15, v7

    goto/16 :goto_385

    :pswitch_292
    move-object/from16 p3, v7

    move-object v7, v1

    move-object v1, v10

    move-object/from16 v10, p3

    move/from16 p3, v14

    move/from16 v11, v19

    move/from16 v13, v20

    move/from16 v5, v28

    const/16 v18, 0x0

    move/from16 v19, v15

    move-wide/from16 v14, v21

    if-ne v4, v5, :cond_2c0

    add-int/lit8 v8, v3, 0x8

    or-int v9, v19, v26

    .line 37
    invoke-static {v10, v3}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzp([BI)J

    move-result-wide v5

    move-object v3, v7

    move-object v7, v1

    move-object v1, v3

    move-wide v3, v14

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move-object v3, v10

    move-object v10, v7

    move-object v7, v3

    move/from16 v14, p3

    move v3, v8

    move v15, v9

    goto/16 :goto_318

    :cond_2c0
    move-object/from16 v33, v7

    move-object v7, v1

    move-object/from16 v1, v33

    goto/16 :goto_322

    :pswitch_2c7
    move-object/from16 p3, v10

    move-object v10, v7

    move-object/from16 v7, p3

    move/from16 p3, v14

    move/from16 v11, v19

    move/from16 v13, v20

    const/16 v18, 0x0

    move/from16 v19, v15

    move-wide/from16 v14, v21

    if-nez v4, :cond_322

    or-int v4, v19, v26

    .line 38
    invoke-static {v10, v3, v7}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzi([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v3

    iget v5, v7, Lcom/google/android/gms/internal/play_billing/zzfd;->zza:I

    .line 39
    invoke-virtual {v1, v2, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move-object v5, v10

    move-object v10, v7

    :goto_2e7
    move-object v7, v5

    move/from16 v14, p3

    move/from16 v8, p4

    move v15, v4

    :goto_2ed
    move v6, v11

    move v4, v12

    move v5, v13

    goto/16 :goto_18

    :pswitch_2f2
    move-object/from16 p3, v10

    move-object v10, v7

    move-object/from16 v7, p3

    move/from16 p3, v14

    move/from16 v11, v19

    move/from16 v13, v20

    const/16 v18, 0x0

    move/from16 v19, v15

    move-wide/from16 v14, v21

    if-nez v4, :cond_322

    or-int v8, v19, v26

    .line 40
    invoke-static {v10, v3, v7}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzl([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v9

    iget-wide v5, v7, Lcom/google/android/gms/internal/play_billing/zzfd;->zzb:J

    move-wide v3, v14

    .line 41
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move-object v3, v10

    move-object v10, v7

    move-object v7, v3

    move/from16 v14, p3

    move v15, v8

    move v3, v9

    :goto_318
    move v6, v11

    move v4, v12

    move v5, v13

    const v16, 0xfffff

    :goto_31e
    move/from16 v8, p4

    goto/16 :goto_1b

    :cond_322
    :goto_322
    move-object v15, v1

    move-object v14, v2

    goto/16 :goto_385

    :pswitch_326
    move-object/from16 p3, v10

    move-object v10, v7

    move-object/from16 v7, p3

    move/from16 p3, v14

    move/from16 v11, v19

    move/from16 v13, v20

    const/4 v5, 0x5

    const/16 v18, 0x0

    move-object v14, v2

    move/from16 v19, v15

    move-object v15, v1

    move-wide/from16 v1, v21

    if-ne v4, v5, :cond_385

    add-int/lit8 v4, v3, 0x4

    or-int v5, v19, v26

    .line 42
    invoke-static {v10, v3}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzb([BI)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    .line 43
    invoke-static {v14, v1, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzix;->zzm(Ljava/lang/Object;JF)V

    goto :goto_372

    :pswitch_34c
    move-object/from16 p3, v10

    move-object v10, v7

    move-object/from16 v7, p3

    move/from16 p3, v14

    move/from16 v11, v19

    move/from16 v13, v20

    move/from16 v5, v28

    const/16 v18, 0x0

    move-object v14, v2

    move/from16 v19, v15

    move-object v15, v1

    move-wide/from16 v1, v21

    if-ne v4, v5, :cond_385

    add-int/lit8 v4, v3, 0x8

    or-int v5, v19, v26

    .line 44
    invoke-static {v10, v3}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzp([BI)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    .line 45
    invoke-static {v14, v1, v2, v8, v9}, Lcom/google/android/gms/internal/play_billing/zzix;->zzl(Ljava/lang/Object;JD)V

    :goto_372
    move-object v1, v10

    move-object v10, v7

    move-object v7, v1

    move/from16 v8, p4

    move v3, v4

    move v6, v11

    move v4, v12

    move-object v2, v14

    move-object v1, v15

    const v16, 0xfffff

    move/from16 v14, p3

    move v15, v5

    move v5, v13

    goto/16 :goto_1b

    :cond_385
    :goto_385
    move-object/from16 v7, p2

    move-object/from16 v8, p6

    move-object v9, v0

    move-object v10, v14

    move/from16 v20, v19

    move/from16 v19, p3

    move v14, v11

    move/from16 v11, p5

    goto/16 :goto_e09

    :cond_394
    move-object v7, v1

    move-object v10, v2

    move-object/from16 v29, v13

    move/from16 v11, v19

    move/from16 v13, v20

    move-wide/from16 v1, v21

    const/16 v18, 0x0

    move/from16 v19, v3

    const/16 v3, 0x1b

    if-ne v6, v3, :cond_401

    const/4 v3, 0x2

    if-ne v4, v3, :cond_3ea

    .line 46
    invoke-virtual {v7, v10, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/play_billing/zzgu;

    .line 47
    invoke-interface {v3}, Lcom/google/android/gms/internal/play_billing/zzgu;->zzc()Z

    move-result v4

    if-nez v4, :cond_3c6

    .line 48
    invoke-interface {v3}, Lcom/google/android/gms/internal/play_billing/zzgu;->size()I

    move-result v4

    if-nez v4, :cond_3be

    const/16 v4, 0xa

    goto :goto_3bf

    :cond_3be
    add-int/2addr v4, v4

    .line 49
    :goto_3bf
    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzgu;->zzd(I)Lcom/google/android/gms/internal/play_billing/zzgu;

    move-result-object v3

    .line 50
    invoke-virtual {v7, v10, v1, v2, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_3c6
    move-object v6, v3

    .line 51
    invoke-direct {v0, v13}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzt(I)Lcom/google/android/gms/internal/play_billing/zzib;

    move-result-object v1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move v2, v11

    move/from16 v4, v19

    move-object v11, v7

    move-object/from16 v7, p6

    .line 52
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/play_billing/zzfe;->zze(Lcom/google/android/gms/internal/play_billing/zzib;I[BIILcom/google/android/gms/internal/play_billing/zzgu;Lcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v1

    move-object v7, v3

    move v3, v2

    move/from16 v8, p4

    move v6, v3

    move-object v2, v10

    move v4, v12

    move v5, v13

    const v16, 0xfffff

    move-object/from16 v10, p6

    move v3, v1

    move-object v1, v11

    goto/16 :goto_1b

    :cond_3ea
    move v3, v11

    move-object v11, v7

    move-object/from16 v4, p6

    move-object v9, v0

    move/from16 v22, v12

    move/from16 v20, v15

    move/from16 v8, v19

    move-object v15, v11

    move/from16 v19, v14

    move v14, v3

    move-object/from16 v3, p2

    move/from16 v6, p4

    move-object/from16 v1, v29

    goto/16 :goto_bbe

    :cond_401
    move-object/from16 v21, v9

    move v3, v11

    move/from16 v22, v12

    move/from16 v20, v15

    move/from16 v9, v19

    move-object/from16 v15, p6

    move-object v11, v7

    move/from16 v19, v14

    move-object/from16 v7, p2

    move/from16 v14, p4

    const/16 v12, 0x31

    const-string v0, "Protocol message had invalid UTF-8."

    move-object/from16 v26, v0

    const-string v0, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    if-gt v6, v12, :cond_aac

    move v12, v6

    int-to-long v5, v5

    .line 53
    invoke-virtual {v11, v10, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v23

    move-wide/from16 v30, v5

    move-object/from16 v5, v23

    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzgu;

    .line 54
    invoke-interface {v5}, Lcom/google/android/gms/internal/play_billing/zzgu;->zzc()Z

    move-result v6

    if-nez v6, :cond_43b

    .line 55
    invoke-interface {v5}, Lcom/google/android/gms/internal/play_billing/zzgu;->size()I

    move-result v6

    add-int/2addr v6, v6

    .line 56
    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/play_billing/zzgu;->zzd(I)Lcom/google/android/gms/internal/play_billing/zzgu;

    move-result-object v5

    .line 57
    invoke-virtual {v11, v10, v1, v2, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_43b
    packed-switch v12, :pswitch_data_ef2

    move-object v2, v7

    move-object/from16 v32, v11

    move-object v6, v15

    const/4 v1, 0x3

    move-object v7, v5

    move v5, v14

    move v14, v3

    move v3, v9

    move-object/from16 v9, p0

    if-ne v4, v1, :cond_a85

    and-int/lit8 v0, v14, -0x8

    or-int/lit8 v0, v0, 0x4

    .line 58
    invoke-direct {v9, v13}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzt(I)Lcom/google/android/gms/internal/play_billing/zzib;

    move-result-object v1

    move v4, v5

    move v5, v0

    .line 59
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzc(Lcom/google/android/gms/internal/play_billing/zzib;[BIIILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v0

    move v8, v3

    move-object v3, v1

    move v1, v5

    move v5, v4

    iget-object v4, v6, Lcom/google/android/gms/internal/play_billing/zzfd;->zzc:Ljava/lang/Object;

    .line 60
    invoke-interface {v7, v4}, Lcom/google/android/gms/internal/play_billing/zzgu;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a67

    :pswitch_464
    const/4 v6, 0x2

    if-ne v4, v6, :cond_4a3

    .line 64
    sget v1, Lcom/google/android/gms/internal/play_billing/zzfe;->zza:I

    .line 65
    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzhj;

    .line 66
    invoke-static {v7, v9, v15}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzi([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v1

    iget v2, v15, Lcom/google/android/gms/internal/play_billing/zzfd;->zza:I

    if-ltz v2, :cond_49d

    .line 67
    array-length v4, v7

    sub-int/2addr v4, v1

    if-gt v2, v4, :cond_497

    add-int/2addr v2, v1

    :goto_478
    if-ge v1, v2, :cond_48c

    .line 68
    invoke-static {v7, v1, v15}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzl([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v1

    move-object/from16 v32, v11

    iget-wide v11, v15, Lcom/google/android/gms/internal/play_billing/zzfd;->zzb:J

    .line 69
    invoke-static {v11, v12}, Lcom/google/android/gms/internal/play_billing/zzft;->zzc(J)J

    move-result-wide v11

    invoke-virtual {v5, v11, v12}, Lcom/google/android/gms/internal/play_billing/zzhj;->zzf(J)V

    move-object/from16 v11, v32

    goto :goto_478

    :cond_48c
    move-object/from16 v32, v11

    if-ne v1, v2, :cond_491

    goto :goto_4f8

    .line 356
    :cond_491
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzhb;

    .line 293
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    .line 294
    throw v1

    .line 67
    :cond_497
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzhb;

    .line 291
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    .line 292
    throw v1

    .line 66
    :cond_49d
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    .line 289
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    .line 290
    throw v0

    :cond_4a3
    move-object/from16 v32, v11

    if-nez v4, :cond_53f

    .line 70
    sget v0, Lcom/google/android/gms/internal/play_billing/zzfe;->zza:I

    .line 71
    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzhj;

    .line 72
    invoke-static {v7, v9, v15}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzl([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v0

    iget-wide v1, v15, Lcom/google/android/gms/internal/play_billing/zzfd;->zzb:J

    .line 73
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzft;->zzc(J)J

    move-result-wide v1

    invoke-virtual {v5, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzhj;->zzf(J)V

    :goto_4b8
    if-ge v0, v14, :cond_537

    .line 74
    invoke-static {v7, v0, v15}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzi([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v1

    iget v2, v15, Lcom/google/android/gms/internal/play_billing/zzfd;->zza:I

    if-ne v3, v2, :cond_537

    .line 75
    invoke-static {v7, v1, v15}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzl([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v0

    iget-wide v1, v15, Lcom/google/android/gms/internal/play_billing/zzfd;->zzb:J

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzft;->zzc(J)J

    move-result-wide v1

    .line 76
    invoke-virtual {v5, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzhj;->zzf(J)V

    goto :goto_4b8

    :pswitch_4d0
    move-object/from16 v32, v11

    const/4 v6, 0x2

    if-ne v4, v6, :cond_50c

    .line 77
    sget v1, Lcom/google/android/gms/internal/play_billing/zzfe;->zza:I

    .line 78
    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzgq;

    .line 79
    invoke-static {v7, v9, v15}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzi([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v1

    iget v2, v15, Lcom/google/android/gms/internal/play_billing/zzfd;->zza:I

    if-ltz v2, :cond_506

    .line 80
    array-length v4, v7

    sub-int/2addr v4, v1

    if-gt v2, v4, :cond_500

    add-int/2addr v2, v1

    :goto_4e6
    if-ge v1, v2, :cond_4f6

    .line 81
    invoke-static {v7, v1, v15}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzi([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v1

    iget v4, v15, Lcom/google/android/gms/internal/play_billing/zzfd;->zza:I

    .line 82
    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzft;->zzb(I)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/play_billing/zzgq;->zzh(I)V

    goto :goto_4e6

    :cond_4f6
    if-ne v1, v2, :cond_4fa

    :goto_4f8
    move v0, v1

    goto :goto_537

    .line 294
    :cond_4fa
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzhb;

    .line 299
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    .line 300
    throw v1

    .line 80
    :cond_500
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzhb;

    .line 297
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    .line 298
    throw v1

    .line 79
    :cond_506
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    .line 295
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    .line 296
    throw v0

    :cond_50c
    if-nez v4, :cond_53f

    .line 83
    sget v0, Lcom/google/android/gms/internal/play_billing/zzfe;->zza:I

    .line 84
    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzgq;

    .line 85
    invoke-static {v7, v9, v15}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzi([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v0

    iget v1, v15, Lcom/google/android/gms/internal/play_billing/zzfd;->zza:I

    .line 86
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzft;->zzb(I)I

    move-result v1

    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/play_billing/zzgq;->zzh(I)V

    :goto_51f
    if-ge v0, v14, :cond_537

    .line 87
    invoke-static {v7, v0, v15}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzi([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v1

    iget v2, v15, Lcom/google/android/gms/internal/play_billing/zzfd;->zza:I

    if-ne v3, v2, :cond_537

    .line 88
    invoke-static {v7, v1, v15}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzi([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v0

    iget v1, v15, Lcom/google/android/gms/internal/play_billing/zzfd;->zza:I

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzft;->zzb(I)I

    move-result v1

    .line 89
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/play_billing/zzgq;->zzh(I)V

    goto :goto_51f

    :cond_537
    :goto_537
    move v14, v3

    move-object v3, v7

    move v8, v9

    move-object v6, v15

    move-object/from16 v9, p0

    goto/16 :goto_a89

    :cond_53f
    move v14, v3

    move-object v3, v7

    move v8, v9

    move-object v6, v15

    move-object/from16 v9, p0

    goto/16 :goto_a88

    :pswitch_547
    move-object/from16 v32, v11

    const/4 v6, 0x2

    if-ne v4, v6, :cond_559

    .line 90
    invoke-static {v7, v9, v5, v15}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzf([BILcom/google/android/gms/internal/play_billing/zzgu;Lcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v0

    move v1, v3

    move-object v2, v7

    move v3, v9

    move-object v6, v15

    move-object v7, v5

    move v5, v14

    :goto_556
    move-object/from16 v9, p0

    goto :goto_567

    :cond_559
    if-nez v4, :cond_5f0

    move v1, v3

    move-object v2, v7

    move v3, v9

    move v4, v14

    move-object v6, v15

    .line 91
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzk(I[BIILcom/google/android/gms/internal/play_billing/zzgu;Lcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v0

    move-object v7, v5

    move v5, v4

    goto :goto_556

    .line 92
    :goto_567
    invoke-direct {v9, v13}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzs(I)Lcom/google/android/gms/internal/play_billing/zzgs;

    move-result-object v4

    iget-object v8, v9, Lcom/google/android/gms/internal/play_billing/zzhu;->zzl:Lcom/google/android/gms/internal/play_billing/zziq;

    .line 93
    sget v11, Lcom/google/android/gms/internal/play_billing/zzic;->zza:I

    if-eqz v4, :cond_5e8

    .line 94
    instance-of v11, v7, Ljava/util/RandomAccess;

    if-eqz v11, :cond_5c0

    .line 95
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    move-object/from16 v15, v17

    move/from16 v12, v18

    move v14, v12

    :goto_57e
    if-ge v12, v11, :cond_5b2

    .line 96
    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    move/from16 p3, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/play_billing/zzgs;->zza(I)Z

    move-result v21

    if-eqz v21, :cond_5a2

    if-eq v12, v14, :cond_59b

    .line 97
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v14, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_59b
    add-int/lit8 v14, v14, 0x1

    move/from16 v21, v12

    move/from16 v12, v22

    goto :goto_5aa

    :cond_5a2
    move/from16 v21, v12

    move/from16 v12, v22

    .line 98
    invoke-static {v10, v12, v0, v15, v8}, Lcom/google/android/gms/internal/play_billing/zzic;->zzn(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zziq;)Ljava/lang/Object;

    move-result-object v15

    :goto_5aa
    add-int/lit8 v0, v21, 0x1

    move/from16 v22, v12

    move v12, v0

    move/from16 v0, p3

    goto :goto_57e

    :cond_5b2
    move/from16 p3, v0

    move/from16 v12, v22

    if-eq v14, v11, :cond_5ec

    .line 99
    invoke-interface {v7, v14, v11}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_5ec

    :cond_5c0
    move/from16 p3, v0

    move/from16 v12, v22

    .line 100
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object/from16 v7, v17

    :cond_5ca
    :goto_5ca
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5ec

    .line 101
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v4, v11}, Lcom/google/android/gms/internal/play_billing/zzgs;->zza(I)Z

    move-result v14

    if-nez v14, :cond_5ca

    .line 102
    invoke-static {v10, v12, v11, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzic;->zzn(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zziq;)Ljava/lang/Object;

    move-result-object v7

    .line 103
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_5ca

    :cond_5e8
    move/from16 p3, v0

    move/from16 v12, v22

    :cond_5ec
    :goto_5ec
    move/from16 v0, p3

    goto/16 :goto_8e4

    :cond_5f0
    move v1, v3

    move v3, v9

    move v5, v14

    move-object/from16 v9, p0

    move v14, v1

    move v8, v3

    move-object v3, v7

    move-object v6, v15

    goto/16 :goto_a88

    :pswitch_5fb
    move v1, v3

    move-object v2, v7

    move v3, v9

    move-object/from16 v32, v11

    move-object v6, v15

    move/from16 v12, v22

    const/4 v11, 0x2

    move-object/from16 v9, p0

    move-object v7, v5

    move v5, v14

    if-ne v4, v11, :cond_75e

    .line 104
    invoke-static {v2, v3, v6}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzi([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v4

    iget v11, v6, Lcom/google/android/gms/internal/play_billing/zzfd;->zza:I

    if-ltz v11, :cond_65e

    .line 105
    array-length v14, v2

    sub-int/2addr v14, v4

    if-gt v11, v14, :cond_658

    if-nez v11, :cond_61e

    .line 106
    sget-object v11, Lcom/google/android/gms/internal/play_billing/zzfp;->zza:Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-interface {v7, v11}, Lcom/google/android/gms/internal/play_billing/zzgu;->add(Ljava/lang/Object;)Z

    goto :goto_626

    .line 107
    :cond_61e
    invoke-static {v2, v4, v11}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzk([BII)Lcom/google/android/gms/internal/play_billing/zzfp;

    move-result-object v14

    invoke-interface {v7, v14}, Lcom/google/android/gms/internal/play_billing/zzgu;->add(Ljava/lang/Object;)Z

    :goto_625
    add-int/2addr v4, v11

    :goto_626
    if-ge v4, v5, :cond_7e4

    .line 108
    invoke-static {v2, v4, v6}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzi([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v11

    iget v14, v6, Lcom/google/android/gms/internal/play_billing/zzfd;->zza:I

    if-ne v1, v14, :cond_7e4

    .line 109
    invoke-static {v2, v11, v6}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzi([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v4

    iget v11, v6, Lcom/google/android/gms/internal/play_billing/zzfd;->zza:I

    if-ltz v11, :cond_652

    .line 110
    array-length v14, v2

    sub-int/2addr v14, v4

    if-gt v11, v14, :cond_64c

    if-nez v11, :cond_644

    .line 308
    sget-object v11, Lcom/google/android/gms/internal/play_billing/zzfp;->zza:Lcom/google/android/gms/internal/play_billing/zzfp;

    .line 111
    invoke-interface {v7, v11}, Lcom/google/android/gms/internal/play_billing/zzgu;->add(Ljava/lang/Object;)Z

    goto :goto_626

    .line 112
    :cond_644
    invoke-static {v2, v4, v11}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzk([BII)Lcom/google/android/gms/internal/play_billing/zzfp;

    move-result-object v14

    invoke-interface {v7, v14}, Lcom/google/android/gms/internal/play_billing/zzgu;->add(Ljava/lang/Object;)Z

    goto :goto_625

    .line 110
    :cond_64c
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzhb;

    .line 307
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    .line 308
    throw v1

    .line 109
    :cond_652
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    .line 305
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    .line 306
    throw v0

    .line 105
    :cond_658
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzhb;

    .line 303
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    .line 304
    throw v1

    .line 104
    :cond_65e
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    .line 301
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    .line 302
    throw v0

    :pswitch_664
    move v1, v3

    move-object v2, v7

    move v3, v9

    move-object/from16 v32, v11

    move-object v6, v15

    move/from16 v12, v22

    const/4 v11, 0x2

    move-object/from16 v9, p0

    move-object v7, v5

    move v5, v14

    if-ne v4, v11, :cond_75e

    move v11, v1

    .line 113
    invoke-direct {v9, v13}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzt(I)Lcom/google/android/gms/internal/play_billing/zzib;

    move-result-object v1

    move-object v4, v7

    move-object v7, v6

    move-object v6, v4

    move v4, v3

    move-object v3, v2

    move v2, v11

    .line 114
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/play_billing/zzfe;->zze(Lcom/google/android/gms/internal/play_billing/zzib;I[BIILcom/google/android/gms/internal/play_billing/zzgu;Lcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v0

    move v1, v2

    move-object v2, v3

    move v14, v1

    move v8, v4

    move-object v6, v7

    move/from16 v22, v12

    goto/16 :goto_a89

    :pswitch_68b
    move v1, v3

    move-object v2, v7

    move v3, v9

    move-object/from16 v32, v11

    move-object v6, v15

    move/from16 v12, v22

    const/4 v11, 0x2

    move-object/from16 v9, p0

    move-object v7, v5

    move v5, v14

    if-ne v4, v11, :cond_75e

    const-wide/32 v14, 0x20000000

    and-long v14, v30, v14

    cmp-long v0, v14, v24

    if-nez v0, :cond_6ef

    .line 115
    invoke-static {v2, v3, v6}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzi([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v0

    iget v4, v6, Lcom/google/android/gms/internal/play_billing/zzfd;->zza:I

    if-ltz v4, :cond_6e9

    if-nez v4, :cond_6b3

    move-object/from16 v11, v21

    .line 116
    invoke-interface {v7, v11}, Lcom/google/android/gms/internal/play_billing/zzgu;->add(Ljava/lang/Object;)Z

    goto :goto_6c0

    :cond_6b3
    move-object/from16 v11, v21

    .line 123
    new-instance v14, Ljava/lang/String;

    .line 117
    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v14, v2, v0, v4, v15}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 118
    invoke-interface {v7, v14}, Lcom/google/android/gms/internal/play_billing/zzgu;->add(Ljava/lang/Object;)Z

    :goto_6bf
    add-int/2addr v0, v4

    :goto_6c0
    if-ge v0, v5, :cond_8e4

    .line 119
    invoke-static {v2, v0, v6}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzi([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v4

    iget v14, v6, Lcom/google/android/gms/internal/play_billing/zzfd;->zza:I

    if-ne v1, v14, :cond_8e4

    .line 120
    invoke-static {v2, v4, v6}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzi([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v0

    iget v4, v6, Lcom/google/android/gms/internal/play_billing/zzfd;->zza:I

    if-ltz v4, :cond_6e3

    if-nez v4, :cond_6d8

    .line 121
    invoke-interface {v7, v11}, Lcom/google/android/gms/internal/play_billing/zzgu;->add(Ljava/lang/Object;)Z

    goto :goto_6c0

    :cond_6d8
    new-instance v14, Ljava/lang/String;

    .line 122
    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v14, v2, v0, v4, v15}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 123
    invoke-interface {v7, v14}, Lcom/google/android/gms/internal/play_billing/zzgu;->add(Ljava/lang/Object;)Z

    goto :goto_6bf

    .line 120
    :cond_6e3
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    .line 311
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    .line 312
    throw v0

    .line 115
    :cond_6e9
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    .line 309
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    .line 310
    throw v0

    :cond_6ef
    move-object/from16 v11, v21

    .line 124
    invoke-static {v2, v3, v6}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzi([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v0

    iget v4, v6, Lcom/google/android/gms/internal/play_billing/zzfd;->zza:I

    if-ltz v4, :cond_758

    if-nez v4, :cond_6ff

    .line 125
    invoke-interface {v7, v11}, Lcom/google/android/gms/internal/play_billing/zzgu;->add(Ljava/lang/Object;)Z

    goto :goto_715

    :cond_6ff
    add-int v14, v0, v4

    .line 126
    invoke-static {v2, v0, v14}, Lcom/google/android/gms/internal/play_billing/zzjc;->zzb([BII)Z

    move-result v15

    if-eqz v15, :cond_750

    .line 316
    new-instance v15, Ljava/lang/String;

    move/from16 p3, v14

    .line 127
    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v15, v2, v0, v4, v14}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 128
    invoke-interface {v7, v15}, Lcom/google/android/gms/internal/play_billing/zzgu;->add(Ljava/lang/Object;)Z

    :goto_713
    move/from16 v0, p3

    :goto_715
    if-ge v0, v5, :cond_8e4

    .line 129
    invoke-static {v2, v0, v6}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzi([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v4

    iget v14, v6, Lcom/google/android/gms/internal/play_billing/zzfd;->zza:I

    if-ne v1, v14, :cond_8e4

    .line 130
    invoke-static {v2, v4, v6}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzi([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v0

    iget v4, v6, Lcom/google/android/gms/internal/play_billing/zzfd;->zza:I

    if-ltz v4, :cond_74a

    if-nez v4, :cond_72d

    .line 131
    invoke-interface {v7, v11}, Lcom/google/android/gms/internal/play_billing/zzgu;->add(Ljava/lang/Object;)Z

    goto :goto_715

    :cond_72d
    add-int v14, v0, v4

    .line 132
    invoke-static {v2, v0, v14}, Lcom/google/android/gms/internal/play_billing/zzjc;->zzb([BII)Z

    move-result v15

    if-eqz v15, :cond_742

    .line 320
    new-instance v15, Ljava/lang/String;

    move/from16 p3, v14

    .line 133
    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v15, v2, v0, v4, v14}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 134
    invoke-interface {v7, v15}, Lcom/google/android/gms/internal/play_billing/zzgu;->add(Ljava/lang/Object;)Z

    goto :goto_713

    .line 132
    :cond_742
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    move-object/from16 v7, v26

    .line 319
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    .line 320
    throw v0

    .line 130
    :cond_74a
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    .line 317
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    .line 318
    throw v0

    :cond_750
    move-object/from16 v7, v26

    .line 126
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    .line 315
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    .line 316
    throw v0

    .line 124
    :cond_758
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    .line 313
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    .line 314
    throw v0

    :cond_75e
    move v14, v1

    move v8, v3

    move/from16 v22, v12

    :goto_762
    move-object v3, v2

    goto/16 :goto_a88

    :pswitch_765
    move v1, v3

    move-object v2, v7

    move v3, v9

    move-object/from16 v32, v11

    move-object v6, v15

    move/from16 v12, v22

    const/4 v11, 0x2

    move-object/from16 v9, p0

    move-object v7, v5

    move v5, v14

    if-ne v4, v11, :cond_7b0

    .line 135
    sget v4, Lcom/google/android/gms/internal/play_billing/zzfe;->zza:I

    .line 136
    move-object v4, v7

    check-cast v4, Lcom/google/android/gms/internal/play_billing/zzff;

    .line 137
    invoke-static {v2, v3, v6}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzi([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v7

    iget v11, v6, Lcom/google/android/gms/internal/play_billing/zzfd;->zza:I

    if-ltz v11, :cond_7aa

    .line 138
    array-length v8, v2

    sub-int/2addr v8, v7

    if-gt v11, v8, :cond_7a4

    add-int/2addr v11, v7

    :goto_786
    if-ge v7, v11, :cond_79a

    .line 139
    invoke-static {v2, v7, v6}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzl([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v7

    iget-wide v14, v6, Lcom/google/android/gms/internal/play_billing/zzfd;->zzb:J

    cmp-long v8, v14, v24

    if-eqz v8, :cond_794

    const/4 v8, 0x1

    goto :goto_796

    :cond_794
    move/from16 v8, v18

    .line 140
    :goto_796
    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/play_billing/zzff;->zze(Z)V

    goto :goto_786

    :cond_79a
    if-ne v7, v11, :cond_79e

    goto/16 :goto_896

    .line 300
    :cond_79e
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzhb;

    .line 325
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    .line 326
    throw v1

    .line 138
    :cond_7a4
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzhb;

    .line 323
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    .line 324
    throw v1

    .line 137
    :cond_7aa
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    .line 321
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    .line 322
    throw v0

    :cond_7b0
    if-nez v4, :cond_75e

    .line 141
    sget v0, Lcom/google/android/gms/internal/play_billing/zzfe;->zza:I

    .line 142
    move-object v0, v7

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzff;

    .line 143
    invoke-static {v2, v3, v6}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzl([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v4

    iget-wide v7, v6, Lcom/google/android/gms/internal/play_billing/zzfd;->zzb:J

    cmp-long v7, v7, v24

    if-eqz v7, :cond_7c3

    const/4 v7, 0x1

    goto :goto_7c5

    :cond_7c3
    move/from16 v7, v18

    .line 144
    :goto_7c5
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/play_billing/zzff;->zze(Z)V

    :goto_7c8
    if-ge v4, v5, :cond_7e4

    .line 145
    invoke-static {v2, v4, v6}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzi([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v7

    iget v8, v6, Lcom/google/android/gms/internal/play_billing/zzfd;->zza:I

    if-ne v1, v8, :cond_7e4

    .line 146
    invoke-static {v2, v7, v6}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzl([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v4

    iget-wide v7, v6, Lcom/google/android/gms/internal/play_billing/zzfd;->zzb:J

    cmp-long v7, v7, v24

    if-eqz v7, :cond_7de

    const/4 v7, 0x1

    goto :goto_7e0

    :cond_7de
    move/from16 v7, v18

    .line 147
    :goto_7e0
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/play_billing/zzff;->zze(Z)V

    goto :goto_7c8

    :cond_7e4
    move v14, v1

    move v8, v3

    move v0, v4

    goto/16 :goto_8e6

    :pswitch_7e9
    move v1, v3

    move-object v2, v7

    move v3, v9

    move-object/from16 v32, v11

    move-object v6, v15

    move/from16 v12, v22

    const/4 v11, 0x2

    move-object/from16 v9, p0

    move-object v7, v5

    move v5, v14

    if-ne v4, v11, :cond_837

    .line 148
    sget v4, Lcom/google/android/gms/internal/play_billing/zzfe;->zza:I

    .line 149
    move-object v4, v7

    check-cast v4, Lcom/google/android/gms/internal/play_billing/zzgq;

    .line 150
    invoke-static {v2, v3, v6}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzi([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v7

    iget v11, v6, Lcom/google/android/gms/internal/play_billing/zzfd;->zza:I

    if-ltz v11, :cond_831

    .line 151
    array-length v8, v2

    sub-int/2addr v8, v7

    if-gt v11, v8, :cond_82b

    add-int v8, v7, v11

    .line 152
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/zzgq;->size()I

    move-result v14

    shr-int/lit8 v11, v11, 0x2

    add-int/2addr v14, v11

    invoke-virtual {v4, v14}, Lcom/google/android/gms/internal/play_billing/zzgq;->zzi(I)V

    :goto_815
    if-ge v7, v8, :cond_821

    .line 153
    invoke-static {v2, v7}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzb([BI)I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/google/android/gms/internal/play_billing/zzgq;->zzh(I)V

    add-int/lit8 v7, v7, 0x4

    goto :goto_815

    :cond_821
    if-ne v7, v8, :cond_825

    goto/16 :goto_896

    .line 326
    :cond_825
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzhb;

    .line 331
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    .line 332
    throw v1

    .line 151
    :cond_82b
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzhb;

    .line 329
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    .line 330
    throw v1

    .line 150
    :cond_831
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    .line 327
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    .line 328
    throw v0

    :cond_837
    const/4 v0, 0x5

    if-ne v4, v0, :cond_75e

    add-int/lit8 v0, v3, 0x4

    .line 154
    sget v4, Lcom/google/android/gms/internal/play_billing/zzfe;->zza:I

    .line 155
    move-object v4, v7

    check-cast v4, Lcom/google/android/gms/internal/play_billing/zzgq;

    .line 156
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzb([BI)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/play_billing/zzgq;->zzh(I)V

    :goto_848
    if-ge v0, v5, :cond_8e4

    .line 157
    invoke-static {v2, v0, v6}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzi([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v7

    iget v8, v6, Lcom/google/android/gms/internal/play_billing/zzfd;->zza:I

    if-ne v1, v8, :cond_8e4

    .line 158
    invoke-static {v2, v7}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzb([BI)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/play_billing/zzgq;->zzh(I)V

    add-int/lit8 v0, v7, 0x4

    goto :goto_848

    :pswitch_85c
    move v1, v3

    move-object v2, v7

    move v3, v9

    move-object/from16 v32, v11

    move-object v6, v15

    move/from16 v12, v22

    const/4 v11, 0x2

    move-object/from16 v9, p0

    move-object v7, v5

    move v5, v14

    if-ne v4, v11, :cond_8ac

    .line 159
    sget v4, Lcom/google/android/gms/internal/play_billing/zzfe;->zza:I

    .line 160
    move-object v4, v7

    check-cast v4, Lcom/google/android/gms/internal/play_billing/zzhj;

    .line 161
    invoke-static {v2, v3, v6}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzi([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v7

    iget v11, v6, Lcom/google/android/gms/internal/play_billing/zzfd;->zza:I

    if-ltz v11, :cond_8a6

    .line 162
    array-length v8, v2

    sub-int/2addr v8, v7

    if-gt v11, v8, :cond_8a0

    add-int v8, v7, v11

    .line 163
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/zzhj;->size()I

    move-result v14

    shr-int/lit8 v11, v11, 0x3

    add-int/2addr v14, v11

    invoke-virtual {v4, v14}, Lcom/google/android/gms/internal/play_billing/zzhj;->zzg(I)V

    :goto_888
    if-ge v7, v8, :cond_894

    .line 164
    invoke-static {v2, v7}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzp([BI)J

    move-result-wide v14

    invoke-virtual {v4, v14, v15}, Lcom/google/android/gms/internal/play_billing/zzhj;->zzf(J)V

    add-int/lit8 v7, v7, 0x8

    goto :goto_888

    :cond_894
    if-ne v7, v8, :cond_89a

    :goto_896
    move v14, v1

    move v8, v3

    move v0, v7

    goto :goto_8e6

    .line 332
    :cond_89a
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzhb;

    .line 337
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    .line 338
    throw v1

    .line 162
    :cond_8a0
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzhb;

    .line 335
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    .line 336
    throw v1

    .line 161
    :cond_8a6
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    .line 333
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    .line 334
    throw v0

    :cond_8ac
    const/4 v0, 0x1

    if-ne v4, v0, :cond_75e

    add-int/lit8 v0, v3, 0x8

    .line 165
    sget v4, Lcom/google/android/gms/internal/play_billing/zzfe;->zza:I

    .line 166
    move-object v4, v7

    check-cast v4, Lcom/google/android/gms/internal/play_billing/zzhj;

    .line 167
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzp([BI)J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzhj;->zzf(J)V

    :goto_8bd
    if-ge v0, v5, :cond_8e4

    .line 168
    invoke-static {v2, v0, v6}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzi([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v7

    iget v8, v6, Lcom/google/android/gms/internal/play_billing/zzfd;->zza:I

    if-ne v1, v8, :cond_8e4

    .line 169
    invoke-static {v2, v7}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzp([BI)J

    move-result-wide v14

    invoke-virtual {v4, v14, v15}, Lcom/google/android/gms/internal/play_billing/zzhj;->zzf(J)V

    add-int/lit8 v0, v7, 0x8

    goto :goto_8bd

    :pswitch_8d1
    move v1, v3

    move-object v2, v7

    move v3, v9

    move-object/from16 v32, v11

    move-object v6, v15

    move/from16 v12, v22

    const/4 v11, 0x2

    move-object/from16 v9, p0

    move-object v7, v5

    move v5, v14

    if-ne v4, v11, :cond_8eb

    .line 170
    invoke-static {v2, v3, v7, v6}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzf([BILcom/google/android/gms/internal/play_billing/zzgu;Lcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v0

    :cond_8e4
    :goto_8e4
    move v14, v1

    :goto_8e5
    move v8, v3

    :goto_8e6
    move/from16 v22, v12

    :cond_8e8
    :goto_8e8
    move-object v3, v2

    goto/16 :goto_a89

    :cond_8eb
    if-nez v4, :cond_75e

    move v4, v5

    move-object v5, v7

    .line 171
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzk(I[BIILcom/google/android/gms/internal/play_billing/zzgu;Lcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v0

    move v14, v1

    move v5, v4

    goto :goto_8e5

    :pswitch_8f6
    move-object v2, v7

    move-object/from16 v32, v11

    move-object v6, v15

    move/from16 v12, v22

    const/4 v11, 0x2

    move-object v7, v5

    move v5, v14

    move v14, v3

    move v3, v9

    move-object/from16 v9, p0

    if-ne v4, v11, :cond_93f

    .line 172
    sget v1, Lcom/google/android/gms/internal/play_billing/zzfe;->zza:I

    .line 173
    move-object v1, v7

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzhj;

    .line 174
    invoke-static {v2, v3, v6}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzi([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v4

    iget v7, v6, Lcom/google/android/gms/internal/play_billing/zzfd;->zza:I

    if-ltz v7, :cond_939

    .line 175
    array-length v8, v2

    sub-int/2addr v8, v4

    if-gt v7, v8, :cond_933

    add-int/2addr v7, v4

    :goto_917
    if-ge v4, v7, :cond_927

    .line 176
    invoke-static {v2, v4, v6}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzl([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v4

    move/from16 v22, v12

    iget-wide v11, v6, Lcom/google/android/gms/internal/play_billing/zzfd;->zzb:J

    .line 177
    invoke-virtual {v1, v11, v12}, Lcom/google/android/gms/internal/play_billing/zzhj;->zzf(J)V

    move/from16 v12, v22

    goto :goto_917

    :cond_927
    move/from16 v22, v12

    if-ne v4, v7, :cond_92d

    goto/16 :goto_a21

    .line 338
    :cond_92d
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzhb;

    .line 343
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    .line 344
    throw v1

    .line 175
    :cond_933
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzhb;

    .line 341
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    .line 342
    throw v1

    .line 174
    :cond_939
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    .line 339
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    .line 340
    throw v0

    :cond_93f
    move/from16 v22, v12

    if-nez v4, :cond_a85

    .line 178
    sget v0, Lcom/google/android/gms/internal/play_billing/zzfe;->zza:I

    .line 179
    move-object v0, v7

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzhj;

    .line 180
    invoke-static {v2, v3, v6}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzl([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v1

    iget-wide v7, v6, Lcom/google/android/gms/internal/play_billing/zzfd;->zzb:J

    .line 181
    invoke-virtual {v0, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzhj;->zzf(J)V

    :goto_951
    if-ge v1, v5, :cond_965

    .line 182
    invoke-static {v2, v1, v6}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzi([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v4

    iget v7, v6, Lcom/google/android/gms/internal/play_billing/zzfd;->zza:I

    if-ne v14, v7, :cond_965

    .line 183
    invoke-static {v2, v4, v6}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzl([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v1

    iget-wide v7, v6, Lcom/google/android/gms/internal/play_billing/zzfd;->zzb:J

    .line 184
    invoke-virtual {v0, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzhj;->zzf(J)V

    goto :goto_951

    :cond_965
    move v0, v1

    goto/16 :goto_a64

    :pswitch_968
    move-object v2, v7

    move-object/from16 v32, v11

    move-object v6, v15

    const/4 v11, 0x2

    move-object v7, v5

    move v5, v14

    move v14, v3

    move v3, v9

    move-object/from16 v9, p0

    if-ne v4, v11, :cond_9b8

    .line 185
    sget v1, Lcom/google/android/gms/internal/play_billing/zzfe;->zza:I

    .line 186
    move-object v1, v7

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzgj;

    .line 187
    invoke-static {v2, v3, v6}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzi([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v4

    iget v7, v6, Lcom/google/android/gms/internal/play_billing/zzfd;->zza:I

    if-ltz v7, :cond_9b2

    .line 188
    array-length v8, v2

    sub-int/2addr v8, v4

    if-gt v7, v8, :cond_9ac

    add-int v8, v4, v7

    .line 189
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzgj;->size()I

    move-result v11

    shr-int/lit8 v7, v7, 0x2

    add-int/2addr v11, v7

    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/play_billing/zzgj;->zzg(I)V

    :goto_992
    if-ge v4, v8, :cond_9a2

    .line 190
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzb([BI)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    .line 191
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/play_billing/zzgj;->zzf(F)V

    add-int/lit8 v4, v4, 0x4

    goto :goto_992

    :cond_9a2
    if-ne v4, v8, :cond_9a6

    goto/16 :goto_a21

    .line 4
    :cond_9a6
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzhb;

    .line 349
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    .line 350
    throw v1

    .line 188
    :cond_9ac
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzhb;

    .line 347
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    .line 348
    throw v1

    .line 187
    :cond_9b2
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    .line 345
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    .line 346
    throw v0

    :cond_9b8
    const/4 v0, 0x5

    if-ne v4, v0, :cond_a85

    add-int/lit8 v0, v3, 0x4

    .line 192
    sget v1, Lcom/google/android/gms/internal/play_billing/zzfe;->zza:I

    .line 193
    move-object v1, v7

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzgj;

    .line 194
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzb([BI)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    .line 195
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/play_billing/zzgj;->zzf(F)V

    :goto_9cd
    if-ge v0, v5, :cond_a64

    .line 196
    invoke-static {v2, v0, v6}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzi([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v4

    iget v7, v6, Lcom/google/android/gms/internal/play_billing/zzfd;->zza:I

    if-ne v14, v7, :cond_a64

    .line 197
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzb([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 198
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzgj;->zzf(F)V

    add-int/lit8 v0, v4, 0x4

    goto :goto_9cd

    :pswitch_9e5
    move-object v2, v7

    move-object/from16 v32, v11

    move-object v6, v15

    const/4 v11, 0x2

    move-object v7, v5

    move v5, v14

    move v14, v3

    move v3, v9

    move-object/from16 v9, p0

    if-ne v4, v11, :cond_a37

    .line 199
    sget v1, Lcom/google/android/gms/internal/play_billing/zzfe;->zza:I

    .line 200
    move-object v1, v7

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzfz;

    .line 201
    invoke-static {v2, v3, v6}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzi([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v4

    iget v7, v6, Lcom/google/android/gms/internal/play_billing/zzfd;->zza:I

    if-ltz v7, :cond_a31

    .line 202
    array-length v8, v2

    sub-int/2addr v8, v4

    if-gt v7, v8, :cond_a2b

    add-int v8, v4, v7

    .line 203
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzfz;->size()I

    move-result v11

    shr-int/lit8 v7, v7, 0x3

    add-int/2addr v11, v7

    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/play_billing/zzfz;->zzg(I)V

    :goto_a0f
    if-ge v4, v8, :cond_a1f

    .line 204
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzp([BI)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v11

    .line 205
    invoke-virtual {v1, v11, v12}, Lcom/google/android/gms/internal/play_billing/zzfz;->zzf(D)V

    add-int/lit8 v4, v4, 0x8

    goto :goto_a0f

    :cond_a1f
    if-ne v4, v8, :cond_a25

    :goto_a21
    move v8, v3

    move v0, v4

    goto/16 :goto_8e8

    .line 373
    :cond_a25
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzhb;

    .line 355
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    .line 356
    throw v1

    .line 202
    :cond_a2b
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzhb;

    .line 353
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    .line 354
    throw v1

    .line 201
    :cond_a31
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    .line 351
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    .line 352
    throw v0

    :cond_a37
    const/4 v0, 0x1

    if-ne v4, v0, :cond_a85

    add-int/lit8 v0, v3, 0x8

    .line 206
    sget v1, Lcom/google/android/gms/internal/play_billing/zzfe;->zza:I

    .line 207
    move-object v1, v7

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzfz;

    .line 208
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzp([BI)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v7

    .line 209
    invoke-virtual {v1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzfz;->zzf(D)V

    :goto_a4c
    if-ge v0, v5, :cond_a64

    .line 210
    invoke-static {v2, v0, v6}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzi([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v4

    iget v7, v6, Lcom/google/android/gms/internal/play_billing/zzfd;->zza:I

    if-ne v14, v7, :cond_a64

    .line 211
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzp([BI)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v7

    .line 212
    invoke-virtual {v1, v7, v8}, Lcom/google/android/gms/internal/play_billing/zzfz;->zzf(D)V

    add-int/lit8 v0, v4, 0x8

    goto :goto_a4c

    :cond_a64
    :goto_a64
    move v8, v3

    goto/16 :goto_8e8

    :goto_a67
    if-ge v0, v5, :cond_8e8

    move v5, v1

    move-object v1, v3

    .line 61
    invoke-static {v2, v0, v6}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzi([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v3

    iget v4, v6, Lcom/google/android/gms/internal/play_billing/zzfd;->zza:I

    if-ne v14, v4, :cond_8e8

    move/from16 v4, p4

    .line 62
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzc(Lcom/google/android/gms/internal/play_billing/zzib;[BIIILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v0

    move-object v3, v2

    iget-object v2, v6, Lcom/google/android/gms/internal/play_billing/zzfd;->zzc:Ljava/lang/Object;

    .line 63
    invoke-interface {v7, v2}, Lcom/google/android/gms/internal/play_billing/zzgu;->add(Ljava/lang/Object;)Z

    move-object v2, v3

    move-object v3, v1

    move v1, v5

    move/from16 v5, p4

    goto :goto_a67

    :cond_a85
    move v8, v3

    goto/16 :goto_762

    :goto_a88
    move v0, v8

    :goto_a89
    if-eq v0, v8, :cond_aa1

    move/from16 v8, p4

    move-object v7, v3

    move-object v2, v10

    move v5, v13

    move/from16 v15, v20

    move/from16 v4, v22

    move-object/from16 v1, v32

    const v16, 0xfffff

    move v3, v0

    move-object v10, v6

    move-object v0, v9

    move v6, v14

    move/from16 v14, v19

    goto/16 :goto_1b

    :cond_aa1
    move/from16 v11, p5

    move-object v7, v3

    move-object v8, v6

    move/from16 v12, v22

    move-object/from16 v15, v32

    :goto_aa9
    move v3, v0

    goto/16 :goto_e09

    :cond_aac
    move v14, v3

    move v12, v6

    move-object v3, v7

    move v8, v9

    move-object/from16 v32, v11

    move-object v6, v15

    move-object/from16 v11, v21

    move-object/from16 v7, v26

    move-object/from16 v9, p0

    const/16 v15, 0x32

    if-ne v12, v15, :cond_bc9

    const/4 v15, 0x2

    if-ne v4, v15, :cond_bb7

    .line 213
    invoke-direct {v9, v13}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzv(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v15, v32

    .line 214
    invoke-virtual {v15, v10, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 215
    move-object v7, v5

    check-cast v7, Lcom/google/android/gms/internal/play_billing/zzhm;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/play_billing/zzhm;->zze()Z

    move-result v7

    if-nez v7, :cond_ae2

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzhm;->zza()Lcom/google/android/gms/internal/play_billing/zzhm;

    move-result-object v7

    .line 216
    invoke-virtual {v7}, Lcom/google/android/gms/internal/play_billing/zzhm;->zzb()Lcom/google/android/gms/internal/play_billing/zzhm;

    move-result-object v7

    .line 217
    invoke-static {v7, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    invoke-virtual {v15, v10, v1, v2, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v5, v7

    .line 219
    :cond_ae2
    check-cast v4, Lcom/google/android/gms/internal/play_billing/zzhl;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/zzhl;->zzc()Lcom/google/android/gms/internal/play_billing/zzhk;

    move-result-object v7

    .line 220
    move-object v11, v5

    check-cast v11, Lcom/google/android/gms/internal/play_billing/zzhm;

    .line 221
    invoke-static {v3, v8, v6}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzi([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v1

    iget v2, v6, Lcom/google/android/gms/internal/play_billing/zzfd;->zza:I

    if-ltz v2, :cond_bb1

    sub-int v4, p4, v1

    if-gt v2, v4, :cond_bb1

    add-int v0, v1, v2

    .line 358
    iget-object v2, v7, Lcom/google/android/gms/internal/play_billing/zzhk;->zzb:Ljava/lang/Object;

    iget-object v12, v7, Lcom/google/android/gms/internal/play_billing/zzhk;->zzd:Ljava/lang/Object;

    move-object v4, v12

    :goto_afe
    if-ge v1, v0, :cond_b81

    add-int/lit8 v5, v1, 0x1

    .line 222
    aget-byte v1, v3, v1

    if-gez v1, :cond_b0c

    .line 223
    invoke-static {v1, v3, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzj(I[BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v5

    iget v1, v6, Lcom/google/android/gms/internal/play_billing/zzfd;->zza:I

    :cond_b0c
    move-object/from16 p3, v2

    ushr-int/lit8 v2, v1, 0x3

    and-int/lit8 v3, v1, 0x7

    move-object/from16 v21, v4

    const/4 v4, 0x1

    if-eq v2, v4, :cond_b4d

    const/4 v4, 0x2

    if-eq v2, v4, :cond_b27

    move-object/from16 v3, p2

    move-object v4, v6

    move-object/from16 v23, v12

    move-object/from16 v2, v21

    move-object/from16 v12, p3

    :goto_b23
    move/from16 v6, p4

    goto/16 :goto_b76

    .line 229
    :cond_b27
    iget-object v4, v7, Lcom/google/android/gms/internal/play_billing/zzhk;->zzc:Lcom/google/android/gms/internal/play_billing/zzjg;

    .line 224
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/zzjg;->zza()I

    move-result v2

    if-ne v3, v2, :cond_b46

    move v2, v5

    .line 225
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v23, v12

    move-object/from16 v12, p3

    .line 226
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzO([BIILcom/google/android/gms/internal/play_billing/zzjg;Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v2

    iget-object v4, v6, Lcom/google/android/gms/internal/play_billing/zzfd;->zzc:Ljava/lang/Object;

    move-object/from16 v3, p2

    move v1, v2

    goto :goto_b7c

    :cond_b46
    move-object/from16 v23, v12

    move-object/from16 v12, p3

    move-object/from16 v3, p2

    goto :goto_b72

    :cond_b4d
    move v2, v5

    move-object/from16 v23, v12

    move-object/from16 v12, p3

    iget-object v4, v7, Lcom/google/android/gms/internal/play_billing/zzhk;->zza:Lcom/google/android/gms/internal/play_billing/zzjg;

    .line 227
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/zzjg;->zza()I

    move-result v5

    if-ne v3, v5, :cond_b6f

    const/4 v5, 0x0

    move-object/from16 v1, p2

    move/from16 v3, p4

    .line 228
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzO([BIILcom/google/android/gms/internal/play_billing/zzjg;Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v2

    move-object v4, v6

    move v6, v3

    move-object v3, v1

    iget-object v1, v4, Lcom/google/android/gms/internal/play_billing/zzfd;->zzc:Ljava/lang/Object;

    move v6, v2

    move-object v2, v1

    move v1, v6

    move-object v6, v4

    move-object/from16 v4, v21

    goto :goto_b7d

    :cond_b6f
    move-object/from16 v3, p2

    move v5, v2

    :goto_b72
    move-object v4, v6

    move-object/from16 v2, v21

    goto :goto_b23

    .line 229
    :goto_b76
    invoke-static {v1, v3, v5, v6, v4}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzo(I[BIILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v1

    move-object v6, v4

    move-object v4, v2

    :goto_b7c
    move-object v2, v12

    :goto_b7d
    move-object/from16 v12, v23

    goto/16 :goto_afe

    :cond_b81
    move-object v12, v2

    move-object v2, v4

    move-object v4, v6

    move/from16 v6, p4

    if-ne v1, v0, :cond_ba9

    .line 230
    invoke-interface {v11, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v0, v8, :cond_ba1

    move-object v7, v3

    move v8, v6

    move-object v2, v10

    move v5, v13

    move v6, v14

    move-object v1, v15

    move/from16 v14, v19

    move/from16 v15, v20

    const v16, 0xfffff

    move v3, v0

    move-object v10, v4

    move-object v0, v9

    move/from16 v4, v22

    goto/16 :goto_1b

    :cond_ba1
    move/from16 v11, p5

    move-object v7, v3

    move-object v8, v4

    move/from16 v12, v22

    goto/16 :goto_aa9

    .line 228
    :cond_ba9
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    move-object/from16 v1, v29

    .line 359
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    .line 360
    throw v0

    .line 221
    :cond_bb1
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzhb;

    .line 357
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    .line 358
    throw v1

    :cond_bb7
    move-object v4, v6

    move-object/from16 v15, v32

    move-object/from16 v1, v29

    move/from16 v6, p4

    :goto_bbe
    move/from16 v11, p5

    move-object/from16 v29, v1

    move-object v7, v3

    move v3, v8

    move/from16 v12, v22

    move-object v8, v4

    goto/16 :goto_e09

    :cond_bc9
    move/from16 v6, p4

    move-object/from16 v15, v32

    add-int/lit8 v0, v13, 0x2

    .line 231
    aget v0, v27, v0

    const v16, 0xfffff

    and-int v0, v0, v16

    move/from16 v21, v5

    int-to-long v5, v0

    packed-switch v12, :pswitch_data_f34

    move-object v7, v3

    move/from16 v12, v22

    :goto_bdf
    move/from16 v22, v13

    move v13, v8

    move-object/from16 v8, p6

    goto/16 :goto_df1

    :pswitch_be6
    const/4 v0, 0x3

    if-ne v4, v0, :cond_c05

    and-int/lit8 v0, v14, -0x8

    or-int/lit8 v6, v0, 0x4

    move/from16 v12, v22

    .line 232
    invoke-direct {v9, v10, v12, v13}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzx(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v1

    .line 233
    invoke-direct {v9, v13}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzt(I)Lcom/google/android/gms/internal/play_billing/zzib;

    move-result-object v2

    move/from16 v5, p4

    move-object/from16 v7, p6

    move v4, v8

    .line 234
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzm(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzib;[BIIILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v0

    .line 235
    invoke-direct {v9, v10, v12, v13, v1}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzF(Ljava/lang/Object;IILjava/lang/Object;)V

    goto/16 :goto_c9f

    :cond_c05
    move/from16 v12, v22

    move-object v7, v3

    goto :goto_bdf

    :pswitch_c09
    move-object/from16 v7, p6

    move/from16 v12, v22

    if-nez v4, :cond_ca6

    .line 236
    invoke-static {v3, v8, v7}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzl([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v0

    move/from16 v22, v13

    move/from16 v26, v14

    iget-wide v13, v7, Lcom/google/android/gms/internal/play_billing/zzfd;->zzb:J

    .line 237
    invoke-static {v13, v14}, Lcom/google/android/gms/internal/play_billing/zzft;->zzc(J)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v10, v1, v2, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 238
    invoke-virtual {v15, v10, v5, v6, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_c46

    :pswitch_c28
    move-object/from16 v7, p6

    move/from16 v26, v14

    move/from16 v12, v22

    move/from16 v22, v13

    if-nez v4, :cond_c4a

    .line 239
    invoke-static {v3, v8, v7}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzi([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v0

    iget v4, v7, Lcom/google/android/gms/internal/play_billing/zzfd;->zza:I

    .line 240
    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzft;->zzb(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v10, v1, v2, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 241
    invoke-virtual {v15, v10, v5, v6, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_c46
    move v13, v8

    move/from16 v14, v26

    goto :goto_ca2

    :cond_c4a
    move v13, v8

    move/from16 v14, v26

    goto :goto_ca9

    :pswitch_c4e
    move-object/from16 v7, p6

    move/from16 v26, v14

    move/from16 v12, v22

    move/from16 v22, v13

    if-nez v4, :cond_c89

    .line 242
    invoke-static {v3, v8, v7}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzi([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v0

    iget v4, v7, Lcom/google/android/gms/internal/play_billing/zzfd;->zza:I

    move/from16 v13, v22

    .line 243
    invoke-direct {v9, v13}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzs(I)Lcom/google/android/gms/internal/play_billing/zzgs;

    move-result-object v11

    if-eqz v11, :cond_c7c

    invoke-interface {v11, v4}, Lcom/google/android/gms/internal/play_billing/zzgs;->zza(I)Z

    move-result v11

    if-eqz v11, :cond_c6d

    goto :goto_c7c

    .line 246
    :cond_c6d
    invoke-static {v10}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzir;

    move-result-object v1

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move/from16 v14, v26

    invoke-virtual {v1, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzir;->zzj(ILjava/lang/Object;)V

    goto :goto_c9f

    :cond_c7c
    :goto_c7c
    move/from16 v14, v26

    .line 244
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v10, v1, v2, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 245
    invoke-virtual {v15, v10, v5, v6, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_c9f

    :cond_c89
    move/from16 v14, v26

    goto :goto_ca8

    :pswitch_c8c
    move-object/from16 v7, p6

    move/from16 v12, v22

    const/4 v0, 0x2

    if-ne v4, v0, :cond_ca6

    .line 247
    invoke-static {v3, v8, v7}, Lcom/google/android/gms/internal/play_billing/zzfe;->zza([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v0

    iget-object v4, v7, Lcom/google/android/gms/internal/play_billing/zzfd;->zzc:Ljava/lang/Object;

    .line 248
    invoke-virtual {v15, v10, v1, v2, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 249
    invoke-virtual {v15, v10, v5, v6, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_c9f
    move/from16 v22, v13

    move v13, v8

    :goto_ca2
    move-object v8, v7

    :goto_ca3
    move-object v7, v3

    goto/16 :goto_daf

    :cond_ca6
    move/from16 v22, v13

    :goto_ca8
    move v13, v8

    :goto_ca9
    move-object v8, v7

    goto/16 :goto_d13

    :pswitch_cac
    move-object/from16 v7, p6

    move/from16 v12, v22

    const/4 v0, 0x2

    if-ne v4, v0, :cond_cce

    .line 250
    invoke-direct {v9, v10, v12, v13}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzx(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v1

    .line 251
    invoke-direct {v9, v13}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzt(I)Lcom/google/android/gms/internal/play_billing/zzib;

    move-result-object v2

    move/from16 v5, p4

    move-object v6, v7

    move v4, v8

    .line 252
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzib;[BIILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v0

    move-object v8, v6

    .line 253
    invoke-direct {v9, v10, v12, v13, v1}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzF(Ljava/lang/Object;IILjava/lang/Object;)V

    move-object v7, v3

    move/from16 v22, v13

    move v3, v0

    move v13, v4

    goto/16 :goto_df2

    :cond_cce
    move v4, v8

    move-object v8, v7

    move-object v7, v3

    move/from16 v22, v13

    move v13, v4

    goto/16 :goto_df1

    :pswitch_cd6
    move/from16 v12, v22

    const/4 v0, 0x2

    move/from16 v22, v13

    move v13, v8

    move-object/from16 v8, p6

    if-ne v4, v0, :cond_d13

    .line 254
    invoke-static {v3, v13, v8}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzi([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v0

    iget v4, v8, Lcom/google/android/gms/internal/play_billing/zzfd;->zza:I

    if-nez v4, :cond_cec

    .line 255
    invoke-virtual {v15, v10, v1, v2, v11}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_d0f

    :cond_cec
    and-int v11, v21, v23

    move/from16 p3, v11

    add-int v11, v0, v4

    if-eqz p3, :cond_d01

    .line 256
    invoke-static {v3, v0, v11}, Lcom/google/android/gms/internal/play_billing/zzjc;->zzb([BII)Z

    move-result v21

    if-eqz v21, :cond_cfb

    goto :goto_d01

    :cond_cfb
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    .line 361
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    .line 362
    throw v0

    :cond_d01
    :goto_d01
    new-instance v7, Ljava/lang/String;

    move/from16 p3, v11

    .line 257
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v3, v0, v4, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 258
    invoke-virtual {v15, v10, v1, v2, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move/from16 v0, p3

    .line 259
    :goto_d0f
    invoke-virtual {v15, v10, v5, v6, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_ca3

    :cond_d13
    :goto_d13
    move-object v7, v3

    goto/16 :goto_df1

    :pswitch_d16
    move/from16 v12, v22

    move/from16 v22, v13

    move v13, v8

    move-object/from16 v8, p6

    if-nez v4, :cond_d59

    .line 260
    invoke-static {v3, v13, v8}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzl([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v0

    iget-wide v3, v8, Lcom/google/android/gms/internal/play_billing/zzfd;->zzb:J

    cmp-long v3, v3, v24

    if-eqz v3, :cond_d2b

    const/4 v4, 0x1

    goto :goto_d2d

    :cond_d2b
    move/from16 v4, v18

    .line 261
    :goto_d2d
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v15, v10, v1, v2, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 262
    invoke-virtual {v15, v10, v5, v6, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move-object/from16 v7, p2

    goto/16 :goto_daf

    :pswitch_d3b
    move/from16 v12, v22

    const/4 v0, 0x5

    move/from16 v22, v13

    move v13, v8

    move-object/from16 v8, p6

    if-ne v4, v0, :cond_d59

    add-int/lit8 v3, v13, 0x4

    move-object/from16 v7, p2

    .line 263
    invoke-static {v7, v13}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzb([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v15, v10, v1, v2, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 264
    invoke-virtual {v15, v10, v5, v6, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_df2

    :cond_d59
    move-object/from16 v7, p2

    goto/16 :goto_df1

    :pswitch_d5d
    move-object v7, v3

    move/from16 v12, v22

    const/4 v0, 0x1

    move/from16 v22, v13

    move v13, v8

    move-object/from16 v8, p6

    if-ne v4, v0, :cond_df1

    add-int/lit8 v3, v13, 0x8

    .line 265
    invoke-static {v7, v13}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzp([BI)J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v15, v10, v1, v2, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 266
    invoke-virtual {v15, v10, v5, v6, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_df2

    :pswitch_d7a
    move-object v7, v3

    move/from16 v12, v22

    move/from16 v22, v13

    move v13, v8

    move-object/from16 v8, p6

    if-nez v4, :cond_df1

    .line 267
    invoke-static {v7, v13, v8}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzi([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v0

    iget v3, v8, Lcom/google/android/gms/internal/play_billing/zzfd;->zza:I

    .line 268
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v10, v1, v2, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 269
    invoke-virtual {v15, v10, v5, v6, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_daf

    :pswitch_d95
    move-object v7, v3

    move/from16 v12, v22

    move/from16 v22, v13

    move v13, v8

    move-object/from16 v8, p6

    if-nez v4, :cond_df1

    .line 270
    invoke-static {v7, v13, v8}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzl([BILcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v0

    iget-wide v3, v8, Lcom/google/android/gms/internal/play_billing/zzfd;->zzb:J

    .line 271
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v15, v10, v1, v2, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 272
    invoke-virtual {v15, v10, v5, v6, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_daf
    move v3, v0

    goto :goto_df2

    :pswitch_db1
    move-object v7, v3

    move/from16 v12, v22

    const/4 v0, 0x5

    move/from16 v22, v13

    move v13, v8

    move-object/from16 v8, p6

    if-ne v4, v0, :cond_df1

    add-int/lit8 v3, v13, 0x4

    .line 273
    invoke-static {v7, v13}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzb([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 274
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v15, v10, v1, v2, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 275
    invoke-virtual {v15, v10, v5, v6, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_df2

    :pswitch_dd1
    move-object v7, v3

    move/from16 v12, v22

    const/4 v0, 0x1

    move/from16 v22, v13

    move v13, v8

    move-object/from16 v8, p6

    if-ne v4, v0, :cond_df1

    add-int/lit8 v3, v13, 0x8

    .line 276
    invoke-static {v7, v13}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzp([BI)J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v23

    .line 277
    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v15, v10, v1, v2, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 278
    invoke-virtual {v15, v10, v5, v6, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_df2

    :cond_df1
    :goto_df1
    move v3, v13

    :goto_df2
    if-eq v3, v13, :cond_e05

    move-object v0, v9

    move-object v2, v10

    move v4, v12

    move v6, v14

    move-object v1, v15

    move/from16 v14, v19

    move/from16 v15, v20

    move/from16 v5, v22

    const v16, 0xfffff

    move-object v10, v8

    goto/16 :goto_31e

    :cond_e05
    move/from16 v11, p5

    move/from16 v13, v22

    :goto_e09
    if-ne v14, v11, :cond_e1a

    if-eqz v11, :cond_e1a

    move v7, v14

    move/from16 v14, p4

    move v6, v3

    move/from16 v0, v19

    move/from16 v1, v20

    const v13, 0xfffff

    goto/16 :goto_e80

    .line 371
    :cond_e1a
    iget-boolean v0, v9, Lcom/google/android/gms/internal/play_billing/zzhu;->zzh:Z

    if-eqz v0, :cond_e46

    iget-object v0, v8, Lcom/google/android/gms/internal/play_billing/zzfd;->zzd:Lcom/google/android/gms/internal/play_billing/zzgc;

    .line 279
    sget v1, Lcom/google/android/gms/internal/play_billing/zzgc;->zzb:I

    .line 280
    sget v1, Lcom/google/android/gms/internal/play_billing/zzfc;->zza:I

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzgc;->zza:Lcom/google/android/gms/internal/play_billing/zzgc;

    if-eq v0, v1, :cond_e46

    iget-object v1, v9, Lcom/google/android/gms/internal/play_billing/zzhu;->zzg:Lcom/google/android/gms/internal/play_billing/zzhr;

    .line 281
    sget v2, Lcom/google/android/gms/internal/play_billing/zzfe;->zza:I

    .line 282
    invoke-virtual {v0, v1, v12}, Lcom/google/android/gms/internal/play_billing/zzgc;->zza(Lcom/google/android/gms/internal/play_billing/zzhr;I)Lcom/google/android/gms/internal/play_billing/zzgo;

    move-result-object v0

    if-nez v0, :cond_e42

    .line 283
    invoke-static {v10}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzir;

    move-result-object v5

    move/from16 v4, p4

    move-object v2, v7

    move-object v6, v8

    move v1, v14

    .line 284
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzh(I[BIILcom/google/android/gms/internal/play_billing/zzir;Lcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v0

    move/from16 v14, p4

    goto :goto_e56

    .line 372
    :cond_e42
    move-object v0, v10

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzgm;

    .line 373
    throw v17

    :cond_e46
    move v1, v14

    .line 285
    invoke-static {v10}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzir;

    move-result-object v5

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    .line 286
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzh(I[BIILcom/google/android/gms/internal/play_billing/zzir;Lcom/google/android/gms/internal/play_billing/zzfd;)I

    move-result v0

    move v14, v4

    :goto_e56
    move v3, v0

    move-object/from16 v7, p2

    move v6, v1

    move-object v0, v9

    move-object v2, v10

    move v4, v12

    move v5, v13

    move v8, v14

    move-object v1, v15

    move/from16 v14, v19

    move/from16 v15, v20

    const v16, 0xfffff

    move-object/from16 v10, p6

    goto/16 :goto_1b

    :cond_e6b
    move/from16 v11, p5

    move-object v9, v0

    move-object v10, v2

    move-object/from16 v29, v13

    move/from16 v19, v14

    move/from16 v20, v15

    move-object v15, v1

    move v14, v8

    move v7, v6

    move/from16 v0, v19

    move/from16 v1, v20

    const v13, 0xfffff

    move v6, v3

    :goto_e80
    if-eq v0, v13, :cond_e86

    int-to-long v2, v0

    .line 363
    invoke-virtual {v15, v10, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_e86
    iget v0, v9, Lcom/google/android/gms/internal/play_billing/zzhu;->zzj:I

    move v8, v0

    move-object/from16 v3, v17

    :goto_e8b
    iget v0, v9, Lcom/google/android/gms/internal/play_billing/zzhu;->zzk:I

    if-ge v8, v0, :cond_ea9

    iget-object v0, v9, Lcom/google/android/gms/internal/play_billing/zzhu;->zzi:[I

    iget-object v4, v9, Lcom/google/android/gms/internal/play_billing/zzhu;->zzl:Lcom/google/android/gms/internal/play_billing/zziq;

    .line 364
    aget v2, v0, v8

    move-object/from16 v5, p1

    move-object v0, v9

    move-object v1, v10

    move-object/from16 v9, v29

    .line 365
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzu(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zziq;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/play_billing/zzir;

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v10, p1

    move-object/from16 v9, p0

    goto :goto_e8b

    :cond_ea9
    move-object/from16 v9, v29

    if-eqz v3, :cond_eb6

    .line 366
    move-object v0, v3

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzir;

    .line 367
    move-object/from16 v0, p1

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzgp;

    iput-object v3, v0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzc:Lcom/google/android/gms/internal/play_billing/zzir;

    :cond_eb6
    if-nez v11, :cond_ec1

    if-ne v6, v14, :cond_ebb

    goto :goto_ec5

    :cond_ebb
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    .line 368
    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    .line 369
    throw v0

    :cond_ec1
    if-gt v6, v14, :cond_ec6

    if-ne v7, v11, :cond_ec6

    :goto_ec5
    return v6

    :cond_ec6
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhb;

    .line 370
    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    .line 371
    throw v0

    :pswitch_data_ecc
    .packed-switch 0x0
        :pswitch_34c
        :pswitch_326
        :pswitch_2f2
        :pswitch_2f2
        :pswitch_2c7
        :pswitch_292
        :pswitch_262
        :pswitch_235
        :pswitch_1e6
        :pswitch_1a4
        :pswitch_180
        :pswitch_2c7
        :pswitch_147
        :pswitch_262
        :pswitch_292
        :pswitch_122
        :pswitch_fa
    .end packed-switch

    :pswitch_data_ef2
    .packed-switch 0x12
        :pswitch_9e5
        :pswitch_968
        :pswitch_8f6
        :pswitch_8f6
        :pswitch_8d1
        :pswitch_85c
        :pswitch_7e9
        :pswitch_765
        :pswitch_68b
        :pswitch_664
        :pswitch_5fb
        :pswitch_8d1
        :pswitch_547
        :pswitch_7e9
        :pswitch_85c
        :pswitch_4d0
        :pswitch_464
        :pswitch_9e5
        :pswitch_968
        :pswitch_8f6
        :pswitch_8f6
        :pswitch_8d1
        :pswitch_85c
        :pswitch_7e9
        :pswitch_765
        :pswitch_8d1
        :pswitch_547
        :pswitch_7e9
        :pswitch_85c
        :pswitch_4d0
        :pswitch_464
    .end packed-switch

    :pswitch_data_f34
    .packed-switch 0x33
        :pswitch_dd1
        :pswitch_db1
        :pswitch_d95
        :pswitch_d95
        :pswitch_d7a
        :pswitch_d5d
        :pswitch_d3b
        :pswitch_d16
        :pswitch_cd6
        :pswitch_cac
        :pswitch_c8c
        :pswitch_d7a
        :pswitch_c4e
        :pswitch_d3b
        :pswitch_d5d
        :pswitch_c28
        :pswitch_c09
        :pswitch_be6
    .end packed-switch
.end method

.method public final zze()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzhu;->zzg:Lcom/google/android/gms/internal/play_billing/zzhr;

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzgp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzs()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object v0

    return-object v0
.end method

.method public final zzf(Ljava/lang/Object;)V
    .registers 9

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzK(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_98

    :cond_8
    instance-of v0, p1, Lcom/google/android/gms/internal/play_billing/zzgp;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzgp;

    const v2, 0x7fffffff

    .line 3
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzC(I)V

    iput v1, v0, Lcom/google/android/gms/internal/play_billing/zzgp;->zza:I

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzA()V

    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzhu;->zzc:[I

    :goto_1d
    array-length v2, v0

    if-ge v1, v2, :cond_85

    .line 5
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzq(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzp(I)I

    move-result v2

    int-to-long v3, v3

    const/16 v5, 0x9

    if-eq v2, v5, :cond_6f

    const/16 v5, 0x3c

    if-eq v2, v5, :cond_59

    const/16 v5, 0x44

    if-eq v2, v5, :cond_59

    packed-switch v2, :pswitch_data_9a

    goto :goto_82

    .line 10
    :pswitch_3d
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzhu;->zzb:Lsun/misc/Unsafe;

    .line 11
    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_82

    .line 12
    move-object v6, v5

    check-cast v6, Lcom/google/android/gms/internal/play_billing/zzhm;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/play_billing/zzhm;->zzc()V

    .line 13
    invoke-virtual {v2, p1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_82

    .line 6
    :pswitch_4f
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzix;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/play_billing/zzgu;

    .line 7
    invoke-interface {v2}, Lcom/google/android/gms/internal/play_billing/zzgu;->zzb()V

    goto :goto_82

    .line 8
    :cond_59
    aget v2, v0, v1

    .line 9
    invoke-direct {p0, p1, v2, v1}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 10
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzt(I)Lcom/google/android/gms/internal/play_billing/zzib;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzhu;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzib;->zzf(Ljava/lang/Object;)V

    goto :goto_82

    .line 14
    :cond_6f
    :pswitch_6f
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzH(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 15
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzt(I)Lcom/google/android/gms/internal/play_billing/zzib;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzhu;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzib;->zzf(Ljava/lang/Object;)V

    :cond_82
    :goto_82
    add-int/lit8 v1, v1, 0x3

    goto :goto_1d

    .line 16
    :cond_85
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzgp;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzc:Lcom/google/android/gms/internal/play_billing/zzir;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzir;->zzh()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/zzhu;->zzh:Z

    if-eqz v0, :cond_98

    .line 18
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzgm;

    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/zzgm;->zzb:Lcom/google/android/gms/internal/play_billing/zzgh;

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzgh;->zzg()V

    :cond_98
    :goto_98
    return-void

    nop

    :pswitch_data_9a
    .packed-switch 0x11
        :pswitch_6f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_3d
    .end packed-switch
.end method

.method public final zzg(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 11

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzz(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_7
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzhu;->zzc:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1b6

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzq(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzp(I)I

    move-result v2

    .line 4
    aget v1, v1, v0

    int-to-long v3, v3

    packed-switch v2, :pswitch_data_1c6

    goto/16 :goto_1b2

    .line 13
    :pswitch_20
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzB(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1b2

    .line 14
    :pswitch_25
    invoke-direct {p0, p2, v1, v0}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1b2

    .line 15
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzix;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/play_billing/zzix;->zzp(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 16
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzD(Ljava/lang/Object;II)V

    goto/16 :goto_1b2

    .line 17
    :pswitch_37
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzB(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1b2

    .line 18
    :pswitch_3c
    invoke-direct {p0, p2, v1, v0}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1b2

    .line 19
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzix;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/play_billing/zzix;->zzp(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 20
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzD(Ljava/lang/Object;II)V

    goto/16 :goto_1b2

    .line 21
    :pswitch_4e
    sget v1, Lcom/google/android/gms/internal/play_billing/zzic;->zza:I

    .line 22
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzix;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzix;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 23
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzhn;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 24
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzix;->zzp(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_1b2

    .line 5
    :pswitch_61
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzix;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzgu;

    .line 6
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzix;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/play_billing/zzgu;

    .line 7
    invoke-interface {v1}, Lcom/google/android/gms/internal/play_billing/zzgu;->size()I

    move-result v5

    .line 8
    invoke-interface {v2}, Lcom/google/android/gms/internal/play_billing/zzgu;->size()I

    move-result v6

    if-lez v5, :cond_87

    if-lez v6, :cond_87

    .line 9
    invoke-interface {v1}, Lcom/google/android/gms/internal/play_billing/zzgu;->zzc()Z

    move-result v7

    if-nez v7, :cond_84

    add-int/2addr v6, v5

    .line 10
    invoke-interface {v1, v6}, Lcom/google/android/gms/internal/play_billing/zzgu;->zzd(I)Lcom/google/android/gms/internal/play_billing/zzgu;

    move-result-object v1

    .line 11
    :cond_84
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzgu;->addAll(Ljava/util/Collection;)Z

    :cond_87
    if-gtz v5, :cond_8a

    goto :goto_8b

    :cond_8a
    move-object v2, v1

    .line 12
    :goto_8b
    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/play_billing/zzix;->zzp(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_1b2

    .line 25
    :pswitch_90
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzA(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1b2

    .line 26
    :pswitch_95
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzH(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1b2

    .line 27
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzix;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzix;->zzo(Ljava/lang/Object;JJ)V

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzC(Ljava/lang/Object;I)V

    goto/16 :goto_1b2

    .line 29
    :pswitch_a7
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzH(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1b2

    .line 30
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzix;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzix;->zzn(Ljava/lang/Object;JI)V

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzC(Ljava/lang/Object;I)V

    goto/16 :goto_1b2

    .line 32
    :pswitch_b9
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzH(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1b2

    .line 33
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzix;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzix;->zzo(Ljava/lang/Object;JJ)V

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzC(Ljava/lang/Object;I)V

    goto/16 :goto_1b2

    .line 35
    :pswitch_cb
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzH(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1b2

    .line 36
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzix;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzix;->zzn(Ljava/lang/Object;JI)V

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzC(Ljava/lang/Object;I)V

    goto/16 :goto_1b2

    .line 38
    :pswitch_dd
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzH(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1b2

    .line 39
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzix;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzix;->zzn(Ljava/lang/Object;JI)V

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzC(Ljava/lang/Object;I)V

    goto/16 :goto_1b2

    .line 41
    :pswitch_ef
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzH(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1b2

    .line 42
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzix;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzix;->zzn(Ljava/lang/Object;JI)V

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzC(Ljava/lang/Object;I)V

    goto/16 :goto_1b2

    .line 44
    :pswitch_101
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzH(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1b2

    .line 45
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzix;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzix;->zzp(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzC(Ljava/lang/Object;I)V

    goto/16 :goto_1b2

    .line 47
    :pswitch_113
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzA(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1b2

    .line 48
    :pswitch_118
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzH(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1b2

    .line 49
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzix;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzix;->zzp(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzC(Ljava/lang/Object;I)V

    goto/16 :goto_1b2

    .line 51
    :pswitch_12a
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzH(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1b2

    .line 52
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzix;->zzt(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzix;->zzk(Ljava/lang/Object;JZ)V

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzC(Ljava/lang/Object;I)V

    goto/16 :goto_1b2

    .line 54
    :pswitch_13c
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzH(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1b2

    .line 55
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzix;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzix;->zzn(Ljava/lang/Object;JI)V

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzC(Ljava/lang/Object;I)V

    goto :goto_1b2

    .line 57
    :pswitch_14d
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzH(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1b2

    .line 58
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzix;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzix;->zzo(Ljava/lang/Object;JJ)V

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzC(Ljava/lang/Object;I)V

    goto :goto_1b2

    .line 60
    :pswitch_15e
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzH(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1b2

    .line 61
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzix;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzix;->zzn(Ljava/lang/Object;JI)V

    .line 62
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzC(Ljava/lang/Object;I)V

    goto :goto_1b2

    .line 63
    :pswitch_16f
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzH(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1b2

    .line 64
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzix;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzix;->zzo(Ljava/lang/Object;JJ)V

    .line 65
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzC(Ljava/lang/Object;I)V

    goto :goto_1b2

    .line 66
    :pswitch_180
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzH(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1b2

    .line 67
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzix;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzix;->zzo(Ljava/lang/Object;JJ)V

    .line 68
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzC(Ljava/lang/Object;I)V

    goto :goto_1b2

    .line 69
    :pswitch_191
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzH(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1b2

    .line 70
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzix;->zzb(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/play_billing/zzix;->zzm(Ljava/lang/Object;JF)V

    .line 71
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzC(Ljava/lang/Object;I)V

    goto :goto_1b2

    .line 72
    :pswitch_1a2
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzH(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1b2

    .line 73
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzix;->zza(Ljava/lang/Object;J)D

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzix;->zzl(Ljava/lang/Object;JD)V

    .line 74
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzC(Ljava/lang/Object;I)V

    :cond_1b2
    :goto_1b2
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_7

    :cond_1b6
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzhu;->zzl:Lcom/google/android/gms/internal/play_billing/zziq;

    .line 75
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzic;->zzp(Lcom/google/android/gms/internal/play_billing/zziq;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/zzhu;->zzh:Z

    if-eqz v0, :cond_1c4

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzhu;->zzm:Lcom/google/android/gms/internal/play_billing/zzgd;

    .line 76
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzic;->zzo(Lcom/google/android/gms/internal/play_billing/zzgd;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1c4
    return-void

    nop

    :pswitch_data_1c6
    .packed-switch 0x0
        :pswitch_1a2
        :pswitch_191
        :pswitch_180
        :pswitch_16f
        :pswitch_15e
        :pswitch_14d
        :pswitch_13c
        :pswitch_12a
        :pswitch_118
        :pswitch_113
        :pswitch_101
        :pswitch_ef
        :pswitch_dd
        :pswitch_cb
        :pswitch_b9
        :pswitch_a7
        :pswitch_95
        :pswitch_90
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_4e
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_37
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_20
    .end packed-switch
.end method

.method public final zzh(Ljava/lang/Object;[BIILcom/google/android/gms/internal/play_billing/zzfd;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzc(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/play_billing/zzfd;)I

    return-void
.end method

.method public final zzi(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzji;)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    .line 1
    iget-boolean v2, v0, Lcom/google/android/gms/internal/play_billing/zzhu;->zzh:Z

    if-eqz v2, :cond_23

    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/play_billing/zzgm;

    iget-object v2, v2, Lcom/google/android/gms/internal/play_billing/zzgm;->zzb:Lcom/google/android/gms/internal/play_billing/zzgh;

    iget-object v3, v2, Lcom/google/android/gms/internal/play_billing/zzgh;->zza:Lcom/google/android/gms/internal/play_billing/zzii;

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/zzii;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_23

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/play_billing/zzgh;->zzf()Ljava/util/Iterator;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    move-object v8, v2

    goto :goto_24

    :cond_23
    const/4 v8, 0x0

    :goto_24
    iget-object v9, v0, Lcom/google/android/gms/internal/play_billing/zzhu;->zzc:[I

    sget-object v10, Lcom/google/android/gms/internal/play_billing/zzhu;->zzb:Lsun/misc/Unsafe;

    const v11, 0xfffff

    move v3, v11

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_2e
    array-length v5, v9

    if-ge v2, v5, :cond_4d1

    .line 5
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzq(I)I

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzp(I)I

    move-result v13

    .line 6
    aget v14, v9, v2

    const/16 v15, 0x11

    const/16 v16, 0x0

    const/4 v7, 0x1

    if-gt v13, v15, :cond_5f

    add-int/lit8 v15, v2, 0x2

    .line 7
    aget v15, v9, v15

    and-int v12, v15, v11

    if-eq v12, v3, :cond_55

    if-ne v12, v11, :cond_4e

    const/4 v3, 0x0

    goto :goto_53

    :cond_4e
    int-to-long v3, v12

    .line 8
    invoke-virtual {v10, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    :goto_53
    move v4, v3

    move v3, v12

    :cond_55
    ushr-int/lit8 v12, v15, 0x14

    shl-int v12, v7, v12

    move/from16 v17, v12

    move v12, v5

    move/from16 v5, v17

    goto :goto_61

    :cond_5f
    move v12, v5

    const/4 v5, 0x0

    :goto_61
    if-nez v8, :cond_4ca

    and-int/2addr v12, v11

    int-to-long v11, v12

    packed-switch v13, :pswitch_data_4e8

    :cond_68
    :goto_68
    const/4 v13, 0x0

    goto/16 :goto_4c1

    .line 117
    :pswitch_6b
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 118
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzt(I)Lcom/google/android/gms/internal/play_billing/zzib;

    move-result-object v7

    .line 119
    invoke-interface {v6, v14, v5, v7}, Lcom/google/android/gms/internal/play_billing/zzji;->zzq(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzib;)V

    goto :goto_68

    .line 120
    :pswitch_7d
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 121
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzr(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {v6, v14, v11, v12}, Lcom/google/android/gms/internal/play_billing/zzji;->zzE(IJ)V

    goto :goto_68

    .line 122
    :pswitch_8b
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 123
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzm(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v6, v14, v5}, Lcom/google/android/gms/internal/play_billing/zzji;->zzC(II)V

    goto :goto_68

    .line 124
    :pswitch_99
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 125
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzr(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {v6, v14, v11, v12}, Lcom/google/android/gms/internal/play_billing/zzji;->zzA(IJ)V

    goto :goto_68

    .line 126
    :pswitch_a7
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 127
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzm(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v6, v14, v5}, Lcom/google/android/gms/internal/play_billing/zzji;->zzy(II)V

    goto :goto_68

    .line 128
    :pswitch_b5
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 129
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzm(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v6, v14, v5}, Lcom/google/android/gms/internal/play_billing/zzji;->zzi(II)V

    goto :goto_68

    .line 130
    :pswitch_c3
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 131
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzm(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v6, v14, v5}, Lcom/google/android/gms/internal/play_billing/zzji;->zzJ(II)V

    goto :goto_68

    .line 132
    :pswitch_d1
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 133
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-interface {v6, v14, v5}, Lcom/google/android/gms/internal/play_billing/zzji;->zzd(ILcom/google/android/gms/internal/play_billing/zzfp;)V

    goto :goto_68

    .line 134
    :pswitch_e1
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 135
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 136
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzt(I)Lcom/google/android/gms/internal/play_billing/zzib;

    move-result-object v7

    invoke-interface {v6, v14, v5, v7}, Lcom/google/android/gms/internal/play_billing/zzji;->zzw(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzib;)V

    goto/16 :goto_68

    .line 137
    :pswitch_f4
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 138
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v14, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzP(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzji;)V

    goto/16 :goto_68

    .line 139
    :pswitch_103
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 140
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/play_billing/zzix;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 141
    invoke-interface {v6, v14, v5}, Lcom/google/android/gms/internal/play_billing/zzji;->zzb(IZ)V

    goto/16 :goto_68

    .line 142
    :pswitch_118
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 143
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzm(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v6, v14, v5}, Lcom/google/android/gms/internal/play_billing/zzji;->zzk(II)V

    goto/16 :goto_68

    .line 144
    :pswitch_127
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 145
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzr(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {v6, v14, v11, v12}, Lcom/google/android/gms/internal/play_billing/zzji;->zzm(IJ)V

    goto/16 :goto_68

    .line 146
    :pswitch_136
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 147
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzm(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v6, v14, v5}, Lcom/google/android/gms/internal/play_billing/zzji;->zzr(II)V

    goto/16 :goto_68

    .line 148
    :pswitch_145
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 149
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzr(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {v6, v14, v11, v12}, Lcom/google/android/gms/internal/play_billing/zzji;->zzL(IJ)V

    goto/16 :goto_68

    .line 150
    :pswitch_154
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 151
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzr(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {v6, v14, v11, v12}, Lcom/google/android/gms/internal/play_billing/zzji;->zzt(IJ)V

    goto/16 :goto_68

    .line 152
    :pswitch_163
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 153
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/play_billing/zzix;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 154
    invoke-interface {v6, v14, v5}, Lcom/google/android/gms/internal/play_billing/zzji;->zzo(IF)V

    goto/16 :goto_68

    .line 155
    :pswitch_178
    invoke-direct {v0, v1, v14, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzM(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 156
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/play_billing/zzix;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    .line 157
    invoke-interface {v6, v14, v11, v12}, Lcom/google/android/gms/internal/play_billing/zzji;->zzf(ID)V

    goto/16 :goto_68

    .line 158
    :pswitch_18d
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_68

    .line 159
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzv(I)Ljava/lang/Object;

    move-result-object v7

    .line 160
    check-cast v7, Lcom/google/android/gms/internal/play_billing/zzhl;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/play_billing/zzhl;->zzc()Lcom/google/android/gms/internal/play_billing/zzhk;

    move-result-object v7

    .line 161
    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzhm;

    .line 162
    invoke-interface {v6, v14, v7, v5}, Lcom/google/android/gms/internal/play_billing/zzji;->zzv(ILcom/google/android/gms/internal/play_billing/zzhk;Ljava/util/Map;)V

    goto/16 :goto_68

    .line 110
    :pswitch_1a4
    aget v5, v9, v2

    .line 111
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 112
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzt(I)Lcom/google/android/gms/internal/play_billing/zzib;

    move-result-object v11

    .line 113
    sget v12, Lcom/google/android/gms/internal/play_billing/zzic;->zza:I

    if-eqz v7, :cond_68

    .line 114
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_68

    const/4 v12, 0x0

    .line 115
    :goto_1bb
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_68

    .line 116
    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object v14, v6

    check-cast v14, Lcom/google/android/gms/internal/play_billing/zzfy;

    invoke-virtual {v14, v5, v13, v11}, Lcom/google/android/gms/internal/play_billing/zzfy;->zzq(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzib;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_1bb

    .line 107
    :pswitch_1ce
    aget v5, v9, v2

    .line 108
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 109
    invoke-static {v5, v11, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzic;->zzB(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzji;Z)V

    goto/16 :goto_68

    .line 104
    :pswitch_1db
    aget v5, v9, v2

    .line 105
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 106
    invoke-static {v5, v11, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzic;->zzA(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzji;Z)V

    goto/16 :goto_68

    .line 101
    :pswitch_1e8
    aget v5, v9, v2

    .line 102
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 103
    invoke-static {v5, v11, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzic;->zzz(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzji;Z)V

    goto/16 :goto_68

    .line 98
    :pswitch_1f5
    aget v5, v9, v2

    .line 99
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 100
    invoke-static {v5, v11, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzic;->zzy(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzji;Z)V

    goto/16 :goto_68

    .line 95
    :pswitch_202
    aget v5, v9, v2

    .line 96
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 97
    invoke-static {v5, v11, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzic;->zzs(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzji;Z)V

    goto/16 :goto_68

    .line 92
    :pswitch_20f
    aget v5, v9, v2

    .line 93
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 94
    invoke-static {v5, v11, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzic;->zzC(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzji;Z)V

    goto/16 :goto_68

    .line 89
    :pswitch_21c
    aget v5, v9, v2

    .line 90
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 91
    invoke-static {v5, v11, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzic;->zzq(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzji;Z)V

    goto/16 :goto_68

    .line 86
    :pswitch_229
    aget v5, v9, v2

    .line 87
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 88
    invoke-static {v5, v11, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzic;->zzt(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzji;Z)V

    goto/16 :goto_68

    .line 83
    :pswitch_236
    aget v5, v9, v2

    .line 84
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 85
    invoke-static {v5, v11, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzic;->zzu(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzji;Z)V

    goto/16 :goto_68

    .line 80
    :pswitch_243
    aget v5, v9, v2

    .line 81
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 82
    invoke-static {v5, v11, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzic;->zzw(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzji;Z)V

    goto/16 :goto_68

    .line 77
    :pswitch_250
    aget v5, v9, v2

    .line 78
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 79
    invoke-static {v5, v11, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzic;->zzD(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzji;Z)V

    goto/16 :goto_68

    .line 74
    :pswitch_25d
    aget v5, v9, v2

    .line 75
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 76
    invoke-static {v5, v11, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzic;->zzx(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzji;Z)V

    goto/16 :goto_68

    .line 71
    :pswitch_26a
    aget v5, v9, v2

    .line 72
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 73
    invoke-static {v5, v11, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzic;->zzv(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzji;Z)V

    goto/16 :goto_68

    .line 68
    :pswitch_277
    aget v5, v9, v2

    .line 69
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 70
    invoke-static {v5, v11, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzic;->zzr(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzji;Z)V

    goto/16 :goto_68

    .line 65
    :pswitch_284
    aget v5, v9, v2

    .line 66
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v13, 0x0

    .line 67
    invoke-static {v5, v7, v6, v13}, Lcom/google/android/gms/internal/play_billing/zzic;->zzB(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzji;Z)V

    goto/16 :goto_4c1

    :pswitch_292
    const/4 v13, 0x0

    .line 62
    aget v5, v9, v2

    .line 63
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 64
    invoke-static {v5, v7, v6, v13}, Lcom/google/android/gms/internal/play_billing/zzic;->zzA(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzji;Z)V

    goto/16 :goto_4c1

    :pswitch_2a0
    const/4 v13, 0x0

    .line 59
    aget v5, v9, v2

    .line 60
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 61
    invoke-static {v5, v7, v6, v13}, Lcom/google/android/gms/internal/play_billing/zzic;->zzz(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzji;Z)V

    goto/16 :goto_4c1

    :pswitch_2ae
    const/4 v13, 0x0

    .line 56
    aget v5, v9, v2

    .line 57
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 58
    invoke-static {v5, v7, v6, v13}, Lcom/google/android/gms/internal/play_billing/zzic;->zzy(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzji;Z)V

    goto/16 :goto_4c1

    :pswitch_2bc
    const/4 v13, 0x0

    .line 53
    aget v5, v9, v2

    .line 54
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 55
    invoke-static {v5, v7, v6, v13}, Lcom/google/android/gms/internal/play_billing/zzic;->zzs(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzji;Z)V

    goto/16 :goto_4c1

    :pswitch_2ca
    const/4 v13, 0x0

    .line 50
    aget v5, v9, v2

    .line 51
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 52
    invoke-static {v5, v7, v6, v13}, Lcom/google/android/gms/internal/play_billing/zzic;->zzC(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzji;Z)V

    goto/16 :goto_4c1

    .line 45
    :pswitch_2d8
    aget v5, v9, v2

    .line 46
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 47
    sget v11, Lcom/google/android/gms/internal/play_billing/zzic;->zza:I

    if-eqz v7, :cond_68

    .line 48
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_68

    .line 49
    invoke-interface {v6, v5, v7}, Lcom/google/android/gms/internal/play_billing/zzji;->zze(ILjava/util/List;)V

    goto/16 :goto_68

    .line 38
    :pswitch_2ef
    aget v5, v9, v2

    .line 39
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 40
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzt(I)Lcom/google/android/gms/internal/play_billing/zzib;

    move-result-object v11

    .line 41
    sget v12, Lcom/google/android/gms/internal/play_billing/zzic;->zza:I

    if-eqz v7, :cond_68

    .line 42
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_68

    const/4 v13, 0x0

    .line 43
    :goto_306
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    if-ge v13, v12, :cond_68

    .line 44
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v14, v6

    check-cast v14, Lcom/google/android/gms/internal/play_billing/zzfy;

    invoke-virtual {v14, v5, v12, v11}, Lcom/google/android/gms/internal/play_billing/zzfy;->zzw(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzib;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_306

    .line 33
    :pswitch_319
    aget v5, v9, v2

    .line 34
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 35
    sget v11, Lcom/google/android/gms/internal/play_billing/zzic;->zza:I

    if-eqz v7, :cond_68

    .line 36
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_68

    .line 37
    invoke-interface {v6, v5, v7}, Lcom/google/android/gms/internal/play_billing/zzji;->zzI(ILjava/util/List;)V

    goto/16 :goto_68

    .line 30
    :pswitch_330
    aget v5, v9, v2

    .line 31
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v13, 0x0

    .line 32
    invoke-static {v5, v7, v6, v13}, Lcom/google/android/gms/internal/play_billing/zzic;->zzq(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzji;Z)V

    goto/16 :goto_4c1

    :pswitch_33e
    const/4 v13, 0x0

    .line 27
    aget v5, v9, v2

    .line 28
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 29
    invoke-static {v5, v7, v6, v13}, Lcom/google/android/gms/internal/play_billing/zzic;->zzt(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzji;Z)V

    goto/16 :goto_4c1

    :pswitch_34c
    const/4 v13, 0x0

    .line 24
    aget v5, v9, v2

    .line 25
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 26
    invoke-static {v5, v7, v6, v13}, Lcom/google/android/gms/internal/play_billing/zzic;->zzu(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzji;Z)V

    goto/16 :goto_4c1

    :pswitch_35a
    const/4 v13, 0x0

    .line 21
    aget v5, v9, v2

    .line 22
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 23
    invoke-static {v5, v7, v6, v13}, Lcom/google/android/gms/internal/play_billing/zzic;->zzw(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzji;Z)V

    goto/16 :goto_4c1

    :pswitch_368
    const/4 v13, 0x0

    .line 18
    aget v5, v9, v2

    .line 19
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 20
    invoke-static {v5, v7, v6, v13}, Lcom/google/android/gms/internal/play_billing/zzic;->zzD(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzji;Z)V

    goto/16 :goto_4c1

    :pswitch_376
    const/4 v13, 0x0

    .line 15
    aget v5, v9, v2

    .line 16
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 17
    invoke-static {v5, v7, v6, v13}, Lcom/google/android/gms/internal/play_billing/zzic;->zzx(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzji;Z)V

    goto/16 :goto_4c1

    :pswitch_384
    const/4 v13, 0x0

    .line 12
    aget v5, v9, v2

    .line 13
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 14
    invoke-static {v5, v7, v6, v13}, Lcom/google/android/gms/internal/play_billing/zzic;->zzv(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzji;Z)V

    goto/16 :goto_4c1

    :pswitch_392
    const/4 v13, 0x0

    .line 9
    aget v5, v9, v2

    .line 10
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 11
    invoke-static {v5, v7, v6, v13}, Lcom/google/android/gms/internal/play_billing/zzic;->zzr(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzji;Z)V

    goto/16 :goto_4c1

    :pswitch_3a0
    const/4 v13, 0x0

    .line 163
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4c1

    .line 164
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzt(I)Lcom/google/android/gms/internal/play_billing/zzib;

    move-result-object v7

    .line 165
    invoke-interface {v6, v14, v5, v7}, Lcom/google/android/gms/internal/play_billing/zzji;->zzq(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzib;)V

    goto/16 :goto_4c1

    :pswitch_3b4
    const/4 v13, 0x0

    .line 166
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4c1

    .line 167
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {v6, v14, v11, v12}, Lcom/google/android/gms/internal/play_billing/zzji;->zzE(IJ)V

    goto/16 :goto_4c1

    :pswitch_3c4
    const/4 v13, 0x0

    .line 168
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4c1

    .line 169
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v6, v14, v0}, Lcom/google/android/gms/internal/play_billing/zzji;->zzC(II)V

    goto/16 :goto_4c1

    :pswitch_3d4
    const/4 v13, 0x0

    .line 170
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4c1

    .line 171
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {v6, v14, v11, v12}, Lcom/google/android/gms/internal/play_billing/zzji;->zzA(IJ)V

    goto/16 :goto_4c1

    :pswitch_3e4
    const/4 v13, 0x0

    .line 172
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4c1

    .line 173
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v6, v14, v0}, Lcom/google/android/gms/internal/play_billing/zzji;->zzy(II)V

    goto/16 :goto_4c1

    :pswitch_3f4
    const/4 v13, 0x0

    .line 174
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4c1

    .line 175
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v6, v14, v0}, Lcom/google/android/gms/internal/play_billing/zzji;->zzi(II)V

    goto/16 :goto_4c1

    :pswitch_404
    const/4 v13, 0x0

    .line 176
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4c1

    .line 177
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v6, v14, v0}, Lcom/google/android/gms/internal/play_billing/zzji;->zzJ(II)V

    goto/16 :goto_4c1

    :pswitch_414
    const/4 v13, 0x0

    .line 178
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4c1

    .line 179
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-interface {v6, v14, v0}, Lcom/google/android/gms/internal/play_billing/zzji;->zzd(ILcom/google/android/gms/internal/play_billing/zzfp;)V

    goto/16 :goto_4c1

    :pswitch_426
    const/4 v13, 0x0

    .line 180
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4c1

    .line 181
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 182
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzt(I)Lcom/google/android/gms/internal/play_billing/zzib;

    move-result-object v7

    invoke-interface {v6, v14, v5, v7}, Lcom/google/android/gms/internal/play_billing/zzji;->zzw(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzib;)V

    goto/16 :goto_4c1

    :pswitch_43a
    const/4 v13, 0x0

    .line 183
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4c1

    .line 184
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v14, v0, v6}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzP(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzji;)V

    goto/16 :goto_4c1

    :pswitch_44a
    const/4 v13, 0x0

    .line 185
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4c1

    .line 186
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/play_billing/zzix;->zzt(Ljava/lang/Object;J)Z

    move-result v0

    .line 187
    invoke-interface {v6, v14, v0}, Lcom/google/android/gms/internal/play_billing/zzji;->zzb(IZ)V

    goto :goto_4c1

    :pswitch_459
    const/4 v13, 0x0

    .line 188
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4c1

    .line 189
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v6, v14, v0}, Lcom/google/android/gms/internal/play_billing/zzji;->zzk(II)V

    goto :goto_4c1

    :pswitch_468
    const/4 v13, 0x0

    .line 190
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4c1

    .line 191
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {v6, v14, v11, v12}, Lcom/google/android/gms/internal/play_billing/zzji;->zzm(IJ)V

    goto :goto_4c1

    :pswitch_477
    const/4 v13, 0x0

    .line 192
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4c1

    .line 193
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v6, v14, v0}, Lcom/google/android/gms/internal/play_billing/zzji;->zzr(II)V

    goto :goto_4c1

    :pswitch_486
    const/4 v13, 0x0

    .line 194
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4c1

    .line 195
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {v6, v14, v11, v12}, Lcom/google/android/gms/internal/play_billing/zzji;->zzL(IJ)V

    goto :goto_4c1

    :pswitch_495
    const/4 v13, 0x0

    .line 196
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4c1

    .line 197
    invoke-virtual {v10, v1, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {v6, v14, v11, v12}, Lcom/google/android/gms/internal/play_billing/zzji;->zzt(IJ)V

    goto :goto_4c1

    :pswitch_4a4
    const/4 v13, 0x0

    .line 198
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4c1

    .line 199
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/play_billing/zzix;->zzb(Ljava/lang/Object;J)F

    move-result v0

    .line 200
    invoke-interface {v6, v14, v0}, Lcom/google/android/gms/internal/play_billing/zzji;->zzo(IF)V

    goto :goto_4c1

    :pswitch_4b3
    const/4 v13, 0x0

    .line 201
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzI(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4c1

    .line 202
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/play_billing/zzix;->zza(Ljava/lang/Object;J)D

    move-result-wide v11

    .line 203
    invoke-interface {v6, v14, v11, v12}, Lcom/google/android/gms/internal/play_billing/zzji;->zzf(ID)V

    :cond_4c1
    :goto_4c1
    add-int/lit8 v2, v2, 0x3

    const v11, 0xfffff

    move-object/from16 v0, p0

    goto/16 :goto_2e

    .line 209
    :cond_4ca
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzgn;

    .line 210
    throw v16

    :cond_4d1
    const/16 v16, 0x0

    if-nez v8, :cond_4e1

    .line 204
    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzgp;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzc:Lcom/google/android/gms/internal/play_billing/zzir;

    .line 205
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzir;

    .line 206
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/play_billing/zzir;->zzl(Lcom/google/android/gms/internal/play_billing/zzji;)V

    return-void

    .line 207
    :cond_4e1
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzgn;

    .line 208
    throw v16

    :pswitch_data_4e8
    .packed-switch 0x0
        :pswitch_4b3
        :pswitch_4a4
        :pswitch_495
        :pswitch_486
        :pswitch_477
        :pswitch_468
        :pswitch_459
        :pswitch_44a
        :pswitch_43a
        :pswitch_426
        :pswitch_414
        :pswitch_404
        :pswitch_3f4
        :pswitch_3e4
        :pswitch_3d4
        :pswitch_3c4
        :pswitch_3b4
        :pswitch_3a0
        :pswitch_392
        :pswitch_384
        :pswitch_376
        :pswitch_368
        :pswitch_35a
        :pswitch_34c
        :pswitch_33e
        :pswitch_330
        :pswitch_319
        :pswitch_2ef
        :pswitch_2d8
        :pswitch_2ca
        :pswitch_2bc
        :pswitch_2ae
        :pswitch_2a0
        :pswitch_292
        :pswitch_284
        :pswitch_277
        :pswitch_26a
        :pswitch_25d
        :pswitch_250
        :pswitch_243
        :pswitch_236
        :pswitch_229
        :pswitch_21c
        :pswitch_20f
        :pswitch_202
        :pswitch_1f5
        :pswitch_1e8
        :pswitch_1db
        :pswitch_1ce
        :pswitch_1a4
        :pswitch_18d
        :pswitch_178
        :pswitch_163
        :pswitch_154
        :pswitch_145
        :pswitch_136
        :pswitch_127
        :pswitch_118
        :pswitch_103
        :pswitch_f4
        :pswitch_e1
        :pswitch_d1
        :pswitch_c3
        :pswitch_b5
        :pswitch_a7
        :pswitch_99
        :pswitch_8b
        :pswitch_7d
        :pswitch_6b
    .end packed-switch
.end method

.method public final zzj(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/zzhu;->zzc:[I

    array-length v2, v2

    const v3, 0xfffff

    if-ge v1, v2, :cond_1c6

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzq(I)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzp(I)I

    move-result v4

    const/16 v5, 0x32

    if-le v4, v5, :cond_1c

    const/16 v5, 0x45

    if-ge v4, v5, :cond_1c

    goto/16 :goto_1c2

    :cond_1c
    and-int/2addr v2, v3

    int-to-long v2, v2

    packed-switch v4, :pswitch_data_21a

    goto/16 :goto_1c2

    .line 2
    :pswitch_23
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 3
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzix;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzix;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 4
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/play_billing/zzic;->zzE(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c1

    goto/16 :goto_1c2

    .line 5
    :pswitch_39
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzix;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzix;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 6
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/play_billing/zzic;->zzE(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_52

    .line 7
    :pswitch_46
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzix;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzix;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 8
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/play_billing/zzic;->zzE(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_52
    if-nez v2, :cond_1c2

    goto/16 :goto_1c1

    .line 9
    :pswitch_56
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 10
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzix;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzix;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 11
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/play_billing/zzic;->zzE(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c1

    goto/16 :goto_1c2

    .line 12
    :pswitch_6c
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 13
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzix;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzix;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-nez v2, :cond_1c1

    goto/16 :goto_1c2

    .line 14
    :pswitch_80
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 15
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzix;->zzc(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzix;->zzc(Ljava/lang/Object;J)I

    move-result v2

    if-ne v4, v2, :cond_1c1

    goto/16 :goto_1c2

    .line 16
    :pswitch_92
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 17
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzix;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzix;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-nez v2, :cond_1c1

    goto/16 :goto_1c2

    .line 18
    :pswitch_a6
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 19
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzix;->zzc(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzix;->zzc(Ljava/lang/Object;J)I

    move-result v2

    if-ne v4, v2, :cond_1c1

    goto/16 :goto_1c2

    .line 20
    :pswitch_b8
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 21
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzix;->zzc(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzix;->zzc(Ljava/lang/Object;J)I

    move-result v2

    if-ne v4, v2, :cond_1c1

    goto/16 :goto_1c2

    .line 22
    :pswitch_ca
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 23
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzix;->zzc(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzix;->zzc(Ljava/lang/Object;J)I

    move-result v2

    if-ne v4, v2, :cond_1c1

    goto/16 :goto_1c2

    .line 24
    :pswitch_dc
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 25
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzix;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzix;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 26
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/play_billing/zzic;->zzE(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c1

    goto/16 :goto_1c2

    .line 27
    :pswitch_f2
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 28
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzix;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzix;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 29
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/play_billing/zzic;->zzE(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c1

    goto/16 :goto_1c2

    .line 30
    :pswitch_108
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 31
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzix;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzix;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 32
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/play_billing/zzic;->zzE(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c1

    goto/16 :goto_1c2

    .line 33
    :pswitch_11e
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 34
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzix;->zzt(Ljava/lang/Object;J)Z

    move-result v4

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzix;->zzt(Ljava/lang/Object;J)Z

    move-result v2

    if-ne v4, v2, :cond_1c1

    goto/16 :goto_1c2

    .line 35
    :pswitch_130
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 36
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzix;->zzc(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzix;->zzc(Ljava/lang/Object;J)I

    move-result v2

    if-ne v4, v2, :cond_1c1

    goto/16 :goto_1c2

    .line 37
    :pswitch_142
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 38
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzix;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzix;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-nez v2, :cond_1c1

    goto/16 :goto_1c2

    .line 39
    :pswitch_156
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 40
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzix;->zzc(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzix;->zzc(Ljava/lang/Object;J)I

    move-result v2

    if-ne v4, v2, :cond_1c1

    goto :goto_1c2

    .line 41
    :pswitch_167
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 42
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzix;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzix;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-nez v2, :cond_1c1

    goto :goto_1c2

    .line 43
    :pswitch_17a
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 44
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzix;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzix;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-nez v2, :cond_1c1

    goto :goto_1c2

    .line 45
    :pswitch_18d
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 46
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzix;->zzb(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    .line 47
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzix;->zzb(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-ne v4, v2, :cond_1c1

    goto :goto_1c2

    .line 48
    :pswitch_1a6
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 49
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzix;->zza(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 50
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzix;->zza(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-nez v2, :cond_1c1

    goto :goto_1c2

    :cond_1c1
    :goto_1c1
    return v0

    :cond_1c2
    :goto_1c2
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_2

    .line 47
    :cond_1c6
    iget v1, p0, Lcom/google/android/gms/internal/play_billing/zzhu;->zzk:I

    :goto_1c8
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/zzhu;->zzi:[I

    array-length v4, v2

    if-ge v1, v4, :cond_1f5

    .line 51
    aget v2, v2, v1

    .line 52
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-nez v4, :cond_1d6

    return v0

    .line 53
    :cond_1d6
    invoke-direct {p0, p1, v0, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzM(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_1dd

    goto :goto_1f2

    .line 54
    :cond_1dd
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzq(I)I

    move-result v2

    and-int/2addr v2, v3

    int-to-long v4, v2

    .line 55
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzix;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzix;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 56
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/play_billing/zzic;->zzE(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f2

    return v0

    :cond_1f2
    :goto_1f2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c8

    .line 57
    :cond_1f5
    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzgp;

    iget-object v1, v1, Lcom/google/android/gms/internal/play_billing/zzgp;->zzc:Lcom/google/android/gms/internal/play_billing/zzir;

    .line 58
    move-object v2, p2

    check-cast v2, Lcom/google/android/gms/internal/play_billing/zzgp;

    iget-object v2, v2, Lcom/google/android/gms/internal/play_billing/zzgp;->zzc:Lcom/google/android/gms/internal/play_billing/zzir;

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_206

    return v0

    :cond_206
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/zzhu;->zzh:Z

    if-eqz v0, :cond_217

    .line 60
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzgm;

    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/zzgm;->zzb:Lcom/google/android/gms/internal/play_billing/zzgh;

    .line 61
    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzgm;

    iget-object p2, p2, Lcom/google/android/gms/internal/play_billing/zzgm;->zzb:Lcom/google/android/gms/internal/play_billing/zzgh;

    .line 62
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzgh;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_217
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_21a
    .packed-switch 0x0
        :pswitch_1a6
        :pswitch_18d
        :pswitch_17a
        :pswitch_167
        :pswitch_156
        :pswitch_142
        :pswitch_130
        :pswitch_11e
        :pswitch_108
        :pswitch_f2
        :pswitch_dc
        :pswitch_ca
        :pswitch_b8
        :pswitch_a6
        :pswitch_92
        :pswitch_80
        :pswitch_6c
        :pswitch_56
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_39
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
    .end packed-switch
.end method

.method public final zzk(Ljava/lang/Object;)Z
    .registers 16

    const/4 v0, 0x0

    const v1, 0xfffff

    move v2, v0

    move v4, v2

    move v3, v1

    .line 1
    :goto_7
    iget v5, p0, Lcom/google/android/gms/internal/play_billing/zzhu;->zzj:I

    const/4 v6, 0x1

    if-ge v2, v5, :cond_fe

    iget-object v5, p0, Lcom/google/android/gms/internal/play_billing/zzhu;->zzi:[I

    aget v9, v5, v2

    .line 2
    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzq(I)I

    move-result v5

    iget-object v13, p0, Lcom/google/android/gms/internal/play_billing/zzhu;->zzc:[I

    add-int/lit8 v7, v9, 0x2

    .line 3
    aget v7, v13, v7

    and-int v8, v7, v1

    ushr-int/lit8 v7, v7, 0x14

    shl-int v12, v6, v7

    if-eq v8, v3, :cond_2e

    if-eq v8, v1, :cond_2b

    int-to-long v3, v8

    sget-object v6, Lcom/google/android/gms/internal/play_billing/zzhu;->zzb:Lsun/misc/Unsafe;

    .line 4
    invoke-virtual {v6, p1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    :cond_2b
    move v11, v4

    move v10, v8

    goto :goto_30

    :cond_2e
    move v10, v3

    move v11, v4

    :goto_30
    const/high16 v3, 0x10000000

    and-int/2addr v3, v5

    move-object v7, p0

    move-object v8, p1

    if-eqz v3, :cond_3e

    .line 5
    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzI(Ljava/lang/Object;IIII)Z

    move-result p1

    if-nez p1, :cond_3e

    return v0

    :cond_3e
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzp(I)I

    move-result p1

    const/16 v3, 0x9

    if-eq p1, v3, :cond_e6

    const/16 v3, 0x11

    if-eq p1, v3, :cond_e6

    const/16 v3, 0x1b

    if-eq p1, v3, :cond_be

    const/16 v3, 0x3c

    if-eq p1, v3, :cond_ab

    const/16 v3, 0x44

    if-eq p1, v3, :cond_ab

    const/16 v3, 0x31

    if-eq p1, v3, :cond_be

    const/16 v3, 0x32

    if-eq p1, v3, :cond_60

    goto/16 :goto_f7

    :cond_60
    and-int p1, v5, v1

    int-to-long v3, p1

    .line 12
    invoke-static {v8, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzix;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 13
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzhm;

    .line 14
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f7

    .line 15
    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzv(I)Ljava/lang/Object;

    move-result-object v3

    .line 16
    check-cast v3, Lcom/google/android/gms/internal/play_billing/zzhl;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/zzhl;->zzc()Lcom/google/android/gms/internal/play_billing/zzhk;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/play_billing/zzhk;->zzc:Lcom/google/android/gms/internal/play_billing/zzjg;

    .line 17
    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/zzjg;->zzb()Lcom/google/android/gms/internal/play_billing/zzjh;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzjh;->zzi:Lcom/google/android/gms/internal/play_billing/zzjh;

    if-ne v3, v4, :cond_f7

    .line 18
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, 0x0

    :cond_8c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_a4

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzhy;->zza()Lcom/google/android/gms/internal/play_billing/zzhy;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/play_billing/zzhy;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzib;

    move-result-object v3

    .line 20
    :cond_a4
    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzib;->zzk(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8c

    return v0

    .line 21
    :cond_ab
    aget p1, v13, v9

    .line 22
    invoke-direct {p0, v8, p1, v9}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzM(Ljava/lang/Object;II)Z

    move-result p1

    if-eqz p1, :cond_f7

    .line 23
    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzt(I)Lcom/google/android/gms/internal/play_billing/zzib;

    move-result-object p1

    invoke-static {v8, v5, p1}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzJ(Ljava/lang/Object;ILcom/google/android/gms/internal/play_billing/zzib;)Z

    move-result p1

    if-nez p1, :cond_f7

    return v0

    :cond_be
    and-int p1, v5, v1

    int-to-long v3, p1

    .line 6
    invoke-static {v8, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzix;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 7
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f7

    .line 8
    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzt(I)Lcom/google/android/gms/internal/play_billing/zzib;

    move-result-object v3

    move v4, v0

    .line 9
    :goto_d2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_f7

    .line 10
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 11
    invoke-interface {v3, v5}, Lcom/google/android/gms/internal/play_billing/zzib;->zzk(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e3

    return v0

    :cond_e3
    add-int/lit8 v4, v4, 0x1

    goto :goto_d2

    .line 24
    :cond_e6
    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzI(Ljava/lang/Object;IIII)Z

    move-result p1

    if-eqz p1, :cond_f7

    .line 25
    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzt(I)Lcom/google/android/gms/internal/play_billing/zzib;

    move-result-object p1

    invoke-static {v8, v5, p1}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzJ(Ljava/lang/Object;ILcom/google/android/gms/internal/play_billing/zzib;)Z

    move-result p1

    if-nez p1, :cond_f7

    return v0

    :cond_f7
    :goto_f7
    add-int/lit8 v2, v2, 0x1

    move-object p1, v8

    move v3, v10

    move v4, v11

    goto/16 :goto_7

    :cond_fe
    move-object v7, p0

    move-object v8, p1

    iget-boolean p1, v7, Lcom/google/android/gms/internal/play_billing/zzhu;->zzh:Z

    if-eqz p1, :cond_110

    .line 26
    move-object p1, v8

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzgm;

    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/zzgm;->zzb:Lcom/google/android/gms/internal/play_billing/zzgh;

    .line 27
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzgh;->zzj()Z

    move-result p1

    if-nez p1, :cond_110

    return v0

    :cond_110
    return v6
.end method
