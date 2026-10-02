.class public final Lcom/google/android/gms/internal/gtm/zzfr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzcq;


# instance fields
.field public zza:Ljava/lang/String;

.field public zzb:D

.field public zzc:I

.field public zzd:I

.field public zze:I

.field public zzf:I

.field public final zzg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzfr;->zzb:D

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzfr;->zzc:I

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzfr;->zzd:I

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzfr;->zze:I

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzfr;->zzf:I

    new-instance v0, Ljava/util/HashMap;

    .line 1
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzfr;->zzg:Ljava/util/Map;

    return-void
.end method
