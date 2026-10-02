.class final Lcom/google/android/gms/internal/gtm/zzum;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/gtm/zzuk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/gtm/zzuk<",
            "*>;"
        }
    .end annotation
.end field

.field private static final zzb:Lcom/google/android/gms/internal/gtm/zzuk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/gtm/zzuk<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzul;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzul;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzum;->zza:Lcom/google/android/gms/internal/gtm/zzuk;

    :try_start_7
    const-string v0, "com.google.protobuf.ExtensionSchemaFull"

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

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzuk;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1c} :catch_1d

    goto :goto_1e

    :catch_1d
    const/4 v0, 0x0

    :goto_1e
    sput-object v0, Lcom/google/android/gms/internal/gtm/zzum;->zzb:Lcom/google/android/gms/internal/gtm/zzuk;

    return-void
.end method

.method static zza()Lcom/google/android/gms/internal/gtm/zzuk;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/gtm/zzuk<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzum;->zzb:Lcom/google/android/gms/internal/gtm/zzuk;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Protobuf runtime is not correctly loaded."

    .line 1
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static zzb()Lcom/google/android/gms/internal/gtm/zzuk;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/gtm/zzuk<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzum;->zza:Lcom/google/android/gms/internal/gtm/zzuk;

    return-object v0
.end method
