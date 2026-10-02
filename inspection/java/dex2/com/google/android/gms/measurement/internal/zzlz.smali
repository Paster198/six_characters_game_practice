.class public final synthetic Lcom/google/android/gms/measurement/internal/zzlz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/measurement/internal/zzma;

.field public final synthetic zzb:I

.field public final synthetic zzc:Ljava/lang/Exception;

.field public final synthetic zzd:[B

.field public final synthetic zze:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzma;ILjava/lang/Exception;[BLjava/util/Map;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlz;->zza:Lcom/google/android/gms/measurement/internal/zzma;

    iput p2, p0, Lcom/google/android/gms/measurement/internal/zzlz;->zzb:I

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzlz;->zzc:Ljava/lang/Exception;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzlz;->zzd:[B

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzlz;->zze:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlz;->zza:Lcom/google/android/gms/measurement/internal/zzma;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzlz;->zzb:I

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlz;->zzc:Ljava/lang/Exception;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzlz;->zzd:[B

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzlz;->zze:Ljava/util/Map;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzma;->zza(Lcom/google/android/gms/measurement/internal/zzma;ILjava/lang/Exception;[BLjava/util/Map;)V

    return-void
.end method
