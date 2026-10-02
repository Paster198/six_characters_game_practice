.class public final Lcom/google/android/gms/internal/fido/zzae;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# static fields
.field private static final zza:Ljava/lang/Object;

.field private static final zzb:Lcom/google/android/gms/internal/fido/zzai;

.field private static volatile zzc:Lcom/google/android/gms/internal/fido/zzae;

.field private static volatile zzd:Lcom/google/android/gms/internal/fido/zzae;

.field private static final zze:Lcom/google/android/gms/internal/fido/zzbp;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fido/zzae;->zza:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/fido/zzai;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fido/zzai;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fido/zzae;->zzb:Lcom/google/android/gms/internal/fido/zzai;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/fido/zzae;->zzc:Lcom/google/android/gms/internal/fido/zzae;

    sput-object v0, Lcom/google/android/gms/internal/fido/zzae;->zzd:Lcom/google/android/gms/internal/fido/zzae;

    sget-object v0, Lcom/google/android/gms/internal/fido/zzad;->zza:Lcom/google/android/gms/internal/fido/zzad;

    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzbt;->zza(Lcom/google/android/gms/internal/fido/zzbp;)Lcom/google/android/gms/internal/fido/zzbp;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/fido/zzae;->zze:Lcom/google/android/gms/internal/fido/zzbp;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/fido/zzae;
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/fido/zzah;->zza()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/fido/zzah;->zzb()V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/fido/zzah;->zzd()Z

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call PhenotypeContext.setContext() first"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static zzb()Z
    .registers 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/fido/zzah;->zzd()Z

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/fido/zzah;->zzc()V

    const/4 v0, 0x0

    return v0
.end method
