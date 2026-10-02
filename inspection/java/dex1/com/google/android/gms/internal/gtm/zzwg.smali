.class final Lcom/google/android/gms/internal/gtm/zzwg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/gtm/zzwf;

.field private static final zzb:Lcom/google/android/gms/internal/gtm/zzwf;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    :try_start_0
    const-string v0, "com.google.protobuf.MapFieldSchemaFull"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzwf;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_17

    :catch_16
    const/4 v0, 0x0

    :goto_17
    sput-object v0, Lcom/google/android/gms/internal/gtm/zzwg;->zza:Lcom/google/android/gms/internal/gtm/zzwf;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzwf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzwf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzwg;->zzb:Lcom/google/android/gms/internal/gtm/zzwf;

    return-void
.end method

.method static zza()Lcom/google/android/gms/internal/gtm/zzwf;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzwg;->zza:Lcom/google/android/gms/internal/gtm/zzwf;

    return-object v0
.end method

.method static zzb()Lcom/google/android/gms/internal/gtm/zzwf;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzwg;->zzb:Lcom/google/android/gms/internal/gtm/zzwf;

    return-object v0
.end method
