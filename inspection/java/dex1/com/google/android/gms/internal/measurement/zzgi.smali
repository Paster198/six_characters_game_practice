.class public final Lcom/google/android/gms/internal/measurement/zzgi;
.super Lcom/google/android/gms/internal/measurement/zzmd;
.source "com.google.android.gms:play-services-measurement@@22.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzni;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/measurement/zzgi;


# instance fields
.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/measurement/zzmj;

.field private zzf:Lcom/google/android/gms/internal/measurement/zzmj;

.field private zzg:Lcom/google/android/gms/internal/measurement/zzmj;

.field private zzh:Z

.field private zzi:Lcom/google/android/gms/internal/measurement/zzmj;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzgi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzgi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzgi;->zzb:Lcom/google/android/gms/internal/measurement/zzgi;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzgi;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzmd;->zzct(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzmd;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzmd;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgi;->zzcn()Lcom/google/android/gms/internal/measurement/zzmj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zze:Lcom/google/android/gms/internal/measurement/zzmj;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgi;->zzcn()Lcom/google/android/gms/internal/measurement/zzmj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzf:Lcom/google/android/gms/internal/measurement/zzmj;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgi;->zzcn()Lcom/google/android/gms/internal/measurement/zzmj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzg:Lcom/google/android/gms/internal/measurement/zzmj;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgi;->zzcn()Lcom/google/android/gms/internal/measurement/zzmj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzi:Lcom/google/android/gms/internal/measurement/zzmj;

    return-void
.end method

.method static bridge synthetic zza()Lcom/google/android/gms/internal/measurement/zzgi;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgi;->zzb:Lcom/google/android/gms/internal/measurement/zzgi;

    return-object v0
.end method

.method public static zzb()Lcom/google/android/gms/internal/measurement/zzgi;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgi;->zzb:Lcom/google/android/gms/internal/measurement/zzgi;

    return-object v0
.end method


# virtual methods
.method public final zzc()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzg:Lcom/google/android/gms/internal/measurement/zzmj;

    return-object v0
.end method

.method public final zzd()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zze:Lcom/google/android/gms/internal/measurement/zzmj;

    return-object v0
.end method

.method public final zze()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzf:Lcom/google/android/gms/internal/measurement/zzmj;

    return-object v0
.end method

.method public final zzf()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzi:Lcom/google/android/gms/internal/measurement/zzmj;

    return-object v0
.end method

.method public final zzg()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzh:Z

    return v0
.end method

.method public final zzh()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzd:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method protected final zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_42

    const/4 p2, 0x2

    if-eq p1, p2, :cond_21

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1b

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_15

    const/4 p2, 0x5

    if-ne p1, p2, :cond_14

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzgi;->zzb:Lcom/google/android/gms/internal/measurement/zzgi;

    return-object p1

    .line 5
    :cond_14
    throw p3

    .line 2
    :cond_15
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfx;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzfx;-><init>(Lcom/google/android/gms/internal/measurement/zzgz;)V

    return-object p1

    :cond_1b
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzgi;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzgi;-><init>()V

    return-object p1

    .line 1
    :cond_21
    const-class v2, Lcom/google/android/gms/internal/measurement/zzfz;

    const-class v4, Lcom/google/android/gms/internal/measurement/zzgb;

    const-class v6, Lcom/google/android/gms/internal/measurement/zzgh;

    const-string v8, "zzi"

    const-class v9, Lcom/google/android/gms/internal/measurement/zzfz;

    const-string v0, "zzd"

    const-string v1, "zze"

    const-string v3, "zzf"

    const-string v5, "zzg"

    const-string v7, "zzh"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzgi;->zzb:Lcom/google/android/gms/internal/measurement/zzgi;

    const-string p3, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0004\u0000\u0001\u001b\u0002\u001b\u0003\u001b\u0004\u1007\u0000\u0005\u001b"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzgi;->zzcq(Lcom/google/android/gms/internal/measurement/zznh;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_42
    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
