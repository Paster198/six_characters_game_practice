.class public final Lcom/google/android/gms/internal/measurement/zzfj;
.super Lcom/google/android/gms/internal/measurement/zzmd;
.source "com.google.android.gms:play-services-measurement@@22.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzni;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/measurement/zzfj;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:Lcom/google/android/gms/internal/measurement/zzmj;

.field private zzh:Z

.field private zzi:Lcom/google/android/gms/internal/measurement/zzfp;

.field private zzj:Z

.field private zzk:Z

.field private zzl:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzfj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfj;->zzb:Lcom/google/android/gms/internal/measurement/zzfj;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzfj;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzmd;->zzct(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzmd;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzmd;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzf:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfj;->zzcn()Lcom/google/android/gms/internal/measurement/zzmj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzg:Lcom/google/android/gms/internal/measurement/zzmj;

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/measurement/zzfi;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfj;->zzb:Lcom/google/android/gms/internal/measurement/zzfj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmd;->zzcg()Lcom/google/android/gms/internal/measurement/zzlz;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfi;

    return-object v0
.end method

.method static bridge synthetic zzd()Lcom/google/android/gms/internal/measurement/zzfj;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfj;->zzb:Lcom/google/android/gms/internal/measurement/zzfj;

    return-object v0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/measurement/zzfj;Ljava/lang/String;)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzd:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzd:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzf:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/measurement/zzfj;ILcom/google/android/gms/internal/measurement/zzfl;)V
    .registers 5

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzg:Lcom/google/android/gms/internal/measurement/zzmj;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzmj;->zzc()Z

    move-result v1

    if-nez v1, :cond_11

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzmd;->zzco(Lcom/google/android/gms/internal/measurement/zzmj;)Lcom/google/android/gms/internal/measurement/zzmj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzg:Lcom/google/android/gms/internal/measurement/zzmj;

    :cond_11
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzg:Lcom/google/android/gms/internal/measurement/zzmj;

    .line 4
    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzmj;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final zza()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzg:Lcom/google/android/gms/internal/measurement/zzmj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzmj;->size()I

    move-result v0

    return v0
.end method

.method public final zzb()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zze:I

    return v0
.end method

.method public final zze(I)Lcom/google/android/gms/internal/measurement/zzfl;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzg:Lcom/google/android/gms/internal/measurement/zzmj;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzmj;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfl;

    return-object p1
.end method

.method public final zzf()Lcom/google/android/gms/internal/measurement/zzfp;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzi:Lcom/google/android/gms/internal/measurement/zzfp;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfp;->zzb()Lcom/google/android/gms/internal/measurement/zzfp;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final zzg()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final zzh()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzg:Lcom/google/android/gms/internal/measurement/zzmj;

    return-object v0
.end method

.method public final zzk()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzj:Z

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfj;->zzb:Lcom/google/android/gms/internal/measurement/zzfj;

    return-object p1

    .line 5
    :cond_14
    throw p3

    .line 2
    :cond_15
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfi;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzfi;-><init>(Lcom/google/android/gms/internal/measurement/zzfw;)V

    return-object p1

    :cond_1b
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfj;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzfj;-><init>()V

    return-object p1

    .line 1
    :cond_21
    const-class v4, Lcom/google/android/gms/internal/measurement/zzfl;

    const-string v8, "zzk"

    const-string v9, "zzl"

    const-string v0, "zzd"

    const-string v1, "zze"

    const-string v2, "zzf"

    const-string v3, "zzg"

    const-string v5, "zzh"

    const-string v6, "zzi"

    const-string v7, "zzj"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzfj;->zzb:Lcom/google/android/gms/internal/measurement/zzfj;

    const-string p3, "\u0004\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0001\u0000\u0001\u1004\u0000\u0002\u1008\u0001\u0003\u001b\u0004\u1007\u0002\u0005\u1009\u0003\u0006\u1007\u0004\u0007\u1007\u0005\u0008\u1007\u0006"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzfj;->zzcq(Lcom/google/android/gms/internal/measurement/zznh;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_42
    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zzm()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzk:Z

    return v0
.end method

.method public final zzn()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzl:Z

    return v0
.end method

.method public final zzo()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzd:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzp()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzd:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final zzq()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfj;->zzd:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method
