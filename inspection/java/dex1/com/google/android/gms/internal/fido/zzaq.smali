.class public final Lcom/google/android/gms/internal/fido/zzaq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fido@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/fido/zzbp;


# static fields
.field public static final synthetic zza:I

.field private static volatile zzb:Lcom/google/android/gms/internal/fido/zzaj;


# instance fields
.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/String;

.field private final zze:Ljava/lang/Object;

.field private volatile zzf:Lcom/google/android/gms/internal/fido/zzao;

.field private volatile zzg:I

.field private volatile zzh:Ljava/lang/Object;

.field private final zzi:Lcom/google/android/gms/internal/fido/zzak;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/fido/zzaj;

    sget-object v1, Lcom/google/android/gms/internal/fido/zzap;->zza:Lcom/google/android/gms/internal/fido/zzap;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/fido/zzaj;-><init>(Lcom/google/android/gms/internal/fido/zzap;)V

    sput-object v0, Lcom/google/android/gms/internal/fido/zzaq;->zzb:Lcom/google/android/gms/internal/fido/zzaj;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/fido/zzak;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/fido/zzaq;->zzg:I

    const-string p1, "com.google.android.gms.fido"

    iput-object p1, p0, Lcom/google/android/gms/internal/fido/zzaq;->zzc:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/fido/zzaq;->zzd:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/fido/zzaq;->zze:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/internal/fido/zzaq;->zzi:Lcom/google/android/gms/internal/fido/zzak;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/fido/zzae;->zza()Lcom/google/android/gms/internal/fido/zzae;

    monitor-enter p0

    .line 2
    :try_start_4
    invoke-static {}, Lcom/google/android/gms/internal/fido/zzae;->zzb()Z

    .line 3
    sget v0, Lcom/google/android/gms/internal/fido/zzan;->zza:I

    const/4 v0, 0x0

    .line 4
    throw v0

    :catchall_b
    move-exception v0

    .line 5
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw v0
.end method
