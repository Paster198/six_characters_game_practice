.class final Lcom/google/android/gms/internal/fido/zzcm;
.super Lcom/google/android/gms/internal/fido/zzdc;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# static fields
.field private static final zza:Ljava/lang/Object;


# instance fields
.field private zzb:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fido/zzcm;->zza:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/fido/zzdc;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/fido/zzcm;->zzb:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzcm;->zzb:Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/fido/zzcm;->zza:Ljava/lang/Object;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzcm;->zzb:Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/fido/zzcm;->zza:Ljava/lang/Object;

    if-eq v0, v1, :cond_9

    iput-object v1, p0, Lcom/google/android/gms/internal/fido/zzcm;->zzb:Ljava/lang/Object;

    return-object v0

    :cond_9
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
