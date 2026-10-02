.class final Lcom/google/android/gms/internal/fido/zzcu;
.super Lcom/google/android/gms/internal/fido/zzcf;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# static fields
.field static final zza:Lcom/google/android/gms/internal/fido/zzcu;

.field private static final zzd:[Ljava/lang/Object;


# instance fields
.field final transient zzb:[Ljava/lang/Object;

.field final transient zzc:[Ljava/lang/Object;

.field private final transient zze:I

.field private final transient zzf:I

.field private final transient zzg:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v0, 0x0

    .line 1
    new-array v2, v0, [Ljava/lang/Object;

    sput-object v2, Lcom/google/android/gms/internal/fido/zzcu;->zzd:[Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/fido/zzcu;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/fido/zzcu;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    sput-object v1, Lcom/google/android/gms/internal/fido/zzcu;->zza:Lcom/google/android/gms/internal/fido/zzcu;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/fido/zzcf;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/fido/zzcu;->zzb:[Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/gms/internal/fido/zzcu;->zze:I

    iput-object p3, p0, Lcom/google/android/gms/internal/fido/zzcu;->zzc:[Ljava/lang/Object;

    iput p4, p0, Lcom/google/android/gms/internal/fido/zzcu;->zzf:I

    iput p5, p0, Lcom/google/android/gms/internal/fido/zzcu;->zzg:I

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_24

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzcu;->zzc:[Ljava/lang/Object;

    array-length v2, v1

    if-nez v2, :cond_9

    goto :goto_24

    .line 2
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/fido/zzbx;->zza(I)I

    move-result v2

    :goto_11
    iget v3, p0, Lcom/google/android/gms/internal/fido/zzcu;->zzf:I

    and-int/2addr v2, v3

    .line 3
    aget-object v3, v1, v2

    if-nez v3, :cond_19

    return v0

    .line 4
    :cond_19
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    const/4 p1, 0x1

    return p1

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_24
    :goto_24
    return v0
.end method

.method public final hashCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/fido/zzcu;->zze:I

    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzcf;->zzi()Lcom/google/android/gms/internal/fido/zzcc;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fido/zzcc;->zzk(I)Lcom/google/android/gms/internal/fido/zzdd;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/fido/zzcu;->zzg:I

    return v0
.end method

.method final zza([Ljava/lang/Object;I)I
    .registers 5

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/fido/zzcu;->zzb:[Ljava/lang/Object;

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/internal/fido/zzcu;->zzg:I

    invoke-static {p2, v0, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/fido/zzcu;->zzg:I

    return p1
.end method

.method final zzb()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/fido/zzcu;->zzg:I

    return v0
.end method

.method final zzc()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/fido/zzdc;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzcf;->zzi()Lcom/google/android/gms/internal/fido/zzcc;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fido/zzcc;->zzk(I)Lcom/google/android/gms/internal/fido/zzdd;

    move-result-object v0

    return-object v0
.end method

.method final zze()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzcu;->zzb:[Ljava/lang/Object;

    return-object v0
.end method

.method final zzg()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method final zzj()Lcom/google/android/gms/internal/fido/zzcc;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzcu;->zzb:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/fido/zzcu;->zzg:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fido/zzcc;->zzh([Ljava/lang/Object;I)Lcom/google/android/gms/internal/fido/zzcc;

    move-result-object v0

    return-object v0
.end method
