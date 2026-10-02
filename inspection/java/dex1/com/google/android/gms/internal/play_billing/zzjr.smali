.class final Lcom/google/android/gms/internal/play_billing/zzjr;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzgs;


# static fields
.field static final zza:Lcom/google/android/gms/internal/play_billing/zzgs;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzjr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzjr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzjr;->zza:Lcom/google/android/gms/internal/play_billing/zzgs;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I)Z
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzjs;->zzb(I)Lcom/google/android/gms/internal/play_billing/zzjs;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method
