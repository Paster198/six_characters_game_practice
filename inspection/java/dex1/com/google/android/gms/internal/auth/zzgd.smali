.class final Lcom/google/android/gms/internal/auth/zzgd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-base@@18.0.10"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/auth/zzgc;

.field private static final zzb:Lcom/google/android/gms/internal/auth/zzgc;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    :try_start_0
    const-string v0, "com.google.protobuf.NewInstanceSchemaFull"

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

    check-cast v0, Lcom/google/android/gms/internal/auth/zzgc;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_17

    :catch_16
    const/4 v0, 0x0

    :goto_17
    sput-object v0, Lcom/google/android/gms/internal/auth/zzgd;->zza:Lcom/google/android/gms/internal/auth/zzgc;

    new-instance v0, Lcom/google/android/gms/internal/auth/zzgc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/auth/zzgc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/auth/zzgd;->zzb:Lcom/google/android/gms/internal/auth/zzgc;

    return-void
.end method

.method static zza()Lcom/google/android/gms/internal/auth/zzgc;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/auth/zzgd;->zza:Lcom/google/android/gms/internal/auth/zzgc;

    return-object v0
.end method

.method static zzb()Lcom/google/android/gms/internal/auth/zzgc;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/auth/zzgd;->zzb:Lcom/google/android/gms/internal/auth/zzgc;

    return-object v0
.end method
