.class final Lcom/google/android/gms/internal/gtm/zzaq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzvd;


# static fields
.field static final zza:Lcom/google/android/gms/internal/gtm/zzvd;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzaq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzaq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzaq;->zza:Lcom/google/android/gms/internal/gtm/zzvd;

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

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzar;->zza(I)I

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method
