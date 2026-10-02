.class public final Lcom/google/android/gms/internal/gtm/zzar;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/gtm/zzvc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/gtm/zzvc<",
            "Lcom/google/android/gms/internal/gtm/zzar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzap;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzar;->zza:Lcom/google/android/gms/internal/gtm/zzvc;

    return-void
.end method

.method public static zza(I)I
    .registers 1

    packed-switch p0, :pswitch_data_16

    const/4 p0, 0x0

    return p0

    :pswitch_5
    const/16 p0, 0x8

    return p0

    :pswitch_8
    const/4 p0, 0x7

    return p0

    :pswitch_a
    const/4 p0, 0x6

    return p0

    :pswitch_c
    const/4 p0, 0x5

    return p0

    :pswitch_e
    const/4 p0, 0x4

    return p0

    :pswitch_10
    const/4 p0, 0x3

    return p0

    :pswitch_12
    const/4 p0, 0x2

    return p0

    :pswitch_14
    const/4 p0, 0x1

    return p0

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_14
        :pswitch_12
        :pswitch_10
        :pswitch_e
        :pswitch_c
        :pswitch_a
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method
