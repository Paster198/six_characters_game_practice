.class final Lcom/google/android/gms/internal/auth/zzga;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-base@@18.0.10"

# interfaces
.implements Lcom/google/android/gms/internal/auth/zzgi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/auth/zzgi<",
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

.field private final zzg:Lcom/google/android/gms/internal/auth/zzfx;

.field private final zzh:[I

.field private final zzi:I

.field private final zzj:I

.field private final zzk:Lcom/google/android/gms/internal/auth/zzfl;

.field private final zzl:Lcom/google/android/gms/internal/auth/zzgz;

.field private final zzm:Lcom/google/android/gms/internal/auth/zzem;

.field private final zzn:Lcom/google/android/gms/internal/auth/zzgc;

.field private final zzo:Lcom/google/android/gms/internal/auth/zzfs;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 1
    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/auth/zzga;->zza:[I

    invoke-static {}, Lcom/google/android/gms/internal/auth/zzhj;->zzg()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/auth/zzga;->zzb:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/auth/zzfx;IZ[IIILcom/google/android/gms/internal/auth/zzgc;Lcom/google/android/gms/internal/auth/zzfl;Lcom/google/android/gms/internal/auth/zzgz;Lcom/google/android/gms/internal/auth/zzem;Lcom/google/android/gms/internal/auth/zzfs;)V
    .registers 16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzga;->zzc:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/auth/zzga;->zzd:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/auth/zzga;->zze:I

    iput p4, p0, Lcom/google/android/gms/internal/auth/zzga;->zzf:I

    iput-object p8, p0, Lcom/google/android/gms/internal/auth/zzga;->zzh:[I

    iput p9, p0, Lcom/google/android/gms/internal/auth/zzga;->zzi:I

    iput p10, p0, Lcom/google/android/gms/internal/auth/zzga;->zzj:I

    iput-object p11, p0, Lcom/google/android/gms/internal/auth/zzga;->zzn:Lcom/google/android/gms/internal/auth/zzgc;

    iput-object p12, p0, Lcom/google/android/gms/internal/auth/zzga;->zzk:Lcom/google/android/gms/internal/auth/zzfl;

    iput-object p13, p0, Lcom/google/android/gms/internal/auth/zzga;->zzl:Lcom/google/android/gms/internal/auth/zzgz;

    iput-object p14, p0, Lcom/google/android/gms/internal/auth/zzga;->zzm:Lcom/google/android/gms/internal/auth/zzem;

    iput-object p5, p0, Lcom/google/android/gms/internal/auth/zzga;->zzg:Lcom/google/android/gms/internal/auth/zzfx;

    iput-object p15, p0, Lcom/google/android/gms/internal/auth/zzga;->zzo:Lcom/google/android/gms/internal/auth/zzfs;

    return-void
.end method

.method private final zzA(Ljava/lang/Object;II)V
    .registers 6

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/auth/zzga;->zzl(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/auth/zzhj;->zzn(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzB(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 7

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/auth/zzga;->zzb:Lsun/misc/Unsafe;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/auth/zzga;->zzo(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/auth/zzga;->zzz(Ljava/lang/Object;I)V

    return-void
.end method

.method private final zzC(Ljava/lang/Object;IILjava/lang/Object;)V
    .registers 8

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/auth/zzga;->zzb:Lsun/misc/Unsafe;

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/auth/zzga;->zzo(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/auth/zzga;->zzA(Ljava/lang/Object;II)V

    return-void
.end method

.method private final zzD(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .registers 4

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/auth/zzga;->zzE(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/auth/zzga;->zzE(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method private final zzE(Ljava/lang/Object;I)Z
    .registers 10

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/auth/zzga;->zzl(I)I

    move-result v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_ee

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/auth/zzga;->zzo(I)I

    move-result p2

    and-int v0, p2, v1

    invoke-static {p2}, Lcom/google/android/gms/internal/auth/zzga;->zzn(I)I

    move-result p2

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    packed-switch p2, :pswitch_data_fc

    .line 16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 25
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 3
    :pswitch_29
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_30

    return v6

    :cond_30
    return v5

    .line 4
    :pswitch_31
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_3a

    return v6

    :cond_3a
    return v5

    .line 5
    :pswitch_3b
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_42

    return v6

    :cond_42
    return v5

    .line 6
    :pswitch_43
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_4c

    return v6

    :cond_4c
    return v5

    .line 7
    :pswitch_4d
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_54

    return v6

    :cond_54
    return v5

    .line 8
    :pswitch_55
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5c

    return v6

    :cond_5c
    return v5

    .line 9
    :pswitch_5d
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_64

    return v6

    :cond_64
    return v5

    .line 10
    :pswitch_65
    sget-object p2, Lcom/google/android/gms/internal/auth/zzef;->zzb:Lcom/google/android/gms/internal/auth/zzef;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/auth/zzef;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_72

    return v6

    :cond_72
    return v5

    .line 11
    :pswitch_73
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7a

    return v6

    :cond_7a
    return v5

    .line 12
    :pswitch_7b
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 13
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_8d

    .line 14
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8c

    return v6

    :cond_8c
    return v5

    :cond_8d
    instance-of p2, p1, Lcom/google/android/gms/internal/auth/zzef;

    if-eqz p2, :cond_9b

    .line 15
    sget-object p2, Lcom/google/android/gms/internal/auth/zzef;->zzb:Lcom/google/android/gms/internal/auth/zzef;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/auth/zzef;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9a

    return v6

    :cond_9a
    return v5

    .line 26
    :cond_9b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 16
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 17
    :pswitch_a1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzt(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 18
    :pswitch_a6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_ad

    return v6

    :cond_ad
    return v5

    .line 19
    :pswitch_ae
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_b7

    return v6

    :cond_b7
    return v5

    .line 20
    :pswitch_b8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_bf

    return v6

    :cond_bf
    return v5

    .line 21
    :pswitch_c0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_c9

    return v6

    :cond_c9
    return v5

    .line 22
    :pswitch_ca
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_d3

    return v6

    :cond_d3
    return v5

    .line 23
    :pswitch_d4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzb(Ljava/lang/Object;J)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    if-eqz p1, :cond_df

    return v6

    :cond_df
    return v5

    .line 24
    :pswitch_e0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zza(Ljava/lang/Object;J)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_ed

    return v6

    :cond_ed
    return v5

    :cond_ee
    ushr-int/lit8 p2, v0, 0x14

    shl-int p2, v6, p2

    .line 26
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_fa

    return v6

    :cond_fa
    return v5

    nop

    :pswitch_data_fc
    .packed-switch 0x0
        :pswitch_e0
        :pswitch_d4
        :pswitch_ca
        :pswitch_c0
        :pswitch_b8
        :pswitch_ae
        :pswitch_a6
        :pswitch_a1
        :pswitch_7b
        :pswitch_73
        :pswitch_65
        :pswitch_5d
        :pswitch_55
        :pswitch_4d
        :pswitch_43
        :pswitch_3b
        :pswitch_31
        :pswitch_29
    .end packed-switch
.end method

.method private final zzF(Ljava/lang/Object;IIII)Z
    .registers 7

    const v0, 0xfffff

    if-ne p3, v0, :cond_a

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/auth/zzga;->zzE(Ljava/lang/Object;I)Z

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

.method private static zzG(Ljava/lang/Object;ILcom/google/android/gms/internal/auth/zzgi;)Z
    .registers 5

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    .line 1
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 2
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/auth/zzgi;->zzi(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static zzH(Ljava/lang/Object;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_4
    instance-of v0, p0, Lcom/google/android/gms/internal/auth/zzev;

    if-eqz v0, :cond_f

    check-cast p0, Lcom/google/android/gms/internal/auth/zzev;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzev;->zzm()Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x1

    return p0
.end method

.method private final zzI(Ljava/lang/Object;II)Z
    .registers 6

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/auth/zzga;->zzl(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_11

    const/4 p1, 0x1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method static zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/zzha;
    .registers 3

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/auth/zzev;

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzev;->zzc:Lcom/google/android/gms/internal/auth/zzha;

    invoke-static {}, Lcom/google/android/gms/internal/auth/zzha;->zza()Lcom/google/android/gms/internal/auth/zzha;

    move-result-object v1

    if-ne v0, v1, :cond_10

    invoke-static {}, Lcom/google/android/gms/internal/auth/zzha;->zzd()Lcom/google/android/gms/internal/auth/zzha;

    move-result-object v0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/auth/zzev;->zzc:Lcom/google/android/gms/internal/auth/zzha;

    :cond_10
    return-object v0
.end method

.method static zzj(Ljava/lang/Class;Lcom/google/android/gms/internal/auth/zzfu;Lcom/google/android/gms/internal/auth/zzgc;Lcom/google/android/gms/internal/auth/zzfl;Lcom/google/android/gms/internal/auth/zzgz;Lcom/google/android/gms/internal/auth/zzem;Lcom/google/android/gms/internal/auth/zzfs;)Lcom/google/android/gms/internal/auth/zzga;
    .registers 38

    move-object/from16 v0, p1

    .line 1
    instance-of v1, v0, Lcom/google/android/gms/internal/auth/zzgh;

    if-eqz v1, :cond_3df

    check-cast v0, Lcom/google/android/gms/internal/auth/zzgh;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzgh;->zzd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xd800

    if-lt v4, v5, :cond_25

    const/4 v4, 0x1

    :goto_1b
    add-int/lit8 v7, v4, 0x1

    .line 4
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_26

    move v4, v7

    goto :goto_1b

    :cond_25
    const/4 v7, 0x1

    :cond_26
    add-int/lit8 v4, v7, 0x1

    .line 5
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_45

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_32
    add-int/lit8 v10, v4, 0x1

    .line 6
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_42

    and-int/lit16 v4, v4, 0x1fff

    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    add-int/lit8 v9, v9, 0xd

    move v4, v10

    goto :goto_32

    :cond_42
    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    move v4, v10

    :cond_45
    if-nez v7, :cond_57

    sget-object v7, Lcom/google/android/gms/internal/auth/zzga;->zza:[I

    move v9, v3

    move v11, v9

    move v12, v11

    move v13, v12

    move/from16 v16, v13

    move/from16 v18, v16

    move-object/from16 v17, v7

    move/from16 v7, v18

    goto/16 :goto_169

    :cond_57
    add-int/lit8 v7, v4, 0x1

    .line 7
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_76

    and-int/lit16 v4, v4, 0x1fff

    const/16 v9, 0xd

    :goto_63
    add-int/lit8 v10, v7, 0x1

    .line 8
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_73

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v10

    goto :goto_63

    :cond_73
    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    move v7, v10

    :cond_76
    add-int/lit8 v9, v7, 0x1

    .line 9
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_95

    and-int/lit16 v7, v7, 0x1fff

    const/16 v10, 0xd

    :goto_82
    add-int/lit8 v11, v9, 0x1

    .line 10
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_92

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v11

    goto :goto_82

    :cond_92
    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    move v9, v11

    :cond_95
    add-int/lit8 v10, v9, 0x1

    .line 11
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_b4

    and-int/lit16 v9, v9, 0x1fff

    const/16 v11, 0xd

    :goto_a1
    add-int/lit8 v12, v10, 0x1

    .line 12
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_b1

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    add-int/lit8 v11, v11, 0xd

    move v10, v12

    goto :goto_a1

    :cond_b1
    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    move v10, v12

    :cond_b4
    add-int/lit8 v11, v10, 0x1

    .line 13
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_d3

    and-int/lit16 v10, v10, 0x1fff

    const/16 v12, 0xd

    :goto_c0
    add-int/lit8 v13, v11, 0x1

    .line 14
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_d0

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_c0

    :cond_d0
    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    move v11, v13

    :cond_d3
    add-int/lit8 v12, v11, 0x1

    .line 15
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_f2

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_df
    add-int/lit8 v14, v12, 0x1

    .line 16
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_ef

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_df

    :cond_ef
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    :cond_f2
    add-int/lit8 v13, v12, 0x1

    .line 17
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_111

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_fe
    add-int/lit8 v15, v13, 0x1

    .line 18
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_10e

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_fe

    :cond_10e
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_111
    add-int/lit8 v14, v13, 0x1

    .line 19
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_132

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_11d
    add-int/lit8 v16, v14, 0x1

    .line 20
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_12e

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_11d

    :cond_12e
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_132
    add-int/lit8 v15, v14, 0x1

    .line 21
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_155

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_13e
    add-int/lit8 v17, v15, 0x1

    .line 22
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v5, :cond_150

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_13e

    :cond_150
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_155
    add-int v16, v14, v12

    add-int v13, v16, v13

    add-int v16, v4, v4

    add-int v16, v16, v7

    .line 23
    new-array v7, v13, [I

    move v13, v12

    move v12, v9

    move v9, v13

    move-object/from16 v17, v7

    move v13, v10

    move/from16 v18, v14

    move v7, v4

    move v4, v15

    .line 6
    :goto_169
    sget-object v10, Lcom/google/android/gms/internal/auth/zzga;->zzb:Lsun/misc/Unsafe;

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzgh;->zze()[Ljava/lang/Object;

    move-result-object v14

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzgh;->zza()Lcom/google/android/gms/internal/auth/zzfx;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    add-int v19, v18, v9

    add-int v9, v11, v11

    mul-int/lit8 v11, v11, 0x3

    .line 26
    new-array v11, v11, [I

    .line 27
    new-array v9, v9, [Ljava/lang/Object;

    move/from16 v20, v3

    move/from16 v21, v20

    move/from16 v22, v18

    move/from16 v23, v19

    :goto_189
    if-ge v4, v2, :cond_3c0

    add-int/lit8 v24, v4, 0x1

    .line 28
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_1b1

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v3, v24

    const/16 v24, 0xd

    :goto_199
    add-int/lit8 v25, v3, 0x1

    .line 29
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v5, :cond_1ab

    and-int/lit16 v3, v3, 0x1fff

    shl-int v3, v3, v24

    or-int/2addr v4, v3

    add-int/lit8 v24, v24, 0xd

    move/from16 v3, v25

    goto :goto_199

    :cond_1ab
    shl-int v3, v3, v24

    or-int/2addr v4, v3

    move/from16 v3, v25

    goto :goto_1b3

    :cond_1b1
    move/from16 v3, v24

    :goto_1b3
    add-int/lit8 v24, v3, 0x1

    .line 30
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v5, :cond_1d9

    and-int/lit16 v3, v3, 0x1fff

    move/from16 v8, v24

    const/16 v24, 0xd

    :goto_1c1
    add-int/lit8 v25, v8, 0x1

    .line 31
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_1d3

    and-int/lit16 v8, v8, 0x1fff

    shl-int v8, v8, v24

    or-int/2addr v3, v8

    add-int/lit8 v24, v24, 0xd

    move/from16 v8, v25

    goto :goto_1c1

    :cond_1d3
    shl-int v8, v8, v24

    or-int/2addr v3, v8

    move/from16 v8, v25

    goto :goto_1db

    :cond_1d9
    move/from16 v8, v24

    :goto_1db
    and-int/lit16 v6, v3, 0x400

    if-eqz v6, :cond_1e5

    add-int/lit8 v6, v20, 0x1

    .line 32
    aput v21, v17, v20

    move/from16 v20, v6

    :cond_1e5
    and-int/lit16 v6, v3, 0xff

    const/16 v5, 0x33

    if-lt v6, v5, :cond_285

    add-int/lit8 v5, v8, 0x1

    .line 33
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move-object/from16 v26, v0

    const v0, 0xd800

    if-lt v8, v0, :cond_216

    and-int/lit16 v8, v8, 0x1fff

    const/16 v29, 0xd

    :goto_1fc
    add-int/lit8 v30, v5, 0x1

    .line 34
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v0, :cond_211

    and-int/lit16 v0, v5, 0x1fff

    shl-int v0, v0, v29

    or-int/2addr v8, v0

    add-int/lit8 v29, v29, 0xd

    move/from16 v5, v30

    const v0, 0xd800

    goto :goto_1fc

    :cond_211
    shl-int v0, v5, v29

    or-int/2addr v8, v0

    move/from16 v5, v30

    :cond_216
    add-int/lit8 v0, v6, -0x33

    move/from16 v29, v2

    const/16 v2, 0x9

    if-eq v0, v2, :cond_23d

    const/16 v2, 0x11

    if-ne v0, v2, :cond_223

    goto :goto_23d

    :cond_223
    const/16 v2, 0xc

    if-ne v0, v2, :cond_24c

    .line 36
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/gms/internal/auth/zzgh;->zzc()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_232

    and-int/lit16 v0, v3, 0x800

    if-eqz v0, :cond_24c

    :cond_232
    div-int/lit8 v0, v21, 0x3

    add-int/2addr v0, v0

    add-int/2addr v0, v2

    add-int/lit8 v2, v16, 0x1

    .line 37
    aget-object v16, v14, v16

    aput-object v16, v9, v0

    goto :goto_24a

    .line 34
    :cond_23d
    :goto_23d
    div-int/lit8 v0, v21, 0x3

    add-int/2addr v0, v0

    const/16 v24, 0x1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v16, 0x1

    .line 35
    aget-object v16, v14, v16

    aput-object v16, v9, v0

    :goto_24a
    move/from16 v16, v2

    :cond_24c
    add-int/2addr v8, v8

    .line 38
    aget-object v0, v14, v8

    .line 39
    instance-of v2, v0, Ljava/lang/reflect/Field;

    if-eqz v2, :cond_256

    .line 40
    check-cast v0, Ljava/lang/reflect/Field;

    goto :goto_25e

    .line 41
    :cond_256
    check-cast v0, Ljava/lang/String;

    invoke-static {v15, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzv(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 42
    aput-object v0, v14, v8

    :goto_25e
    move v2, v4

    move/from16 v27, v5

    .line 43
    invoke-virtual {v10, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v0, v4

    add-int/lit8 v8, v8, 0x1

    .line 44
    aget-object v4, v14, v8

    .line 45
    instance-of v5, v4, Ljava/lang/reflect/Field;

    if-eqz v5, :cond_271

    .line 46
    check-cast v4, Ljava/lang/reflect/Field;

    goto :goto_279

    .line 47
    :cond_271
    check-cast v4, Ljava/lang/String;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/auth/zzga;->zzv(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 48
    aput-object v4, v14, v8

    .line 49
    :goto_279
    invoke-virtual {v10, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v4, v4

    move-object/from16 v28, v1

    move/from16 v25, v27

    const/4 v8, 0x0

    goto/16 :goto_382

    :cond_285
    move-object/from16 v26, v0

    move/from16 v29, v2

    move v2, v4

    add-int/lit8 v0, v16, 0x1

    .line 50
    aget-object v4, v14, v16

    check-cast v4, Ljava/lang/String;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/auth/zzga;->zzv(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/16 v5, 0x9

    if-eq v6, v5, :cond_303

    const/16 v5, 0x11

    if-ne v6, v5, :cond_29e

    goto/16 :goto_303

    :cond_29e
    const/16 v5, 0x1b

    if-eq v6, v5, :cond_2f3

    const/16 v5, 0x31

    if-ne v6, v5, :cond_2a7

    goto :goto_2f3

    :cond_2a7
    const/16 v5, 0xc

    if-eq v6, v5, :cond_2db

    const/16 v5, 0x1e

    if-eq v6, v5, :cond_2db

    const/16 v5, 0x2c

    if-ne v6, v5, :cond_2b4

    goto :goto_2db

    :cond_2b4
    const/16 v5, 0x32

    if-ne v6, v5, :cond_2d8

    add-int/lit8 v5, v22, 0x1

    .line 55
    aput v21, v17, v22

    div-int/lit8 v22, v21, 0x3

    add-int/lit8 v27, v16, 0x2

    .line 56
    aget-object v0, v14, v0

    add-int v22, v22, v22

    aput-object v0, v9, v22

    and-int/lit16 v0, v3, 0x800

    if-eqz v0, :cond_2d4

    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v0, v16, 0x3

    .line 57
    aget-object v16, v14, v27

    aput-object v16, v9, v22

    move/from16 v27, v0

    :cond_2d4
    move/from16 v22, v5

    :goto_2d6
    const/4 v0, 0x1

    goto :goto_310

    :cond_2d8
    move/from16 v27, v0

    goto :goto_2d6

    .line 53
    :cond_2db
    :goto_2db
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/gms/internal/auth/zzgh;->zzc()I

    move-result v5

    move/from16 v27, v0

    const/4 v0, 0x1

    if-eq v5, v0, :cond_2e8

    and-int/lit16 v5, v3, 0x800

    if-eqz v5, :cond_310

    :cond_2e8
    div-int/lit8 v5, v21, 0x3

    add-int/2addr v5, v5

    add-int/2addr v5, v0

    add-int/lit8 v16, v16, 0x2

    .line 54
    aget-object v24, v14, v27

    aput-object v24, v9, v5

    goto :goto_300

    :cond_2f3
    :goto_2f3
    move/from16 v27, v0

    const/4 v0, 0x1

    .line 65
    div-int/lit8 v5, v21, 0x3

    add-int/2addr v5, v5

    add-int/2addr v5, v0

    add-int/lit8 v16, v16, 0x2

    .line 52
    aget-object v24, v14, v27

    aput-object v24, v9, v5

    :goto_300
    move/from16 v27, v16

    goto :goto_310

    :cond_303
    :goto_303
    move/from16 v27, v0

    const/4 v0, 0x1

    .line 50
    div-int/lit8 v5, v21, 0x3

    add-int/2addr v5, v5

    add-int/2addr v5, v0

    .line 51
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v16

    aput-object v16, v9, v5

    .line 58
    :cond_310
    :goto_310
    invoke-virtual {v10, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v4, v4

    and-int/lit16 v5, v3, 0x1000

    const v16, 0xfffff

    if-eqz v5, :cond_36a

    const/16 v5, 0x11

    if-gt v6, v5, :cond_36a

    add-int/lit8 v5, v8, 0x1

    .line 59
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const v0, 0xd800

    if-lt v8, v0, :cond_345

    and-int/lit16 v8, v8, 0x1fff

    const/16 v16, 0xd

    :goto_32f
    add-int/lit8 v25, v5, 0x1

    .line 60
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v0, :cond_341

    and-int/lit16 v5, v5, 0x1fff

    shl-int v5, v5, v16

    or-int/2addr v8, v5

    add-int/lit8 v16, v16, 0xd

    move/from16 v5, v25

    goto :goto_32f

    :cond_341
    shl-int v5, v5, v16

    or-int/2addr v8, v5

    goto :goto_347

    :cond_345
    move/from16 v25, v5

    :goto_347
    add-int v5, v7, v7

    div-int/lit8 v16, v8, 0x20

    add-int v5, v5, v16

    .line 61
    aget-object v0, v14, v5

    move-object/from16 v28, v1

    .line 62
    instance-of v1, v0, Ljava/lang/reflect/Field;

    if-eqz v1, :cond_358

    .line 63
    check-cast v0, Ljava/lang/reflect/Field;

    goto :goto_360

    .line 64
    :cond_358
    check-cast v0, Ljava/lang/String;

    invoke-static {v15, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzv(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 65
    aput-object v0, v14, v5

    .line 66
    :goto_360
    invoke-virtual {v10, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v0, v0

    rem-int/lit8 v8, v8, 0x20

    move/from16 v16, v0

    goto :goto_36f

    :cond_36a
    move-object/from16 v28, v1

    move/from16 v25, v8

    const/4 v8, 0x0

    :goto_36f
    const/16 v0, 0x12

    if-lt v6, v0, :cond_37d

    const/16 v5, 0x31

    if-gt v6, v5, :cond_37d

    add-int/lit8 v0, v23, 0x1

    .line 67
    aput v4, v17, v23

    move/from16 v23, v0

    :cond_37d
    move v0, v4

    move/from16 v4, v16

    move/from16 v16, v27

    :goto_382
    add-int/lit8 v1, v21, 0x1

    .line 68
    aput v2, v11, v21

    add-int/lit8 v2, v21, 0x2

    and-int/lit16 v5, v3, 0x200

    if-eqz v5, :cond_38f

    const/high16 v5, 0x20000000

    goto :goto_390

    :cond_38f
    const/4 v5, 0x0

    :goto_390
    move/from16 v27, v0

    and-int/lit16 v0, v3, 0x100

    if-eqz v0, :cond_399

    const/high16 v0, 0x10000000

    goto :goto_39a

    :cond_399
    const/4 v0, 0x0

    :goto_39a
    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_3a1

    const/high16 v3, -0x80000000

    goto :goto_3a2

    :cond_3a1
    const/4 v3, 0x0

    :goto_3a2
    shl-int/lit8 v6, v6, 0x14

    or-int/2addr v0, v5

    or-int/2addr v0, v3

    or-int/2addr v0, v6

    or-int v0, v0, v27

    .line 69
    aput v0, v11, v1

    add-int/lit8 v21, v21, 0x3

    shl-int/lit8 v0, v8, 0x14

    or-int/2addr v0, v4

    .line 70
    aput v0, v11, v2

    move/from16 v4, v25

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move/from16 v2, v29

    const/4 v3, 0x0

    const v5, 0xd800

    goto/16 :goto_189

    :cond_3c0
    move-object/from16 v26, v0

    .line 57
    new-instance v0, Lcom/google/android/gms/internal/auth/zzga;

    .line 71
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/gms/internal/auth/zzgh;->zza()Lcom/google/android/gms/internal/auth/zzfx;

    move-result-object v14

    .line 72
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/gms/internal/auth/zzgh;->zzc()I

    move-result v15

    const/16 v16, 0x0

    move-object/from16 v20, p2

    move-object/from16 v21, p3

    move-object/from16 v22, p4

    move-object/from16 v23, p5

    move-object/from16 v24, p6

    move-object v10, v11

    move-object v11, v9

    move-object v9, v0

    invoke-direct/range {v9 .. v24}, Lcom/google/android/gms/internal/auth/zzga;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/auth/zzfx;IZ[IIILcom/google/android/gms/internal/auth/zzgc;Lcom/google/android/gms/internal/auth/zzfl;Lcom/google/android/gms/internal/auth/zzgz;Lcom/google/android/gms/internal/auth/zzem;Lcom/google/android/gms/internal/auth/zzfs;)V

    return-object v9

    .line 73
    :cond_3df
    check-cast v0, Lcom/google/android/gms/internal/auth/zzgw;

    const/4 v0, 0x0

    .line 74
    throw v0
.end method

.method private static zzk(Ljava/lang/Object;J)I
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private final zzl(I)I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->zzc:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method private final zzm(II)I
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->zzc:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    const/4 v1, -0x1

    add-int/2addr v0, v1

    :goto_7
    if-gt p2, v0, :cond_1e

    add-int v2, v0, p2

    ushr-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v2, 0x3

    iget-object v4, p0, Lcom/google/android/gms/internal/auth/zzga;->zzc:[I

    aget v4, v4, v3

    if-ne p1, v4, :cond_16

    return v3

    :cond_16
    if-ge p1, v4, :cond_1b

    add-int/lit8 v0, v2, -0x1

    goto :goto_7

    :cond_1b
    add-int/lit8 p2, v2, 0x1

    goto :goto_7

    :cond_1e
    return v1
.end method

.method private static zzn(I)I
    .registers 1

    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private final zzo(I)I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->zzc:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method private static zzp(Ljava/lang/Object;J)J
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private final zzq(I)Lcom/google/android/gms/internal/auth/zzey;
    .registers 3

    .line 1
    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->zzd:[Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    check-cast p1, Lcom/google/android/gms/internal/auth/zzey;

    return-object p1
.end method

.method private final zzr(I)Lcom/google/android/gms/internal/auth/zzgi;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->zzd:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    aget-object v0, v0, p1

    check-cast v0, Lcom/google/android/gms/internal/auth/zzgi;

    if-eqz v0, :cond_c

    return-object v0

    .line 2
    :cond_c
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzgf;->zza()Lcom/google/android/gms/internal/auth/zzgf;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzga;->zzd:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/auth/zzgf;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/auth/zzgi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzga;->zzd:[Ljava/lang/Object;

    .line 3
    aput-object v0, v1, p1

    return-object v0
.end method

.method private final zzs(I)Ljava/lang/Object;
    .registers 3

    .line 1
    div-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->zzd:[Ljava/lang/Object;

    add-int/2addr p1, p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private final zzt(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 6

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/auth/zzga;->zzr(I)Lcom/google/android/gms/internal/auth/zzgi;

    move-result-object v0

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/auth/zzga;->zzo(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/auth/zzga;->zzE(Ljava/lang/Object;I)Z

    move-result p2

    if-nez p2, :cond_17

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/auth/zzgi;->zzd()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_17
    int-to-long v1, v1

    sget-object p2, Lcom/google/android/gms/internal/auth/zzga;->zzb:Lsun/misc/Unsafe;

    .line 5
    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/auth/zzga;->zzH(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_25

    return-object p1

    .line 7
    :cond_25
    invoke-interface {v0}, Lcom/google/android/gms/internal/auth/zzgi;->zzd()Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_2e

    .line 8
    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/auth/zzgi;->zzf(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    return-object p2
.end method

.method private final zzu(Ljava/lang/Object;II)Ljava/lang/Object;
    .registers 7

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/auth/zzga;->zzr(I)Lcom/google/android/gms/internal/auth/zzgi;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/auth/zzga;->zzI(Ljava/lang/Object;II)Z

    move-result p2

    if-nez p2, :cond_f

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/auth/zzgi;->zzd()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_f
    sget-object p2, Lcom/google/android/gms/internal/auth/zzga;->zzb:Lsun/misc/Unsafe;

    .line 4
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/auth/zzga;->zzo(I)I

    move-result p3

    const v1, 0xfffff

    and-int/2addr p3, v1

    int-to-long v1, p3

    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/auth/zzga;->zzH(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_25

    return-object p1

    .line 6
    :cond_25
    invoke-interface {v0}, Lcom/google/android/gms/internal/auth/zzgi;->zzd()Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_2e

    .line 7
    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/auth/zzgi;->zzf(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    return-object p2
.end method

.method private static zzv(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 7

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    .line 2
    :catch_5
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_1d

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    return-object v3

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1d
    new-instance v1, Ljava/lang/RuntimeException;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Field "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static zzw(Ljava/lang/Object;)V
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/auth/zzga;->zzH(Ljava/lang/Object;)Z

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

.method private final zzx(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 9

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/auth/zzga;->zzE(Ljava/lang/Object;I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2
    :cond_7
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/auth/zzga;->zzo(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    sget-object v1, Lcom/google/android/gms/internal/auth/zzga;->zzb:Lsun/misc/Unsafe;

    int-to-long v2, v0

    .line 3
    invoke-virtual {v1, p2, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 6
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/auth/zzga;->zzr(I)Lcom/google/android/gms/internal/auth/zzgi;

    move-result-object p2

    .line 7
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/auth/zzga;->zzE(Ljava/lang/Object;I)Z

    move-result v4

    if-nez v4, :cond_3a

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/auth/zzga;->zzH(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 9
    invoke-virtual {v1, p1, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_36

    .line 10
    :cond_2c
    invoke-interface {p2}, Lcom/google/android/gms/internal/auth/zzgi;->zzd()Ljava/lang/Object;

    move-result-object v4

    .line 11
    invoke-interface {p2, v4, v0}, Lcom/google/android/gms/internal/auth/zzgi;->zzf(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 13
    :goto_36
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/auth/zzga;->zzz(Ljava/lang/Object;I)V

    return-void

    .line 14
    :cond_3a
    invoke-virtual {v1, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    .line 15
    invoke-static {p3}, Lcom/google/android/gms/internal/auth/zzga;->zzH(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4f

    .line 16
    invoke-interface {p2}, Lcom/google/android/gms/internal/auth/zzgi;->zzd()Ljava/lang/Object;

    move-result-object v4

    .line 17
    invoke-interface {p2, v4, p3}, Lcom/google/android/gms/internal/auth/zzgi;->zzf(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p3, v4

    .line 19
    :cond_4f
    invoke-interface {p2, p3, v0}, Lcom/google/android/gms/internal/auth/zzgi;->zzf(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_53
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->zzc:[I

    .line 4
    aget p3, v0, p3

    .line 5
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

.method private final zzy(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->zzc:[I

    aget v0, v0, p3

    .line 2
    invoke-direct {p0, p2, v0, p3}, Lcom/google/android/gms/internal/auth/zzga;->zzI(Ljava/lang/Object;II)Z

    move-result v1

    if-nez v1, :cond_b

    return-void

    .line 3
    :cond_b
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/auth/zzga;->zzo(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    sget-object v2, Lcom/google/android/gms/internal/auth/zzga;->zzb:Lsun/misc/Unsafe;

    int-to-long v3, v1

    .line 4
    invoke-virtual {v2, p2, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_57

    .line 7
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/auth/zzga;->zzr(I)Lcom/google/android/gms/internal/auth/zzgi;

    move-result-object p2

    .line 8
    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/gms/internal/auth/zzga;->zzI(Ljava/lang/Object;II)Z

    move-result v5

    if-nez v5, :cond_3e

    .line 9
    invoke-static {v1}, Lcom/google/android/gms/internal/auth/zzga;->zzH(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_30

    .line 10
    invoke-virtual {v2, p1, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_3a

    .line 11
    :cond_30
    invoke-interface {p2}, Lcom/google/android/gms/internal/auth/zzgi;->zzd()Ljava/lang/Object;

    move-result-object v5

    .line 12
    invoke-interface {p2, v5, v1}, Lcom/google/android/gms/internal/auth/zzgi;->zzf(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    invoke-virtual {v2, p1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 14
    :goto_3a
    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/gms/internal/auth/zzga;->zzA(Ljava/lang/Object;II)V

    return-void

    .line 15
    :cond_3e
    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    .line 16
    invoke-static {p3}, Lcom/google/android/gms/internal/auth/zzga;->zzH(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    .line 17
    invoke-interface {p2}, Lcom/google/android/gms/internal/auth/zzgi;->zzd()Ljava/lang/Object;

    move-result-object v0

    .line 18
    invoke-interface {p2, v0, p3}, Lcom/google/android/gms/internal/auth/zzgi;->zzf(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    invoke-virtual {v2, p1, v3, v4, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p3, v0

    .line 20
    :cond_53
    invoke-interface {p2, p3, v1}, Lcom/google/android/gms/internal/auth/zzgi;->zzf(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_57
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->zzc:[I

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

.method private final zzz(Ljava/lang/Object;I)V
    .registers 7

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/auth/zzga;->zzl(I)I

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
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result v2

    const/4 v3, 0x1

    shl-int p2, v3, p2

    or-int/2addr p2, v2

    .line 3
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/auth/zzhj;->zzn(Ljava/lang/Object;JI)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->zzc:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v1, v0, :cond_22b

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzo(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/internal/auth/zzga;->zzc:[I

    .line 2
    aget v4, v4, v1

    const v5, 0xfffff

    and-int/2addr v5, v3

    invoke-static {v3}, Lcom/google/android/gms/internal/auth/zzga;->zzn(I)I

    move-result v3

    int-to-long v5, v5

    const/16 v7, 0x25

    const/16 v8, 0x20

    packed-switch v3, :pswitch_data_23a

    goto/16 :goto_227

    .line 3
    :pswitch_21
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzI(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_227

    .line 4
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 5
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_226

    .line 6
    :pswitch_33
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzI(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_227

    mul-int/lit8 v2, v2, 0x35

    .line 7
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzga;->zzp(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/auth/zzfa;->zzd:[B

    goto/16 :goto_222

    .line 8
    :pswitch_43
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzI(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_227

    mul-int/lit8 v2, v2, 0x35

    .line 9
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzga;->zzk(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_226

    .line 10
    :pswitch_51
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzI(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_227

    mul-int/lit8 v2, v2, 0x35

    .line 11
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzga;->zzp(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/auth/zzfa;->zzd:[B

    goto/16 :goto_222

    .line 12
    :pswitch_61
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzI(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_227

    mul-int/lit8 v2, v2, 0x35

    .line 13
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzga;->zzk(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_226

    .line 14
    :pswitch_6f
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzI(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_227

    mul-int/lit8 v2, v2, 0x35

    .line 15
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzga;->zzk(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_226

    .line 16
    :pswitch_7d
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzI(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_227

    mul-int/lit8 v2, v2, 0x35

    .line 17
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzga;->zzk(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_226

    .line 18
    :pswitch_8b
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzI(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_227

    mul-int/lit8 v2, v2, 0x35

    .line 19
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_226

    .line 20
    :pswitch_9d
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzI(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_227

    .line 21
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 22
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_226

    .line 23
    :pswitch_af
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzI(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_227

    mul-int/lit8 v2, v2, 0x35

    .line 24
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_226

    .line 25
    :pswitch_c3
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzI(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_227

    mul-int/lit8 v2, v2, 0x35

    .line 26
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 27
    invoke-static {v3}, Lcom/google/android/gms/internal/auth/zzfa;->zza(Z)I

    move-result v3

    goto/16 :goto_226

    .line 28
    :pswitch_db
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzI(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_227

    mul-int/lit8 v2, v2, 0x35

    .line 29
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzga;->zzk(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_226

    .line 30
    :pswitch_e9
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzI(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_227

    mul-int/lit8 v2, v2, 0x35

    .line 31
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzga;->zzp(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/auth/zzfa;->zzd:[B

    goto/16 :goto_222

    .line 32
    :pswitch_f9
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzI(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_227

    mul-int/lit8 v2, v2, 0x35

    .line 33
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzga;->zzk(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_226

    .line 34
    :pswitch_107
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzI(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_227

    mul-int/lit8 v2, v2, 0x35

    .line 35
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzga;->zzp(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/auth/zzfa;->zzd:[B

    goto/16 :goto_222

    .line 36
    :pswitch_117
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzI(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_227

    mul-int/lit8 v2, v2, 0x35

    .line 37
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzga;->zzp(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/auth/zzfa;->zzd:[B

    goto/16 :goto_222

    .line 38
    :pswitch_127
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzI(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_227

    mul-int/lit8 v2, v2, 0x35

    .line 39
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 40
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto/16 :goto_226

    .line 41
    :pswitch_13f
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzI(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_227

    mul-int/lit8 v2, v2, 0x35

    .line 42
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 43
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/auth/zzfa;->zzd:[B

    goto/16 :goto_222

    :pswitch_159
    mul-int/lit8 v2, v2, 0x35

    .line 44
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_226

    :pswitch_165
    mul-int/lit8 v2, v2, 0x35

    .line 45
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_226

    .line 46
    :pswitch_171
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1c6

    .line 47
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_1c6

    :pswitch_17c
    mul-int/lit8 v2, v2, 0x35

    .line 48
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/auth/zzfa;->zzd:[B

    goto/16 :goto_222

    :pswitch_186
    mul-int/lit8 v2, v2, 0x35

    .line 49
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_226

    :pswitch_18e
    mul-int/lit8 v2, v2, 0x35

    .line 50
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/auth/zzfa;->zzd:[B

    goto/16 :goto_222

    :pswitch_198
    mul-int/lit8 v2, v2, 0x35

    .line 51
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_226

    :pswitch_1a0
    mul-int/lit8 v2, v2, 0x35

    .line 52
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_226

    :pswitch_1a8
    mul-int/lit8 v2, v2, 0x35

    .line 53
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_226

    :pswitch_1b0
    mul-int/lit8 v2, v2, 0x35

    .line 54
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_226

    .line 55
    :pswitch_1bc
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1c6

    .line 56
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_1c6
    :goto_1c6
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto :goto_227

    :pswitch_1ca
    mul-int/lit8 v2, v2, 0x35

    .line 57
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_226

    :pswitch_1d7
    mul-int/lit8 v2, v2, 0x35

    .line 58
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzt(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/auth/zzfa;->zza(Z)I

    move-result v3

    goto :goto_226

    :pswitch_1e2
    mul-int/lit8 v2, v2, 0x35

    .line 59
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_226

    :pswitch_1e9
    mul-int/lit8 v2, v2, 0x35

    .line 60
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/auth/zzfa;->zzd:[B

    goto :goto_222

    :pswitch_1f2
    mul-int/lit8 v2, v2, 0x35

    .line 61
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_226

    :pswitch_1f9
    mul-int/lit8 v2, v2, 0x35

    .line 62
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/auth/zzfa;->zzd:[B

    goto :goto_222

    :pswitch_202
    mul-int/lit8 v2, v2, 0x35

    .line 63
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/auth/zzfa;->zzd:[B

    goto :goto_222

    :pswitch_20b
    mul-int/lit8 v2, v2, 0x35

    .line 64
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzb(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_226

    :pswitch_216
    mul-int/lit8 v2, v2, 0x35

    .line 65
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zza(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 66
    sget-object v5, Lcom/google/android/gms/internal/auth/zzfa;->zzd:[B

    :goto_222
    ushr-long v5, v3, v8

    xor-long/2addr v3, v5

    long-to-int v3, v3

    :goto_226
    add-int/2addr v2, v3

    :cond_227
    :goto_227
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_5

    :cond_22b
    mul-int/lit8 v2, v2, 0x35

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->zzl:Lcom/google/android/gms/internal/auth/zzgz;

    .line 67
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth/zzgz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    add-int/2addr v2, p1

    return v2

    nop

    :pswitch_data_23a
    .packed-switch 0x0
        :pswitch_216
        :pswitch_20b
        :pswitch_202
        :pswitch_1f9
        :pswitch_1f2
        :pswitch_1e9
        :pswitch_1e2
        :pswitch_1d7
        :pswitch_1ca
        :pswitch_1bc
        :pswitch_1b0
        :pswitch_1a8
        :pswitch_1a0
        :pswitch_198
        :pswitch_18e
        :pswitch_186
        :pswitch_17c
        :pswitch_171
        :pswitch_165
        :pswitch_165
        :pswitch_165
        :pswitch_165
        :pswitch_165
        :pswitch_165
        :pswitch_165
        :pswitch_165
        :pswitch_165
        :pswitch_165
        :pswitch_165
        :pswitch_165
        :pswitch_165
        :pswitch_165
        :pswitch_165
        :pswitch_165
        :pswitch_165
        :pswitch_165
        :pswitch_165
        :pswitch_165
        :pswitch_165
        :pswitch_165
        :pswitch_165
        :pswitch_165
        :pswitch_165
        :pswitch_165
        :pswitch_165
        :pswitch_165
        :pswitch_165
        :pswitch_165
        :pswitch_165
        :pswitch_165
        :pswitch_159
        :pswitch_13f
        :pswitch_127
        :pswitch_117
        :pswitch_107
        :pswitch_f9
        :pswitch_e9
        :pswitch_db
        :pswitch_c3
        :pswitch_af
        :pswitch_9d
        :pswitch_8b
        :pswitch_7d
        :pswitch_6f
        :pswitch_61
        :pswitch_51
        :pswitch_43
        :pswitch_33
        :pswitch_21
    .end packed-switch
.end method

.method final zzb(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/auth/zzdt;)I
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
    invoke-static {v2}, Lcom/google/android/gms/internal/auth/zzga;->zzw(Ljava/lang/Object;)V

    sget-object v1, Lcom/google/android/gms/internal/auth/zzga;->zzb:Lsun/misc/Unsafe;

    const/4 v11, 0x0

    move/from16 v3, p3

    move v5, v11

    move v6, v5

    move v15, v6

    const/4 v4, -0x1

    const v14, 0xfffff

    :goto_19
    const/16 v16, 0x0

    if-ge v3, v8, :cond_ca4

    add-int/lit8 v6, v3, 0x1

    .line 2
    aget-byte v3, v7, v3

    if-gez v3, :cond_29

    .line 3
    invoke-static {v3, v7, v6, v10}, Lcom/google/android/gms/internal/auth/zzdu;->zzi(I[BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v6

    iget v3, v10, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    :cond_29
    move/from16 v33, v6

    move v6, v3

    move/from16 v3, v33

    const v17, 0xfffff

    ushr-int/lit8 v13, v6, 0x3

    const/4 v12, 0x3

    if-le v13, v4, :cond_44

    div-int/2addr v5, v12

    iget v4, v0, Lcom/google/android/gms/internal/auth/zzga;->zze:I

    if-lt v13, v4, :cond_51

    iget v4, v0, Lcom/google/android/gms/internal/auth/zzga;->zzf:I

    if-gt v13, v4, :cond_51

    .line 5
    invoke-direct {v0, v13, v5}, Lcom/google/android/gms/internal/auth/zzga;->zzm(II)I

    move-result v4

    goto :goto_52

    .line 244
    :cond_44
    iget v4, v0, Lcom/google/android/gms/internal/auth/zzga;->zze:I

    if-lt v13, v4, :cond_51

    iget v4, v0, Lcom/google/android/gms/internal/auth/zzga;->zzf:I

    if-gt v13, v4, :cond_51

    .line 4
    invoke-direct {v0, v13, v11}, Lcom/google/android/gms/internal/auth/zzga;->zzm(II)I

    move-result v4

    goto :goto_52

    :cond_51
    const/4 v4, -0x1

    :goto_52
    const/4 v5, -0x1

    if-ne v4, v5, :cond_64

    move-object/from16 v29, v1

    move/from16 v18, v5

    move v1, v6

    move-object v6, v7

    move v9, v11

    move/from16 v26, v14

    move/from16 v7, p5

    move-object v14, v10

    move-object v10, v2

    goto/16 :goto_c7d

    :cond_64
    and-int/lit8 v5, v6, 0x7

    .line 294
    iget-object v12, v0, Lcom/google/android/gms/internal/auth/zzga;->zzc:[I

    add-int/lit8 v19, v4, 0x1

    .line 6
    aget v11, v12, v19

    move/from16 v19, v4

    invoke-static {v11}, Lcom/google/android/gms/internal/auth/zzga;->zzn(I)I

    move-result v4

    move/from16 v20, v6

    and-int v6, v11, v17

    int-to-long v8, v6

    const/high16 v21, 0x20000000

    const-wide/16 v22, 0x0

    const-string v6, ""

    move-wide/from16 v26, v8

    const/16 v8, 0x11

    const/16 v28, 0x1

    if-gt v4, v8, :cond_480

    add-int/lit8 v8, v19, 0x2

    .line 7
    aget v8, v12, v8

    ushr-int/lit8 v12, v8, 0x14

    shl-int v12, v28, v12

    and-int v8, v8, v17

    if-eq v8, v14, :cond_a7

    move/from16 v9, v17

    if-eq v14, v9, :cond_9c

    int-to-long v9, v14

    .line 8
    invoke-virtual {v1, v2, v9, v10, v15}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const v9, 0xfffff

    :cond_9c
    if-ne v8, v9, :cond_a0

    const/4 v15, 0x0

    goto :goto_a6

    :cond_a0
    int-to-long v9, v8

    .line 9
    invoke-virtual {v1, v2, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v9

    move v15, v9

    :goto_a6
    move v14, v8

    :cond_a7
    packed-switch v4, :pswitch_data_cfe

    move-object/from16 v10, p6

    move v11, v3

    move/from16 p3, v14

    move/from16 v9, v19

    const/4 v8, 0x0

    const/16 v18, -0x1

    move-object v14, v2

    move/from16 v19, v15

    move-object v15, v1

    const/4 v1, 0x3

    if-ne v5, v1, :cond_46e

    .line 10
    invoke-direct {v0, v14, v9}, Lcom/google/android/gms/internal/auth/zzga;->zzt(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    shl-int/lit8 v2, v13, 0x3

    or-int/lit8 v6, v2, 0x4

    .line 11
    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/auth/zzga;->zzr(I)Lcom/google/android/gms/internal/auth/zzgi;

    move-result-object v2

    move/from16 v5, p4

    move-object v3, v7

    move-object v7, v10

    move v4, v11

    .line 12
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/auth/zzdu;->zzl(Ljava/lang/Object;Lcom/google/android/gms/internal/auth/zzgi;[BIIILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    .line 13
    invoke-direct {v0, v14, v9, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzB(Ljava/lang/Object;ILjava/lang/Object;)V

    or-int v1, v19, v12

    move-object v3, v15

    move v15, v1

    move-object v1, v3

    move-object/from16 v7, p2

    move-object/from16 v10, p6

    move v3, v2

    goto/16 :goto_462

    :pswitch_df
    if-nez v5, :cond_107

    move-object/from16 v10, p6

    .line 14
    invoke-static {v7, v3, v10}, Lcom/google/android/gms/internal/auth/zzdu;->zzk([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v8

    iget-wide v3, v10, Lcom/google/android/gms/internal/auth/zzdt;->zzb:J

    .line 15
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/auth/zzej;->zzc(J)J

    move-result-wide v5

    move/from16 v9, v19

    move-wide/from16 v3, v26

    const/16 v18, -0x1

    .line 16
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move-object/from16 v33, v2

    move-object v2, v1

    move-object/from16 v1, v33

    or-int/2addr v15, v12

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    move v3, v8

    move v5, v9

    move v4, v13

    move/from16 v6, v20

    :goto_104
    const/4 v11, 0x0

    goto/16 :goto_46a

    :cond_107
    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    move-object/from16 v10, p6

    move/from16 v9, v19

    const/16 v18, -0x1

    move/from16 p3, v14

    move/from16 v19, v15

    const/4 v8, 0x0

    move-object v14, v1

    move-object v15, v2

    goto/16 :goto_46f

    :pswitch_119
    move-object/from16 p3, v2

    move-object v2, v1

    move-object/from16 v1, p3

    move-object/from16 v10, p6

    move/from16 p3, v14

    move v8, v15

    move/from16 v9, v19

    move-wide/from16 v14, v26

    const/16 v18, -0x1

    if-nez v5, :cond_13f

    .line 17
    invoke-static {v7, v3, v10}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v3

    iget v4, v10, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    .line 18
    invoke-static {v4}, Lcom/google/android/gms/internal/auth/zzej;->zzb(I)I

    move-result v4

    .line 19
    invoke-virtual {v2, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v15, v8, v12

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto/16 :goto_1fa

    :cond_13f
    move-object v14, v1

    move-object v15, v2

    goto/16 :goto_1bb

    :pswitch_143
    move-object/from16 p3, v2

    move-object v2, v1

    move-object/from16 v1, p3

    move-object/from16 v10, p6

    move/from16 p3, v14

    move v8, v15

    move/from16 v9, v19

    move/from16 v4, v20

    move-wide/from16 v14, v26

    const/16 v18, -0x1

    if-nez v5, :cond_1b7

    .line 20
    invoke-static {v7, v3, v10}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v3

    iget v5, v10, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    .line 21
    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/auth/zzga;->zzq(I)Lcom/google/android/gms/internal/auth/zzey;

    move-result-object v6

    const/high16 v16, -0x80000000

    and-int v11, v11, v16

    if-eqz v11, :cond_187

    if-eqz v6, :cond_187

    .line 22
    invoke-interface {v6}, Lcom/google/android/gms/internal/auth/zzey;->zza()Z

    move-result v6

    if-eqz v6, :cond_170

    goto :goto_187

    .line 24
    :cond_170
    invoke-static {v1}, Lcom/google/android/gms/internal/auth/zzga;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/zzha;

    move-result-object v6

    int-to-long v11, v5

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Lcom/google/android/gms/internal/auth/zzha;->zzh(ILjava/lang/Object;)V

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    move/from16 v14, p3

    move v6, v4

    move v15, v8

    move v5, v9

    move v4, v13

    goto/16 :goto_104

    .line 23
    :cond_187
    :goto_187
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_1a9

    :pswitch_18b
    move-object/from16 p3, v2

    move-object v2, v1

    move-object/from16 v1, p3

    move-object/from16 v10, p6

    move/from16 p3, v14

    move v8, v15

    move/from16 v9, v19

    move/from16 v4, v20

    move-wide/from16 v14, v26

    const/4 v6, 0x2

    const/16 v18, -0x1

    if-ne v5, v6, :cond_1b7

    .line 25
    invoke-static {v7, v3, v10}, Lcom/google/android/gms/internal/auth/zzdu;->zza([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v3

    iget-object v5, v10, Lcom/google/android/gms/internal/auth/zzdt;->zzc:Ljava/lang/Object;

    .line 26
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_1a9
    or-int v15, v8, v12

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    move/from16 v14, p3

    move/from16 v8, p4

    move v6, v4

    move v5, v9

    move v4, v13

    goto/16 :goto_202

    :cond_1b7
    move-object v14, v1

    move-object v15, v2

    move/from16 v20, v4

    :goto_1bb
    move/from16 v19, v8

    goto/16 :goto_217

    :pswitch_1bf
    move-object/from16 p3, v2

    move-object v2, v1

    move-object/from16 v1, p3

    move-object/from16 v10, p6

    move/from16 p3, v14

    move v8, v15

    move/from16 v9, v19

    move/from16 v4, v20

    const/4 v6, 0x2

    const/16 v18, -0x1

    if-ne v5, v6, :cond_205

    move-object v5, v1

    .line 27
    invoke-direct {v0, v5, v9}, Lcom/google/android/gms/internal/auth/zzga;->zzt(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v2

    .line 28
    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/auth/zzga;->zzr(I)Lcom/google/android/gms/internal/auth/zzgi;

    move-result-object v2

    move-object/from16 v20, v10

    move-object v10, v6

    move-object/from16 v6, v20

    move/from16 v20, v4

    move v4, v3

    move-object v3, v7

    move-object v7, v5

    move/from16 v5, p4

    .line 29
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/auth/zzdu;->zzm(Ljava/lang/Object;Lcom/google/android/gms/internal/auth/zzgi;[BIILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    move-object v4, v1

    move-object v1, v3

    move-object v3, v6

    .line 30
    invoke-direct {v0, v7, v9, v4}, Lcom/google/android/gms/internal/auth/zzga;->zzB(Ljava/lang/Object;ILjava/lang/Object;)V

    or-int v15, v8, v12

    move-object v4, v7

    move-object v7, v1

    move-object v1, v10

    move-object v10, v3

    move v3, v2

    move-object v2, v4

    :goto_1fa
    move/from16 v14, p3

    move/from16 v8, p4

    move v5, v9

    move v4, v13

    move/from16 v6, v20

    :goto_202
    const/4 v11, 0x0

    goto/16 :goto_19

    :cond_205
    move-object/from16 v20, v7

    move-object v7, v1

    move-object/from16 v1, v20

    move-object/from16 v20, v10

    move-object v10, v2

    move v2, v3

    move-object/from16 v3, v20

    move/from16 v20, v4

    move v3, v2

    move-object v14, v7

    move/from16 v19, v8

    move-object v15, v10

    :goto_217
    const/4 v8, 0x0

    goto/16 :goto_46f

    :pswitch_21a
    move-object v10, v1

    move-object v1, v7

    move/from16 p3, v14

    move v8, v15

    move/from16 v9, v19

    move-wide/from16 v14, v26

    const/4 v4, 0x2

    const/16 v18, -0x1

    move-object v7, v2

    move v2, v3

    move-object/from16 v3, p6

    if-ne v5, v4, :cond_342

    and-int v4, v11, v21

    if-eqz v4, :cond_31d

    .line 31
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget v4, v3, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    if-ltz v4, :cond_318

    if-nez v4, :cond_241

    .line 250
    iput-object v6, v3, Lcom/google/android/gms/internal/auth/zzdt;->zzc:Ljava/lang/Object;

    move/from16 v19, v8

    const/4 v8, 0x0

    goto/16 :goto_337

    .line 32
    :cond_241
    sget v5, Lcom/google/android/gms/internal/auth/zzhn;->zza:I

    .line 33
    array-length v5, v1

    sub-int v6, v5, v2

    or-int v11, v2, v4

    sub-int/2addr v6, v4

    or-int/2addr v6, v11

    if-ltz v6, :cond_2fc

    add-int v5, v2, v4

    .line 251
    new-array v4, v4, [C

    const/4 v6, 0x0

    :goto_251
    if-ge v2, v5, :cond_265

    .line 34
    aget-byte v11, v1, v2

    invoke-static {v11}, Lcom/google/android/gms/internal/auth/zzhk;->zzd(B)Z

    move-result v16

    if-eqz v16, :cond_265

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v16, v6, 0x1

    int-to-char v11, v11

    .line 35
    aput-char v11, v4, v6

    move/from16 v6, v16

    goto :goto_251

    :cond_265
    :goto_265
    if-ge v2, v5, :cond_2ef

    add-int/lit8 v11, v2, 0x1

    move/from16 v16, v2

    .line 36
    aget-byte v2, v1, v16

    invoke-static {v2}, Lcom/google/android/gms/internal/auth/zzhk;->zzd(B)Z

    move-result v19

    if-eqz v19, :cond_28d

    add-int/lit8 v16, v6, 0x1

    int-to-char v2, v2

    .line 40
    aput-char v2, v4, v6

    move v2, v11

    :goto_279
    move/from16 v6, v16

    if-ge v2, v5, :cond_265

    .line 41
    aget-byte v11, v1, v2

    invoke-static {v11}, Lcom/google/android/gms/internal/auth/zzhk;->zzd(B)Z

    move-result v16

    if-eqz v16, :cond_265

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v16, v6, 0x1

    int-to-char v11, v11

    .line 42
    aput-char v11, v4, v6

    goto :goto_279

    :cond_28d
    move/from16 v19, v8

    const/16 v8, -0x20

    if-ge v2, v8, :cond_2a9

    if-ge v11, v5, :cond_2a4

    add-int/lit8 v8, v16, 0x2

    .line 39
    aget-byte v11, v1, v11

    add-int/lit8 v16, v6, 0x1

    invoke-static {v2, v11, v4, v6}, Lcom/google/android/gms/internal/auth/zzhk;->zzc(BB[CI)V

    move v2, v8

    move/from16 v6, v16

    :goto_2a1
    move/from16 v8, v19

    goto :goto_265

    .line 254
    :cond_2a4
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->zzb()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    :cond_2a9
    const/16 v8, -0x10

    if-ge v2, v8, :cond_2ca

    add-int/lit8 v8, v5, -0x1

    if-ge v11, v8, :cond_2c5

    add-int/lit8 v8, v16, 0x2

    .line 38
    aget-byte v11, v1, v11

    add-int/lit8 v16, v16, 0x3

    aget-byte v8, v1, v8

    add-int/lit8 v21, v6, 0x1

    invoke-static {v2, v11, v8, v4, v6}, Lcom/google/android/gms/internal/auth/zzhk;->zzb(BBB[CI)V

    move/from16 v2, v16

    move/from16 v8, v19

    move/from16 v6, v21

    goto :goto_265

    .line 253
    :cond_2c5
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->zzb()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    :cond_2ca
    add-int/lit8 v8, v5, -0x2

    if-ge v11, v8, :cond_2ea

    add-int/lit8 v8, v16, 0x2

    .line 37
    aget-byte v22, v1, v11

    add-int/lit8 v11, v16, 0x3

    aget-byte v23, v1, v8

    add-int/lit8 v8, v16, 0x4

    aget-byte v24, v1, v11

    move/from16 v21, v2

    move-object/from16 v25, v4

    move/from16 v26, v6

    invoke-static/range {v21 .. v26}, Lcom/google/android/gms/internal/auth/zzhk;->zza(BBBB[CI)V

    move-object/from16 v2, v25

    add-int/lit8 v6, v6, 0x2

    move-object v4, v2

    move v2, v8

    goto :goto_2a1

    .line 252
    :cond_2ea
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->zzb()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    :cond_2ef
    move-object v2, v4

    move/from16 v19, v8

    .line 37
    new-instance v4, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v4, v2, v8, v6}, Ljava/lang/String;-><init>([CII)V

    iput-object v4, v3, Lcom/google/android/gms/internal/auth/zzdt;->zzc:Ljava/lang/Object;

    move v2, v5

    goto :goto_337

    .line 33
    :cond_2fc
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 251
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "buffer length=%d, index=%d, size=%d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 250
    :cond_318
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->zzc()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    :cond_31d
    move/from16 v19, v8

    const/4 v8, 0x0

    .line 43
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget v4, v3, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    if-ltz v4, :cond_33d

    if-nez v4, :cond_32d

    .line 255
    iput-object v6, v3, Lcom/google/android/gms/internal/auth/zzdt;->zzc:Ljava/lang/Object;

    goto :goto_337

    :cond_32d
    new-instance v5, Ljava/lang/String;

    .line 44
    sget-object v6, Lcom/google/android/gms/internal/auth/zzfa;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v5, v1, v2, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v5, v3, Lcom/google/android/gms/internal/auth/zzdt;->zzc:Ljava/lang/Object;

    add-int/2addr v2, v4

    .line 250
    :goto_337
    iget-object v4, v3, Lcom/google/android/gms/internal/auth/zzdt;->zzc:Ljava/lang/Object;

    .line 45
    invoke-virtual {v10, v7, v14, v15, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_389

    .line 255
    :cond_33d
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->zzc()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    :cond_342
    move/from16 v19, v8

    const/4 v8, 0x0

    goto/16 :goto_392

    :pswitch_347
    move-object v10, v1

    move-object v1, v7

    move/from16 p3, v14

    move/from16 v9, v19

    const/4 v8, 0x0

    const/16 v18, -0x1

    move-object v7, v2

    move v2, v3

    move/from16 v19, v15

    move-wide/from16 v14, v26

    move-object/from16 v3, p6

    if-nez v5, :cond_392

    .line 46
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/auth/zzdu;->zzk([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget-wide v4, v3, Lcom/google/android/gms/internal/auth/zzdt;->zzb:J

    cmp-long v4, v4, v22

    if-eqz v4, :cond_367

    move/from16 v4, v28

    goto :goto_368

    :cond_367
    move v4, v8

    .line 47
    :goto_368
    invoke-static {v7, v14, v15, v4}, Lcom/google/android/gms/internal/auth/zzhj;->zzk(Ljava/lang/Object;JZ)V

    goto :goto_389

    :pswitch_36c
    move-object v10, v1

    move-object v1, v7

    move/from16 p3, v14

    move/from16 v9, v19

    const/4 v4, 0x5

    const/4 v8, 0x0

    const/16 v18, -0x1

    move-object v7, v2

    move v2, v3

    move/from16 v19, v15

    move-wide/from16 v14, v26

    move-object/from16 v3, p6

    if-ne v5, v4, :cond_392

    .line 48
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/auth/zzdu;->zzb([BI)I

    move-result v4

    invoke-virtual {v10, v7, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v2, v2, 0x4

    :goto_389
    or-int v15, v19, v12

    move-object v4, v7

    move-object v7, v1

    move-object v1, v10

    move-object v10, v3

    move v3, v2

    move-object v2, v4

    goto :goto_3bd

    :cond_392
    :goto_392
    move v3, v2

    move-object v14, v7

    move-object v15, v10

    goto/16 :goto_46f

    :pswitch_397
    move-object v10, v1

    move-object v1, v7

    move/from16 p3, v14

    move/from16 v9, v19

    move/from16 v4, v28

    const/4 v8, 0x0

    const/16 v18, -0x1

    move-object v7, v2

    move v2, v3

    move/from16 v19, v15

    move-wide/from16 v14, v26

    move-object/from16 v3, p6

    if-ne v5, v4, :cond_3c0

    .line 49
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/auth/zzdu;->zzn([BI)J

    move-result-wide v5

    move v11, v2

    move-object v2, v7

    move-object v7, v1

    move-object v1, v10

    move-object v10, v3

    move-wide v3, v14

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v3, v11, 0x8

    or-int v15, v19, v12

    :goto_3bd
    move/from16 v14, p3

    goto :goto_3e5

    :cond_3c0
    move v11, v2

    move-object v2, v7

    move-object v7, v1

    move-object v1, v10

    move-object v10, v3

    goto/16 :goto_417

    :pswitch_3c7
    move-object/from16 v10, p6

    move v11, v3

    move/from16 p3, v14

    move/from16 v9, v19

    move-wide/from16 v3, v26

    const/4 v8, 0x0

    const/16 v18, -0x1

    move/from16 v19, v15

    if-nez v5, :cond_417

    .line 50
    invoke-static {v7, v11, v10}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v5

    iget v6, v10, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    .line 51
    invoke-virtual {v1, v2, v3, v4, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v15, v19, v12

    move/from16 v14, p3

    move v3, v5

    :goto_3e5
    move v11, v8

    move v5, v9

    move v4, v13

    move/from16 v6, v20

    goto/16 :goto_46a

    :pswitch_3ec
    move-object/from16 v10, p6

    move v11, v3

    move/from16 p3, v14

    move/from16 v9, v19

    move-wide/from16 v3, v26

    const/4 v8, 0x0

    const/16 v18, -0x1

    move/from16 v19, v15

    if-nez v5, :cond_417

    .line 52
    invoke-static {v7, v11, v10}, Lcom/google/android/gms/internal/auth/zzdu;->zzk([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v11

    iget-wide v5, v10, Lcom/google/android/gms/internal/auth/zzdt;->zzb:J

    .line 53
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move-object v15, v1

    move-object v14, v2

    or-int v1, v19, v12

    move-object v2, v15

    move v15, v1

    move-object v1, v2

    move v5, v9

    move v3, v11

    move v4, v13

    move-object v2, v14

    move/from16 v6, v20

    move/from16 v14, p3

    move v11, v8

    goto/16 :goto_46a

    :cond_417
    :goto_417
    move-object v15, v1

    move-object v14, v2

    goto/16 :goto_46e

    :pswitch_41b
    move-object/from16 v10, p6

    move v11, v3

    move/from16 p3, v14

    move/from16 v9, v19

    const/4 v4, 0x5

    const/4 v8, 0x0

    const/16 v18, -0x1

    move-object v14, v2

    move/from16 v19, v15

    move-object v15, v1

    move-wide/from16 v1, v26

    if-ne v5, v4, :cond_46e

    .line 54
    invoke-static {v7, v11}, Lcom/google/android/gms/internal/auth/zzdu;->zzb([BI)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    .line 55
    invoke-static {v14, v1, v2, v3}, Lcom/google/android/gms/internal/auth/zzhj;->zzm(Ljava/lang/Object;JF)V

    add-int/lit8 v3, v11, 0x4

    goto :goto_45d

    :pswitch_43c
    move-object/from16 v10, p6

    move v11, v3

    move/from16 p3, v14

    move/from16 v9, v19

    move/from16 v4, v28

    const/4 v8, 0x0

    const/16 v18, -0x1

    move-object v14, v2

    move/from16 v19, v15

    move-object v15, v1

    move-wide/from16 v1, v26

    if-ne v5, v4, :cond_46e

    .line 56
    invoke-static {v7, v11}, Lcom/google/android/gms/internal/auth/zzdu;->zzn([BI)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    .line 57
    invoke-static {v14, v1, v2, v3, v4}, Lcom/google/android/gms/internal/auth/zzhj;->zzl(Ljava/lang/Object;JD)V

    add-int/lit8 v3, v11, 0x8

    :goto_45d
    or-int v1, v19, v12

    move-object v2, v15

    move v15, v1

    move-object v1, v2

    :goto_462
    move v11, v8

    move v5, v9

    move v4, v13

    move-object v2, v14

    move/from16 v6, v20

    move/from16 v14, p3

    :goto_46a
    move/from16 v8, p4

    goto/16 :goto_19

    :cond_46e
    :goto_46e
    move v3, v11

    :goto_46f
    move-object/from16 v6, p2

    move/from16 v26, p3

    move/from16 v7, p5

    move-object v10, v14

    move-object/from16 v29, v15

    move/from16 v15, v19

    move/from16 v1, v20

    move-object/from16 v14, p6

    goto/16 :goto_c7d

    :cond_480
    move-object v7, v1

    move-object v10, v2

    move/from16 v9, v19

    move-wide/from16 v1, v26

    const/16 v18, -0x1

    const/16 v8, 0x1b

    const/16 v19, 0xa

    if-ne v4, v8, :cond_4de

    const/4 v8, 0x2

    if-ne v5, v8, :cond_4ce

    .line 58
    invoke-virtual {v7, v10, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/auth/zzez;

    .line 59
    invoke-interface {v4}, Lcom/google/android/gms/internal/auth/zzez;->zzc()Z

    move-result v5

    if-nez v5, :cond_4af

    .line 60
    invoke-interface {v4}, Lcom/google/android/gms/internal/auth/zzez;->size()I

    move-result v5

    if-nez v5, :cond_4a4

    goto :goto_4a6

    :cond_4a4
    add-int v19, v5, v5

    :goto_4a6
    move/from16 v5, v19

    .line 61
    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/auth/zzez;->zzd(I)Lcom/google/android/gms/internal/auth/zzez;

    move-result-object v4

    .line 62
    invoke-virtual {v7, v10, v1, v2, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_4af
    move-object v6, v4

    .line 63
    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/auth/zzga;->zzr(I)Lcom/google/android/gms/internal/auth/zzgi;

    move-result-object v1

    move/from16 v5, p4

    move v4, v3

    move-object v8, v7

    move/from16 v2, v20

    move-object/from16 v3, p2

    move-object/from16 v7, p6

    .line 64
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/auth/zzdu;->zze(Lcom/google/android/gms/internal/auth/zzgi;I[BIILcom/google/android/gms/internal/auth/zzez;Lcom/google/android/gms/internal/auth/zzdt;)I

    move-result v1

    move-object v7, v3

    move v3, v2

    move v6, v3

    move v5, v9

    move-object v2, v10

    move v4, v13

    const/4 v11, 0x0

    move-object/from16 v10, p6

    move v3, v1

    move-object v1, v8

    goto :goto_46a

    :cond_4ce
    move-object v8, v7

    move-object/from16 v7, p2

    move-object/from16 v6, p6

    move-object/from16 v29, v8

    move/from16 v26, v14

    move/from16 v27, v15

    move/from16 v8, v20

    move v14, v3

    goto/16 :goto_a30

    :cond_4de
    move-object/from16 v29, v7

    move/from16 v26, v14

    move/from16 v27, v15

    move-object/from16 v7, p2

    move v14, v3

    move-object v15, v6

    move/from16 v3, v20

    move-object/from16 v6, p6

    move-object/from16 v20, v12

    move/from16 v12, p4

    const/16 v8, 0x31

    if-gt v4, v8, :cond_a04

    move/from16 v30, v9

    int-to-long v8, v11

    sget-object v11, Lcom/google/android/gms/internal/auth/zzga;->zzb:Lsun/misc/Unsafe;

    .line 65
    invoke-virtual {v11, v10, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v20

    move-wide/from16 v31, v8

    move-object/from16 v8, v20

    check-cast v8, Lcom/google/android/gms/internal/auth/zzez;

    .line 66
    invoke-interface {v8}, Lcom/google/android/gms/internal/auth/zzez;->zzc()Z

    move-result v9

    if-nez v9, :cond_51b

    .line 67
    invoke-interface {v8}, Lcom/google/android/gms/internal/auth/zzez;->size()I

    move-result v9

    if-nez v9, :cond_510

    goto :goto_512

    :cond_510
    add-int v19, v9, v9

    :goto_512
    move/from16 v9, v19

    .line 68
    invoke-interface {v8, v9}, Lcom/google/android/gms/internal/auth/zzez;->zzd(I)Lcom/google/android/gms/internal/auth/zzez;

    move-result-object v8

    .line 69
    invoke-virtual {v11, v10, v1, v2, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_51b
    packed-switch v4, :pswitch_data_d24

    move-object v1, v8

    move v8, v3

    move-object v3, v7

    move-object v7, v1

    move v4, v12

    move v11, v14

    move/from16 v9, v30

    const/4 v1, 0x3

    if-ne v5, v1, :cond_7c3

    .line 70
    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/auth/zzga;->zzr(I)Lcom/google/android/gms/internal/auth/zzgi;

    move-result-object v1

    and-int/lit8 v2, v8, -0x8

    or-int/lit8 v5, v2, 0x4

    move-object v2, v3

    move v3, v11

    .line 71
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/auth/zzdu;->zzc(Lcom/google/android/gms/internal/auth/zzgi;[BIIILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v11

    move v14, v3

    iget-object v2, v6, Lcom/google/android/gms/internal/auth/zzdt;->zzc:Ljava/lang/Object;

    .line 72
    invoke-interface {v7, v2}, Lcom/google/android/gms/internal/auth/zzez;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9d0

    :pswitch_53f
    const/4 v4, 0x2

    if-ne v5, v4, :cond_564

    .line 76
    check-cast v8, Lcom/google/android/gms/internal/auth/zzfm;

    .line 77
    invoke-static {v7, v14, v6}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v1

    iget v2, v6, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    add-int/2addr v2, v1

    :goto_54b
    if-ge v1, v2, :cond_55b

    .line 78
    invoke-static {v7, v1, v6}, Lcom/google/android/gms/internal/auth/zzdu;->zzk([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v1

    iget-wide v4, v6, Lcom/google/android/gms/internal/auth/zzdt;->zzb:J

    .line 79
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/auth/zzej;->zzc(J)J

    move-result-wide v4

    invoke-virtual {v8, v4, v5}, Lcom/google/android/gms/internal/auth/zzfm;->zze(J)V

    goto :goto_54b

    :cond_55b
    if-ne v1, v2, :cond_55f

    goto/16 :goto_5da

    .line 256
    :cond_55f
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->zzf()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    :cond_564
    if-nez v5, :cond_5e0

    .line 80
    check-cast v8, Lcom/google/android/gms/internal/auth/zzfm;

    .line 81
    invoke-static {v7, v14, v6}, Lcom/google/android/gms/internal/auth/zzdu;->zzk([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v1

    iget-wide v4, v6, Lcom/google/android/gms/internal/auth/zzdt;->zzb:J

    .line 82
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/auth/zzej;->zzc(J)J

    move-result-wide v4

    invoke-virtual {v8, v4, v5}, Lcom/google/android/gms/internal/auth/zzfm;->zze(J)V

    :goto_575
    if-ge v1, v12, :cond_5da

    .line 83
    invoke-static {v7, v1, v6}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget v4, v6, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    if-ne v3, v4, :cond_5da

    .line 84
    invoke-static {v7, v2, v6}, Lcom/google/android/gms/internal/auth/zzdu;->zzk([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v1

    iget-wide v4, v6, Lcom/google/android/gms/internal/auth/zzdt;->zzb:J

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/auth/zzej;->zzc(J)J

    move-result-wide v4

    .line 85
    invoke-virtual {v8, v4, v5}, Lcom/google/android/gms/internal/auth/zzfm;->zze(J)V

    goto :goto_575

    :pswitch_58d
    const/4 v4, 0x2

    if-ne v5, v4, :cond_5b1

    .line 86
    check-cast v8, Lcom/google/android/gms/internal/auth/zzew;

    .line 87
    invoke-static {v7, v14, v6}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v1

    iget v2, v6, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    add-int/2addr v2, v1

    :goto_599
    if-ge v1, v2, :cond_5a9

    .line 88
    invoke-static {v7, v1, v6}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v1

    iget v4, v6, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    .line 89
    invoke-static {v4}, Lcom/google/android/gms/internal/auth/zzej;->zzb(I)I

    move-result v4

    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/auth/zzew;->zze(I)V

    goto :goto_599

    :cond_5a9
    if-ne v1, v2, :cond_5ac

    goto :goto_5da

    .line 257
    :cond_5ac
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->zzf()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    :cond_5b1
    if-nez v5, :cond_5e0

    .line 90
    check-cast v8, Lcom/google/android/gms/internal/auth/zzew;

    .line 91
    invoke-static {v7, v14, v6}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v1

    iget v2, v6, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    .line 92
    invoke-static {v2}, Lcom/google/android/gms/internal/auth/zzej;->zzb(I)I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/auth/zzew;->zze(I)V

    :goto_5c2
    if-ge v1, v12, :cond_5da

    .line 93
    invoke-static {v7, v1, v6}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget v4, v6, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    if-ne v3, v4, :cond_5da

    .line 94
    invoke-static {v7, v2, v6}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v1

    iget v2, v6, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    invoke-static {v2}, Lcom/google/android/gms/internal/auth/zzej;->zzb(I)I

    move-result v2

    .line 95
    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/auth/zzew;->zze(I)V

    goto :goto_5c2

    :cond_5da
    :goto_5da
    move v8, v3

    move/from16 v9, v30

    move v3, v1

    goto/16 :goto_9eb

    :cond_5e0
    move v8, v3

    move/from16 v9, v30

    goto/16 :goto_9ea

    :pswitch_5e5
    const/4 v4, 0x2

    if-ne v5, v4, :cond_5f5

    .line 96
    invoke-static {v7, v14, v8, v6}, Lcom/google/android/gms/internal/auth/zzdu;->zzf([BILcom/google/android/gms/internal/auth/zzez;Lcom/google/android/gms/internal/auth/zzdt;)I

    move-result v1

    move-object v4, v7

    move v7, v1

    move v1, v3

    move-object v3, v4

    move v4, v12

    move v11, v14

    :goto_5f2
    move/from16 v9, v30

    goto :goto_603

    :cond_5f5
    if-nez v5, :cond_680

    move v1, v3

    move-object v2, v7

    move-object v5, v8

    move v4, v12

    move v3, v14

    .line 97
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/auth/zzdu;->zzj(I[BIILcom/google/android/gms/internal/auth/zzez;Lcom/google/android/gms/internal/auth/zzdt;)I

    move-result v7

    move v11, v3

    move-object v3, v2

    goto :goto_5f2

    .line 98
    :goto_603
    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/auth/zzga;->zzq(I)Lcom/google/android/gms/internal/auth/zzey;

    move-result-object v2

    iget-object v5, v0, Lcom/google/android/gms/internal/auth/zzga;->zzl:Lcom/google/android/gms/internal/auth/zzgz;

    .line 99
    sget v12, Lcom/google/android/gms/internal/auth/zzgk;->zza:I

    if-eqz v2, :cond_678

    .line 100
    instance-of v12, v8, Ljava/util/RandomAccess;

    if-eqz v12, :cond_650

    .line 101
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    move-object/from16 p3, v2

    move-object/from16 v2, v16

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_61b
    if-ge v14, v12, :cond_644

    .line 102
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    move/from16 v20, v7

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 103
    invoke-interface/range {p3 .. p3}, Lcom/google/android/gms/internal/auth/zzey;->zza()Z

    move-result v19

    if-eqz v19, :cond_63b

    if-eq v14, v15, :cond_638

    .line 104
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v8, v15, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_638
    add-int/lit8 v15, v15, 0x1

    goto :goto_63f

    .line 105
    :cond_63b
    invoke-static {v10, v13, v7, v2, v5}, Lcom/google/android/gms/internal/auth/zzgk;->zzc(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/auth/zzgz;)Ljava/lang/Object;

    move-result-object v2

    :goto_63f
    add-int/lit8 v14, v14, 0x1

    move/from16 v7, v20

    goto :goto_61b

    :cond_644
    move/from16 v20, v7

    if-eq v15, v12, :cond_67a

    .line 106
    invoke-interface {v8, v15, v12}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_67a

    :cond_650
    move-object/from16 p3, v2

    move/from16 v20, v7

    .line 107
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object/from16 v7, v16

    :cond_65a
    :goto_65a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_67a

    .line 108
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 109
    invoke-interface/range {p3 .. p3}, Lcom/google/android/gms/internal/auth/zzey;->zza()Z

    move-result v12

    if-nez v12, :cond_65a

    .line 110
    invoke-static {v10, v13, v8, v7, v5}, Lcom/google/android/gms/internal/auth/zzgk;->zzc(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/auth/zzgz;)Ljava/lang/Object;

    move-result-object v7

    .line 111
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_65a

    :cond_678
    move/from16 v20, v7

    :cond_67a
    :goto_67a
    move v8, v1

    move v14, v11

    move/from16 v3, v20

    goto/16 :goto_9eb

    :cond_680
    move v1, v3

    move-object v3, v7

    move v4, v12

    move/from16 v9, v30

    move v8, v1

    goto/16 :goto_9ea

    :pswitch_688
    move v1, v3

    move-object v3, v7

    move v4, v12

    move v11, v14

    move/from16 v9, v30

    const/4 v2, 0x2

    if-ne v5, v2, :cond_7c2

    .line 112
    invoke-static {v3, v11, v6}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget v5, v6, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    if-ltz v5, :cond_6e2

    .line 113
    array-length v7, v3

    sub-int/2addr v7, v2

    if-gt v5, v7, :cond_6dd

    if-nez v5, :cond_6a5

    .line 114
    sget-object v5, Lcom/google/android/gms/internal/auth/zzef;->zzb:Lcom/google/android/gms/internal/auth/zzef;

    invoke-interface {v8, v5}, Lcom/google/android/gms/internal/auth/zzez;->add(Ljava/lang/Object;)Z

    goto :goto_6ad

    .line 115
    :cond_6a5
    invoke-static {v3, v2, v5}, Lcom/google/android/gms/internal/auth/zzef;->zzk([BII)Lcom/google/android/gms/internal/auth/zzef;

    move-result-object v7

    invoke-interface {v8, v7}, Lcom/google/android/gms/internal/auth/zzez;->add(Ljava/lang/Object;)Z

    :goto_6ac
    add-int/2addr v2, v5

    :goto_6ad
    if-ge v2, v4, :cond_8c1

    .line 116
    invoke-static {v3, v2, v6}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v5

    iget v7, v6, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    if-ne v1, v7, :cond_8c1

    .line 117
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget v5, v6, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    if-ltz v5, :cond_6d8

    .line 118
    array-length v7, v3

    sub-int/2addr v7, v2

    if-gt v5, v7, :cond_6d3

    if-nez v5, :cond_6cb

    .line 261
    sget-object v5, Lcom/google/android/gms/internal/auth/zzef;->zzb:Lcom/google/android/gms/internal/auth/zzef;

    .line 119
    invoke-interface {v8, v5}, Lcom/google/android/gms/internal/auth/zzez;->add(Ljava/lang/Object;)Z

    goto :goto_6ad

    .line 120
    :cond_6cb
    invoke-static {v3, v2, v5}, Lcom/google/android/gms/internal/auth/zzef;->zzk([BII)Lcom/google/android/gms/internal/auth/zzef;

    move-result-object v7

    invoke-interface {v8, v7}, Lcom/google/android/gms/internal/auth/zzez;->add(Ljava/lang/Object;)Z

    goto :goto_6ac

    .line 261
    :cond_6d3
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->zzf()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    .line 260
    :cond_6d8
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->zzc()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    .line 259
    :cond_6dd
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->zzf()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    .line 258
    :cond_6e2
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->zzc()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    :pswitch_6e7
    move v1, v3

    move-object v3, v7

    move v4, v12

    move v11, v14

    move/from16 v9, v30

    const/4 v2, 0x2

    if-ne v5, v2, :cond_7c2

    move/from16 v20, v1

    .line 121
    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/auth/zzga;->zzr(I)Lcom/google/android/gms/internal/auth/zzgi;

    move-result-object v1

    move v5, v4

    move-object v7, v6

    move-object v6, v8

    move v4, v11

    move/from16 v2, v20

    .line 122
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/auth/zzdu;->zze(Lcom/google/android/gms/internal/auth/zzgi;I[BIILcom/google/android/gms/internal/auth/zzez;Lcom/google/android/gms/internal/auth/zzdt;)I

    move-result v1

    move v11, v2

    move v2, v1

    move v1, v11

    move v11, v4

    move v4, v5

    move v8, v1

    move v3, v2

    move-object v6, v7

    goto/16 :goto_8c3

    :pswitch_70a
    move v1, v3

    move-object v3, v7

    move v4, v12

    move v11, v14

    move/from16 v9, v30

    const/4 v2, 0x2

    if-ne v5, v2, :cond_7c2

    const-wide/32 v20, 0x20000000

    and-long v20, v31, v20

    cmp-long v2, v20, v22

    if-nez v2, :cond_762

    .line 134
    invoke-static {v3, v11, v6}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget v5, v6, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    if-ltz v5, :cond_75d

    if-nez v5, :cond_72a

    .line 135
    invoke-interface {v8, v15}, Lcom/google/android/gms/internal/auth/zzez;->add(Ljava/lang/Object;)Z

    goto :goto_735

    .line 142
    :cond_72a
    new-instance v7, Ljava/lang/String;

    .line 136
    sget-object v12, Lcom/google/android/gms/internal/auth/zzfa;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v7, v3, v2, v5, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 137
    invoke-interface {v8, v7}, Lcom/google/android/gms/internal/auth/zzez;->add(Ljava/lang/Object;)Z

    :goto_734
    add-int/2addr v2, v5

    :goto_735
    if-ge v2, v4, :cond_8c1

    .line 138
    invoke-static {v3, v2, v6}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v5

    iget v7, v6, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    if-ne v1, v7, :cond_8c1

    .line 139
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget v5, v6, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    if-ltz v5, :cond_758

    if-nez v5, :cond_74d

    .line 140
    invoke-interface {v8, v15}, Lcom/google/android/gms/internal/auth/zzez;->add(Ljava/lang/Object;)Z

    goto :goto_735

    :cond_74d
    new-instance v7, Ljava/lang/String;

    .line 141
    sget-object v12, Lcom/google/android/gms/internal/auth/zzfa;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v7, v3, v2, v5, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 142
    invoke-interface {v8, v7}, Lcom/google/android/gms/internal/auth/zzez;->add(Ljava/lang/Object;)Z

    goto :goto_734

    .line 267
    :cond_758
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->zzc()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    .line 266
    :cond_75d
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->zzc()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    .line 123
    :cond_762
    invoke-static {v3, v11, v6}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget v5, v6, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    if-ltz v5, :cond_7bd

    if-nez v5, :cond_770

    .line 124
    invoke-interface {v8, v15}, Lcom/google/android/gms/internal/auth/zzez;->add(Ljava/lang/Object;)Z

    goto :goto_783

    :cond_770
    add-int v7, v2, v5

    .line 125
    invoke-static {v3, v2, v7}, Lcom/google/android/gms/internal/auth/zzhn;->zzc([BII)Z

    move-result v12

    if-eqz v12, :cond_7b8

    .line 263
    new-instance v12, Ljava/lang/String;

    .line 126
    sget-object v14, Lcom/google/android/gms/internal/auth/zzfa;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v12, v3, v2, v5, v14}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 127
    invoke-interface {v8, v12}, Lcom/google/android/gms/internal/auth/zzez;->add(Ljava/lang/Object;)Z

    :goto_782
    move v2, v7

    :goto_783
    if-ge v2, v4, :cond_8c1

    .line 128
    invoke-static {v3, v2, v6}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v5

    iget v7, v6, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    if-ne v1, v7, :cond_8c1

    .line 129
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget v5, v6, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    if-ltz v5, :cond_7b3

    if-nez v5, :cond_79b

    .line 130
    invoke-interface {v8, v15}, Lcom/google/android/gms/internal/auth/zzez;->add(Ljava/lang/Object;)Z

    goto :goto_783

    :cond_79b
    add-int v7, v2, v5

    .line 131
    invoke-static {v3, v2, v7}, Lcom/google/android/gms/internal/auth/zzhn;->zzc([BII)Z

    move-result v12

    if-eqz v12, :cond_7ae

    .line 265
    new-instance v12, Ljava/lang/String;

    .line 132
    sget-object v14, Lcom/google/android/gms/internal/auth/zzfa;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v12, v3, v2, v5, v14}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 133
    invoke-interface {v8, v12}, Lcom/google/android/gms/internal/auth/zzez;->add(Ljava/lang/Object;)Z

    goto :goto_782

    .line 265
    :cond_7ae
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->zzb()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    .line 264
    :cond_7b3
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->zzc()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    .line 263
    :cond_7b8
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->zzb()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    .line 262
    :cond_7bd
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->zzc()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    :cond_7c2
    move v8, v1

    :cond_7c3
    move v14, v11

    goto/16 :goto_9ea

    :pswitch_7c6
    move v1, v3

    move-object v3, v7

    move v4, v12

    move v11, v14

    move/from16 v9, v30

    const/4 v2, 0x2

    if-ne v5, v2, :cond_7f4

    .line 143
    check-cast v8, Lcom/google/android/gms/internal/auth/zzdv;

    .line 144
    invoke-static {v3, v11, v6}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget v5, v6, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    add-int/2addr v5, v2

    :goto_7d8
    if-ge v2, v5, :cond_7eb

    .line 145
    invoke-static {v3, v2, v6}, Lcom/google/android/gms/internal/auth/zzdu;->zzk([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget-wide v14, v6, Lcom/google/android/gms/internal/auth/zzdt;->zzb:J

    cmp-long v7, v14, v22

    if-eqz v7, :cond_7e6

    const/4 v7, 0x1

    goto :goto_7e7

    :cond_7e6
    const/4 v7, 0x0

    .line 146
    :goto_7e7
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/auth/zzdv;->zze(Z)V

    goto :goto_7d8

    :cond_7eb
    if-ne v2, v5, :cond_7ef

    goto/16 :goto_88c

    .line 268
    :cond_7ef
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->zzf()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    :cond_7f4
    if-nez v5, :cond_7c2

    .line 147
    check-cast v8, Lcom/google/android/gms/internal/auth/zzdv;

    .line 148
    invoke-static {v3, v11, v6}, Lcom/google/android/gms/internal/auth/zzdu;->zzk([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget-wide v14, v6, Lcom/google/android/gms/internal/auth/zzdt;->zzb:J

    cmp-long v5, v14, v22

    if-eqz v5, :cond_804

    const/4 v5, 0x1

    goto :goto_805

    :cond_804
    const/4 v5, 0x0

    .line 149
    :goto_805
    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/auth/zzdv;->zze(Z)V

    :goto_808
    if-ge v2, v4, :cond_8c1

    .line 150
    invoke-static {v3, v2, v6}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v5

    iget v7, v6, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    if-ne v1, v7, :cond_8c1

    .line 151
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/auth/zzdu;->zzk([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget-wide v14, v6, Lcom/google/android/gms/internal/auth/zzdt;->zzb:J

    cmp-long v5, v14, v22

    if-eqz v5, :cond_81e

    const/4 v5, 0x1

    goto :goto_81f

    :cond_81e
    const/4 v5, 0x0

    .line 152
    :goto_81f
    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/auth/zzdv;->zze(Z)V

    goto :goto_808

    :pswitch_823
    move v1, v3

    move-object v3, v7

    move v4, v12

    move v11, v14

    move/from16 v9, v30

    const/4 v2, 0x2

    if-ne v5, v2, :cond_84a

    .line 153
    check-cast v8, Lcom/google/android/gms/internal/auth/zzew;

    .line 154
    invoke-static {v3, v11, v6}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget v5, v6, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    add-int/2addr v5, v2

    :goto_835
    if-ge v2, v5, :cond_841

    .line 155
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/auth/zzdu;->zzb([BI)I

    move-result v7

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/auth/zzew;->zze(I)V

    add-int/lit8 v2, v2, 0x4

    goto :goto_835

    :cond_841
    if-ne v2, v5, :cond_845

    goto/16 :goto_8c1

    .line 269
    :cond_845
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->zzf()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    :cond_84a
    const/4 v2, 0x5

    if-ne v5, v2, :cond_7c2

    .line 156
    check-cast v8, Lcom/google/android/gms/internal/auth/zzew;

    .line 157
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/auth/zzdu;->zzb([BI)I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/auth/zzew;->zze(I)V

    add-int/lit8 v2, v11, 0x4

    :goto_858
    if-ge v2, v4, :cond_8c1

    .line 158
    invoke-static {v3, v2, v6}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v5

    iget v7, v6, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    if-ne v1, v7, :cond_8c1

    .line 159
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/auth/zzdu;->zzb([BI)I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/auth/zzew;->zze(I)V

    add-int/lit8 v2, v5, 0x4

    goto :goto_858

    :pswitch_86c
    move v1, v3

    move-object v3, v7

    move v4, v12

    move v11, v14

    move/from16 v9, v30

    const/4 v2, 0x2

    if-ne v5, v2, :cond_892

    .line 160
    check-cast v8, Lcom/google/android/gms/internal/auth/zzfm;

    .line 161
    invoke-static {v3, v11, v6}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget v5, v6, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    add-int/2addr v5, v2

    :goto_87e
    if-ge v2, v5, :cond_88a

    .line 162
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/auth/zzdu;->zzn([BI)J

    move-result-wide v14

    invoke-virtual {v8, v14, v15}, Lcom/google/android/gms/internal/auth/zzfm;->zze(J)V

    add-int/lit8 v2, v2, 0x8

    goto :goto_87e

    :cond_88a
    if-ne v2, v5, :cond_88d

    :goto_88c
    goto :goto_8c1

    .line 270
    :cond_88d
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->zzf()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    :cond_892
    const/4 v2, 0x1

    if-ne v5, v2, :cond_7c2

    .line 163
    check-cast v8, Lcom/google/android/gms/internal/auth/zzfm;

    .line 164
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/auth/zzdu;->zzn([BI)J

    move-result-wide v14

    invoke-virtual {v8, v14, v15}, Lcom/google/android/gms/internal/auth/zzfm;->zze(J)V

    add-int/lit8 v2, v11, 0x8

    :goto_8a0
    if-ge v2, v4, :cond_8c1

    .line 165
    invoke-static {v3, v2, v6}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v5

    iget v7, v6, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    if-ne v1, v7, :cond_8c1

    .line 166
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/auth/zzdu;->zzn([BI)J

    move-result-wide v14

    invoke-virtual {v8, v14, v15}, Lcom/google/android/gms/internal/auth/zzfm;->zze(J)V

    add-int/lit8 v2, v5, 0x8

    goto :goto_8a0

    :pswitch_8b4
    move v1, v3

    move-object v3, v7

    move v4, v12

    move v11, v14

    move/from16 v9, v30

    const/4 v2, 0x2

    if-ne v5, v2, :cond_8c6

    .line 167
    invoke-static {v3, v11, v8, v6}, Lcom/google/android/gms/internal/auth/zzdu;->zzf([BILcom/google/android/gms/internal/auth/zzez;Lcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    :cond_8c1
    :goto_8c1
    move v8, v1

    :cond_8c2
    :goto_8c2
    move v3, v2

    :goto_8c3
    move v14, v11

    goto/16 :goto_9eb

    :cond_8c6
    if-nez v5, :cond_7c2

    move-object v2, v3

    move-object v5, v8

    move v3, v11

    .line 168
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/auth/zzdu;->zzj(I[BIILcom/google/android/gms/internal/auth/zzez;Lcom/google/android/gms/internal/auth/zzdt;)I

    move-result v5

    move v8, v1

    move-object v3, v2

    move v3, v5

    goto :goto_8c3

    :pswitch_8d3
    move-object v2, v8

    move v8, v3

    move-object v3, v7

    move-object v7, v2

    move v4, v12

    move v11, v14

    move/from16 v9, v30

    const/4 v2, 0x2

    if-ne v5, v2, :cond_8fc

    .line 169
    move-object v1, v7

    check-cast v1, Lcom/google/android/gms/internal/auth/zzfm;

    .line 170
    invoke-static {v3, v11, v6}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget v5, v6, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    add-int/2addr v5, v2

    :goto_8e8
    if-ge v2, v5, :cond_8f4

    .line 171
    invoke-static {v3, v2, v6}, Lcom/google/android/gms/internal/auth/zzdu;->zzk([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget-wide v14, v6, Lcom/google/android/gms/internal/auth/zzdt;->zzb:J

    .line 172
    invoke-virtual {v1, v14, v15}, Lcom/google/android/gms/internal/auth/zzfm;->zze(J)V

    goto :goto_8e8

    :cond_8f4
    if-ne v2, v5, :cond_8f7

    goto :goto_8c2

    .line 271
    :cond_8f7
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->zzf()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    :cond_8fc
    if-nez v5, :cond_7c3

    .line 173
    move-object v1, v7

    check-cast v1, Lcom/google/android/gms/internal/auth/zzfm;

    .line 174
    invoke-static {v3, v11, v6}, Lcom/google/android/gms/internal/auth/zzdu;->zzk([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget-wide v14, v6, Lcom/google/android/gms/internal/auth/zzdt;->zzb:J

    .line 175
    invoke-virtual {v1, v14, v15}, Lcom/google/android/gms/internal/auth/zzfm;->zze(J)V

    :goto_90a
    if-ge v2, v4, :cond_8c2

    .line 176
    invoke-static {v3, v2, v6}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v5

    iget v7, v6, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    if-ne v8, v7, :cond_8c2

    .line 177
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/auth/zzdu;->zzk([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget-wide v14, v6, Lcom/google/android/gms/internal/auth/zzdt;->zzb:J

    .line 178
    invoke-virtual {v1, v14, v15}, Lcom/google/android/gms/internal/auth/zzfm;->zze(J)V

    goto :goto_90a

    :pswitch_91e
    move-object v2, v8

    move v8, v3

    move-object v3, v7

    move-object v7, v2

    move v4, v12

    move v11, v14

    move/from16 v9, v30

    const/4 v2, 0x2

    if-ne v5, v2, :cond_94c

    .line 179
    move-object v1, v7

    check-cast v1, Lcom/google/android/gms/internal/auth/zzer;

    .line 180
    invoke-static {v3, v11, v6}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget v5, v6, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    add-int/2addr v5, v2

    :goto_933
    if-ge v2, v5, :cond_943

    .line 181
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/auth/zzdu;->zzb([BI)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    .line 182
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/auth/zzer;->zze(F)V

    add-int/lit8 v2, v2, 0x4

    goto :goto_933

    :cond_943
    if-ne v2, v5, :cond_947

    goto/16 :goto_8c2

    .line 272
    :cond_947
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->zzf()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    :cond_94c
    const/4 v2, 0x5

    if-ne v5, v2, :cond_7c3

    .line 183
    move-object v1, v7

    check-cast v1, Lcom/google/android/gms/internal/auth/zzer;

    .line 184
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/auth/zzdu;->zzb([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    .line 185
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/auth/zzer;->zze(F)V

    add-int/lit8 v2, v11, 0x4

    :goto_95f
    if-ge v2, v4, :cond_8c2

    .line 186
    invoke-static {v3, v2, v6}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v5

    iget v7, v6, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    if-ne v8, v7, :cond_8c2

    .line 187
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/auth/zzdu;->zzb([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    .line 188
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/auth/zzer;->zze(F)V

    add-int/lit8 v2, v5, 0x4

    goto :goto_95f

    :pswitch_977
    move-object v2, v8

    move v8, v3

    move-object v3, v7

    move-object v7, v2

    move v4, v12

    move v11, v14

    move/from16 v9, v30

    const/4 v2, 0x2

    if-ne v5, v2, :cond_9a5

    .line 189
    move-object v1, v7

    check-cast v1, Lcom/google/android/gms/internal/auth/zzek;

    .line 190
    invoke-static {v3, v11, v6}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget v5, v6, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    add-int/2addr v5, v2

    :goto_98c
    if-ge v2, v5, :cond_99c

    .line 191
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/auth/zzdu;->zzn([BI)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v14

    .line 192
    invoke-virtual {v1, v14, v15}, Lcom/google/android/gms/internal/auth/zzek;->zze(D)V

    add-int/lit8 v2, v2, 0x8

    goto :goto_98c

    :cond_99c
    if-ne v2, v5, :cond_9a0

    goto/16 :goto_8c2

    .line 273
    :cond_9a0
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->zzf()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    :cond_9a5
    const/4 v2, 0x1

    if-ne v5, v2, :cond_7c3

    .line 193
    move-object v1, v7

    check-cast v1, Lcom/google/android/gms/internal/auth/zzek;

    .line 194
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/auth/zzdu;->zzn([BI)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v14

    .line 195
    invoke-virtual {v1, v14, v15}, Lcom/google/android/gms/internal/auth/zzek;->zze(D)V

    add-int/lit8 v2, v11, 0x8

    :goto_9b8
    if-ge v2, v4, :cond_8c2

    .line 196
    invoke-static {v3, v2, v6}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v5

    iget v7, v6, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    if-ne v8, v7, :cond_8c2

    .line 197
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/auth/zzdu;->zzn([BI)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v14

    .line 198
    invoke-virtual {v1, v14, v15}, Lcom/google/android/gms/internal/auth/zzek;->zze(D)V

    add-int/lit8 v2, v5, 0x8

    goto :goto_9b8

    :goto_9d0
    if-ge v11, v4, :cond_9e8

    move-object/from16 v2, p2

    .line 73
    invoke-static {v2, v11, v6}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v3

    iget v12, v6, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    if-ne v8, v12, :cond_9e8

    .line 74
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/auth/zzdu;->zzc(Lcom/google/android/gms/internal/auth/zzgi;[BIIILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v11

    iget-object v2, v6, Lcom/google/android/gms/internal/auth/zzdt;->zzc:Ljava/lang/Object;

    .line 75
    invoke-interface {v7, v2}, Lcom/google/android/gms/internal/auth/zzez;->add(Ljava/lang/Object;)Z

    move/from16 v4, p4

    goto :goto_9d0

    :cond_9e8
    move v3, v11

    goto :goto_9eb

    :goto_9ea
    move v3, v14

    :goto_9eb
    if-eq v3, v14, :cond_9fd

    move-object/from16 v7, p2

    move v5, v9

    move-object v2, v10

    move v4, v13

    move/from16 v14, v26

    move/from16 v15, v27

    move-object/from16 v1, v29

    const/4 v11, 0x0

    move-object v10, v6

    move v6, v8

    goto/16 :goto_46a

    :cond_9fd
    move/from16 v7, p5

    move-object v14, v6

    move v1, v8

    move/from16 v15, v27

    goto :goto_a37

    :cond_a04
    move v8, v3

    const/16 v3, 0x32

    if-ne v4, v3, :cond_a3b

    const/4 v3, 0x2

    if-ne v5, v3, :cond_a30

    .line 188
    sget-object v3, Lcom/google/android/gms/internal/auth/zzga;->zzb:Lsun/misc/Unsafe;

    .line 274
    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/auth/zzga;->zzs(I)Ljava/lang/Object;

    move-result-object v4

    .line 275
    invoke-virtual {v3, v10, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 276
    move-object v6, v5

    check-cast v6, Lcom/google/android/gms/internal/auth/zzfr;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/auth/zzfr;->zze()Z

    move-result v6

    if-nez v6, :cond_a2d

    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfr;->zza()Lcom/google/android/gms/internal/auth/zzfr;

    move-result-object v6

    .line 277
    invoke-virtual {v6}, Lcom/google/android/gms/internal/auth/zzfr;->zzb()Lcom/google/android/gms/internal/auth/zzfr;

    move-result-object v6

    .line 278
    invoke-static {v6, v5}, Lcom/google/android/gms/internal/auth/zzfs;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    invoke-virtual {v3, v10, v1, v2, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 280
    :cond_a2d
    check-cast v4, Lcom/google/android/gms/internal/auth/zzfq;

    .line 281
    throw v16

    :cond_a30
    :goto_a30
    move/from16 v7, p5

    move v1, v8

    move v3, v14

    move/from16 v15, v27

    move-object v14, v6

    :goto_a37
    move-object/from16 v6, p2

    goto/16 :goto_c7d

    :cond_a3b
    add-int/lit8 v3, v9, 0x2

    sget-object v7, Lcom/google/android/gms/internal/auth/zzga;->zzb:Lsun/misc/Unsafe;

    .line 199
    aget v3, v20, v3

    const v17, 0xfffff

    and-int v3, v3, v17

    move v12, v4

    int-to-long v3, v3

    packed-switch v12, :pswitch_data_d66

    :cond_a4b
    move/from16 v20, v8

    move/from16 v19, v9

    move v9, v14

    move-object v14, v6

    move-object/from16 v6, p2

    goto/16 :goto_c60

    :pswitch_a55
    const/4 v12, 0x3

    if-ne v5, v12, :cond_a4b

    .line 200
    invoke-direct {v0, v10, v13, v9}, Lcom/google/android/gms/internal/auth/zzga;->zzu(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v1

    and-int/lit8 v2, v8, -0x8

    or-int/lit8 v2, v2, 0x4

    move v6, v2

    .line 201
    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/auth/zzga;->zzr(I)Lcom/google/android/gms/internal/auth/zzgi;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v7, p6

    move v4, v14

    .line 202
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/auth/zzdu;->zzl(Ljava/lang/Object;Lcom/google/android/gms/internal/auth/zzgi;[BIIILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    move-object v6, v3

    move-object v11, v7

    .line 203
    invoke-direct {v0, v10, v13, v9, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzC(Ljava/lang/Object;IILjava/lang/Object;)V

    move v3, v2

    move/from16 v20, v8

    move/from16 v19, v9

    goto/16 :goto_b11

    :pswitch_a7c
    move-object v11, v6

    move-object/from16 v6, p2

    if-nez v5, :cond_a9a

    .line 204
    invoke-static {v6, v14, v11}, Lcom/google/android/gms/internal/auth/zzdu;->zzk([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v5

    move/from16 v20, v8

    move/from16 v19, v9

    iget-wide v8, v11, Lcom/google/android/gms/internal/auth/zzdt;->zzb:J

    .line 205
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/auth/zzej;->zzc(J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v10, v1, v2, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 206
    invoke-virtual {v7, v10, v3, v4, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_abd

    :cond_a9a
    move/from16 v20, v8

    move/from16 v19, v9

    goto/16 :goto_b19

    :pswitch_aa0
    move-object v11, v6

    move/from16 v20, v8

    move/from16 v19, v9

    move-object/from16 v6, p2

    if-nez v5, :cond_b19

    .line 207
    invoke-static {v6, v14, v11}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v5

    iget v8, v11, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    .line 208
    invoke-static {v8}, Lcom/google/android/gms/internal/auth/zzej;->zzb(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v10, v1, v2, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 209
    invoke-virtual {v7, v10, v3, v4, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_abd
    move v3, v5

    goto :goto_b11

    :pswitch_abf
    move-object v11, v6

    move/from16 v20, v8

    move/from16 v19, v9

    move-object/from16 v6, p2

    if-nez v5, :cond_b19

    .line 210
    invoke-static {v6, v14, v11}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v5

    iget v8, v11, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    move/from16 v9, v19

    .line 211
    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/auth/zzga;->zzq(I)Lcom/google/android/gms/internal/auth/zzey;

    move-result-object v12

    if-eqz v12, :cond_aec

    .line 212
    invoke-interface {v12}, Lcom/google/android/gms/internal/auth/zzey;->zza()Z

    move-result v12

    if-eqz v12, :cond_add

    goto :goto_aec

    .line 215
    :cond_add
    invoke-static {v10}, Lcom/google/android/gms/internal/auth/zzga;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/zzha;

    move-result-object v1

    int-to-long v2, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move/from16 v12, v20

    invoke-virtual {v1, v12, v2}, Lcom/google/android/gms/internal/auth/zzha;->zzh(ILjava/lang/Object;)V

    goto :goto_b0c

    :cond_aec
    :goto_aec
    move/from16 v12, v20

    .line 213
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v10, v1, v2, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 214
    invoke-virtual {v7, v10, v3, v4, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_b0c

    :pswitch_af9
    move-object v11, v6

    move v12, v8

    const/4 v8, 0x2

    move-object/from16 v6, p2

    if-ne v5, v8, :cond_b15

    .line 216
    invoke-static {v6, v14, v11}, Lcom/google/android/gms/internal/auth/zzdu;->zza([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v5

    iget-object v8, v11, Lcom/google/android/gms/internal/auth/zzdt;->zzc:Ljava/lang/Object;

    .line 217
    invoke-virtual {v7, v10, v1, v2, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 218
    invoke-virtual {v7, v10, v3, v4, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_b0c
    move v3, v5

    move/from16 v19, v9

    move/from16 v20, v12

    :goto_b11
    move v9, v14

    move-object v14, v11

    goto/16 :goto_c61

    :cond_b15
    move/from16 v19, v9

    move/from16 v20, v12

    :cond_b19
    :goto_b19
    move v9, v14

    move-object v14, v11

    goto/16 :goto_c60

    :pswitch_b1d
    move-object v11, v6

    move v12, v8

    const/4 v8, 0x2

    move-object/from16 v6, p2

    if-ne v5, v8, :cond_b42

    .line 219
    invoke-direct {v0, v10, v13, v9}, Lcom/google/android/gms/internal/auth/zzga;->zzu(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v1

    .line 220
    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/auth/zzga;->zzr(I)Lcom/google/android/gms/internal/auth/zzgi;

    move-result-object v2

    move/from16 v5, p4

    move-object v3, v6

    move-object v6, v11

    move v4, v14

    .line 221
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/auth/zzdu;->zzm(Ljava/lang/Object;Lcom/google/android/gms/internal/auth/zzgi;[BIILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    move-object v14, v6

    move-object v6, v3

    .line 222
    invoke-direct {v0, v10, v13, v9, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzC(Ljava/lang/Object;IILjava/lang/Object;)V

    move v3, v2

    move/from16 v19, v9

    move/from16 v20, v12

    move v9, v4

    goto/16 :goto_c61

    :cond_b42
    move v4, v14

    move-object v14, v11

    move/from16 v19, v9

    move/from16 v20, v12

    move v9, v4

    goto/16 :goto_c60

    :pswitch_b4b
    move v12, v8

    move/from16 v19, v9

    move v9, v14

    const/4 v8, 0x2

    move-object v14, v6

    move-object/from16 v6, p2

    if-ne v5, v8, :cond_baa

    .line 223
    invoke-static {v6, v9, v14}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v5

    iget v8, v14, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    if-nez v8, :cond_b61

    .line 224
    invoke-virtual {v7, v10, v1, v2, v15}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_b7e

    :cond_b61
    and-int v11, v11, v21

    if-eqz v11, :cond_b73

    add-int v11, v5, v8

    .line 225
    invoke-static {v6, v5, v11}, Lcom/google/android/gms/internal/auth/zzhn;->zzc([BII)Z

    move-result v11

    if-eqz v11, :cond_b6e

    goto :goto_b73

    .line 282
    :cond_b6e
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->zzb()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    .line 225
    :cond_b73
    :goto_b73
    new-instance v11, Ljava/lang/String;

    .line 226
    sget-object v15, Lcom/google/android/gms/internal/auth/zzfa;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v11, v6, v5, v8, v15}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 227
    invoke-virtual {v7, v10, v1, v2, v11}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v5, v8

    .line 228
    :goto_b7e
    invoke-virtual {v7, v10, v3, v4, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v3, v5

    move/from16 v20, v12

    goto/16 :goto_c61

    :pswitch_b86
    move v12, v8

    move/from16 v19, v9

    move v9, v14

    move-object v14, v6

    move-object/from16 v6, p2

    if-nez v5, :cond_baa

    .line 229
    invoke-static {v6, v9, v14}, Lcom/google/android/gms/internal/auth/zzdu;->zzk([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v5

    move/from16 v20, v12

    iget-wide v11, v14, Lcom/google/android/gms/internal/auth/zzdt;->zzb:J

    cmp-long v8, v11, v22

    if-eqz v8, :cond_b9d

    const/4 v8, 0x1

    goto :goto_b9e

    :cond_b9d
    const/4 v8, 0x0

    .line 230
    :goto_b9e
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v10, v1, v2, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 231
    invoke-virtual {v7, v10, v3, v4, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_c1d

    :cond_baa
    move/from16 v20, v12

    goto/16 :goto_c60

    :pswitch_bae
    move/from16 v20, v8

    move/from16 v19, v9

    move v9, v14

    const/4 v8, 0x5

    move-object v14, v6

    move-object/from16 v6, p2

    if-ne v5, v8, :cond_c60

    .line 232
    invoke-static {v6, v9}, Lcom/google/android/gms/internal/auth/zzdu;->zzb([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v10, v1, v2, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v1, v9, 0x4

    .line 233
    invoke-virtual {v7, v10, v3, v4, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_c5e

    :pswitch_bcb
    move/from16 v20, v8

    move/from16 v19, v9

    move v9, v14

    const/4 v8, 0x1

    move-object v14, v6

    move-object/from16 v6, p2

    if-ne v5, v8, :cond_c60

    .line 234
    invoke-static {v6, v9}, Lcom/google/android/gms/internal/auth/zzdu;->zzn([BI)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v10, v1, v2, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v1, v9, 0x8

    .line 235
    invoke-virtual {v7, v10, v3, v4, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_c5e

    :pswitch_be8
    move/from16 v20, v8

    move/from16 v19, v9

    move v9, v14

    move-object v14, v6

    move-object/from16 v6, p2

    if-nez v5, :cond_c60

    .line 236
    invoke-static {v6, v9, v14}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v5

    iget v8, v14, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    .line 237
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v10, v1, v2, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 238
    invoke-virtual {v7, v10, v3, v4, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_c1d

    :pswitch_c03
    move/from16 v20, v8

    move/from16 v19, v9

    move v9, v14

    move-object v14, v6

    move-object/from16 v6, p2

    if-nez v5, :cond_c60

    .line 239
    invoke-static {v6, v9, v14}, Lcom/google/android/gms/internal/auth/zzdu;->zzk([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v5

    iget-wide v11, v14, Lcom/google/android/gms/internal/auth/zzdt;->zzb:J

    .line 240
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v10, v1, v2, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 241
    invoke-virtual {v7, v10, v3, v4, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_c1d
    move v3, v5

    goto :goto_c61

    :pswitch_c1f
    move/from16 v20, v8

    move/from16 v19, v9

    move v9, v14

    const/4 v8, 0x5

    move-object v14, v6

    move-object/from16 v6, p2

    if-ne v5, v8, :cond_c60

    .line 242
    invoke-static {v6, v9}, Lcom/google/android/gms/internal/auth/zzdu;->zzb([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    .line 243
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v7, v10, v1, v2, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v1, v9, 0x4

    .line 244
    invoke-virtual {v7, v10, v3, v4, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_c5e

    :pswitch_c3f
    move/from16 v20, v8

    move/from16 v19, v9

    move v9, v14

    const/4 v8, 0x1

    move-object v14, v6

    move-object/from16 v6, p2

    if-ne v5, v8, :cond_c60

    .line 245
    invoke-static {v6, v9}, Lcom/google/android/gms/internal/auth/zzdu;->zzn([BI)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v11

    .line 246
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v7, v10, v1, v2, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v1, v9, 0x8

    .line 247
    invoke-virtual {v7, v10, v3, v4, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_c5e
    move v3, v1

    goto :goto_c61

    :cond_c60
    :goto_c60
    move v3, v9

    :goto_c61
    if-eq v3, v9, :cond_c75

    move/from16 v8, p4

    move-object v7, v6

    move-object v2, v10

    move v4, v13

    move-object v10, v14

    move/from16 v5, v19

    move/from16 v6, v20

    move/from16 v14, v26

    move/from16 v15, v27

    move-object/from16 v1, v29

    goto/16 :goto_202

    :cond_c75
    move/from16 v7, p5

    move/from16 v9, v19

    move/from16 v1, v20

    move/from16 v15, v27

    :goto_c7d
    if-ne v1, v7, :cond_c88

    if-nez v7, :cond_c82

    goto :goto_c88

    :cond_c82
    move/from16 v4, p4

    move v6, v1

    move/from16 v14, v26

    goto :goto_cae

    .line 248
    :cond_c88
    :goto_c88
    invoke-static {v10}, Lcom/google/android/gms/internal/auth/zzga;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/zzha;

    move-result-object v5

    move/from16 v4, p4

    move-object v2, v6

    move-object v6, v14

    .line 249
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/auth/zzdu;->zzg(I[BIILcom/google/android/gms/internal/auth/zzha;Lcom/google/android/gms/internal/auth/zzdt;)I

    move-result v3

    move-object/from16 v7, p2

    move v6, v1

    move v8, v4

    move v5, v9

    move-object v2, v10

    move v4, v13

    move/from16 v14, v26

    move-object/from16 v1, v29

    const/4 v11, 0x0

    move-object/from16 v10, p6

    goto/16 :goto_19

    :cond_ca4
    move/from16 v7, p5

    move-object/from16 v29, v1

    move-object v10, v2

    move v4, v8

    move/from16 v26, v14

    move/from16 v27, v15

    :goto_cae
    const v9, 0xfffff

    if-eq v14, v9, :cond_cb9

    int-to-long v1, v14

    move-object/from16 v8, v29

    .line 283
    invoke-virtual {v8, v10, v1, v2, v15}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_cb9
    iget v1, v0, Lcom/google/android/gms/internal/auth/zzga;->zzi:I

    :goto_cbb
    iget v2, v0, Lcom/google/android/gms/internal/auth/zzga;->zzj:I

    if-ge v1, v2, :cond_cea

    iget-object v2, v0, Lcom/google/android/gms/internal/auth/zzga;->zzh:[I

    .line 284
    aget v2, v2, v1

    iget-object v5, v0, Lcom/google/android/gms/internal/auth/zzga;->zzc:[I

    .line 285
    aget v5, v5, v2

    .line 286
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/auth/zzga;->zzo(I)I

    move-result v5

    const v17, 0xfffff

    and-int v5, v5, v17

    int-to-long v8, v5

    .line 287
    invoke-static {v10, v8, v9}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_cd8

    goto :goto_cde

    .line 288
    :cond_cd8
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/auth/zzga;->zzq(I)Lcom/google/android/gms/internal/auth/zzey;

    move-result-object v8

    if-nez v8, :cond_ce1

    :goto_cde
    add-int/lit8 v1, v1, 0x1

    goto :goto_cbb

    .line 289
    :cond_ce1
    check-cast v5, Lcom/google/android/gms/internal/auth/zzfr;

    .line 290
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/auth/zzga;->zzs(I)Ljava/lang/Object;

    move-result-object v1

    .line 291
    check-cast v1, Lcom/google/android/gms/internal/auth/zzfq;

    .line 292
    throw v16

    :cond_cea
    if-nez v7, :cond_cf4

    if-ne v3, v4, :cond_cef

    goto :goto_cf8

    .line 293
    :cond_cef
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->zzd()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    :cond_cf4
    if-gt v3, v4, :cond_cf9

    if-ne v6, v7, :cond_cf9

    :goto_cf8
    return v3

    .line 294
    :cond_cf9
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->zzd()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    :pswitch_data_cfe
    .packed-switch 0x0
        :pswitch_43c
        :pswitch_41b
        :pswitch_3ec
        :pswitch_3ec
        :pswitch_3c7
        :pswitch_397
        :pswitch_36c
        :pswitch_347
        :pswitch_21a
        :pswitch_1bf
        :pswitch_18b
        :pswitch_3c7
        :pswitch_143
        :pswitch_36c
        :pswitch_397
        :pswitch_119
        :pswitch_df
    .end packed-switch

    :pswitch_data_d24
    .packed-switch 0x12
        :pswitch_977
        :pswitch_91e
        :pswitch_8d3
        :pswitch_8d3
        :pswitch_8b4
        :pswitch_86c
        :pswitch_823
        :pswitch_7c6
        :pswitch_70a
        :pswitch_6e7
        :pswitch_688
        :pswitch_8b4
        :pswitch_5e5
        :pswitch_823
        :pswitch_86c
        :pswitch_58d
        :pswitch_53f
        :pswitch_977
        :pswitch_91e
        :pswitch_8d3
        :pswitch_8d3
        :pswitch_8b4
        :pswitch_86c
        :pswitch_823
        :pswitch_7c6
        :pswitch_8b4
        :pswitch_5e5
        :pswitch_823
        :pswitch_86c
        :pswitch_58d
        :pswitch_53f
    .end packed-switch

    :pswitch_data_d66
    .packed-switch 0x33
        :pswitch_c3f
        :pswitch_c1f
        :pswitch_c03
        :pswitch_c03
        :pswitch_be8
        :pswitch_bcb
        :pswitch_bae
        :pswitch_b86
        :pswitch_b4b
        :pswitch_b1d
        :pswitch_af9
        :pswitch_be8
        :pswitch_abf
        :pswitch_bae
        :pswitch_bcb
        :pswitch_aa0
        :pswitch_a7c
        :pswitch_a55
    .end packed-switch
.end method

.method public final zzd()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->zzg:Lcom/google/android/gms/internal/auth/zzfx;

    check-cast v0, Lcom/google/android/gms/internal/auth/zzev;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzev;->zzc()Lcom/google/android/gms/internal/auth/zzev;

    move-result-object v0

    return-object v0
.end method

.method public final zze(Ljava/lang/Object;)V
    .registers 9

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/auth/zzga;->zzH(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    instance-of v0, p1, Lcom/google/android/gms/internal/auth/zzev;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/auth/zzev;

    const v2, 0x7fffffff

    .line 3
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/auth/zzev;->zzl(I)V

    iput v1, v0, Lcom/google/android/gms/internal/auth/zzev;->zza:I

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzev;->zzj()V

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->zzc:[I

    array-length v0, v0

    :goto_1d
    if-ge v1, v0, :cond_82

    .line 5
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzo(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/auth/zzga;->zzn(I)I

    move-result v2

    int-to-long v3, v3

    const/16 v5, 0x9

    if-eq v2, v5, :cond_6c

    const/16 v5, 0x3c

    if-eq v2, v5, :cond_54

    const/16 v5, 0x44

    if-eq v2, v5, :cond_54

    packed-switch v2, :pswitch_data_88

    goto :goto_7f

    .line 8
    :pswitch_3c
    sget-object v2, Lcom/google/android/gms/internal/auth/zzga;->zzb:Lsun/misc/Unsafe;

    .line 9
    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_7f

    .line 10
    move-object v6, v5

    check-cast v6, Lcom/google/android/gms/internal/auth/zzfr;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/auth/zzfr;->zzc()V

    .line 11
    invoke-virtual {v2, p1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7f

    :pswitch_4e
    iget-object v2, p0, Lcom/google/android/gms/internal/auth/zzga;->zzk:Lcom/google/android/gms/internal/auth/zzfl;

    .line 12
    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/auth/zzfl;->zza(Ljava/lang/Object;J)V

    goto :goto_7f

    .line 5
    :cond_54
    iget-object v2, p0, Lcom/google/android/gms/internal/auth/zzga;->zzc:[I

    .line 6
    aget v2, v2, v1

    .line 7
    invoke-direct {p0, p1, v2, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzI(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 8
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzr(I)Lcom/google/android/gms/internal/auth/zzgi;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/internal/auth/zzga;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/auth/zzgi;->zze(Ljava/lang/Object;)V

    goto :goto_7f

    .line 13
    :cond_6c
    :pswitch_6c
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzE(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 14
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzr(I)Lcom/google/android/gms/internal/auth/zzgi;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/internal/auth/zzga;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/auth/zzgi;->zze(Ljava/lang/Object;)V

    :cond_7f
    :goto_7f
    add-int/lit8 v1, v1, 0x3

    goto :goto_1d

    :cond_82
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->zzl:Lcom/google/android/gms/internal/auth/zzgz;

    .line 15
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth/zzgz;->zze(Ljava/lang/Object;)V

    return-void

    :pswitch_data_88
    .packed-switch 0x11
        :pswitch_6c
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_3c
    .end packed-switch
.end method

.method public final zzf(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/auth/zzga;->zzw(Ljava/lang/Object;)V

    .line 68
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 1
    :goto_7
    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzga;->zzc:[I

    array-length v1, v1

    if-ge v0, v1, :cond_190

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzo(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v2, v1

    iget-object v3, p0, Lcom/google/android/gms/internal/auth/zzga;->zzc:[I

    .line 3
    aget v3, v3, v0

    invoke-static {v1}, Lcom/google/android/gms/internal/auth/zzga;->zzn(I)I

    move-result v1

    int-to-long v4, v2

    packed-switch v1, :pswitch_data_196

    goto/16 :goto_18c

    .line 4
    :pswitch_22
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzy(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_18c

    .line 5
    :pswitch_27
    invoke-direct {p0, p2, v3, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzI(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_18c

    .line 6
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzp(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 7
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzA(Ljava/lang/Object;II)V

    goto/16 :goto_18c

    .line 8
    :pswitch_39
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzy(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_18c

    .line 9
    :pswitch_3e
    invoke-direct {p0, p2, v3, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzI(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_18c

    .line 10
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzp(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 11
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzA(Ljava/lang/Object;II)V

    goto/16 :goto_18c

    .line 12
    :pswitch_50
    sget v1, Lcom/google/android/gms/internal/auth/zzgk;->zza:I

    .line 13
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 14
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/auth/zzfs;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 15
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzp(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_18c

    :pswitch_63
    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzga;->zzk:Lcom/google/android/gms/internal/auth/zzfl;

    .line 16
    invoke-virtual {v1, p1, p2, v4, v5}, Lcom/google/android/gms/internal/auth/zzfl;->zzb(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_18c

    .line 17
    :pswitch_6a
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzx(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_18c

    .line 18
    :pswitch_6f
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzE(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_18c

    .line 19
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/auth/zzhj;->zzo(Ljava/lang/Object;JJ)V

    .line 20
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzz(Ljava/lang/Object;I)V

    goto/16 :goto_18c

    .line 21
    :pswitch_81
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzE(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_18c

    .line 22
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzn(Ljava/lang/Object;JI)V

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzz(Ljava/lang/Object;I)V

    goto/16 :goto_18c

    .line 24
    :pswitch_93
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzE(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_18c

    .line 25
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/auth/zzhj;->zzo(Ljava/lang/Object;JJ)V

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzz(Ljava/lang/Object;I)V

    goto/16 :goto_18c

    .line 27
    :pswitch_a5
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzE(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_18c

    .line 28
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzn(Ljava/lang/Object;JI)V

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzz(Ljava/lang/Object;I)V

    goto/16 :goto_18c

    .line 30
    :pswitch_b7
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzE(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_18c

    .line 31
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzn(Ljava/lang/Object;JI)V

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzz(Ljava/lang/Object;I)V

    goto/16 :goto_18c

    .line 33
    :pswitch_c9
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzE(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_18c

    .line 34
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzn(Ljava/lang/Object;JI)V

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzz(Ljava/lang/Object;I)V

    goto/16 :goto_18c

    .line 36
    :pswitch_db
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzE(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_18c

    .line 37
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzp(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzz(Ljava/lang/Object;I)V

    goto/16 :goto_18c

    .line 39
    :pswitch_ed
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzx(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_18c

    .line 40
    :pswitch_f2
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzE(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_18c

    .line 41
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzp(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzz(Ljava/lang/Object;I)V

    goto/16 :goto_18c

    .line 43
    :pswitch_104
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzE(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_18c

    .line 44
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/zzhj;->zzt(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzk(Ljava/lang/Object;JZ)V

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzz(Ljava/lang/Object;I)V

    goto/16 :goto_18c

    .line 46
    :pswitch_116
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzE(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_18c

    .line 47
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzn(Ljava/lang/Object;JI)V

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzz(Ljava/lang/Object;I)V

    goto :goto_18c

    .line 49
    :pswitch_127
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzE(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_18c

    .line 50
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/auth/zzhj;->zzo(Ljava/lang/Object;JJ)V

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzz(Ljava/lang/Object;I)V

    goto :goto_18c

    .line 52
    :pswitch_138
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzE(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_18c

    .line 53
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzn(Ljava/lang/Object;JI)V

    .line 54
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzz(Ljava/lang/Object;I)V

    goto :goto_18c

    .line 55
    :pswitch_149
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzE(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_18c

    .line 56
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/auth/zzhj;->zzo(Ljava/lang/Object;JJ)V

    .line 57
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzz(Ljava/lang/Object;I)V

    goto :goto_18c

    .line 58
    :pswitch_15a
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzE(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_18c

    .line 59
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/auth/zzhj;->zzo(Ljava/lang/Object;JJ)V

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzz(Ljava/lang/Object;I)V

    goto :goto_18c

    .line 61
    :pswitch_16b
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzE(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_18c

    .line 62
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/zzhj;->zzb(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzm(Ljava/lang/Object;JF)V

    .line 63
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzz(Ljava/lang/Object;I)V

    goto :goto_18c

    .line 64
    :pswitch_17c
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzE(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_18c

    .line 65
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/zzhj;->zza(Ljava/lang/Object;J)D

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/auth/zzhj;->zzl(Ljava/lang/Object;JD)V

    .line 66
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzz(Ljava/lang/Object;I)V

    :cond_18c
    :goto_18c
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_7

    .line 68
    :cond_190
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->zzl:Lcom/google/android/gms/internal/auth/zzgz;

    .line 67
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/auth/zzgk;->zzd(Lcom/google/android/gms/internal/auth/zzgz;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_data_196
    .packed-switch 0x0
        :pswitch_17c
        :pswitch_16b
        :pswitch_15a
        :pswitch_149
        :pswitch_138
        :pswitch_127
        :pswitch_116
        :pswitch_104
        :pswitch_f2
        :pswitch_ed
        :pswitch_db
        :pswitch_c9
        :pswitch_b7
        :pswitch_a5
        :pswitch_93
        :pswitch_81
        :pswitch_6f
        :pswitch_6a
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_50
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_39
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_22
    .end packed-switch
.end method

.method public final zzg(Ljava/lang/Object;[BIILcom/google/android/gms/internal/auth/zzdt;)V
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
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/auth/zzga;->zzb(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/auth/zzdt;)I

    return-void
.end method

.method public final zzh(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->zzc:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_1c7

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/auth/zzga;->zzo(I)I

    move-result v3

    const v4, 0xfffff

    and-int v5, v3, v4

    invoke-static {v3}, Lcom/google/android/gms/internal/auth/zzga;->zzn(I)I

    move-result v3

    int-to-long v5, v5

    packed-switch v3, :pswitch_data_1dc

    goto/16 :goto_1c3

    .line 2
    :pswitch_1a
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/auth/zzga;->zzl(I)I

    move-result v3

    and-int/2addr v3, v4

    int-to-long v3, v3

    .line 3
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result v7

    .line 4
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result v3

    if-ne v7, v3, :cond_1c2

    .line 5
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 6
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/auth/zzgk;->zzf(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c3

    goto/16 :goto_1c2

    .line 7
    :pswitch_3a
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 8
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/auth/zzgk;->zzf(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_53

    .line 9
    :pswitch_47
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 10
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/auth/zzgk;->zzf(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :goto_53
    if-nez v3, :cond_1c3

    goto/16 :goto_1c2

    .line 11
    :pswitch_57
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/zzga;->zzD(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 12
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 13
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/auth/zzgk;->zzf(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c2

    goto/16 :goto_1c3

    .line 14
    :pswitch_6d
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/zzga;->zzD(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 15
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1c2

    goto/16 :goto_1c3

    .line 16
    :pswitch_81
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/zzga;->zzD(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 17
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_1c2

    goto/16 :goto_1c3

    .line 18
    :pswitch_93
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/zzga;->zzD(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 19
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1c2

    goto/16 :goto_1c3

    .line 20
    :pswitch_a7
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/zzga;->zzD(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 21
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_1c2

    goto/16 :goto_1c3

    .line 22
    :pswitch_b9
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/zzga;->zzD(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 23
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_1c2

    goto/16 :goto_1c3

    .line 24
    :pswitch_cb
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/zzga;->zzD(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 25
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_1c2

    goto/16 :goto_1c3

    .line 26
    :pswitch_dd
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/zzga;->zzD(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 27
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 28
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/auth/zzgk;->zzf(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c2

    goto/16 :goto_1c3

    .line 29
    :pswitch_f3
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/zzga;->zzD(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 30
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 31
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/auth/zzgk;->zzf(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c2

    goto/16 :goto_1c3

    .line 32
    :pswitch_109
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/zzga;->zzD(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 33
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 34
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/auth/zzgk;->zzf(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c2

    goto/16 :goto_1c3

    .line 35
    :pswitch_11f
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/zzga;->zzD(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 36
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzt(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzt(Ljava/lang/Object;J)Z

    move-result v4

    if-ne v3, v4, :cond_1c2

    goto/16 :goto_1c3

    .line 37
    :pswitch_131
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/zzga;->zzD(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 38
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_1c2

    goto/16 :goto_1c3

    .line 39
    :pswitch_143
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/zzga;->zzD(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 40
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1c2

    goto/16 :goto_1c3

    .line 41
    :pswitch_157
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/zzga;->zzD(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 42
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_1c2

    goto :goto_1c3

    .line 43
    :pswitch_168
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/zzga;->zzD(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 44
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1c2

    goto :goto_1c3

    .line 45
    :pswitch_17b
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/zzga;->zzD(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 46
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1c2

    goto :goto_1c3

    .line 47
    :pswitch_18e
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/zzga;->zzD(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 48
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzb(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    .line 49
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzb(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-ne v3, v4, :cond_1c2

    goto :goto_1c3

    .line 50
    :pswitch_1a7
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/zzga;->zzD(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 51
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zza(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 52
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zza(Ljava/lang/Object;J)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1c2

    goto :goto_1c3

    :cond_1c2
    :goto_1c2
    return v1

    :cond_1c3
    :goto_1c3
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_5

    :cond_1c7
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->zzl:Lcom/google/android/gms/internal/auth/zzgz;

    .line 53
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth/zzgz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->zzl:Lcom/google/android/gms/internal/auth/zzgz;

    .line 54
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/auth/zzgz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 55
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1da

    return v1

    :cond_1da
    const/4 p1, 0x1

    return p1

    :pswitch_data_1dc
    .packed-switch 0x0
        :pswitch_1a7
        :pswitch_18e
        :pswitch_17b
        :pswitch_168
        :pswitch_157
        :pswitch_143
        :pswitch_131
        :pswitch_11f
        :pswitch_109
        :pswitch_f3
        :pswitch_dd
        :pswitch_cb
        :pswitch_b9
        :pswitch_a7
        :pswitch_93
        :pswitch_81
        :pswitch_6d
        :pswitch_57
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_3a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
    .end packed-switch
.end method

.method public final zzi(Ljava/lang/Object;)Z
    .registers 16

    const/4 v0, 0x0

    const v1, 0xfffff

    move v2, v0

    move v4, v2

    move v3, v1

    .line 1
    :goto_7
    iget v5, p0, Lcom/google/android/gms/internal/auth/zzga;->zzi:I

    const/4 v6, 0x1

    if-ge v2, v5, :cond_cd

    iget-object v5, p0, Lcom/google/android/gms/internal/auth/zzga;->zzh:[I

    aget v9, v5, v2

    iget-object v5, p0, Lcom/google/android/gms/internal/auth/zzga;->zzc:[I

    .line 2
    aget v5, v5, v9

    .line 3
    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/auth/zzga;->zzo(I)I

    move-result v13

    iget-object v7, p0, Lcom/google/android/gms/internal/auth/zzga;->zzc:[I

    add-int/lit8 v8, v9, 0x2

    .line 4
    aget v7, v7, v8

    and-int v8, v7, v1

    ushr-int/lit8 v7, v7, 0x14

    shl-int v12, v6, v7

    if-eq v8, v3, :cond_32

    if-eq v8, v1, :cond_2f

    int-to-long v3, v8

    sget-object v6, Lcom/google/android/gms/internal/auth/zzga;->zzb:Lsun/misc/Unsafe;

    .line 5
    invoke-virtual {v6, p1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    :cond_2f
    move v11, v4

    move v10, v8

    goto :goto_34

    :cond_32
    move v10, v3

    move v11, v4

    :goto_34
    const/high16 v3, 0x10000000

    and-int/2addr v3, v13

    move-object v7, p0

    move-object v8, p1

    if-eqz v3, :cond_43

    .line 6
    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/internal/auth/zzga;->zzF(Ljava/lang/Object;IIII)Z

    move-result p1

    if-eqz p1, :cond_42

    goto :goto_43

    :cond_42
    return v0

    :cond_43
    :goto_43
    invoke-static {v13}, Lcom/google/android/gms/internal/auth/zzga;->zzn(I)I

    move-result p1

    const/16 v3, 0x9

    if-eq p1, v3, :cond_b5

    const/16 v3, 0x11

    if-eq p1, v3, :cond_b5

    const/16 v3, 0x1b

    if-eq p1, v3, :cond_8d

    const/16 v3, 0x3c

    if-eq p1, v3, :cond_7c

    const/16 v3, 0x44

    if-eq p1, v3, :cond_7c

    const/16 v3, 0x31

    if-eq p1, v3, :cond_8d

    const/16 v3, 0x32

    if-eq p1, v3, :cond_64

    goto :goto_c6

    :cond_64
    and-int p1, v13, v1

    int-to-long v3, p1

    .line 13
    invoke-static {v8, v3, v4}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 14
    check-cast p1, Lcom/google/android/gms/internal/auth/zzfr;

    .line 15
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_74

    goto :goto_c6

    .line 20
    :cond_74
    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/auth/zzga;->zzs(I)Ljava/lang/Object;

    move-result-object p1

    .line 21
    check-cast p1, Lcom/google/android/gms/internal/auth/zzfq;

    const/4 p1, 0x0

    .line 22
    throw p1

    .line 16
    :cond_7c
    invoke-direct {p0, v8, v5, v9}, Lcom/google/android/gms/internal/auth/zzga;->zzI(Ljava/lang/Object;II)Z

    move-result p1

    if-eqz p1, :cond_c6

    .line 17
    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/auth/zzga;->zzr(I)Lcom/google/android/gms/internal/auth/zzgi;

    move-result-object p1

    invoke-static {v8, v13, p1}, Lcom/google/android/gms/internal/auth/zzga;->zzG(Ljava/lang/Object;ILcom/google/android/gms/internal/auth/zzgi;)Z

    move-result p1

    if-nez p1, :cond_c6

    return v0

    :cond_8d
    and-int p1, v13, v1

    int-to-long v3, p1

    .line 7
    invoke-static {v8, v3, v4}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 8
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c6

    .line 9
    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/auth/zzga;->zzr(I)Lcom/google/android/gms/internal/auth/zzgi;

    move-result-object v3

    move v4, v0

    .line 10
    :goto_a1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_c6

    .line 11
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 12
    invoke-interface {v3, v5}, Lcom/google/android/gms/internal/auth/zzgi;->zzi(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b2

    return v0

    :cond_b2
    add-int/lit8 v4, v4, 0x1

    goto :goto_a1

    .line 18
    :cond_b5
    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/internal/auth/zzga;->zzF(Ljava/lang/Object;IIII)Z

    move-result p1

    if-eqz p1, :cond_c6

    .line 19
    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/auth/zzga;->zzr(I)Lcom/google/android/gms/internal/auth/zzgi;

    move-result-object p1

    invoke-static {v8, v13, p1}, Lcom/google/android/gms/internal/auth/zzga;->zzG(Ljava/lang/Object;ILcom/google/android/gms/internal/auth/zzgi;)Z

    move-result p1

    if-nez p1, :cond_c6

    return v0

    :cond_c6
    :goto_c6
    add-int/lit8 v2, v2, 0x1

    move-object p1, v8

    move v3, v10

    move v4, v11

    goto/16 :goto_7

    :cond_cd
    move-object v7, p0

    return v6
.end method
