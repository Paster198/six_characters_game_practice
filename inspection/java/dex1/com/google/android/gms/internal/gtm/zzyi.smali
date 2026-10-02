.class final Lcom/google/android/gms/internal/gtm/zzyi;
.super Lcom/google/android/gms/internal/gtm/zzuj;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzuj;-><init>(Z)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/gtm/zzyg;)V
    .registers 2

    const/4 p1, 0x1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzuj;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/internal/gtm/zzwk;I)Lcom/google/android/gms/internal/gtm/zzux;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<CT::",
            "Lcom/google/android/gms/internal/gtm/zzwk;",
            ">(TCT;I)",
            "Lcom/google/android/gms/internal/gtm/zzux<",
            "TCT;*>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_94

    goto :goto_3b

    .line 10
    :sswitch_13
    const-string v0, "com.google.android.gms.internal.gtm.zzub"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3b

    move p1, v3

    goto :goto_3c

    :sswitch_1d
    const-string v0, "com.google.android.gms.internal.gtm.zztz"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3b

    move p1, v2

    goto :goto_3c

    :sswitch_27
    const-string v0, "com.google.android.gms.internal.gtm.zztw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3b

    const/4 p1, 0x0

    goto :goto_3c

    :sswitch_31
    const-string v0, "com.google.android.gms.internal.gtm.zzak"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3b

    move p1, v1

    goto :goto_3c

    :cond_3b
    :goto_3b
    const/4 p1, -0x1

    :goto_3c
    const/4 v0, 0x0

    if-eqz p1, :cond_7a

    if-eq p1, v3, :cond_67

    if-eq p1, v2, :cond_56

    if-eq p1, v1, :cond_46

    return-object v0

    :cond_46
    const/16 p1, 0x65

    if-eq p2, p1, :cond_53

    const p1, 0x2d4c0bd

    if-eq p2, p1, :cond_50

    return-object v0

    .line 2
    :cond_50
    sget-object p1, Lcom/google/android/gms/internal/gtm/zze;->zza:Lcom/google/android/gms/internal/gtm/zzux;

    return-object p1

    .line 3
    :cond_53
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzae;->zza:Lcom/google/android/gms/internal/gtm/zzux;

    return-object p1

    :cond_56
    const p1, 0x14988a0

    if-eq p2, p1, :cond_64

    const p1, 0x1ba68d3

    if-eq p2, p1, :cond_61

    return-object v0

    .line 4
    :cond_61
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzyq;->zzn:Lcom/google/android/gms/internal/gtm/zzux;

    return-object p1

    .line 5
    :cond_64
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzyq;->zzm:Lcom/google/android/gms/internal/gtm/zzux;

    return-object p1

    :cond_67
    sparse-switch p2, :sswitch_data_a6

    return-object v0

    .line 6
    :sswitch_6b
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzyq;->zzl:Lcom/google/android/gms/internal/gtm/zzux;

    return-object p1

    .line 7
    :sswitch_6e
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzyq;->zzh:Lcom/google/android/gms/internal/gtm/zzux;

    return-object p1

    .line 8
    :sswitch_71
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzyq;->zzi:Lcom/google/android/gms/internal/gtm/zzux;

    return-object p1

    .line 9
    :sswitch_74
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzyq;->zzj:Lcom/google/android/gms/internal/gtm/zzux;

    return-object p1

    .line 10
    :sswitch_77
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzyq;->zzk:Lcom/google/android/gms/internal/gtm/zzux;

    return-object p1

    :cond_7a
    sparse-switch p2, :sswitch_data_bc

    return-object v0

    .line 11
    :sswitch_7e
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzyq;->zzg:Lcom/google/android/gms/internal/gtm/zzux;

    return-object p1

    .line 12
    :sswitch_81
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzyq;->zzf:Lcom/google/android/gms/internal/gtm/zzux;

    return-object p1

    .line 13
    :sswitch_84
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzyq;->zze:Lcom/google/android/gms/internal/gtm/zzux;

    return-object p1

    .line 14
    :sswitch_87
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzyq;->zzc:Lcom/google/android/gms/internal/gtm/zzux;

    return-object p1

    .line 15
    :sswitch_8a
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzyq;->zza:Lcom/google/android/gms/internal/gtm/zzux;

    return-object p1

    .line 16
    :sswitch_8d
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzyq;->zzb:Lcom/google/android/gms/internal/gtm/zzux;

    return-object p1

    .line 17
    :sswitch_90
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzyq;->zzd:Lcom/google/android/gms/internal/gtm/zzux;

    return-object p1

    nop

    :sswitch_data_94
    .sparse-switch
        -0x4f2c46bf -> :sswitch_31
        -0x4f2c4466 -> :sswitch_27
        -0x4f2c4463 -> :sswitch_1d
        -0x4f2c445c -> :sswitch_13
    .end sparse-switch

    :sswitch_data_a6
    .sparse-switch
        0x1478fa8 -> :sswitch_77
        0x14988a0 -> :sswitch_74
        0x149f2b5 -> :sswitch_71
        0x14b532c -> :sswitch_6e
        0x196b0b2 -> :sswitch_6b
    .end sparse-switch

    :sswitch_data_bc
    .sparse-switch
        0x14988a0 -> :sswitch_90
        0x149f2b5 -> :sswitch_8d
        0x14b532c -> :sswitch_8a
        0x165f72e -> :sswitch_87
        0x196b0b2 -> :sswitch_84
        0x3335d57 -> :sswitch_81
        0x363ca4f -> :sswitch_7e
    .end sparse-switch
.end method
