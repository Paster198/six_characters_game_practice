.class public abstract Lcom/google/android/gms/internal/play_billing/zzbq;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/play_billing/zzbq;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzbp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzbp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzbq;->zza:Lcom/google/android/gms/internal/play_billing/zzbq;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzb()Lcom/google/android/gms/internal/play_billing/zzbq;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzbq;->zza:Lcom/google/android/gms/internal/play_billing/zzbq;

    return-object v0
.end method


# virtual methods
.method public abstract zza()J
.end method
