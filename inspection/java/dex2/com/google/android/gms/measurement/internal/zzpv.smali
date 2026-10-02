.class public final Lcom/google/android/gms/measurement/internal/zzpv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@22.4.0"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzjs;


# static fields
.field private static volatile zzb:Lcom/google/android/gms/measurement/internal/zzpv;


# instance fields
.field private zzA:Ljava/util/List;

.field private zzB:J

.field private final zzC:Ljava/util/Map;

.field private final zzD:Ljava/util/Map;

.field private final zzE:Ljava/util/Map;

.field private final zzF:Ljava/util/Map;

.field private zzG:Lcom/google/android/gms/measurement/internal/zzmh;

.field private zzH:Ljava/lang/String;

.field private zzI:Lcom/google/android/gms/measurement/internal/zzaz;

.field private zzJ:J

.field private final zzK:Lcom/google/android/gms/measurement/internal/zzqe;

.field zza:J

.field private final zzc:Lcom/google/android/gms/measurement/internal/zzif;

.field private final zzd:Lcom/google/android/gms/measurement/internal/zzhk;

.field private zze:Lcom/google/android/gms/measurement/internal/zzaw;

.field private zzf:Lcom/google/android/gms/measurement/internal/zzhm;

.field private zzg:Lcom/google/android/gms/measurement/internal/zzoy;

.field private zzh:Lcom/google/android/gms/measurement/internal/zzae;

.field private final zzi:Lcom/google/android/gms/measurement/internal/zzqa;

.field private zzj:Lcom/google/android/gms/measurement/internal/zzmc;

.field private zzk:Lcom/google/android/gms/measurement/internal/zzoa;

.field private final zzl:Lcom/google/android/gms/measurement/internal/zzpi;

.field private zzm:Lcom/google/android/gms/measurement/internal/zzhw;

.field private final zzn:Lcom/google/android/gms/measurement/internal/zzio;

.field private final zzo:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private zzp:Z

.field private zzq:Ljava/util/List;

.field private final zzr:Ljava/util/Deque;

.field private zzs:I

.field private zzt:I

.field private zzu:Z

.field private zzv:Z

.field private zzw:Z

.field private zzx:Ljava/nio/channels/FileLock;

.field private zzy:Ljava/nio/channels/FileChannel;

.field private zzz:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzpw;Lcom/google/android/gms/measurement/internal/zzio;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzo:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p2, Ljava/util/LinkedList;

    .line 2
    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzr:Ljava/util/Deque;

    new-instance p2, Ljava/util/HashMap;

    .line 3
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzF:Ljava/util/Map;

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzpq;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzpq;-><init>(Lcom/google/android/gms/measurement/internal/zzpv;)V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzK:Lcom/google/android/gms/measurement/internal/zzqe;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzpw;->zza:Landroid/content/Context;

    const/4 v0, 0x0

    .line 5
    invoke-static {p2, v0, v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzp(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzdh;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/zzio;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzn:Lcom/google/android/gms/measurement/internal/zzio;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzB:J

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzpi;

    .line 6
    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzpi;-><init>(Lcom/google/android/gms/measurement/internal/zzpv;)V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzl:Lcom/google/android/gms/measurement/internal/zzpi;

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzqa;

    .line 7
    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzqa;-><init>(Lcom/google/android/gms/measurement/internal/zzpv;)V

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaw()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzi:Lcom/google/android/gms/measurement/internal/zzqa;

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzhk;

    .line 9
    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzhk;-><init>(Lcom/google/android/gms/measurement/internal/zzpv;)V

    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaw()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzd:Lcom/google/android/gms/measurement/internal/zzhk;

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzif;

    .line 11
    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzif;-><init>(Lcom/google/android/gms/measurement/internal/zzpv;)V

    .line 12
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaw()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzc:Lcom/google/android/gms/measurement/internal/zzif;

    new-instance p2, Ljava/util/HashMap;

    .line 13
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzC:Ljava/util/Map;

    new-instance p2, Ljava/util/HashMap;

    .line 14
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzD:Ljava/util/Map;

    new-instance p2, Ljava/util/HashMap;

    .line 15
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzE:Ljava/util/Map;

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzpk;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzpk;-><init>(Lcom/google/android/gms/measurement/internal/zzpv;Lcom/google/android/gms/measurement/internal/zzpw;)V

    .line 17
    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzil;->zzq(Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic zzE(Lcom/google/android/gms/measurement/internal/zzpv;)Ljava/util/Deque;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzr:Ljava/util/Deque;

    return-object p0
.end method

.method static bridge synthetic zzG(Lcom/google/android/gms/measurement/internal/zzpv;J)V
    .registers 3

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzJ:J

    return-void
.end method

.method static bridge synthetic zzH(Lcom/google/android/gms/measurement/internal/zzpv;Lcom/google/android/gms/measurement/internal/zzpw;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzhw;-><init>(Lcom/google/android/gms/measurement/internal/zzpv;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    .line 2
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzaw;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzaw;-><init>(Lcom/google/android/gms/measurement/internal/zzpv;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaw()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zze:Lcom/google/android/gms/measurement/internal/zzaw;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzc:Lcom/google/android/gms/measurement/internal/zzif;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzal;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzam;->zzu(Lcom/google/android/gms/measurement/internal/zzal;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzoa;

    .line 5
    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzoa;-><init>(Lcom/google/android/gms/measurement/internal/zzpv;)V

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaw()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzk:Lcom/google/android/gms/measurement/internal/zzoa;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzae;

    .line 7
    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzae;-><init>(Lcom/google/android/gms/measurement/internal/zzpv;)V

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaw()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzh:Lcom/google/android/gms/measurement/internal/zzae;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzmc;

    .line 9
    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzmc;-><init>(Lcom/google/android/gms/measurement/internal/zzpv;)V

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaw()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzj:Lcom/google/android/gms/measurement/internal/zzmc;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzoy;

    .line 11
    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzoy;-><init>(Lcom/google/android/gms/measurement/internal/zzpv;)V

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaw()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzg:Lcom/google/android/gms/measurement/internal/zzoy;

    .line 13
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzhm;-><init>(Lcom/google/android/gms/measurement/internal/zzpv;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzf:Lcom/google/android/gms/measurement/internal/zzhm;

    iget p1, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzs:I

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzt:I

    if-eq p1, v0, :cond_75

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzs:I

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzt:I

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Not all upload components initialized"

    .line 18
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_75
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzo:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    .line 19
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p0

    const-string p1, "UploadController is now fully initialized"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic zzI(Lcom/google/android/gms/measurement/internal/zzpv;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaJ()V

    return-void
.end method

.method static bridge synthetic zzJ(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaK(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static final zzaA(Lcom/google/android/gms/internal/measurement/zzhl;ILjava/lang/String;)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhl;->zzp()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "_err"

    if-ge v1, v2, :cond_21

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzhq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhq;->zzg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    return-void

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 4
    :cond_21
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhq;->zze()Lcom/google/android/gms/internal/measurement/zzhp;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzhp;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhp;

    int-to-long v1, p1

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhp;->zzi(J)Lcom/google/android/gms/internal/measurement/zzhp;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzhq;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhq;->zze()Lcom/google/android/gms/internal/measurement/zzhp;

    move-result-object v0

    const-string v1, "_ev"

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzhp;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhp;

    .line 10
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/zzhp;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhp;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzhq;

    .line 12
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzhl;->zzf(Lcom/google/android/gms/internal/measurement/zzhq;)Lcom/google/android/gms/internal/measurement/zzhl;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzhl;->zzf(Lcom/google/android/gms/internal/measurement/zzhq;)Lcom/google/android/gms/internal/measurement/zzhl;

    return-void
.end method

.method static final zzaB(Lcom/google/android/gms/internal/measurement/zzhl;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhl;->zzp()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzhq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhq;->zzg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzhl;->zzh(I)Lcom/google/android/gms/internal/measurement/zzhl;

    return-void

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_22
    return-void
.end method

.method private final zzaC(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzao;)I
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzc:Lcom/google/android/gms/measurement/internal/zzif;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzif;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgi;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_11

    .line 2
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzjw;->zzd:Lcom/google/android/gms/measurement/internal/zzjw;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzan;->zzj:Lcom/google/android/gms/measurement/internal/zzan;

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzao;->zzd(Lcom/google/android/gms/measurement/internal/zzjw;Lcom/google/android/gms/measurement/internal/zzan;)V

    return v2

    .line 3
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzl(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_43

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzh;->zzK()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zze;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zze;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zze;->zzb()Lcom/google/android/gms/measurement/internal/zzju;

    move-result-object v1

    .line 5
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzju;->zzb:Lcom/google/android/gms/measurement/internal/zzju;

    if-ne v1, v4, :cond_43

    .line 6
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzjw;->zzd:Lcom/google/android/gms/measurement/internal/zzjw;

    .line 7
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzif;->zzf(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzjw;)Lcom/google/android/gms/measurement/internal/zzju;

    move-result-object v1

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzju;->zza:Lcom/google/android/gms/measurement/internal/zzju;

    if-eq v1, v4, :cond_43

    sget-object p1, Lcom/google/android/gms/measurement/internal/zzjw;->zzd:Lcom/google/android/gms/measurement/internal/zzjw;

    .line 10
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzan;->zzi:Lcom/google/android/gms/measurement/internal/zzan;

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzao;->zzd(Lcom/google/android/gms/measurement/internal/zzjw;Lcom/google/android/gms/measurement/internal/zzan;)V

    sget-object p1, Lcom/google/android/gms/measurement/internal/zzju;->zzd:Lcom/google/android/gms/measurement/internal/zzju;

    if-ne v1, p1, :cond_42

    return v3

    :cond_42
    return v2

    .line 8
    :cond_43
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzjw;->zzd:Lcom/google/android/gms/measurement/internal/zzjw;

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzan;->zzb:Lcom/google/android/gms/measurement/internal/zzan;

    invoke-virtual {p2, v1, v4}, Lcom/google/android/gms/measurement/internal/zzao;->zzd(Lcom/google/android/gms/measurement/internal/zzjw;Lcom/google/android/gms/measurement/internal/zzan;)V

    sget-object p2, Lcom/google/android/gms/measurement/internal/zzjw;->zzd:Lcom/google/android/gms/measurement/internal/zzjw;

    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzif;->zzu(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzjw;)Z

    move-result p1

    if-eqz p1, :cond_53

    return v3

    :cond_53
    return v2
.end method

.method private final zzaD(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzr;
    .registers 44

    move-object/from16 v1, p1

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzl(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_bd

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzF()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_19

    goto/16 :goto_bd

    :cond_19
    move-object/from16 v3, p0

    .line 4
    invoke-direct {v3, v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaF(Lcom/google/android/gms/measurement/internal/zzh;)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_39

    .line 5
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_39

    .line 30
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v4, "App version does not match; dropping. appId"

    .line 32
    invoke-virtual {v0, v4, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v2

    :cond_39
    move-object v2, v0

    .line 6
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzr;

    move-object v4, v2

    .line 7
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzh;->zzH()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzh;->zzF()Ljava/lang/String;

    move-result-object v3

    move-object v6, v4

    .line 9
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzh;->zze()J

    move-result-wide v4

    move-object v7, v6

    .line 10
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzh;->zzE()Ljava/lang/String;

    move-result-object v6

    move-object v9, v7

    .line 11
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzq()J

    move-result-wide v7

    move-object v11, v9

    .line 12
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzn()J

    move-result-wide v9

    .line 13
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzaJ()Z

    move-result v12

    .line 14
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzG()Ljava/lang/String;

    move-result-object v14

    .line 15
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzaI()Z

    move-result v18

    .line 16
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzA()Ljava/lang/String;

    move-result-object v20

    .line 17
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzx()Ljava/lang/Boolean;

    move-result-object v21

    .line 18
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzo()J

    move-result-wide v22

    .line 19
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzN()Ljava/util/List;

    move-result-object v24

    .line 20
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzu(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzjx;->zzq()Ljava/lang/String;

    move-result-object v26

    .line 21
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzaL()Z

    move-result v29

    .line 22
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzw()J

    move-result-wide v30

    .line 23
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzu(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzjx;->zzb()I

    move-result v32

    .line 24
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzm(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzba;->zzj()Ljava/lang/String;

    move-result-object v33

    .line 25
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zza()I

    move-result v34

    .line 26
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzf()J

    move-result-wide v35

    .line 27
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzM()Ljava/lang/String;

    move-result-object v37

    .line 28
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzK()Ljava/lang/String;

    move-result-object v38

    .line 29
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzb()I

    move-result v41

    const/16 v28, 0x0

    const-wide/16 v39, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v25, 0x0

    const-string v27, ""

    invoke-direct/range {v0 .. v41}, Lcom/google/android/gms/measurement/internal/zzr;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJILjava/lang/String;IJLjava/lang/String;Ljava/lang/String;JI)V

    return-object v0

    .line 3
    :cond_bd
    :goto_bd
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v3, "No app data available; dropping"

    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v2
.end method

.method private final zzaE()Lcom/google/android/gms/measurement/internal/zzaz;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzI:Lcom/google/android/gms/measurement/internal/zzaz;

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzn:Lcom/google/android/gms/measurement/internal/zzio;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzpn;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/measurement/internal/zzpn;-><init>(Lcom/google/android/gms/measurement/internal/zzpv;Lcom/google/android/gms/measurement/internal/zzjs;)V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzI:Lcom/google/android/gms/measurement/internal/zzaz;

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzI:Lcom/google/android/gms/measurement/internal/zzaz;

    return-object v0
.end method

.method private final zzaF(Lcom/google/android/gms/measurement/internal/zzh;)Ljava/lang/Boolean;
    .registers 9

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zze()J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzn:Lcom/google/android/gms/measurement/internal/zzio;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzC()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zze()J

    move-result-wide v3

    int-to-long v5, v0

    cmp-long p1, v3, v5

    if-nez p1, :cond_54

    .line 11
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 10
    :cond_2f
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzn:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzC()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzF()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_54

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_54

    .line 6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_53
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_53} :catch_59

    return-object p1

    .line 10
    :cond_54
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catch_59
    const/4 p1, 0x0

    return-object p1
.end method

.method private static zzaG(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_3

    goto :goto_3d

    .line 1
    :cond_3
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3d

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_3d
    :goto_3d
    const/4 p0, 0x0

    return-object p0
.end method

.method private final zzaH()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzu:Z

    if-nez v0, :cond_46

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzv:Z

    if-nez v0, :cond_46

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzw:Z

    if-eqz v0, :cond_14

    goto :goto_46

    .line 8
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v1, "Stopping uploading service(s)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzq:Ljava/util/List;

    if-nez v0, :cond_26

    return-void

    .line 9
    :cond_26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 10
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_2a

    :cond_3a
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzq:Ljava/util/List;

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    .line 2
    :cond_46
    :goto_46
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzu:Z

    .line 4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzv:Z

    .line 5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzw:Z

    .line 6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "Not stopping services. fetch, network, upload"

    .line 7
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final zzaI(Lcom/google/android/gms/internal/measurement/zzhw;JZ)V
    .registers 15

    const/4 v0, 0x1

    if-eq v0, p4, :cond_6

    .line 1
    const-string v1, "_lte"

    goto :goto_8

    .line 7
    :cond_6
    const-string v1, "_se"

    :goto_8
    move-object v5, v1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhw;->zzaF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lcom/google/android/gms/measurement/internal/zzaw;->zzy(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzqd;

    move-result-object v1

    if-eqz v1, :cond_3b

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzqd;->zze:Ljava/lang/Object;

    if-nez v1, :cond_1c

    goto :goto_3b

    .line 14
    :cond_1c
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzqd;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhw;->zzaF()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    check-cast v1, Ljava/lang/Long;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v8, p2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v4, "auto"

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzqd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_52

    .line 1
    :cond_3b
    :goto_3b
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzqd;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhw;->zzaF()Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    .line 4
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v4, "auto"

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzqd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 8
    :goto_52
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzio;->zze()Lcom/google/android/gms/internal/measurement/zzin;

    move-result-object v1

    .line 9
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/measurement/zzin;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzin;

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzin;->zzg(J)Lcom/google/android/gms/internal/measurement/zzin;

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzqd;->zze:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Ljava/lang/Long;

    .line 11
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/google/android/gms/internal/measurement/zzin;->zze(J)Lcom/google/android/gms/internal/measurement/zzin;

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzio;

    .line 13
    invoke-static {p1, v5}, Lcom/google/android/gms/measurement/internal/zzqa;->zza(Lcom/google/android/gms/internal/measurement/zzhw;Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_80

    .line 15
    invoke-virtual {p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzhw;->zzaC(ILcom/google/android/gms/internal/measurement/zzio;)Lcom/google/android/gms/internal/measurement/zzhw;

    goto :goto_83

    .line 14
    :cond_80
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzhw;->zzp(Lcom/google/android/gms/internal/measurement/zzio;)Lcom/google/android/gms/internal/measurement/zzhw;

    :goto_83
    const-wide/16 v4, 0x0

    cmp-long p1, p2, v4

    if-lez p1, :cond_a4

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/measurement/internal/zzaw;->zzai(Lcom/google/android/gms/measurement/internal/zzqd;)Z

    if-eq v0, p4, :cond_95

    const-string p1, "lifetime"

    goto :goto_97

    .line 19
    :cond_95
    const-string p1, "session-scoped"

    .line 17
    :goto_97
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p2

    .line 18
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p2

    const-string p3, "Updated engagement user property. scope, value"

    .line 19
    invoke-virtual {p2, p3, p1, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a4
    return-void
.end method

.method private final zzaJ()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzr:Ljava/util/Deque;

    .line 2
    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_51

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaE()Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaz;->zze()Z

    move-result v0

    if-nez v0, :cond_51

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzJ:J

    sub-long/2addr v0, v2

    .line 4
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzgi;->zzaA:Lcom/google/android/gms/measurement/internal/zzgg;

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzgg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 6
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    .line 7
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Scheduling notify next app runnable, delay in ms"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaE()Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzaz;->zzd(J)V

    :cond_51
    return-void
.end method

.method private static zzaK(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-ge v0, v1, :cond_a

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 2
    :cond_a
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setShareIdentityEnabled(Z)Landroid/app/BroadcastOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, p1, v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private final zzaL()V
    .registers 21

    move-object/from16 v0, p0

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzM()V

    iget-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzpv;->zza:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_4d

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/zzpv;->zza:J

    sub-long/2addr v1, v5

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v5, 0x36ee80

    sub-long/2addr v5, v1

    cmp-long v1, v5, v3

    if-lez v1, :cond_4b

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Upload has been suspended. Will update scheduling later in approximately ms"

    .line 7
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 8
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzq()Lcom/google/android/gms/measurement/internal/zzhm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhm;->zzc()V

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzx()Lcom/google/android/gms/measurement/internal/zzoy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzoy;->zza()V

    return-void

    :cond_4b
    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/zzpv;->zza:J

    :cond_4d
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzpv;->zzn:Lcom/google/android/gms/measurement/internal/zzio;

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzM()Z

    move-result v1

    if-eqz v1, :cond_253

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaN()Z

    move-result v1

    if-nez v1, :cond_5d

    goto/16 :goto_253

    .line 15
    :cond_5d
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    .line 17
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzgi;->zzN:Lcom/google/android/gms/measurement/internal/zzgg;

    const/4 v6, 0x0

    .line 18
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzgg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 17
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzaw;->zzac()Z

    move-result v5

    const/4 v10, 0x1

    if-nez v5, :cond_90

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzaw;->zzab()Z

    move-result v5

    if-eqz v5, :cond_8f

    goto :goto_90

    :cond_8f
    const/4 v10, 0x0

    :cond_90
    :goto_90
    if-eqz v10, :cond_d0

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzam;->zzo()Ljava/lang/String;

    move-result-object v5

    .line 21
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_bc

    const-string v11, ".none."

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_bc

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzgi;->zzI:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 26
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzgg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 27
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    goto :goto_e3

    .line 22
    :cond_bc
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzgi;->zzH:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 23
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzgg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 24
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    goto :goto_e3

    .line 28
    :cond_d0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzgi;->zzG:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 29
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzgg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 30
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 27
    :goto_e3
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzpv;->zzk:Lcom/google/android/gms/measurement/internal/zzoa;

    .line 31
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzoa;->zzd:Lcom/google/android/gms/measurement/internal/zzhp;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzhp;->zza()J

    move-result-wide v13

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzpv;->zzk:Lcom/google/android/gms/measurement/internal/zzoa;

    .line 32
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzoa;->zze:Lcom/google/android/gms/measurement/internal/zzhp;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzhp;->zza()J

    move-result-wide v15

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v5

    move-wide/from16 v17, v3

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzaw;->zzf()J

    move-result-wide v3

    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v5

    move/from16 v19, v10

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzaw;->zzh()J

    move-result-wide v9

    .line 35
    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    cmp-long v5, v3, v17

    if-nez v5, :cond_113

    move-wide/from16 v7, v17

    goto/16 :goto_190

    :cond_113
    sub-long/2addr v3, v1

    .line 36
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    sub-long v3, v1, v3

    sub-long/2addr v13, v1

    .line 37
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    sub-long v9, v1, v9

    sub-long/2addr v15, v1

    .line 38
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    sub-long/2addr v1, v13

    add-long/2addr v7, v3

    .line 39
    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    if-eqz v19, :cond_137

    cmp-long v5, v9, v17

    if-lez v5, :cond_137

    .line 40
    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    add-long/2addr v7, v11

    .line 41
    :cond_137
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    move-result-object v5

    invoke-virtual {v5, v9, v10, v11, v12}, Lcom/google/android/gms/measurement/internal/zzqa;->zzz(JJ)Z

    move-result v5

    if-nez v5, :cond_143

    add-long/2addr v9, v11

    move-wide v7, v9

    :cond_143
    cmp-long v5, v1, v17

    if-eqz v5, :cond_18e

    cmp-long v3, v1, v3

    if-ltz v3, :cond_18e

    const/4 v3, 0x0

    .line 42
    :goto_14c
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzgi;->zzP:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 43
    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzgg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 44
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/16 v9, 0x14

    invoke-static {v9, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v3, v4, :cond_18c

    const-wide/16 v9, 0x1

    shl-long/2addr v9, v3

    .line 45
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzgi;->zzO:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 46
    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzgg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 47
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    move-wide/from16 v13, v17

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    mul-long/2addr v11, v9

    add-long/2addr v7, v11

    cmp-long v4, v7, v1

    if-lez v4, :cond_187

    goto :goto_18e

    :cond_187
    add-int/lit8 v3, v3, 0x1

    const-wide/16 v17, 0x0

    goto :goto_14c

    :cond_18c
    const-wide/16 v7, 0x0

    :cond_18e
    :goto_18e
    const-wide/16 v17, 0x0

    :goto_190
    cmp-long v1, v7, v17

    if-nez v1, :cond_1b0

    .line 48
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Next upload time is 0"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzq()Lcom/google/android/gms/measurement/internal/zzhm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhm;->zzc()V

    .line 50
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzx()Lcom/google/android/gms/measurement/internal/zzoy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzoy;->zza()V

    return-void

    .line 51
    :cond_1b0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzp()Lcom/google/android/gms/measurement/internal/zzhk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhk;->zzd()Z

    move-result v1

    if-eqz v1, :cond_237

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzpv;->zzk:Lcom/google/android/gms/measurement/internal/zzoa;

    .line 52
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzoa;->zzc:Lcom/google/android/gms/measurement/internal/zzhp;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhp;->zza()J

    move-result-wide v1

    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzgi;->zzE:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 54
    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/zzgg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 55
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v13, 0x0

    invoke-static {v13, v14, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 56
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    move-result-object v5

    invoke-virtual {v5, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzz(JJ)Z

    move-result v5

    if-nez v5, :cond_1e6

    add-long/2addr v1, v3

    .line 57
    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 58
    :cond_1e6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzq()Lcom/google/android/gms/measurement/internal/zzhm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhm;->zzc()V

    .line 59
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v7, v1

    const-wide/16 v13, 0x0

    cmp-long v1, v7, v13

    if-gtz v1, :cond_21e

    .line 60
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzgi;->zzJ:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 61
    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/zzgg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 62
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v13, v14, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzpv;->zzk:Lcom/google/android/gms/measurement/internal/zzoa;

    .line 63
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzoa;->zzd:Lcom/google/android/gms/measurement/internal/zzhp;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzhp;->zzb(J)V

    .line 64
    :cond_21e
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Upload scheduled in approximately ms"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzx()Lcom/google/android/gms/measurement/internal/zzoy;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Lcom/google/android/gms/measurement/internal/zzoy;->zzd(J)V

    return-void

    .line 66
    :cond_237
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "No network"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzq()Lcom/google/android/gms/measurement/internal/zzhm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhm;->zzb()V

    .line 68
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzx()Lcom/google/android/gms/measurement/internal/zzoy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzoy;->zza()V

    return-void

    .line 12
    :cond_253
    :goto_253
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Nothing to upload or uploading impossible"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzq()Lcom/google/android/gms/measurement/internal/zzhm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhm;->zzc()V

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzx()Lcom/google/android/gms/measurement/internal/zzoy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzoy;->zza()V

    return-void
.end method

.method private final zzaM(Ljava/lang/String;J)Z
    .registers 45

    move-object/from16 v1, p0

    .line 1
    const-string v0, "purchase"

    const-string v2, "_ai"

    const-string v3, "items"

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzaw;->zzH()V

    :try_start_f
    new-instance v11, Lcom/google/android/gms/measurement/internal/zzpr;

    const/4 v4, 0x0

    invoke-direct {v11, v1, v4}, Lcom/google/android/gms/measurement/internal/zzpr;-><init>(Lcom/google/android/gms/measurement/internal/zzpv;Lcom/google/android/gms/measurement/internal/zzpu;)V

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v5

    iget-wide v9, v1, Lcom/google/android/gms/measurement/internal/zzpv;->zzB:J

    move-object/from16 v6, p1

    move-wide/from16 v7, p2

    .line 3
    invoke-virtual/range {v5 .. v11}, Lcom/google/android/gms/measurement/internal/zzaw;->zzat(Ljava/lang/String;JJLcom/google/android/gms/measurement/internal/zzpr;)V

    iget-object v5, v11, Lcom/google/android/gms/measurement/internal/zzpr;->zzc:Ljava/util/List;

    if-eqz v5, :cond_e59

    .line 4
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2e

    goto/16 :goto_e59

    .line 439
    :cond_2e
    iget-object v5, v11, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    .line 6
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzmd;->zzch()Lcom/google/android/gms/internal/measurement/zzlz;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzhw;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhw;->zzu()Lcom/google/android/gms/internal/measurement/zzhw;

    move-object v13, v4

    move-object v15, v13

    const/4 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, -0x1

    :goto_41
    iget-object v7, v11, Lcom/google/android/gms/measurement/internal/zzpr;->zzc:Ljava/util/List;

    .line 7
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7
    :try_end_47
    .catchall {:try_start_f .. :try_end_47} :catchall_e6c

    const-string v4, "_fr"

    move/from16 p3, v9

    const-string v9, "_et"

    move/from16 v16, v10

    const-string v10, "_e"

    move/from16 v17, v12

    move-object/from16 v18, v13

    if-ge v8, v7, :cond_696

    :try_start_57
    iget-object v7, v11, Lcom/google/android/gms/measurement/internal/zzpr;->zzc:Ljava/util/List;

    .line 8
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzhm;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzmd;->zzch()Lcom/google/android/gms/internal/measurement/zzlz;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzhl;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzr()Lcom/google/android/gms/measurement/internal/zzif;

    move-result-object v13

    const/16 v21, 0x1

    iget-object v12, v11, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    .line 10
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v22, v15

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhl;->zzo()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v12, v15}, Lcom/google/android/gms/measurement/internal/zzif;->zzx(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12
    :try_end_7b
    .catchall {:try_start_57 .. :try_end_7b} :catchall_e6c

    const-string v13, "_err"

    if-eqz v12, :cond_fa

    .line 11
    :try_start_7f
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v4

    .line 12
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v4

    const-string v9, "Dropping blocked raw event. appId"

    iget-object v10, v11, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    .line 13
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzpv;->zzn:Lcom/google/android/gms/measurement/internal/zzio;

    .line 14
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v12

    .line 15
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhl;->zzo()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 16
    invoke-virtual {v4, v9, v10, v12}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzr()Lcom/google/android/gms/measurement/internal/zzif;

    move-result-object v4

    iget-object v9, v11, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/google/android/gms/measurement/internal/zzif;->zzt(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_ea

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzr()Lcom/google/android/gms/measurement/internal/zzif;

    move-result-object v4

    iget-object v9, v11, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/google/android/gms/measurement/internal/zzif;->zzy(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c5

    goto :goto_ea

    .line 19
    :cond_c5
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhl;->zzo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ea

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzB()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v23

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzpv;->zzK:Lcom/google/android/gms/measurement/internal/zzqe;

    iget-object v9, v11, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    .line 21
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v25

    const-string v27, "_ev"

    .line 22
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhl;->zzo()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v26, 0xb

    move-object/from16 v24, v4

    .line 23
    invoke-virtual/range {v23 .. v29}, Lcom/google/android/gms/measurement/internal/zzqf;->zzR(Lcom/google/android/gms/measurement/internal/zzqe;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_ea
    :goto_ea
    move/from16 v9, p3

    move-object/from16 v25, v2

    move-object v10, v3

    move-object/from16 v13, v18

    move-object/from16 v15, v22

    move/from16 v22, v6

    move v6, v8

    :goto_f6
    move/from16 v12, v17

    goto/16 :goto_68a

    .line 24
    :cond_fa
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoy;->zzb()Z

    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v12

    sget-object v15, Lcom/google/android/gms/measurement/internal/zzgi;->zzbf:Lcom/google/android/gms/measurement/internal/zzgg;

    move/from16 v23, v8

    const/4 v8, 0x0

    .line 26
    invoke-virtual {v12, v8, v15}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v12

    if-eqz v12, :cond_161

    .line 27
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhl;->zzo()Ljava/lang/String;

    move-result-object v8

    .line 28
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_114
    .catchall {:try_start_7f .. :try_end_114} :catchall_e6c

    const-string v15, "ecommerce_purchase"

    move/from16 v24, v12

    const-string v12, "_iap"

    if-nez v24, :cond_128

    .line 29
    :try_start_11c
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_128

    .line 30
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_161

    .line 31
    :cond_128
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhq;->zze()Lcom/google/android/gms/internal/measurement/zzhp;

    move-result-object v8

    move-object/from16 v24, v3

    const-string v3, "_cbs"

    .line 32
    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/measurement/zzhp;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhp;

    if-nez v16, :cond_150

    iget-object v3, v11, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    .line 33
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v3

    .line 34
    invoke-direct {v1, v3, v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaO(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_150

    .line 35
    invoke-direct {v1, v3, v12}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaO(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_150

    .line 36
    invoke-direct {v1, v3, v15}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaO(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_14b
    .catchall {:try_start_11c .. :try_end_14b} :catchall_e6c

    if-eqz v3, :cond_150

    const-string v3, "new_buyer"

    goto :goto_152

    .line 37
    :cond_150
    const-string v3, "returning_buyer"

    :goto_152
    :try_start_152
    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/measurement/zzhp;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhp;

    .line 38
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzhq;

    .line 39
    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/measurement/zzhl;->zzf(Lcom/google/android/gms/internal/measurement/zzhq;)Lcom/google/android/gms/internal/measurement/zzhl;

    move/from16 v16, v21

    goto :goto_163

    :cond_161
    move-object/from16 v24, v3

    .line 40
    :goto_163
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhl;->zzo()Ljava/lang/String;

    move-result-object v3

    .line 41
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzjy;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d5

    .line 42
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/measurement/zzhl;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhl;

    .line 43
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v3

    const-string v8, "Renaming ad_impression to _ai"

    invoke-virtual {v3, v8}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v3

    .line 45
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zzr()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x5

    invoke-static {v3, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1d5

    const/4 v3, 0x0

    .line 46
    :goto_191
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhl;->zza()I

    move-result v8

    if-ge v3, v8, :cond_1d5

    const-string v8, "ad_platform"

    .line 47
    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/measurement/zzhl;->zzn(I)Lcom/google/android/gms/internal/measurement/zzhq;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzhq;->zzg()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d2

    .line 48
    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/measurement/zzhl;->zzn(I)Lcom/google/android/gms/internal/measurement/zzhq;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhq;->zzh()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1d2

    const-string v8, "admob"

    .line 49
    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/measurement/zzhl;->zzn(I)Lcom/google/android/gms/internal/measurement/zzhq;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzhq;->zzh()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1d2

    .line 50
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v8

    .line 51
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzhe;->zzl()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v8

    const-string v12, "AdMob ad impression logged from app. Potentially duplicative."

    .line 52
    invoke-virtual {v8, v12}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    :cond_1d2
    add-int/lit8 v3, v3, 0x1

    goto :goto_191

    .line 53
    :cond_1d5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzr()Lcom/google/android/gms/measurement/internal/zzif;

    move-result-object v3

    iget-object v8, v11, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    .line 54
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhl;->zzo()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v8, v12}, Lcom/google/android/gms/measurement/internal/zzif;->zzw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_1e7
    .catchall {:try_start_152 .. :try_end_1e7} :catchall_e6c

    const-string v8, "_c"

    if-nez v3, :cond_212

    .line 55
    :try_start_1eb
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhl;->zzo()Ljava/lang/String;

    move-result-object v12

    .line 56
    invoke-static {v12}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v15
    :try_end_1f9
    .catchall {:try_start_1eb .. :try_end_1f9} :catchall_e6c

    move-object/from16 v25, v2

    const v2, 0x17333

    if-eq v15, v2, :cond_201

    goto :goto_20a

    .line 116
    :cond_201
    const-string v2, "_ui"

    .line 57
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20a

    goto :goto_214

    :cond_20a
    :goto_20a
    move/from16 v28, v14

    move/from16 v12, v17

    const/16 v26, 0x0

    goto/16 :goto_3f6

    :cond_212
    move-object/from16 v25, v2

    :goto_214
    move/from16 v26, v3

    const/4 v2, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    .line 58
    :goto_219
    :try_start_219
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhl;->zza()I

    move-result v3
    :try_end_21d
    .catchall {:try_start_219 .. :try_end_21d} :catchall_e6c

    move/from16 v27, v12

    const-string v12, "_r"

    if-ge v2, v3, :cond_288

    .line 59
    :try_start_223
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/measurement/zzhl;->zzn(I)Lcom/google/android/gms/internal/measurement/zzhq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhq;->zzg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_250

    .line 60
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/measurement/zzhl;->zzn(I)Lcom/google/android/gms/internal/measurement/zzhq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzmd;->zzch()Lcom/google/android/gms/internal/measurement/zzlz;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzhp;

    move/from16 v28, v14

    move/from16 v29, v15

    const-wide/16 v14, 0x1

    .line 61
    invoke-virtual {v3, v14, v15}, Lcom/google/android/gms/internal/measurement/zzhp;->zzi(J)Lcom/google/android/gms/internal/measurement/zzhp;

    .line 62
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzhq;

    .line 63
    invoke-virtual {v7, v2, v3}, Lcom/google/android/gms/internal/measurement/zzhl;->zzk(ILcom/google/android/gms/internal/measurement/zzhq;)Lcom/google/android/gms/internal/measurement/zzhl;

    move/from16 v12, v21

    goto :goto_281

    :cond_250
    move/from16 v28, v14

    move/from16 v29, v15

    .line 64
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/measurement/zzhl;->zzn(I)Lcom/google/android/gms/internal/measurement/zzhq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhq;->zzg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27f

    .line 65
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/measurement/zzhl;->zzn(I)Lcom/google/android/gms/internal/measurement/zzhq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzmd;->zzch()Lcom/google/android/gms/internal/measurement/zzlz;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzhp;

    const-wide/16 v14, 0x1

    .line 66
    invoke-virtual {v3, v14, v15}, Lcom/google/android/gms/internal/measurement/zzhp;->zzi(J)Lcom/google/android/gms/internal/measurement/zzhp;

    .line 67
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzhq;

    .line 68
    invoke-virtual {v7, v2, v3}, Lcom/google/android/gms/internal/measurement/zzhl;->zzk(ILcom/google/android/gms/internal/measurement/zzhq;)Lcom/google/android/gms/internal/measurement/zzhl;

    move/from16 v15, v21

    move/from16 v12, v27

    goto :goto_283

    :cond_27f
    move/from16 v12, v27

    :goto_281
    move/from16 v15, v29

    :goto_283
    add-int/lit8 v2, v2, 0x1

    move/from16 v14, v28

    goto :goto_219

    :cond_288
    move/from16 v28, v14

    move/from16 v29, v15

    if-nez v27, :cond_2ba

    if-eqz v26, :cond_2ba

    .line 69
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 70
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v3, "Marking event as conversion"

    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzpv;->zzn:Lcom/google/android/gms/measurement/internal/zzio;

    .line 71
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v14

    .line 72
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhl;->zzo()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 73
    invoke-virtual {v2, v3, v14}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhq;->zze()Lcom/google/android/gms/internal/measurement/zzhp;

    move-result-object v2

    .line 75
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/measurement/zzhp;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhp;

    const-wide/16 v14, 0x1

    .line 76
    invoke-virtual {v2, v14, v15}, Lcom/google/android/gms/internal/measurement/zzhp;->zzi(J)Lcom/google/android/gms/internal/measurement/zzhp;

    .line 77
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/measurement/zzhl;->zze(Lcom/google/android/gms/internal/measurement/zzhp;)Lcom/google/android/gms/internal/measurement/zzhl;

    :cond_2ba
    if-nez v29, :cond_2e6

    .line 78
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 79
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v3, "Marking event as real-time"

    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzpv;->zzn:Lcom/google/android/gms/measurement/internal/zzio;

    .line 80
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v14

    .line 81
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhl;->zzo()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 82
    invoke-virtual {v2, v3, v14}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhq;->zze()Lcom/google/android/gms/internal/measurement/zzhp;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/google/android/gms/internal/measurement/zzhp;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhp;

    const-wide/16 v14, 0x1

    invoke-virtual {v2, v14, v15}, Lcom/google/android/gms/internal/measurement/zzhp;->zzi(J)Lcom/google/android/gms/internal/measurement/zzhp;

    .line 84
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/measurement/zzhl;->zze(Lcom/google/android/gms/internal/measurement/zzhp;)Lcom/google/android/gms/internal/measurement/zzhl;

    .line 85
    :cond_2e6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v29

    .line 86
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zza()J

    move-result-wide v30

    iget-object v2, v11, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    .line 87
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v32

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x1

    .line 88
    invoke-virtual/range {v29 .. v39}, Lcom/google/android/gms/measurement/internal/zzaw;->zzo(JLjava/lang/String;ZZZZZZZ)Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/gms/measurement/internal/zzas;->zze:J

    .line 89
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v14

    iget-object v15, v11, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v19, v2

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzgi;->zzo:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 90
    invoke-virtual {v14, v15, v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzh(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v19, v2

    if-lez v2, :cond_325

    .line 91
    invoke-static {v7, v12}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaB(Lcom/google/android/gms/internal/measurement/zzhl;Ljava/lang/String;)V

    move/from16 v12, v17

    goto :goto_327

    :cond_325
    move/from16 v12, v21

    .line 92
    :goto_327
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhl;->zzo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzqf;->zzaq(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f4

    if-eqz v26, :cond_3f4

    .line 93
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v29

    .line 94
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zza()J

    move-result-wide v30

    iget-object v2, v11, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    .line 95
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v32

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x1

    const/16 v36, 0x0

    const/16 v37, 0x0

    .line 96
    invoke-virtual/range {v29 .. v39}, Lcom/google/android/gms/measurement/internal/zzaw;->zzo(JLjava/lang/String;ZZZZZZZ)Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/gms/measurement/internal/zzas;->zzc:J

    .line 97
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v14

    iget-object v15, v11, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v19, v2

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzgi;->zzn:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 98
    invoke-virtual {v14, v15, v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzh(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v19, v2

    if-lez v2, :cond_3f4

    .line 99
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 100
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v3, "Too many conversions. Not logging as conversion. appId"

    iget-object v14, v11, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    .line 101
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 102
    invoke-virtual {v2, v3, v14}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v17, 0x0

    .line 103
    :goto_388
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhl;->zza()I

    move-result v3

    if-ge v2, v3, :cond_3b7

    .line 104
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/measurement/zzhl;->zzn(I)Lcom/google/android/gms/internal/measurement/zzhq;

    move-result-object v3

    move/from16 v19, v2

    .line 105
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhq;->zzg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a8

    .line 106
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzmd;->zzch()Lcom/google/android/gms/internal/measurement/zzlz;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzhp;

    move-object v15, v2

    move/from16 v14, v19

    goto :goto_3b4

    .line 107
    :cond_3a8
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhq;->zzg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b4

    move/from16 v17, v21

    :cond_3b4
    :goto_3b4
    add-int/lit8 v2, v19, 0x1

    goto :goto_388

    :cond_3b7
    if-eqz v17, :cond_3c0

    if-eqz v15, :cond_3bf

    .line 117
    invoke-virtual {v7, v14}, Lcom/google/android/gms/internal/measurement/zzhl;->zzh(I)Lcom/google/android/gms/internal/measurement/zzhl;

    goto :goto_3f4

    :cond_3bf
    const/4 v15, 0x0

    :cond_3c0
    if-eqz v15, :cond_3db

    .line 108
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzlz;->zzaX()Lcom/google/android/gms/internal/measurement/zzlz;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzhp;

    .line 109
    invoke-virtual {v2, v13}, Lcom/google/android/gms/internal/measurement/zzhp;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhp;

    move v3, v12

    const-wide/16 v12, 0xa

    .line 110
    invoke-virtual {v2, v12, v13}, Lcom/google/android/gms/internal/measurement/zzhp;->zzi(J)Lcom/google/android/gms/internal/measurement/zzhp;

    .line 111
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzhq;

    .line 112
    invoke-virtual {v7, v14, v2}, Lcom/google/android/gms/internal/measurement/zzhl;->zzk(ILcom/google/android/gms/internal/measurement/zzhq;)Lcom/google/android/gms/internal/measurement/zzhl;

    goto :goto_3f5

    :cond_3db
    move v3, v12

    .line 113
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 114
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v12, "Did not find conversion parameter. appId"

    iget-object v13, v11, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    .line 115
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 116
    invoke-virtual {v2, v12, v13}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3f5

    :cond_3f4
    :goto_3f4
    move v3, v12

    :goto_3f5
    move v12, v3

    :goto_3f6
    if-eqz v26, :cond_4b7

    .line 57
    new-instance v2, Ljava/util/ArrayList;

    .line 118
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhl;->zzp()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x0

    const/4 v13, -0x1

    const/4 v14, -0x1

    .line 119
    :goto_404
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v15
    :try_end_408
    .catchall {:try_start_223 .. :try_end_408} :catchall_e6c

    move/from16 v17, v12

    const-string v12, "currency"

    move-object/from16 v26, v11

    const-string v11, "value"

    if-ge v3, v15, :cond_43c

    .line 120
    :try_start_412
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/measurement/zzhq;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzhq;->zzg()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_424

    move v13, v3

    goto :goto_435

    .line 121
    :cond_424
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzhq;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzhq;->zzg()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_435

    move v14, v3

    :cond_435
    :goto_435
    add-int/lit8 v3, v3, 0x1

    move/from16 v12, v17

    move-object/from16 v11, v26

    goto :goto_404

    :cond_43c
    const/4 v3, -0x1

    if-ne v13, v3, :cond_441

    goto/16 :goto_4bc

    .line 122
    :cond_441
    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzhq;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhq;->zzw()Z

    move-result v3

    if-nez v3, :cond_472

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzhq;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhq;->zzu()Z

    move-result v3

    if-nez v3, :cond_472

    .line 135
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzl()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v3, "Value must be specified with a numeric type."

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v7, v13}, Lcom/google/android/gms/internal/measurement/zzhl;->zzh(I)Lcom/google/android/gms/internal/measurement/zzhl;

    .line 137
    invoke-static {v7, v8}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaB(Lcom/google/android/gms/internal/measurement/zzhl;Ljava/lang/String;)V

    const/16 v2, 0x12

    .line 138
    invoke-static {v7, v2, v11}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaA(Lcom/google/android/gms/internal/measurement/zzhl;ILjava/lang/String;)V

    goto :goto_4bb

    :cond_472
    const/4 v3, -0x1

    if-ne v14, v3, :cond_476

    goto :goto_49e

    .line 123
    :cond_476
    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzhq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhq;->zzh()Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v14, 0x3

    if-ne v11, v14, :cond_49e

    const/4 v11, 0x0

    .line 125
    :goto_488
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v11, v14, :cond_4bc

    .line 126
    invoke-virtual {v2, v11}, Ljava/lang/String;->codePointAt(I)I

    move-result v14

    .line 127
    invoke-static {v14}, Ljava/lang/Character;->isLetter(I)Z

    move-result v15

    if-eqz v15, :cond_49e

    .line 128
    invoke-static {v14}, Ljava/lang/Character;->charCount(I)I

    move-result v14

    add-int/2addr v11, v14

    goto :goto_488

    .line 129
    :cond_49e
    :goto_49e
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 130
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzl()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v11, "Value parameter discarded. You must also supply a 3-letter ISO_4217 currency code in the currency parameter."

    .line 131
    invoke-virtual {v2, v11}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v7, v13}, Lcom/google/android/gms/internal/measurement/zzhl;->zzh(I)Lcom/google/android/gms/internal/measurement/zzhl;

    .line 133
    invoke-static {v7, v8}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaB(Lcom/google/android/gms/internal/measurement/zzhl;Ljava/lang/String;)V

    const/16 v2, 0x13

    .line 134
    invoke-static {v7, v2, v12}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaA(Lcom/google/android/gms/internal/measurement/zzhl;ILjava/lang/String;)V

    goto :goto_4bc

    :cond_4b7
    move-object/from16 v26, v11

    move/from16 v17, v12

    :goto_4bb
    const/4 v3, -0x1

    .line 139
    :cond_4bc
    :goto_4bc
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhl;->zzo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v10, 0x3e8

    if-eqz v2, :cond_502

    .line 140
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzhm;

    invoke-static {v2, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzG(Lcom/google/android/gms/internal/measurement/zzhm;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhq;

    move-result-object v2

    if-nez v2, :cond_54c

    if-eqz v22, :cond_4fe

    .line 141
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/measurement/zzhl;->zzc()J

    move-result-wide v8

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhl;->zzc()J

    move-result-wide v12

    sub-long/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    cmp-long v2, v8, v10

    if-gtz v2, :cond_4fe

    .line 142
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/measurement/zzlz;->zzaX()Lcom/google/android/gms/internal/measurement/zzlz;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzhl;

    .line 143
    invoke-direct {v1, v7, v2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaP(Lcom/google/android/gms/internal/measurement/zzhl;Lcom/google/android/gms/internal/measurement/zzhl;)Z

    move-result v4

    if-eqz v4, :cond_4fe

    .line 144
    invoke-virtual {v5, v6, v2}, Lcom/google/android/gms/internal/measurement/zzhw;->zzad(ILcom/google/android/gms/internal/measurement/zzhl;)Lcom/google/android/gms/internal/measurement/zzhw;

    move/from16 v14, v28

    :goto_4fb
    const/4 v13, 0x0

    const/4 v15, 0x0

    goto :goto_553

    :cond_4fe
    move/from16 v14, p3

    move-object v13, v7

    goto :goto_551

    .line 182
    :cond_502
    const-string v2, "_vs"

    .line 145
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhl;->zzo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54c

    .line 146
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzhm;

    invoke-static {v2, v9}, Lcom/google/android/gms/measurement/internal/zzqa;->zzG(Lcom/google/android/gms/internal/measurement/zzhm;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhq;

    move-result-object v2

    if-nez v2, :cond_54c

    if-eqz v18, :cond_543

    .line 147
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/measurement/zzhl;->zzc()J

    move-result-wide v8

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhl;->zzc()J

    move-result-wide v12

    sub-long/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    cmp-long v2, v8, v10

    if-gtz v2, :cond_543

    .line 148
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/measurement/zzlz;->zzaX()Lcom/google/android/gms/internal/measurement/zzlz;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzhl;

    .line 149
    invoke-direct {v1, v2, v7}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaP(Lcom/google/android/gms/internal/measurement/zzhl;Lcom/google/android/gms/internal/measurement/zzhl;)Z

    move-result v4

    if-eqz v4, :cond_543

    move/from16 v4, v28

    .line 150
    invoke-virtual {v5, v4, v2}, Lcom/google/android/gms/internal/measurement/zzhw;->zzad(ILcom/google/android/gms/internal/measurement/zzhl;)Lcom/google/android/gms/internal/measurement/zzhw;

    move v14, v4

    goto :goto_4fb

    :cond_543
    move/from16 v4, v28

    move/from16 v6, p3

    move v14, v4

    move-object v15, v7

    move-object/from16 v13, v18

    goto :goto_553

    :cond_54c
    move/from16 v4, v28

    move v14, v4

    move-object/from16 v13, v18

    :goto_551
    move-object/from16 v15, v22

    .line 151
    :goto_553
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhl;->zza()I

    move-result v2

    if-eqz v2, :cond_670

    .line 152
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhl;->zzp()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzqa;->zzF(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v2

    const/4 v4, 0x0

    .line 153
    :goto_565
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhl;->zza()I

    move-result v8

    if-ge v4, v8, :cond_61c

    .line 154
    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/measurement/zzhl;->zzn(I)Lcom/google/android/gms/internal/measurement/zzhq;

    move-result-object v8

    .line 155
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhq;->zzg()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v10, v24

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5ee

    .line 156
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhq;->zzi()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5ee

    move-object/from16 v11, v26

    iget-object v9, v11, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    .line 162
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v9

    .line 163
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhq;->zzi()Ljava/util/List;

    move-result-object v8

    .line 164
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    new-array v12, v12, [Landroid/os/Bundle;

    move/from16 v18, v4

    const/4 v3, 0x0

    .line 165
    :goto_59a
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5e8

    .line 166
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzhq;

    .line 167
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhq;->zzi()Ljava/util/List;

    move-result-object v19

    move/from16 v20, v3

    invoke-static/range {v19 .. v19}, Lcom/google/android/gms/measurement/internal/zzqa;->zzF(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v3

    .line 168
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhq;->zzi()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5bb
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5df

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/android/gms/internal/measurement/zzhq;

    move-object/from16 v21, v4

    .line 169
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhl;->zzo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/internal/measurement/zzmd;->zzch()Lcom/google/android/gms/internal/measurement/zzlz;

    move-result-object v19

    move/from16 v22, v6

    move-object/from16 v6, v19

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzhp;

    invoke-virtual {v1, v4, v6, v3, v9}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaw(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzhp;Landroid/os/Bundle;Ljava/lang/String;)V

    move-object/from16 v4, v21

    move/from16 v6, v22

    goto :goto_5bb

    :cond_5df
    move/from16 v22, v6

    .line 170
    aput-object v3, v12, v20

    add-int/lit8 v3, v20, 0x1

    move/from16 v6, v22

    goto :goto_59a

    :cond_5e8
    move/from16 v22, v6

    .line 171
    invoke-virtual {v2, v10, v12}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_611

    :cond_5ee
    move/from16 v18, v4

    move/from16 v22, v6

    move-object/from16 v11, v26

    .line 157
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhq;->zzg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_611

    .line 158
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhl;->zzo()Ljava/lang/String;

    move-result-object v3

    .line 159
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzmd;->zzch()Lcom/google/android/gms/internal/measurement/zzlz;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzhp;

    iget-object v6, v11, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    .line 160
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v6

    .line 161
    invoke-virtual {v1, v3, v4, v2, v6}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaw(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzhp;Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_611
    :goto_611
    add-int/lit8 v4, v18, 0x1

    move-object/from16 v24, v10

    move-object/from16 v26, v11

    move/from16 v6, v22

    const/4 v3, -0x1

    goto/16 :goto_565

    :cond_61c
    move/from16 v22, v6

    move-object/from16 v10, v24

    move-object/from16 v11, v26

    .line 172
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhl;->zzg()Lcom/google/android/gms/internal/measurement/zzhl;

    .line 173
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    .line 174
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 175
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_636
    :goto_636
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_65c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 176
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhq;->zze()Lcom/google/android/gms/internal/measurement/zzhp;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/measurement/zzhp;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhp;

    .line 177
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_636

    .line 178
    invoke-virtual {v3, v9, v8}, Lcom/google/android/gms/measurement/internal/zzqa;->zzw(Lcom/google/android/gms/internal/measurement/zzhp;Ljava/lang/Object;)V

    .line 179
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzhq;

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_636

    .line 173
    :cond_65c
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_660
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_676

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzhq;

    .line 180
    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/measurement/zzhl;->zzf(Lcom/google/android/gms/internal/measurement/zzhq;)Lcom/google/android/gms/internal/measurement/zzhl;

    goto :goto_660

    :cond_670
    move/from16 v22, v6

    move-object/from16 v10, v24

    move-object/from16 v11, v26

    :cond_676
    iget-object v2, v11, Lcom/google/android/gms/measurement/internal/zzpr;->zzc:Ljava/util/List;

    .line 181
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzhm;

    move/from16 v6, v23

    invoke-interface {v2, v6, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/measurement/zzhw;->zzn(Lcom/google/android/gms/internal/measurement/zzhl;)Lcom/google/android/gms/internal/measurement/zzhw;

    add-int/lit8 v9, p3, 0x1

    goto/16 :goto_f6

    :goto_68a
    add-int/lit8 v8, v6, 0x1

    move-object v3, v10

    move/from16 v10, v16

    move/from16 v6, v22

    move-object/from16 v2, v25

    const/4 v4, 0x0

    goto/16 :goto_41

    :cond_696
    const/16 v21, 0x1

    const-wide/16 v2, 0x0

    move/from16 v6, p3

    move-wide v7, v2

    const/4 v0, 0x0

    :goto_69e
    if-ge v0, v6, :cond_6ea

    .line 183
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzhw;->zzh(I)Lcom/google/android/gms/internal/measurement/zzhm;

    move-result-object v12

    .line 184
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzhm;->zzh()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6bf

    .line 185
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    invoke-static {v12, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzG(Lcom/google/android/gms/internal/measurement/zzhm;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhq;

    move-result-object v13

    if-eqz v13, :cond_6bf

    .line 190
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzhw;->zzD(I)Lcom/google/android/gms/internal/measurement/zzhw;

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_6e7

    .line 186
    :cond_6bf
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    invoke-static {v12, v9}, Lcom/google/android/gms/measurement/internal/zzqa;->zzG(Lcom/google/android/gms/internal/measurement/zzhm;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhq;

    move-result-object v12

    if-eqz v12, :cond_6e7

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzhq;->zzw()Z

    move-result v13

    if-eqz v13, :cond_6d7

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzhq;->zzd()J

    move-result-wide v12

    .line 187
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    goto :goto_6d8

    :cond_6d7
    const/4 v12, 0x0

    :goto_6d8
    if-eqz v12, :cond_6e7

    .line 188
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v13, v13, v2

    if-lez v13, :cond_6e7

    .line 189
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    add-long/2addr v7, v12

    :cond_6e7
    :goto_6e7
    add-int/lit8 v0, v0, 0x1

    goto :goto_69e

    :cond_6ea
    const/4 v4, 0x0

    .line 191
    invoke-direct {v1, v5, v7, v8, v4}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaI(Lcom/google/android/gms/internal/measurement/zzhw;JZ)V

    .line 192
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhw;->zzaM()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6f6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_6fa
    .catchall {:try_start_412 .. :try_end_6fa} :catchall_e6c

    const-string v6, "_se"

    if-eqz v4, :cond_71b

    :try_start_6fe
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzhm;

    const-string v9, "_s"

    .line 193
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhm;->zzh()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6f6

    .line 194
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    .line 195
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhw;->zzaF()Ljava/lang/String;

    move-result-object v4

    .line 196
    invoke-virtual {v0, v4, v6}, Lcom/google/android/gms/measurement/internal/zzaw;->zzP(Ljava/lang/String;Ljava/lang/String;)V

    :cond_71b
    const-string v0, "_sid"

    .line 197
    invoke-static {v5, v0}, Lcom/google/android/gms/measurement/internal/zzqa;->zza(Lcom/google/android/gms/internal/measurement/zzhw;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_729

    move/from16 v4, v21

    .line 198
    invoke-direct {v1, v5, v7, v8, v4}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaI(Lcom/google/android/gms/internal/measurement/zzhw;JZ)V

    goto :goto_749

    .line 199
    :cond_729
    invoke-static {v5, v6}, Lcom/google/android/gms/measurement/internal/zzqa;->zza(Lcom/google/android/gms/internal/measurement/zzhw;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_749

    .line 200
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzhw;->zzE(I)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 201
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v4, "Session engagement user property is in the bundle without session ID. appId"

    iget-object v6, v11, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    .line 203
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 204
    invoke-virtual {v0, v4, v6}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 198
    :cond_749
    :goto_749
    iget-object v0, v11, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    .line 205
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 207
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzM()V

    .line 208
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzl(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v4

    if-nez v4, :cond_775

    .line 209
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v4

    .line 210
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v4

    const-string v6, "Cannot fix consent fields without appInfo. appId"

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 211
    invoke-virtual {v4, v6, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_778

    .line 212
    :cond_775
    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/measurement/internal/zzpv;->zzQ(Lcom/google/android/gms/measurement/internal/zzh;Lcom/google/android/gms/internal/measurement/zzhw;)V

    .line 211
    :goto_778
    iget-object v0, v11, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    .line 213
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 215
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzM()V

    .line 216
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzl(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v4

    if-nez v4, :cond_7a4

    .line 217
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v4

    .line 218
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v4

    const-string v6, "Cannot populate ad_campaign_info without appInfo. appId"

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 219
    invoke-virtual {v4, v6, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7a7

    .line 220
    :cond_7a4
    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaa(Lcom/google/android/gms/measurement/internal/zzh;Lcom/google/android/gms/internal/measurement/zzhw;)V

    :goto_7a7
    const-wide v6, 0x7fffffffffffffffL

    .line 221
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/measurement/zzhw;->zzax(J)Lcom/google/android/gms/internal/measurement/zzhw;

    const-wide/high16 v6, -0x8000000000000000L

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/measurement/zzhw;->zzab(J)Lcom/google/android/gms/internal/measurement/zzhw;

    const/4 v0, 0x0

    .line 222
    :goto_7b5
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhw;->zzc()I

    move-result v4

    if-ge v0, v4, :cond_7e8

    .line 223
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzhw;->zzh(I)Lcom/google/android/gms/internal/measurement/zzhm;

    move-result-object v4

    .line 224
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhm;->zzd()J

    move-result-wide v6

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhw;->zzf()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_7d2

    .line 225
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhm;->zzd()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/measurement/zzhw;->zzax(J)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 226
    :cond_7d2
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhm;->zzd()J

    move-result-wide v6

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhw;->zze()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_7e5

    .line 227
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhm;->zzd()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/measurement/zzhw;->zzab(J)Lcom/google/android/gms/internal/measurement/zzhw;

    :cond_7e5
    add-int/lit8 v0, v0, 0x1

    goto :goto_7b5

    .line 228
    :cond_7e8
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhw;->zzB()Lcom/google/android/gms/internal/measurement/zzhw;

    .line 229
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    iget-object v0, v11, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    .line 230
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzu(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v0

    iget-object v4, v11, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    .line 231
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhx;->zzK()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x64

    .line 232
    invoke-static {v4, v6}, Lcom/google/android/gms/measurement/internal/zzjx;->zzk(Ljava/lang/String;I)Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v4

    .line 233
    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzjx;->zzl(Lcom/google/android/gms/measurement/internal/zzjx;)Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v0

    .line 234
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v4

    iget-object v6, v11, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzaw;->zzt(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v4

    .line 235
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v6

    iget-object v7, v11, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzW(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzjx;)V

    .line 236
    sget-object v6, Lcom/google/android/gms/measurement/internal/zzjw;->zzb:Lcom/google/android/gms/measurement/internal/zzjw;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/zzjx;->zzr(Lcom/google/android/gms/measurement/internal/zzjw;)Z

    move-result v7

    if-nez v7, :cond_83e

    .line 237
    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzjx;->zzr(Lcom/google/android/gms/measurement/internal/zzjw;)Z

    move-result v7

    if-eqz v7, :cond_83e

    .line 241
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v4

    iget-object v7, v11, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/google/android/gms/measurement/internal/zzaw;->zzI(Ljava/lang/String;)V

    goto :goto_857

    .line 238
    :cond_83e
    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/zzjx;->zzr(Lcom/google/android/gms/measurement/internal/zzjw;)Z

    move-result v7

    if-eqz v7, :cond_857

    .line 239
    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzjx;->zzr(Lcom/google/android/gms/measurement/internal/zzjw;)Z

    move-result v4

    if-nez v4, :cond_857

    .line 240
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v4

    iget-object v7, v11, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/google/android/gms/measurement/internal/zzaw;->zzQ(Ljava/lang/String;)V

    .line 241
    :cond_857
    :goto_857
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzjw;->zza:Lcom/google/android/gms/measurement/internal/zzjw;

    .line 242
    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzjx;->zzr(Lcom/google/android/gms/measurement/internal/zzjw;)Z

    move-result v7

    if-nez v7, :cond_868

    .line 243
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhw;->zzz()Lcom/google/android/gms/internal/measurement/zzhw;

    .line 244
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhw;->zzw()Lcom/google/android/gms/internal/measurement/zzhw;

    .line 245
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhw;->zzt()Lcom/google/android/gms/internal/measurement/zzhw;

    .line 246
    :cond_868
    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/zzjx;->zzr(Lcom/google/android/gms/measurement/internal/zzjw;)Z

    move-result v7

    if-nez v7, :cond_874

    .line 247
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhw;->zzq()Lcom/google/android/gms/internal/measurement/zzhw;

    .line 248
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhw;->zzA()Lcom/google/android/gms/internal/measurement/zzhw;

    .line 249
    :cond_874
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqr;->zzb()Z

    .line 250
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v7

    iget-object v8, v11, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzgi;->zzaV:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 251
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v7

    if-eqz v7, :cond_8b4

    .line 252
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzB()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v7

    iget-object v8, v11, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzqf;->zzab(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8b4

    iget-object v7, v11, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    .line 253
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/google/android/gms/measurement/internal/zzpv;->zzu(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v7

    .line 254
    invoke-virtual {v7, v4}, Lcom/google/android/gms/measurement/internal/zzjx;->zzr(Lcom/google/android/gms/measurement/internal/zzjw;)Z

    move-result v4

    if-eqz v4, :cond_8b4

    iget-object v4, v11, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    .line 255
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhx;->zzbt()Z

    move-result v4

    if-eqz v4, :cond_8b4

    .line 256
    invoke-virtual {v1, v5, v11}, Lcom/google/android/gms/measurement/internal/zzpv;->zzR(Lcom/google/android/gms/internal/measurement/zzhw;Lcom/google/android/gms/measurement/internal/zzpr;)V

    .line 257
    :cond_8b4
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhw;->zzr()Lcom/google/android/gms/internal/measurement/zzhw;

    .line 258
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzh()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v22

    .line 259
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhw;->zzaF()Ljava/lang/String;

    move-result-object v23

    .line 260
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhw;->zzaM()Ljava/util/List;

    move-result-object v24

    .line 261
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhw;->zzaN()Ljava/util/List;

    move-result-object v25

    .line 262
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhw;->zzf()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    .line 263
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhw;->zze()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    .line 264
    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/zzjx;->zzr(Lcom/google/android/gms/measurement/internal/zzjw;)Z

    move-result v0

    const/16 v21, 0x1

    xor-int/lit8 v28, v0, 0x1

    .line 265
    invoke-virtual/range {v22 .. v28}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;Z)Ljava/util/List;

    move-result-object v0

    .line 266
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzhw;->zzi(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 267
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    iget-object v4, v11, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzam;->zzB(Ljava/lang/String;)Z

    move-result v0
    :try_end_8f4
    .catchall {:try_start_6fe .. :try_end_8f4} :catchall_e6c

    if-eqz v0, :cond_c04

    :try_start_8f6
    new-instance v4, Ljava/util/HashMap;

    .line 268
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    .line 269
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 270
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzB()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzqf;->zzJ()Ljava/security/SecureRandom;

    move-result-object v7

    const/4 v8, 0x0

    .line 271
    :goto_909
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhw;->zzc()I

    move-result v0

    if-ge v8, v0, :cond_bd0

    .line 272
    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/measurement/zzhw;->zzh(I)Lcom/google/android/gms/internal/measurement/zzhm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmd;->zzch()Lcom/google/android/gms/internal/measurement/zzlz;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzhl;

    .line 273
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhl;->zzo()Ljava/lang/String;

    move-result-object v0

    const-string v10, "_ep"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_924
    .catchall {:try_start_8f6 .. :try_end_924} :catchall_e55

    const-string v10, "_sr"

    if-eqz v0, :cond_9a0

    .line 274
    :try_start_928
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhm;

    const-string v12, "_en"

    invoke-static {v0, v12}, Lcom/google/android/gms/measurement/internal/zzqa;->zzH(Lcom/google/android/gms/internal/measurement/zzhm;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 275
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/measurement/internal/zzbd;

    if-nez v12, :cond_95a

    .line 276
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v12

    iget-object v13, v11, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    .line 277
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 278
    invoke-virtual {v12, v13, v14}, Lcom/google/android/gms/measurement/internal/zzaw;->zzs(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v12

    if-eqz v12, :cond_95a

    .line 279
    invoke-interface {v4, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_95a
    if-eqz v12, :cond_995

    iget-object v0, v12, Lcom/google/android/gms/measurement/internal/zzbd;->zzi:Ljava/lang/Long;

    if-nez v0, :cond_995

    iget-object v0, v12, Lcom/google/android/gms/measurement/internal/zzbd;->zzj:Ljava/lang/Long;

    if-eqz v0, :cond_974

    .line 280
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    const-wide/16 v19, 0x1

    cmp-long v13, v13, v19

    if-lez v13, :cond_974

    .line 281
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    .line 282
    invoke-static {v9, v10, v0}, Lcom/google/android/gms/measurement/internal/zzqa;->zzD(Lcom/google/android/gms/internal/measurement/zzhl;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_974
    iget-object v0, v12, Lcom/google/android/gms/measurement/internal/zzbd;->zzk:Ljava/lang/Boolean;

    if-eqz v0, :cond_98c

    .line 283
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_98c

    .line 284
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    const-string v0, "_efs"

    const-wide/16 v19, 0x1

    .line 285
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v9, v0, v10}, Lcom/google/android/gms/measurement/internal/zzqa;->zzD(Lcom/google/android/gms/internal/measurement/zzhl;Ljava/lang/String;Ljava/lang/Object;)V

    .line 286
    :cond_98c
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhm;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_995
    invoke-virtual {v5, v8, v9}, Lcom/google/android/gms/internal/measurement/zzhw;->zzad(ILcom/google/android/gms/internal/measurement/zzhl;)Lcom/google/android/gms/internal/measurement/zzhw;
    :try_end_998
    .catchall {:try_start_928 .. :try_end_998} :catchall_e6c

    move-wide/from16 p2, v2

    :goto_99a
    move-object v13, v7

    move v1, v8

    const-wide/16 v19, 0x1

    goto/16 :goto_bc7

    .line 288
    :cond_9a0
    :try_start_9a0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzr()Lcom/google/android/gms/measurement/internal/zzif;

    move-result-object v12

    iget-object v0, v11, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    .line 289
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v13

    const-string v0, "measurement.account.time_zone_offset_minutes"

    .line 290
    invoke-virtual {v12, v13, v0}, Lcom/google/android/gms/measurement/internal/zzif;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 291
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14
    :try_end_9b4
    .catchall {:try_start_9a0 .. :try_end_9b4} :catchall_e55

    if-nez v14, :cond_9cf

    .line 292
    :try_start_9b6
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12
    :try_end_9ba
    .catch Ljava/lang/NumberFormatException; {:try_start_9b6 .. :try_end_9ba} :catch_9bb
    .catchall {:try_start_9b6 .. :try_end_9ba} :catchall_e6c

    goto :goto_9d0

    :catch_9bb
    move-exception v0

    .line 440
    :try_start_9bc
    iget-object v12, v12, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 293
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v12

    .line 294
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v12

    const-string v14, "Unable to parse timezone offset. appId"

    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 295
    invoke-virtual {v12, v14, v13, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_9cf
    .catchall {:try_start_9bc .. :try_end_9cf} :catchall_e6c

    :cond_9cf
    move-wide v12, v2

    .line 296
    :goto_9d0
    :try_start_9d0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzB()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v0

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhl;->zzc()J

    move-result-wide v14

    invoke-virtual {v0, v14, v15, v12, v13}, Lcom/google/android/gms/measurement/internal/zzqf;->zzt(JJ)J

    move-result-wide v14

    .line 297
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhm;

    move-wide/from16 p2, v2

    const-wide/16 v19, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "_dbg"

    .line 298
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_a24

    .line 299
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhm;->zzi()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9fa
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_a24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/android/gms/internal/measurement/zzhq;

    .line 300
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/measurement/zzhq;->zzg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a21

    .line 301
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/measurement/zzhq;->zzd()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a1f

    goto :goto_a24

    :cond_a1f
    const/4 v0, 0x1

    goto :goto_a36

    :cond_a21
    move-object/from16 v1, p0

    goto :goto_9fa

    .line 302
    :cond_a24
    :goto_a24
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzr()Lcom/google/android/gms/measurement/internal/zzif;

    move-result-object v0

    iget-object v1, v11, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    .line 303
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhl;->zzo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzif;->zzc(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_a36
    if-gtz v0, :cond_a5b

    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 305
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Sample rate must be positive. event, rate"

    .line 306
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhl;->zzo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 307
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhm;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    invoke-virtual {v5, v8, v9}, Lcom/google/android/gms/internal/measurement/zzhw;->zzad(ILcom/google/android/gms/internal/measurement/zzhl;)Lcom/google/android/gms/internal/measurement/zzhw;

    goto/16 :goto_99a

    .line 309
    :cond_a5b
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhl;->zzo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/measurement/internal/zzbd;

    if-nez v1, :cond_aba

    .line 310
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v1

    iget-object v2, v11, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhl;->zzo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzaw;->zzs(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v1

    if-nez v1, :cond_aba

    .line 311
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 312
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Event being bundled has no eventAggregate. appId, eventName"

    iget-object v3, v11, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    .line 313
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v3

    move-wide/from16 v22, v12

    .line 314
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhl;->zzo()Ljava/lang/String;

    move-result-object v12

    .line 315
    invoke-virtual {v1, v2, v3, v12}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v24, Lcom/google/android/gms/measurement/internal/zzbd;

    iget-object v1, v11, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    .line 316
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v25

    .line 317
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhl;->zzo()Ljava/lang/String;

    move-result-object v26

    .line 318
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhl;->zzc()J

    move-result-wide v33

    const/16 v39, 0x0

    const/16 v40, 0x0

    const-wide/16 v27, 0x1

    const-wide/16 v29, 0x1

    const-wide/16 v31, 0x1

    const-wide/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    invoke-direct/range {v24 .. v40}, Lcom/google/android/gms/measurement/internal/zzbd;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-object/from16 v1, v24

    goto :goto_abc

    :cond_aba
    move-wide/from16 v22, v12

    .line 319
    :goto_abc
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzhm;

    const-string v3, "_eid"

    invoke-static {v2, v3}, Lcom/google/android/gms/measurement/internal/zzqa;->zzH(Lcom/google/android/gms/internal/measurement/zzhm;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_ad1

    const/4 v3, 0x1

    goto :goto_ad2

    :cond_ad1
    const/4 v3, 0x0

    .line 320
    :goto_ad2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v12, 0x1

    if-ne v0, v12, :cond_b05

    .line 321
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhm;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b00

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzbd;->zzi:Ljava/lang/Long;

    if-nez v0, :cond_af4

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzbd;->zzj:Ljava/lang/Long;

    if-nez v0, :cond_af4

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzbd;->zzk:Ljava/lang/Boolean;

    if-eqz v0, :cond_b00

    :cond_af4
    const/4 v2, 0x0

    .line 323
    invoke-virtual {v1, v2, v2, v2}, Lcom/google/android/gms/measurement/internal/zzbd;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v0

    .line 324
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhl;->zzo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    :cond_b00
    invoke-virtual {v5, v8, v9}, Lcom/google/android/gms/internal/measurement/zzhw;->zzad(ILcom/google/android/gms/internal/measurement/zzhl;)Lcom/google/android/gms/internal/measurement/zzhw;

    goto/16 :goto_99a

    .line 326
    :cond_b05
    invoke-virtual {v7, v0}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v12

    if-nez v12, :cond_b3f

    .line 327
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    int-to-long v12, v0

    .line 328
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v9, v10, v0}, Lcom/google/android/gms/measurement/internal/zzqa;->zzD(Lcom/google/android/gms/internal/measurement/zzhl;Ljava/lang/String;Ljava/lang/Object;)V

    .line 329
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzhm;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_b2a

    const/4 v2, 0x0

    .line 331
    invoke-virtual {v1, v2, v0, v2}, Lcom/google/android/gms/measurement/internal/zzbd;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v1

    .line 332
    :cond_b2a
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhl;->zzo()Ljava/lang/String;

    move-result-object v0

    .line 333
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhl;->zzc()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v14, v15}, Lcom/google/android/gms/measurement/internal/zzbd;->zzb(JJ)Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v1

    .line 334
    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v13, v7

    move v1, v8

    const-wide/16 v19, 0x1

    goto/16 :goto_bc4

    .line 335
    :cond_b3f
    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzbd;->zzh:Ljava/lang/Long;

    if-eqz v12, :cond_b50

    .line 336
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-object/from16 v18, v2

    move-object/from16 v24, v3

    move/from16 v16, v8

    move-wide v2, v12

    move-object v13, v7

    goto :goto_b65

    .line 337
    :cond_b50
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzB()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v12

    move-object v13, v7

    move/from16 v16, v8

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhl;->zzb()J

    move-result-wide v7

    move-object/from16 v18, v2

    move-object/from16 v24, v3

    move-wide/from16 v2, v22

    invoke-virtual {v12, v7, v8, v2, v3}, Lcom/google/android/gms/measurement/internal/zzqf;->zzt(JJ)J

    move-result-wide v2

    :goto_b65
    cmp-long v2, v2, v14

    if-eqz v2, :cond_bac

    .line 338
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    const-string v2, "_efs"

    const-wide/16 v19, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v9, v2, v3}, Lcom/google/android/gms/measurement/internal/zzqa;->zzD(Lcom/google/android/gms/internal/measurement/zzhl;Ljava/lang/String;Ljava/lang/Object;)V

    .line 339
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    int-to-long v2, v0

    .line 340
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v9, v10, v0}, Lcom/google/android/gms/measurement/internal/zzqa;->zzD(Lcom/google/android/gms/internal/measurement/zzhl;Ljava/lang/String;Ljava/lang/Object;)V

    .line 341
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzhm;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_b9c

    const/16 v21, 0x1

    .line 343
    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v8, 0x0

    invoke-virtual {v1, v8, v0, v2}, Lcom/google/android/gms/measurement/internal/zzbd;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v1

    .line 344
    :cond_b9c
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhl;->zzo()Ljava/lang/String;

    move-result-object v0

    .line 345
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhl;->zzc()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v14, v15}, Lcom/google/android/gms/measurement/internal/zzbd;->zzb(JJ)Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v1

    .line 346
    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_bc2

    :cond_bac
    const-wide/16 v19, 0x1

    .line 347
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_bc2

    .line 348
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhl;->zzo()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v18

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8, v8}, Lcom/google/android/gms/measurement/internal/zzbd;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v1

    .line 349
    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_bc2
    :goto_bc2
    move/from16 v1, v16

    .line 350
    :goto_bc4
    invoke-virtual {v5, v1, v9}, Lcom/google/android/gms/internal/measurement/zzhw;->zzad(ILcom/google/android/gms/internal/measurement/zzhl;)Lcom/google/android/gms/internal/measurement/zzhw;

    :goto_bc7
    add-int/lit8 v8, v1, 0x1

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    move-object v7, v13

    goto/16 :goto_909

    :cond_bd0
    move-wide/from16 p2, v2

    .line 351
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhw;->zzc()I

    move-result v1

    if-ge v0, v1, :cond_be2

    .line 352
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhw;->zzu()Lcom/google/android/gms/internal/measurement/zzhw;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/measurement/zzhw;->zzj(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 353
    :cond_be2
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_bea
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c06

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 354
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzV(Lcom/google/android/gms/measurement/internal/zzbd;)V

    goto :goto_bea

    :cond_c04
    move-wide/from16 p2, v2

    :cond_c06
    iget-object v0, v11, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    .line 355
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v1

    .line 356
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzl(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v0

    if-nez v0, :cond_c2e

    .line 357
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 358
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v2, "Bundling raw events w/o app info. appId"

    iget-object v3, v11, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    .line 359
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 360
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_c93

    .line 361
    :cond_c2e
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhw;->zzc()I

    move-result v2

    if-lez v2, :cond_c93

    .line 362
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzs()J

    move-result-wide v2

    cmp-long v4, v2, p2

    if-eqz v4, :cond_c40

    .line 363
    invoke-virtual {v5, v2, v3}, Lcom/google/android/gms/internal/measurement/zzhw;->zzap(J)Lcom/google/android/gms/internal/measurement/zzhw;

    goto :goto_c43

    .line 364
    :cond_c40
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhw;->zzx()Lcom/google/android/gms/internal/measurement/zzhw;

    .line 365
    :goto_c43
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzu()J

    move-result-wide v6

    cmp-long v4, v6, p2

    if-nez v4, :cond_c4c

    goto :goto_c4d

    :cond_c4c
    move-wide v2, v6

    :goto_c4d
    cmp-long v4, v2, p2

    if-eqz v4, :cond_c55

    .line 366
    invoke-virtual {v5, v2, v3}, Lcom/google/android/gms/internal/measurement/zzhw;->zzaq(J)Lcom/google/android/gms/internal/measurement/zzhw;

    goto :goto_c58

    .line 367
    :cond_c55
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhw;->zzy()Lcom/google/android/gms/internal/measurement/zzhw;

    .line 368
    :goto_c58
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhw;->zzc()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzh;->zzQ(J)V

    .line 369
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzr()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/measurement/zzhw;->zzV(I)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 370
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzt()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/measurement/zzhw;->zzP(I)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 371
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhw;->zzf()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzh;->zzau(J)V

    .line 372
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhw;->zze()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzh;->zzas(J)V

    .line 373
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzB()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c88

    .line 374
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/measurement/zzhw;->zzaj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhw;

    goto :goto_c8b

    .line 375
    :cond_c88
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhw;->zzv()Lcom/google/android/gms/internal/measurement/zzhw;

    .line 376
    :goto_c8b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v2

    const/4 v4, 0x0

    .line 377
    invoke-virtual {v2, v0, v4, v4}, Lcom/google/android/gms/measurement/internal/zzaw;->zzT(Lcom/google/android/gms/measurement/internal/zzh;ZZ)V

    .line 378
    :cond_c93
    :goto_c93
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhw;->zzc()I

    move-result v0
    :try_end_c97
    .catchall {:try_start_9d0 .. :try_end_c97} :catchall_e55

    if-lez v0, :cond_e10

    move-object/from16 v2, p0

    :try_start_c9b
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzpv;->zzn:Lcom/google/android/gms/measurement/internal/zzio;

    .line 379
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaV()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 380
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzr()Lcom/google/android/gms/measurement/internal/zzif;

    move-result-object v0

    iget-object v3, v11, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzif;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object v0

    if-eqz v0, :cond_cbf

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgo;->zzw()Z

    move-result v3

    if-nez v3, :cond_cb7

    goto :goto_cbf

    .line 386
    :cond_cb7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgo;->zzc()J

    move-result-wide v3

    .line 387
    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/measurement/zzhw;->zzR(J)Lcom/google/android/gms/internal/measurement/zzhw;

    goto :goto_ce8

    .line 380
    :cond_cbf
    :goto_cbf
    iget-object v0, v11, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    .line 381
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhx;->zzP()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_cd1

    const-wide/16 v3, -0x1

    .line 382
    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/measurement/zzhw;->zzR(J)Lcom/google/android/gms/internal/measurement/zzhw;

    goto :goto_ce8

    .line 383
    :cond_cd1
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 384
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v3, "Did not find measurement config or missing version info. appId"

    iget-object v4, v11, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    .line 385
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 386
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 388
    :goto_ce8
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v3

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzhx;

    .line 389
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 390
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    .line 391
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 393
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhx;->zzbK()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    .line 394
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaw;->zzO()V

    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 395
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v5

    .line 396
    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    .line 397
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhx;->zzo()J

    move-result-wide v7

    .line 398
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    .line 397
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzam;->zzI()J

    move-result-wide v9

    sub-long v9, v5, v9

    cmp-long v7, v7, v9

    if-ltz v7, :cond_d38

    .line 399
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhx;->zzo()J

    move-result-wide v7

    .line 400
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    .line 399
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzam;->zzI()J

    move-result-wide v9

    add-long/2addr v9, v5

    cmp-long v7, v7, v9

    if-lez v7, :cond_d59

    .line 401
    :cond_d38
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 402
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    .line 403
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 404
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 405
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhx;->zzo()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v8, "Storing bundle outside of the max uploading time span. appId, now, timestamp"

    .line 406
    invoke-virtual {v0, v8, v7, v5, v6}, Lcom/google/android/gms/measurement/internal/zzhc;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 407
    :cond_d59
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzko;->zzcd()[B

    move-result-object v0
    :try_end_d5d
    .catchall {:try_start_c9b .. :try_end_d5d} :catchall_e6a

    :try_start_d5d
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzoz;->zzg:Lcom/google/android/gms/measurement/internal/zzpv;

    .line 408
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    move-result-object v5

    .line 409
    invoke-virtual {v5, v0}, Lcom/google/android/gms/measurement/internal/zzqa;->zzB([B)[B

    move-result-object v0
    :try_end_d67
    .catch Ljava/io/IOException; {:try_start_d5d .. :try_end_d67} :catch_df7
    .catchall {:try_start_d5d .. :try_end_d67} :catchall_e6a

    :try_start_d67
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 414
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v6

    .line 415
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v6

    array-length v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "Saving bundle, size"

    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v6, Landroid/content/ContentValues;

    .line 416
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 417
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v7

    const-string v8, "app_id"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhx;->zzo()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "bundle_end_timestamp"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v7, "data"

    .line 419
    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 420
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v7, "has_realtime"

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 421
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhx;->zzbR()Z

    move-result v0

    if-eqz v0, :cond_db7

    .line 422
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhx;->zzg()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v7, "retry_count"

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_db7
    .catchall {:try_start_d67 .. :try_end_db7} :catchall_e6a

    .line 423
    :cond_db7
    :try_start_db7
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v7, "queue"

    const/4 v8, 0x0

    .line 424
    invoke-virtual {v0, v7, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    if-nez v0, :cond_e12

    .line 425
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 426
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v5, "Failed to insert bundle (got -1). appId"

    .line 427
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_ddd
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_db7 .. :try_end_ddd} :catch_dde
    .catchall {:try_start_db7 .. :try_end_ddd} :catchall_e6a

    goto :goto_e12

    :catch_dde
    move-exception v0

    .line 413
    :try_start_ddf
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 428
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v3

    .line 429
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v3

    .line 430
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Error storing bundle. appId"

    invoke-virtual {v3, v5, v4, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e12

    :catch_df7
    move-exception v0

    .line 295
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 410
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v3

    .line 411
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v3

    .line 412
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Data loss. Failed to serialize bundle. appId"

    .line 413
    invoke-virtual {v3, v5, v4, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e12

    :cond_e10
    move-object/from16 v2, p0

    .line 431
    :cond_e12
    :goto_e12
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    iget-object v3, v11, Lcom/google/android/gms/measurement/internal/zzpr;->zzb:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzaw;->zzJ(Ljava/util/List;)V

    .line 432
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v3

    .line 433
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_e23
    .catchall {:try_start_ddf .. :try_end_e23} :catchall_e6a

    :try_start_e23
    const-string v4, "delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v5, v6
    :try_end_e2b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e23 .. :try_end_e2b} :catch_e35
    .catchall {:try_start_e23 .. :try_end_e2b} :catchall_e6a

    const/16 v21, 0x1

    :try_start_e2d
    aput-object v1, v5, v21

    .line 434
    invoke-virtual {v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e32
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e2d .. :try_end_e32} :catch_e33
    .catchall {:try_start_e2d .. :try_end_e32} :catchall_e6a

    goto :goto_e4b

    :catch_e33
    move-exception v0

    goto :goto_e38

    :catch_e35
    move-exception v0

    const/16 v21, 0x1

    .line 430
    :goto_e38
    :try_start_e38
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 435
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v3

    .line 436
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v3

    const-string v4, "Failed to remove unused event metadata. appId"

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 437
    invoke-virtual {v3, v4, v1, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 438
    :goto_e4b
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzS()V

    move/from16 v6, v21

    goto :goto_e62

    :catchall_e55
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_e6e

    :cond_e59
    :goto_e59
    move-object v2, v1

    const/4 v6, 0x0

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzS()V
    :try_end_e62
    .catchall {:try_start_e38 .. :try_end_e62} :catchall_e6a

    .line 439
    :goto_e62
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzL()V

    return v6

    :catchall_e6a
    move-exception v0

    goto :goto_e6e

    :catchall_e6c
    move-exception v0

    move-object v2, v1

    :goto_e6e
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzL()V

    .line 440
    throw v0
.end method

.method private final zzaN()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzM()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzaa()Z

    move-result v0

    if-nez v0, :cond_25

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzA()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    goto :goto_25

    :cond_23
    const/4 v0, 0x0

    return v0

    :cond_25
    :goto_25
    const/4 v0, 0x1

    return v0
.end method

.method private final zzaO(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzaw;->zzs(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object p1

    if-eqz p1, :cond_15

    iget-wide p1, p1, Lcom/google/android/gms/measurement/internal/zzbd;->zzc:J

    const-wide/16 v0, 0x1

    cmp-long p1, p1, v0

    if-gez p1, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x0

    return p1

    :cond_15
    :goto_15
    const/4 p1, 0x1

    return p1
.end method

.method private final zzaP(Lcom/google/android/gms/internal/measurement/zzhl;Lcom/google/android/gms/internal/measurement/zzhl;)Z
    .registers 11

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhl;->zzo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhm;

    const-string v2, "_sc"

    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/zzqa;->zzG(Lcom/google/android/gms/internal/measurement/zzhm;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhq;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_21

    move-object v0, v2

    goto :goto_25

    .line 12
    :cond_21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhq;->zzh()Ljava/lang/String;

    move-result-object v0

    .line 5
    :goto_25
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzhm;

    const-string v4, "_pc"

    invoke-static {v3, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzG(Lcom/google/android/gms/internal/measurement/zzhm;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhq;

    move-result-object v3

    if-nez v3, :cond_37

    goto :goto_3b

    .line 12
    :cond_37
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhq;->zzh()Ljava/lang/String;

    move-result-object v2

    :goto_3b
    if-eqz v2, :cond_aa

    .line 6
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhl;->zzo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhm;

    const-string v1, "_et"

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzqa;->zzG(Lcom/google/android/gms/internal/measurement/zzhm;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhq;

    move-result-object v0

    if-eqz v0, :cond_a8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhq;->zzw()Z

    move-result v2

    if-eqz v2, :cond_a8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhq;->zzd()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_70

    goto :goto_a8

    :cond_70
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhq;->zzd()J

    move-result-wide v2

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhm;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzqa;->zzG(Lcom/google/android/gms/internal/measurement/zzhm;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhq;

    move-result-object v0

    if-eqz v0, :cond_90

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhq;->zzd()J

    move-result-wide v6

    cmp-long v4, v6, v4

    if-lez v4, :cond_90

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhq;->zzd()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 11
    :cond_90
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p2, v1, v0}, Lcom/google/android/gms/measurement/internal/zzqa;->zzD(Lcom/google/android/gms/internal/measurement/zzhl;Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "_fr"

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzqa;->zzD(Lcom/google/android/gms/internal/measurement/zzhl;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a8
    :goto_a8
    const/4 p1, 0x1

    return p1

    :cond_aa
    const/4 p1, 0x0

    return p1
.end method

.method private static final zzaQ(Lcom/google/android/gms/measurement/internal/zzr;)Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzr;->zzb:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzr;->zzp:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method private static final zzaR(Lcom/google/android/gms/measurement/internal/zzpg;)Lcom/google/android/gms/measurement/internal/zzpg;
    .registers 3

    if-eqz p0, :cond_21

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzax()Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p0

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Component not initialized: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_21
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Upload Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final zzaS(Lcom/google/android/gms/measurement/internal/zzr;)Ljava/lang/Boolean;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzr;->zzq:Ljava/lang/Boolean;

    .line 2
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzr;->zzE:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/zze;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zze;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzb()Lcom/google/android/gms/measurement/internal/zzju;

    move-result-object p0

    .line 4
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzju;->zza:Lcom/google/android/gms/measurement/internal/zzju;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzju;->ordinal()I

    move-result p0

    if-eqz p0, :cond_2f

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2f

    const/4 v2, 0x2

    if-eq p0, v2, :cond_2a

    const/4 v1, 0x3

    if-eq p0, v1, :cond_24

    goto :goto_31

    :cond_24
    const/4 p0, 0x0

    .line 6
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 5
    :cond_2a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_2f
    const/4 p0, 0x0

    return-object p0

    :cond_31
    :goto_31
    return-object v0
.end method

.method static bridge synthetic zzs(Lcom/google/android/gms/measurement/internal/zzpv;)Lcom/google/android/gms/measurement/internal/zzio;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzn:Lcom/google/android/gms/measurement/internal/zzio;

    return-object p0
.end method

.method public static zzz(Landroid/content/Context;)Lcom/google/android/gms/measurement/internal/zzpv;
    .registers 4

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzpv;->zzb:Lcom/google/android/gms/measurement/internal/zzpv;

    if-nez v0, :cond_2d

    const-class v0, Lcom/google/android/gms/measurement/internal/zzpv;

    monitor-enter v0

    :try_start_11
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzpv;->zzb:Lcom/google/android/gms/measurement/internal/zzpv;

    if-nez v1, :cond_28

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzpw;

    .line 3
    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzpw;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/measurement/internal/zzpw;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzpv;

    const/4 v2, 0x0

    .line 5
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/measurement/internal/zzpv;-><init>(Lcom/google/android/gms/measurement/internal/zzpw;Lcom/google/android/gms/measurement/internal/zzio;)V

    sput-object v1, Lcom/google/android/gms/measurement/internal/zzpv;->zzb:Lcom/google/android/gms/measurement/internal/zzpv;

    .line 6
    :cond_28
    monitor-exit v0

    goto :goto_2d

    :catchall_2a
    move-exception p0

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_11 .. :try_end_2c} :catchall_2a

    throw p0

    :cond_2d
    :goto_2d
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzb:Lcom/google/android/gms/measurement/internal/zzpv;

    return-object p0
.end method


# virtual methods
.method public final zzA()Lcom/google/android/gms/measurement/internal/zzqa;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzi:Lcom/google/android/gms/measurement/internal/zzqa;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaR(Lcom/google/android/gms/measurement/internal/zzpg;)Lcom/google/android/gms/measurement/internal/zzpg;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/measurement/internal/zzqa;

    return-object v0
.end method

.method public final zzB()Lcom/google/android/gms/measurement/internal/zzqf;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzn:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v0

    return-object v0
.end method

.method final zzC(Lcom/google/android/gms/measurement/internal/zzjx;)Ljava/lang/String;
    .registers 5

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzjw;->zzb:Lcom/google/android/gms/measurement/internal/zzjw;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzjx;->zzr(Lcom/google/android/gms/measurement/internal/zzjw;)Z

    move-result p1

    if-eqz p1, :cond_2a

    const/16 p1, 0x10

    new-array p1, p1, [B

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzB()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzqf;->zzJ()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    .line 3
    invoke-direct {v1, v2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "%032x"

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2a
    const/4 p1, 0x0

    return-object p1
.end method

.method final zzD(Lcom/google/android/gms/measurement/internal/zzr;)Ljava/lang/String;
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzpo;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzpo;-><init>(Lcom/google/android/gms/measurement/internal/zzpv;Lcom/google/android/gms/measurement/internal/zzr;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzil;->zzf(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    :try_start_d
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7530

    .line 3
    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_17
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d .. :try_end_17} :catch_1c
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_17} :catch_1a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_d .. :try_end_17} :catch_18

    return-object v0

    :catch_18
    move-exception v0

    goto :goto_1d

    :catch_1a
    move-exception v0

    goto :goto_1d

    :catch_1c
    move-exception v0

    .line 4
    :goto_1d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Failed to get app instance id. appId"

    .line 6
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method final zzF(Lcom/google/android/gms/measurement/internal/zzr;Landroid/os/Bundle;)Ljava/util/List;
    .registers 21

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqr;->zzb()Z

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzgi;->zzaV:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 4
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v2

    if-eqz v2, :cond_14f

    if-nez v3, :cond_20

    goto/16 :goto_14f

    :cond_20
    const/4 v2, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_c5

    .line 5
    const-string v7, "uriSources"

    .line 6
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v7

    const-string v8, "uriTimestamps"

    .line 7
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v8

    if-eqz v7, :cond_c5

    if-eqz v8, :cond_b5

    array-length v0, v8

    array-length v9, v7

    if-eq v0, v9, :cond_3b

    goto/16 :goto_b5

    :cond_3b
    move v9, v6

    .line 42
    :goto_3c
    array-length v0, v7

    if-ge v9, v0, :cond_c5

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v10

    aget v0, v7, v9

    aget-wide v11, v8, v9

    .line 9
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 11
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    .line 12
    :try_start_50
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    const-string v14, "trigger_uris"

    const-string v15, "app_id=? and source=? and timestamp_millis<=?"
    :try_end_58
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_50 .. :try_end_58} :catch_9c

    const/16 v16, 0x2

    :try_start_5a
    new-array v4, v2, [Ljava/lang/String;

    aput-object v3, v4, v6

    .line 13
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v4, v5

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v4, v16

    .line 14
    invoke-virtual {v13, v14, v15, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    iget-object v13, v10, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 15
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v13

    .line 16
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Pruned "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " trigger URIs. appId, source, timestamp"

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 18
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 19
    invoke-virtual {v13, v4, v3, v0, v11}, Lcom/google/android/gms/measurement/internal/zzhc;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_99
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5a .. :try_end_99} :catch_9a

    goto :goto_b2

    :catch_9a
    move-exception v0

    goto :goto_9f

    :catch_9c
    move-exception v0

    const/16 v16, 0x2

    .line 43
    :goto_9f
    iget-object v4, v10, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 20
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v4

    .line 21
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v4

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    const-string v11, "Error pruning trigger URIs. appId"

    .line 22
    invoke-virtual {v4, v11, v10, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_b2
    add-int/lit8 v9, v9, 0x1

    goto :goto_3c

    :cond_b5
    :goto_b5
    const/16 v16, 0x2

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v3, "Uri sources and timestamps do not match"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    goto :goto_c7

    :cond_c5
    const/16 v16, 0x2

    .line 24
    :goto_c7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v3

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    .line 25
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 27
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    new-instance v0, Ljava/util/ArrayList;

    .line 28
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 29
    :try_start_dc
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    const-string v8, "trigger_uris"

    new-array v9, v2, [Ljava/lang/String;

    const-string v2, "trigger_uri"

    aput-object v2, v9, v6

    const-string v2, "timestamp_millis"

    aput-object v2, v9, v5

    const-string v2, "source"

    aput-object v2, v9, v16

    const-string v10, "app_id=?"

    new-array v11, v5, [Ljava/lang/String;

    aput-object v1, v11, v6

    const-string v14, "rowid"

    const/4 v15, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 30
    invoke-virtual/range {v7 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 31
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_143

    .line 32
    :goto_105
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_10d

    const-string v2, ""

    .line 33
    :cond_10d
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    move/from16 v9, v16

    .line 34
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 35
    new-instance v11, Lcom/google/android/gms/measurement/internal/zzov;

    invoke-direct {v11, v2, v7, v8, v10}, Lcom/google/android/gms/measurement/internal/zzov;-><init>(Ljava/lang/String;JI)V

    .line 36
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_123
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_dc .. :try_end_123} :catch_12b
    .catchall {:try_start_dc .. :try_end_123} :catchall_129

    if-nez v2, :cond_126

    goto :goto_143

    :cond_126
    move/from16 v16, v9

    goto :goto_105

    :catchall_129
    move-exception v0

    goto :goto_149

    :catch_12b
    move-exception v0

    .line 19
    :try_start_12c
    iget-object v2, v3, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 38
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 39
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v3, "Error querying trigger uris. appId"

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 40
    invoke-virtual {v2, v3, v1, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_143
    .catchall {:try_start_12c .. :try_end_143} :catchall_129

    :cond_143
    :goto_143
    if-eqz v4, :cond_148

    .line 42
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_148
    return-object v0

    :goto_149
    if-eqz v4, :cond_14e

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 43
    :cond_14e
    throw v0

    .line 4
    :cond_14f
    :goto_14f
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method final zzK(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzq:Ljava/util/List;

    if-nez v0, :cond_12

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzq:Ljava/util/List;

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzq:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final zzL()V
    .registers 10

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzM()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzp:Z

    if-nez v0, :cond_127

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzp:Z

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaz()Z

    move-result v1

    if-eqz v1, :cond_127

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzy:Ljava/nio/channels/FileChannel;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    const-wide/16 v2, 0x0

    const-string v4, "Bad channel to read from"

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-eqz v1, :cond_68

    .line 5
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v7

    if-nez v7, :cond_2f

    goto :goto_68

    .line 7
    :cond_2f
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 8
    :try_start_33
    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 9
    invoke-virtual {v1, v7}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    if-eq v1, v5, :cond_51

    const/4 v7, -0x1

    if-eq v1, v7, :cond_73

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v7

    const-string v8, "Unexpected data length. Bytes read"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_73

    .line 11
    :cond_51
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 12
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_58} :catch_59

    goto :goto_73

    :catch_59
    move-exception v1

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v7

    const-string v8, "Failed to read from channel"

    invoke-virtual {v7, v8, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_73

    .line 6
    :cond_68
    :goto_68
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    :cond_73
    :goto_73
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzn:Lcom/google/android/gms/measurement/internal/zzio;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzh()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzi()I

    move-result v1

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    if-le v6, v1, :cond_9c

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    .line 18
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 20
    const-string v3, "Panic: can\'t downgrade version. Previous, current version"

    invoke-virtual {v0, v3, v2, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_9c
    if-ge v6, v1, :cond_127

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzy:Ljava/nio/channels/FileChannel;

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    if-eqz v7, :cond_107

    .line 22
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v8

    if-nez v8, :cond_b0

    goto :goto_107

    .line 24
    :cond_b0
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 25
    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 26
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 27
    :try_start_ba
    invoke-virtual {v7, v2, v3}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 28
    invoke-virtual {v7, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 29
    invoke-virtual {v7, v0}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 30
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_e2

    .line 31
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v2, "Error writing to channel. Bytes written"

    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_e2
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_e2} :catch_f8

    .line 38
    :cond_e2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    .line 40
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Storage version upgraded. Previous, current version"

    invoke-virtual {v0, v3, v2, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catch_f8
    move-exception v0

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v3, "Failed to write to channel"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_112

    .line 23
    :cond_107
    :goto_107
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 33
    :goto_112
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    .line 35
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Storage version upgrade failed. Previous, current version"

    .line 37
    invoke-virtual {v0, v3, v2, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_127
    return-void
.end method

.method final zzM()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzo:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UploadController is not initialized"

    .line 2
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final zzN(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzhw;)V
    .registers 9

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzr()Lcom/google/android/gms/measurement/internal/zzif;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzif;->zzo(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 2
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzhw;->zzl(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 3
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzr()Lcom/google/android/gms/measurement/internal/zzif;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzif;->zzB(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzhw;->zzs()Lcom/google/android/gms/internal/measurement/zzhw;

    .line 5
    :cond_1a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzr()Lcom/google/android/gms/measurement/internal/zzif;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzif;->zzE(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_3f

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzhw;->zzaK()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3f

    const-string v2, "."

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_3f

    const/4 v3, 0x0

    .line 9
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzhw;->zzam(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 11
    :cond_3f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzr()Lcom/google/android/gms/measurement/internal/zzif;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzif;->zzF(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    const-string v0, "_id"

    .line 12
    invoke-static {p2, v0}, Lcom/google/android/gms/measurement/internal/zzqa;->zza(Lcom/google/android/gms/internal/measurement/zzhw;Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_54

    .line 13
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzhw;->zzE(I)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 14
    :cond_54
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzr()Lcom/google/android/gms/measurement/internal/zzif;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzif;->zzD(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 15
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzhw;->zzt()Lcom/google/android/gms/internal/measurement/zzhw;

    .line 16
    :cond_61
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzr()Lcom/google/android/gms/measurement/internal/zzif;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzif;->zzA(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 17
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzhw;->zzq()Lcom/google/android/gms/internal/measurement/zzhw;

    .line 18
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzu(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v0

    .line 19
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzjw;->zzb:Lcom/google/android/gms/measurement/internal/zzjw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzjx;->zzr(Lcom/google/android/gms/measurement/internal/zzjw;)Z

    move-result v0

    if-eqz v0, :cond_ab

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzE:Ljava/util/Map;

    .line 20
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/measurement/internal/zzps;

    if-eqz v1, :cond_9d

    iget-wide v2, v1, Lcom/google/android/gms/measurement/internal/zzps;->zzb:J

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzgi;->zzaj:Lcom/google/android/gms/measurement/internal/zzgg;

    invoke-virtual {v4, p1, v5}, Lcom/google/android/gms/measurement/internal/zzam;->zzk(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_a6

    :cond_9d
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzps;

    const/4 v2, 0x0

    .line 23
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/measurement/internal/zzps;-><init>(Lcom/google/android/gms/measurement/internal/zzpv;Lcom/google/android/gms/measurement/internal/zzpu;)V

    .line 24
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a6
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzps;->zza:Ljava/lang/String;

    .line 25
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzhw;->zzac(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 26
    :cond_ab
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzr()Lcom/google/android/gms/measurement/internal/zzif;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzif;->zzC(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b8

    .line 27
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzhw;->zzA()Lcom/google/android/gms/internal/measurement/zzhw;

    :cond_b8
    return-void
.end method

.method final zzO(Lcom/google/android/gms/measurement/internal/zzh;)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzH()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzA()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_31

    .line 16
    :cond_1c
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzC()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v2, 0xcc

    const/4 v3, 0x0

    move-object v0, p0

    .line 17
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzpv;->zzW(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    :cond_31
    :goto_31
    move-object v0, p0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzC()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v3, "Fetching remote configuration"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzr()Lcom/google/android/gms/measurement/internal/zzif;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzif;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object v2

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzr()Lcom/google/android/gms/measurement/internal/zzif;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/measurement/internal/zzif;->zzl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v2, :cond_88

    .line 7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6d

    .line 8
    new-instance v2, Landroidx/collection/ArrayMap;

    invoke-direct {v2}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v4, "If-Modified-Since"

    .line 9
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v2

    .line 10
    :cond_6d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzr()Lcom/google/android/gms/measurement/internal/zzif;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzif;->zzk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_88

    if-nez v4, :cond_83

    .line 12
    new-instance v2, Landroidx/collection/ArrayMap;

    invoke-direct {v2}, Landroidx/collection/ArrayMap;-><init>()V

    move-object v4, v2

    :cond_83
    const-string v2, "If-None-Match"

    .line 13
    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_88
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzpv;->zzu:Z

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzp()Lcom/google/android/gms/measurement/internal/zzhk;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzpj;

    invoke-direct {v2, p0}, Lcom/google/android/gms/measurement/internal/zzpj;-><init>(Lcom/google/android/gms/measurement/internal/zzpv;)V

    .line 15
    invoke-virtual {v1, p1, v4, v2}, Lcom/google/android/gms/measurement/internal/zzhk;->zza(Lcom/google/android/gms/measurement/internal/zzh;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/zzhg;)V

    return-void
.end method

.method final zzP(Lcom/google/android/gms/measurement/internal/zzr;J)V
    .registers 16

    .line 1
    const-string v0, "app_id=?"

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzaw;->zzl(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_d9

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzB()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v5

    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzb:Ljava/lang/String;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzh;->zzH()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzp:Ljava/lang/String;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzh;->zzA()Ljava/lang/String;

    move-result-object v9

    .line 5
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzqf;->zzaw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d9

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v5

    .line 7
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v5

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzh;->zzC()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "New GMP App Id passed in. Removing cached database data. appId"

    .line 9
    invoke-virtual {v5, v7, v6}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v5

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzh;->zzC()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    .line 12
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 13
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    :try_start_53
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/String;

    aput-object v1, v7, v4

    const-string v8, "events"

    .line 15
    invoke-virtual {v6, v8, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    const-string v9, "user_attributes"

    .line 16
    invoke-virtual {v6, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    const-string v9, "conditional_properties"

    .line 17
    invoke-virtual {v6, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    const-string v9, "apps"

    .line 18
    invoke-virtual {v6, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    const-string v9, "raw_events"

    .line 19
    invoke-virtual {v6, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    const-string v9, "raw_events_metadata"

    .line 20
    invoke-virtual {v6, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    const-string v9, "event_filters"

    .line 21
    invoke-virtual {v6, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    const-string v9, "property_filters"

    .line 22
    invoke-virtual {v6, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    const-string v9, "audience_filter_values"

    .line 23
    invoke-virtual {v6, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    const-string v9, "consent_settings"

    .line 24
    invoke-virtual {v6, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    const-string v9, "default_event_params"

    .line 25
    invoke-virtual {v6, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    const-string v9, "trigger_uris"

    .line 26
    invoke-virtual {v6, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v8, v0

    if-lez v8, :cond_d8

    iget-object v0, v5, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v6, "Deleted application data. app, records"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v1, v7}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_53 .. :try_end_c3} :catch_c4

    goto :goto_d8

    :catch_c4
    move-exception v0

    .line 43
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 29
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v5

    .line 30
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v5

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v6, "Error deleting application data. appId, error"

    .line 31
    invoke-virtual {v5, v6, v1, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d8
    :goto_d8
    move-object v1, v3

    :cond_d9
    if-eqz v1, :cond_13a

    .line 32
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzh;->zze()J

    move-result-wide v5

    const-wide/32 v7, -0x80000000

    cmp-long v0, v5, v7

    if-eqz v0, :cond_f2

    .line 33
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzh;->zze()J

    move-result-wide v5

    iget-wide v9, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzj:J

    cmp-long v0, v5, v9

    if-eqz v0, :cond_f2

    move v0, v2

    goto :goto_f3

    :cond_f2
    move v0, v4

    .line 34
    :goto_f3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzh;->zzF()Ljava/lang/String;

    move-result-object v5

    .line 35
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzh;->zze()J

    move-result-wide v9

    cmp-long v1, v9, v7

    if-nez v1, :cond_10a

    if-eqz v5, :cond_10a

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzc:Ljava/lang/String;

    .line 36
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10a

    goto :goto_10b

    :cond_10a
    move v2, v4

    :goto_10b
    or-int/2addr v0, v2

    if-eqz v0, :cond_13a

    new-instance v0, Landroid/os/Bundle;

    .line 37
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "_pv"

    .line 38
    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v6, Lcom/google/android/gms/measurement/internal/zzbh;

    new-instance v8, Lcom/google/android/gms/measurement/internal/zzbf;

    invoke-direct {v8, v0}, Lcom/google/android/gms/measurement/internal/zzbf;-><init>(Landroid/os/Bundle;)V

    const-string v9, "auto"

    const-string v7, "_au"

    move-wide v10, p2

    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/measurement/internal/zzbh;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbf;Ljava/lang/String;J)V

    .line 40
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object p2

    sget-object p3, Lcom/google/android/gms/measurement/internal/zzgi;->zzbm:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 41
    invoke-virtual {p2, v3, p3}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result p2

    if-eqz p2, :cond_137

    .line 42
    invoke-virtual {p0, v6, p1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzU(Lcom/google/android/gms/measurement/internal/zzbh;Lcom/google/android/gms/measurement/internal/zzr;)V

    return-void

    .line 43
    :cond_137
    invoke-virtual {p0, v6, p1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzS(Lcom/google/android/gms/measurement/internal/zzbh;Lcom/google/android/gms/measurement/internal/zzr;)V

    :cond_13a
    return-void
.end method

.method final zzQ(Lcom/google/android/gms/measurement/internal/zzh;Lcom/google/android/gms/internal/measurement/zzhw;)V
    .registers 14

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzM()V

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzhw;->zzaH()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzao;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzC()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzM()V

    .line 7
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzu(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v1

    .line 8
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzju;->zza:Lcom/google/android/gms/measurement/internal/zzju;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjx;->zze()Lcom/google/android/gms/measurement/internal/zzju;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzju;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_49

    if-eq v2, v4, :cond_3f

    if-eq v2, v3, :cond_3f

    .line 12
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzjw;->zza:Lcom/google/android/gms/measurement/internal/zzjw;

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzan;->zzj:Lcom/google/android/gms/measurement/internal/zzan;

    invoke-virtual {v0, v2, v6}, Lcom/google/android/gms/measurement/internal/zzao;->zzd(Lcom/google/android/gms/measurement/internal/zzjw;Lcom/google/android/gms/measurement/internal/zzan;)V

    goto :goto_50

    .line 9
    :cond_3f
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzjw;->zza:Lcom/google/android/gms/measurement/internal/zzjw;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjx;->zzb()I

    move-result v6

    .line 9
    invoke-virtual {v0, v2, v6}, Lcom/google/android/gms/measurement/internal/zzao;->zzc(Lcom/google/android/gms/measurement/internal/zzjw;I)V

    goto :goto_50

    .line 11
    :cond_49
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzjw;->zza:Lcom/google/android/gms/measurement/internal/zzjw;

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzan;->zzi:Lcom/google/android/gms/measurement/internal/zzan;

    invoke-virtual {v0, v2, v6}, Lcom/google/android/gms/measurement/internal/zzao;->zzd(Lcom/google/android/gms/measurement/internal/zzjw;Lcom/google/android/gms/measurement/internal/zzan;)V

    .line 13
    :goto_50
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjx;->zzf()Lcom/google/android/gms/measurement/internal/zzju;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzju;->ordinal()I

    move-result v2

    if-eq v2, v5, :cond_70

    if-eq v2, v4, :cond_66

    if-eq v2, v3, :cond_66

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzjw;->zzb:Lcom/google/android/gms/measurement/internal/zzjw;

    .line 17
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzan;->zzj:Lcom/google/android/gms/measurement/internal/zzan;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzao;->zzd(Lcom/google/android/gms/measurement/internal/zzjw;Lcom/google/android/gms/measurement/internal/zzan;)V

    goto :goto_77

    .line 51
    :cond_66
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzjw;->zzb:Lcom/google/android/gms/measurement/internal/zzjw;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjx;->zzb()I

    move-result v1

    .line 15
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzao;->zzc(Lcom/google/android/gms/measurement/internal/zzjw;I)V

    goto :goto_77

    :cond_70
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzjw;->zzb:Lcom/google/android/gms/measurement/internal/zzjw;

    .line 16
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzan;->zzi:Lcom/google/android/gms/measurement/internal/zzan;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzao;->zzd(Lcom/google/android/gms/measurement/internal/zzjw;Lcom/google/android/gms/measurement/internal/zzan;)V

    .line 18
    :goto_77
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzC()Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzM()V

    .line 21
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzm(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzu(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v3

    .line 22
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzl(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzba;Lcom/google/android/gms/measurement/internal/zzjx;Lcom/google/android/gms/measurement/internal/zzao;)Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzba;->zzh()Ljava/lang/Boolean;

    move-result-object v2

    .line 23
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/measurement/zzhw;->zzak(Z)Lcom/google/android/gms/internal/measurement/zzhw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzba;->zzi()Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b3

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzba;->zzi()Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/measurement/zzhw;->zzU(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 26
    :cond_b3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzM()V

    .line 28
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzhw;->zzaN()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "_npa"

    if-eqz v2, :cond_de

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzio;

    .line 29
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzio;->zzg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c5

    goto :goto_df

    :cond_de
    const/4 v2, 0x0

    :goto_df
    if-eqz v2, :cond_154

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzjw;->zzd:Lcom/google/android/gms/measurement/internal/zzjw;

    .line 30
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzao;->zza(Lcom/google/android/gms/measurement/internal/zzjw;)Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v4

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzan;->zza:Lcom/google/android/gms/measurement/internal/zzan;

    if-eq v4, v6, :cond_ed

    goto/16 :goto_18e

    .line 31
    :cond_ed
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v4

    .line 32
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzC()Ljava/lang/String;

    move-result-object v6

    .line 33
    invoke-virtual {v4, v6, v3}, Lcom/google/android/gms/measurement/internal/zzaw;->zzy(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzqd;

    move-result-object v3

    if-eqz v3, :cond_121

    iget-object v2, v3, Lcom/google/android/gms/measurement/internal/zzqd;->zzb:Ljava/lang/String;

    .line 34
    const-string v3, "tcf"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10c

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzan;->zzh:Lcom/google/android/gms/measurement/internal/zzan;

    .line 35
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzao;->zzd(Lcom/google/android/gms/measurement/internal/zzjw;Lcom/google/android/gms/measurement/internal/zzan;)V

    goto/16 :goto_18e

    :cond_10c
    const-string v3, "app"

    .line 36
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11b

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzan;->zzf:Lcom/google/android/gms/measurement/internal/zzan;

    .line 37
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzao;->zzd(Lcom/google/android/gms/measurement/internal/zzjw;Lcom/google/android/gms/measurement/internal/zzan;)V

    goto/16 :goto_18e

    :cond_11b
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzan;->zzd:Lcom/google/android/gms/measurement/internal/zzan;

    .line 38
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzao;->zzd(Lcom/google/android/gms/measurement/internal/zzjw;Lcom/google/android/gms/measurement/internal/zzan;)V

    goto :goto_18e

    .line 39
    :cond_121
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzx()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_14e

    .line 40
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_137

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzio;->zzc()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    cmp-long v4, v6, v8

    if-nez v4, :cond_14e

    .line 41
    :cond_137
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_148

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzio;->zzc()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_148

    goto :goto_14e

    .line 43
    :cond_148
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzan;->zzd:Lcom/google/android/gms/measurement/internal/zzan;

    .line 42
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzao;->zzd(Lcom/google/android/gms/measurement/internal/zzjw;Lcom/google/android/gms/measurement/internal/zzan;)V

    goto :goto_18e

    .line 41
    :cond_14e
    :goto_14e
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzan;->zzf:Lcom/google/android/gms/measurement/internal/zzan;

    .line 43
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzao;->zzd(Lcom/google/android/gms/measurement/internal/zzjw;Lcom/google/android/gms/measurement/internal/zzan;)V

    goto :goto_18e

    .line 44
    :cond_154
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzC()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaC(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzao;)I

    move-result v1

    .line 45
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzio;->zze()Lcom/google/android/gms/internal/measurement/zzin;

    move-result-object v2

    .line 46
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzin;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzin;

    .line 47
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzin;->zzg(J)Lcom/google/android/gms/internal/measurement/zzin;

    int-to-long v3, v1

    .line 48
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzin;->zze(J)Lcom/google/android/gms/internal/measurement/zzin;

    .line 49
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzio;

    .line 50
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/measurement/zzhw;->zzp(Lcom/google/android/gms/internal/measurement/zzio;)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Setting user property"

    const-string v4, "non_personalized_ads(_npa)"

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    :goto_18e
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzao;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzhw;->zzS(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhw;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzc:Lcom/google/android/gms/measurement/internal/zzif;

    .line 53
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzC()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzif;->zzv(Ljava/lang/String;)Z

    move-result p1

    .line 54
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzhw;->zzaM()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 55
    :goto_1a5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_236

    .line 56
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzhm;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhm;->zzh()Ljava/lang/String;

    move-result-object v3

    const-string v4, "_tcf"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_232

    .line 57
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmd;->zzch()Lcom/google/android/gms/internal/measurement/zzlz;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhl;

    .line 58
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhl;->zzp()Ljava/util/List;

    move-result-object v3

    move v4, v1

    .line 59
    :goto_1ce
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_22e

    .line 60
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzhq;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzhq;->zzg()Ljava/lang/String;

    move-result-object v6

    const-string v7, "_tcfd"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22b

    .line 61
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzhq;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhq;->zzh()Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_21d

    .line 62
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v6, 0x4

    if-gt p1, v6, :cond_1fa

    goto :goto_21d

    .line 63
    :cond_1fa
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    move v3, v5

    :goto_1ff
    const/16 v8, 0x40

    const-string v9, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-_"

    if-ge v3, v8, :cond_212

    .line 64
    aget-char v8, p1, v6

    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v8, v10, :cond_20f

    move v1, v3

    goto :goto_212

    :cond_20f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1ff

    :cond_212
    :goto_212
    or-int/2addr v1, v5

    .line 65
    invoke-virtual {v9, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, p1, v6

    .line 66
    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    .line 67
    :cond_21d
    :goto_21d
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhq;->zze()Lcom/google/android/gms/internal/measurement/zzhp;

    move-result-object p1

    .line 68
    invoke-virtual {p1, v7}, Lcom/google/android/gms/internal/measurement/zzhp;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhp;

    .line 69
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/measurement/zzhp;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhp;

    .line 70
    invoke-virtual {v0, v4, p1}, Lcom/google/android/gms/internal/measurement/zzhl;->zzj(ILcom/google/android/gms/internal/measurement/zzhp;)Lcom/google/android/gms/internal/measurement/zzhl;

    goto :goto_22e

    :cond_22b
    add-int/lit8 v4, v4, 0x1

    goto :goto_1ce

    .line 71
    :cond_22e
    :goto_22e
    invoke-virtual {p2, v2, v0}, Lcom/google/android/gms/internal/measurement/zzhw;->zzad(ILcom/google/android/gms/internal/measurement/zzhl;)Lcom/google/android/gms/internal/measurement/zzhw;

    return-void

    :cond_232
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1a5

    :cond_236
    return-void
.end method

.method final zzR(Lcom/google/android/gms/internal/measurement/zzhw;Lcom/google/android/gms/measurement/internal/zzpr;)V
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 1
    :goto_7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhw;->zzc()I

    move-result v4

    if-ge v3, v4, :cond_1c5

    .line 2
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/zzhw;->zzh(I)Lcom/google/android/gms/internal/measurement/zzhm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzmd;->zzch()Lcom/google/android/gms/internal/measurement/zzlz;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzhl;

    .line 3
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhl;->zzp()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1c1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzhq;

    .line 4
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzhq;->zzg()Ljava/lang/String;

    move-result-object v6

    const-string v7, "_c"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    .line 5
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhx;->zza()I

    move-result v5

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzgi;->zzak:Lcom/google/android/gms/measurement/internal/zzgg;

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzam;->zzh(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)I

    move-result v6

    if-lt v5, v6, :cond_1b8

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v5

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    .line 8
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzgi;->zzax:Lcom/google/android/gms/measurement/internal/zzgg;

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzam;->zzh(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)I

    move-result v5

    const-string v6, "Generated trigger URI. appId, uri"

    const-string v7, "_tr"

    const-string v8, "_tu"

    const/4 v9, 0x0

    const-wide/16 v10, 0x1

    if-lez v5, :cond_131

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v12

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zza()J

    move-result-wide v13

    iget-object v15, v2, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    .line 11
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v15

    const/16 v21, 0x0

    const/16 v22, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 12
    invoke-virtual/range {v12 .. v22}, Lcom/google/android/gms/measurement/internal/zzaw;->zzo(JLjava/lang/String;ZZZZZZZ)Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v12

    iget-wide v12, v12, Lcom/google/android/gms/measurement/internal/zzas;->zzg:J

    int-to-long v14, v5

    cmp-long v5, v12, v14

    if-lez v5, :cond_a8

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhq;->zze()Lcom/google/android/gms/internal/measurement/zzhp;

    move-result-object v5

    const-string v6, "_tnr"

    .line 14
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/measurement/zzhp;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhp;

    .line 15
    invoke-virtual {v5, v10, v11}, Lcom/google/android/gms/internal/measurement/zzhp;->zzi(J)Lcom/google/android/gms/internal/measurement/zzhp;

    .line 16
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzhq;

    .line 17
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzhl;->zzf(Lcom/google/android/gms/internal/measurement/zzhq;)Lcom/google/android/gms/internal/measurement/zzhl;

    goto/16 :goto_1b8

    .line 18
    :cond_a8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v5

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/google/android/gms/measurement/internal/zzgi;->zzaX:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 19
    invoke-virtual {v5, v12, v13}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v5

    if-eqz v5, :cond_d5

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzB()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzqf;->zzF()Ljava/lang/String;

    move-result-object v9

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhq;->zze()Lcom/google/android/gms/internal/measurement/zzhp;

    move-result-object v5

    .line 22
    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/measurement/zzhp;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhp;

    .line 23
    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/measurement/zzhp;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhp;

    .line 24
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzhq;

    .line 25
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzhl;->zzf(Lcom/google/android/gms/internal/measurement/zzhq;)Lcom/google/android/gms/internal/measurement/zzhl;

    .line 26
    :cond_d5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhq;->zze()Lcom/google/android/gms/internal/measurement/zzhp;

    move-result-object v5

    .line 27
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/measurement/zzhp;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhp;

    .line 28
    invoke-virtual {v5, v10, v11}, Lcom/google/android/gms/internal/measurement/zzhp;->zzi(J)Lcom/google/android/gms/internal/measurement/zzhp;

    .line 29
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzhq;

    .line 30
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzhl;->zzf(Lcom/google/android/gms/internal/measurement/zzhq;)Lcom/google/android/gms/internal/measurement/zzhl;

    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    move-result-object v5

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    .line 32
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v1, v4, v9}, Lcom/google/android/gms/measurement/internal/zzqa;->zzl(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzhw;Lcom/google/android/gms/internal/measurement/zzhl;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzov;

    move-result-object v5

    if-eqz v5, :cond_1b8

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v7

    .line 34
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    .line 35
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v5, Lcom/google/android/gms/measurement/internal/zzov;->zza:Ljava/lang/String;

    .line 36
    invoke-virtual {v7, v6, v8, v9}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lcom/google/android/gms/measurement/internal/zzaw;->zzad(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzov;)Z

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzpv;->zzr:Ljava/util/Deque;

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    .line 38
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Deque;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1b8

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    .line 39
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b8

    .line 40
    :cond_131
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v5

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/google/android/gms/measurement/internal/zzgi;->zzaX:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 41
    invoke-virtual {v5, v12, v13}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v5

    if-eqz v5, :cond_15e

    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzB()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzqf;->zzF()Ljava/lang/String;

    move-result-object v9

    .line 43
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhq;->zze()Lcom/google/android/gms/internal/measurement/zzhp;

    move-result-object v5

    .line 44
    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/measurement/zzhp;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhp;

    .line 45
    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/measurement/zzhp;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhp;

    .line 46
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzhq;

    .line 47
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzhl;->zzf(Lcom/google/android/gms/internal/measurement/zzhq;)Lcom/google/android/gms/internal/measurement/zzhl;

    .line 48
    :cond_15e
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhq;->zze()Lcom/google/android/gms/internal/measurement/zzhp;

    move-result-object v5

    .line 49
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/measurement/zzhp;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhp;

    .line 50
    invoke-virtual {v5, v10, v11}, Lcom/google/android/gms/internal/measurement/zzhp;->zzi(J)Lcom/google/android/gms/internal/measurement/zzhp;

    .line 51
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzhq;

    .line 52
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzhl;->zzf(Lcom/google/android/gms/internal/measurement/zzhq;)Lcom/google/android/gms/internal/measurement/zzhl;

    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    move-result-object v5

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v1, v4, v9}, Lcom/google/android/gms/measurement/internal/zzqa;->zzl(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzhw;Lcom/google/android/gms/internal/measurement/zzhl;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzov;

    move-result-object v5

    if-eqz v5, :cond_1b8

    .line 54
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v7

    .line 55
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    .line 56
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v5, Lcom/google/android/gms/measurement/internal/zzov;->zza:Ljava/lang/String;

    .line 57
    invoke-virtual {v7, v6, v8, v9}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 58
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lcom/google/android/gms/measurement/internal/zzaw;->zzad(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzov;)Z

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzpv;->zzr:Ljava/util/Deque;

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    .line 59
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Deque;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1b8

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzpr;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    .line 60
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_1b8
    :goto_1b8
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzhm;

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzhw;->zzae(ILcom/google/android/gms/internal/measurement/zzhm;)Lcom/google/android/gms/internal/measurement/zzhw;

    :cond_1c1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_7

    :cond_1c5
    return-void
.end method

.method final zzS(Lcom/google/android/gms/measurement/internal/zzbh;Lcom/google/android/gms/measurement/internal/zzr;)V
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 1
    const-string v2, "_s"

    const-string v3, "_sid"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzM()V

    move-object/from16 v5, p1

    .line 5
    iget-wide v9, v5, Lcom/google/android/gms/measurement/internal/zzbh;->zzd:J

    .line 6
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzhf;->zzb(Lcom/google/android/gms/measurement/internal/zzbh;)Lcom/google/android/gms/measurement/internal/zzhf;

    move-result-object v5

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzpv;->zzG:Lcom/google/android/gms/measurement/internal/zzmh;

    const/4 v7, 0x0

    if-eqz v6, :cond_3c

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzpv;->zzH:Ljava/lang/String;

    if-eqz v6, :cond_3c

    .line 8
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_39

    goto :goto_3c

    .line 119
    :cond_39
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzpv;->zzG:Lcom/google/android/gms/measurement/internal/zzmh;

    goto :goto_3d

    :cond_3c
    :goto_3c
    move-object v6, v7

    .line 8
    :goto_3d
    iget-object v8, v5, Lcom/google/android/gms/measurement/internal/zzhf;->zzd:Landroid/os/Bundle;

    const/4 v11, 0x0

    .line 9
    invoke-static {v6, v8, v11}, Lcom/google/android/gms/measurement/internal/zzqf;->zzN(Lcom/google/android/gms/measurement/internal/zzmh;Landroid/os/Bundle;Z)V

    .line 10
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzhf;->zza()Lcom/google/android/gms/measurement/internal/zzbh;

    move-result-object v5

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    invoke-static {v5, v0}, Lcom/google/android/gms/measurement/internal/zzqa;->zzE(Lcom/google/android/gms/measurement/internal/zzbh;Lcom/google/android/gms/measurement/internal/zzr;)Z

    move-result v6

    if-nez v6, :cond_51

    return-void

    .line 12
    :cond_51
    iget-boolean v6, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzh:Z

    if-nez v6, :cond_59

    .line 13
    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzg(Lcom/google/android/gms/measurement/internal/zzr;)Lcom/google/android/gms/measurement/internal/zzh;

    return-void

    .line 14
    :cond_59
    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzs:Ljava/util/List;

    if-eqz v6, :cond_95

    iget-object v13, v5, Lcom/google/android/gms/measurement/internal/zzbh;->zza:Ljava/lang/String;

    .line 15
    invoke-interface {v6, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_83

    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/zzbh;->zzb:Lcom/google/android/gms/measurement/internal/zzbf;

    .line 16
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzbf;->zzc()Landroid/os/Bundle;

    move-result-object v6

    const-string v8, "ga_safelisted"

    const-wide/16 v14, 0x1

    .line 17
    invoke-virtual {v6, v8, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v12, Lcom/google/android/gms/measurement/internal/zzbh;

    new-instance v14, Lcom/google/android/gms/measurement/internal/zzbf;

    .line 18
    invoke-direct {v14, v6}, Lcom/google/android/gms/measurement/internal/zzbf;-><init>(Landroid/os/Bundle;)V

    iget-object v15, v5, Lcom/google/android/gms/measurement/internal/zzbh;->zzc:Ljava/lang/String;

    iget-wide v5, v5, Lcom/google/android/gms/measurement/internal/zzbh;->zzd:J

    move-wide/from16 v16, v5

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/zzbh;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbf;Ljava/lang/String;J)V

    goto :goto_96

    .line 117
    :cond_83
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    iget-object v2, v5, Lcom/google/android/gms/measurement/internal/zzbh;->zza:Ljava/lang/String;

    iget-object v3, v5, Lcom/google/android/gms/measurement/internal/zzbh;->zzc:Ljava/lang/String;

    const-string v5, "Dropping non-safelisted event. appId, event name, origin"

    .line 119
    invoke-virtual {v0, v5, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_95
    move-object v12, v5

    .line 19
    :goto_96
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzaw;->zzH()V

    .line 20
    :try_start_9d
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzra;->zzb()Z

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzgi;->zzbi:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 22
    invoke-virtual {v5, v7, v6}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v5

    const-wide/16 v13, 0x0

    if-eqz v5, :cond_10d

    iget-object v5, v12, Lcom/google/android/gms/measurement/internal/zzbh;->zza:Ljava/lang/String;

    .line 23
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10d

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v5

    invoke-virtual {v5, v4, v2}, Lcom/google/android/gms/measurement/internal/zzaw;->zzZ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10d

    iget-object v2, v12, Lcom/google/android/gms/measurement/internal/zzbh;->zzb:Lcom/google/android/gms/measurement/internal/zzbf;

    .line 25
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzbf;->zze(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v2, v5, v13

    if-eqz v2, :cond_10d

    .line 26
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v2

    const-string v5, "_f"

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzaw;->zzZ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_102

    .line 27
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v2

    const-string v5, "_v"

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzaw;->zzZ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e7

    goto :goto_102

    .line 31
    :cond_e7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v2

    .line 32
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, -0x3a98

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 33
    invoke-virtual {v1, v4, v12}, Lcom/google/android/gms/measurement/internal/zzpv;->zzf(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbh;)Landroid/os/Bundle;

    move-result-object v6

    .line 34
    invoke-virtual {v2, v4, v5, v3, v6}, Lcom/google/android/gms/measurement/internal/zzaw;->zzG(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_10d

    .line 28
    :cond_102
    :goto_102
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v2

    .line 29
    invoke-virtual {v1, v4, v12}, Lcom/google/android/gms/measurement/internal/zzpv;->zzf(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbh;)Landroid/os/Bundle;

    move-result-object v5

    .line 30
    invoke-virtual {v2, v4, v7, v3, v5}, Lcom/google/android/gms/measurement/internal/zzaw;->zzG(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 35
    :cond_10d
    :goto_10d
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v2

    .line 36
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 38
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    cmp-long v3, v9, v13

    const/4 v5, 0x2

    const/4 v13, 0x1

    if-gez v3, :cond_13c

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 39
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 40
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v6, "Invalid time querying timed out conditional properties"

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 41
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 42
    invoke-virtual {v2, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_14c

    .line 65
    :cond_13c
    const-string v6, "active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout"

    new-array v7, v5, [Ljava/lang/String;

    aput-object v4, v7, v11

    .line 44
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v13

    .line 45
    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/measurement/internal/zzaw;->zzC(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 46
    :goto_14c
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_150
    :goto_150
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_19d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/measurement/internal/zzai;

    if-eqz v6, :cond_150

    .line 47
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v7

    .line 48
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v7

    const-string v8, "User property timed out"

    iget-object v14, v6, Lcom/google/android/gms/measurement/internal/zzai;->zza:Ljava/lang/String;

    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zzpv;->zzn:Lcom/google/android/gms/measurement/internal/zzio;

    .line 49
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v15

    move/from16 p1, v11

    iget-object v11, v6, Lcom/google/android/gms/measurement/internal/zzai;->zzc:Lcom/google/android/gms/measurement/internal/zzqb;

    .line 50
    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/zzqb;->zzb:Ljava/lang/String;

    invoke-virtual {v15, v11}, Lcom/google/android/gms/measurement/internal/zzgx;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v15, v6, Lcom/google/android/gms/measurement/internal/zzai;->zzc:Lcom/google/android/gms/measurement/internal/zzqb;

    .line 51
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzqb;->zza()Ljava/lang/Object;

    move-result-object v15

    .line 52
    invoke-virtual {v7, v8, v14, v11, v15}, Lcom/google/android/gms/measurement/internal/zzhc;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v7, v6, Lcom/google/android/gms/measurement/internal/zzai;->zzg:Lcom/google/android/gms/measurement/internal/zzbh;

    if-eqz v7, :cond_18f

    new-instance v8, Lcom/google/android/gms/measurement/internal/zzbh;

    .line 53
    invoke-direct {v8, v7, v9, v10}, Lcom/google/android/gms/measurement/internal/zzbh;-><init>(Lcom/google/android/gms/measurement/internal/zzbh;J)V

    invoke-virtual {v1, v8, v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzax(Lcom/google/android/gms/measurement/internal/zzbh;Lcom/google/android/gms/measurement/internal/zzr;)V

    .line 54
    :cond_18f
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v7

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzai;->zzc:Lcom/google/android/gms/measurement/internal/zzqb;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzqb;->zzb:Ljava/lang/String;

    invoke-virtual {v7, v4, v6}, Lcom/google/android/gms/measurement/internal/zzaw;->zza(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v11, p1

    goto :goto_150

    :cond_19d
    move/from16 p1, v11

    .line 55
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v2

    .line 56
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 58
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    if-gez v3, :cond_1ca

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 59
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 60
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v6, "Invalid time querying expired conditional properties"

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 61
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 62
    invoke-virtual {v2, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_1da

    .line 92
    :cond_1ca
    const-string v6, "active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live"

    new-array v7, v5, [Ljava/lang/String;

    aput-object v4, v7, p1

    .line 64
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v13

    .line 65
    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/measurement/internal/zzaw;->zzC(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 63
    :goto_1da
    new-instance v6, Ljava/util/ArrayList;

    .line 66
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 67
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1e7
    :goto_1e7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_23a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/measurement/internal/zzai;

    if-eqz v7, :cond_1e7

    .line 68
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v8

    .line 69
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v8

    const-string v11, "User property expired"

    iget-object v14, v7, Lcom/google/android/gms/measurement/internal/zzai;->zza:Ljava/lang/String;

    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zzpv;->zzn:Lcom/google/android/gms/measurement/internal/zzio;

    .line 70
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v15

    move/from16 v16, v5

    iget-object v5, v7, Lcom/google/android/gms/measurement/internal/zzai;->zzc:Lcom/google/android/gms/measurement/internal/zzqb;

    .line 71
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzqb;->zzb:Ljava/lang/String;

    invoke-virtual {v15, v5}, Lcom/google/android/gms/measurement/internal/zzgx;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v15, v7, Lcom/google/android/gms/measurement/internal/zzai;->zzc:Lcom/google/android/gms/measurement/internal/zzqb;

    .line 72
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzqb;->zza()Ljava/lang/Object;

    move-result-object v15

    .line 73
    invoke-virtual {v8, v11, v14, v5, v15}, Lcom/google/android/gms/measurement/internal/zzhc;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v5

    iget-object v8, v7, Lcom/google/android/gms/measurement/internal/zzai;->zzc:Lcom/google/android/gms/measurement/internal/zzqb;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzqb;->zzb:Ljava/lang/String;

    invoke-virtual {v5, v4, v8}, Lcom/google/android/gms/measurement/internal/zzaw;->zzP(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v7, Lcom/google/android/gms/measurement/internal/zzai;->zzk:Lcom/google/android/gms/measurement/internal/zzbh;

    if-eqz v5, :cond_22c

    .line 75
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_22c
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v5

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzai;->zzc:Lcom/google/android/gms/measurement/internal/zzqb;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzqb;->zzb:Ljava/lang/String;

    invoke-virtual {v5, v4, v7}, Lcom/google/android/gms/measurement/internal/zzaw;->zza(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v5, v16

    goto :goto_1e7

    :cond_23a
    move/from16 v16, v5

    .line 77
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_240
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_255

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/measurement/internal/zzbh;

    new-instance v6, Lcom/google/android/gms/measurement/internal/zzbh;

    .line 78
    invoke-direct {v6, v5, v9, v10}, Lcom/google/android/gms/measurement/internal/zzbh;-><init>(Lcom/google/android/gms/measurement/internal/zzbh;J)V

    invoke-virtual {v1, v6, v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzax(Lcom/google/android/gms/measurement/internal/zzbh;Lcom/google/android/gms/measurement/internal/zzr;)V

    goto :goto_240

    .line 79
    :cond_255
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v2

    iget-object v5, v12, Lcom/google/android/gms/measurement/internal/zzbh;->zza:Ljava/lang/String;

    .line 80
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 83
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    if-gez v3, :cond_28d

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 84
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v3

    .line 85
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v3

    const-string v6, "Invalid time querying triggered conditional properties"

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 86
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v2

    .line 87
    invoke-virtual {v2, v5}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 89
    invoke-virtual {v3, v6, v4, v2, v5}, Lcom/google/android/gms/measurement/internal/zzhc;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_2a0

    .line 115
    :cond_28d
    const-string v3, "active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    aput-object v4, v6, p1

    aput-object v5, v6, v13

    .line 91
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v16

    .line 92
    invoke-virtual {v2, v3, v6}, Lcom/google/android/gms/measurement/internal/zzaw;->zzC(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 90
    :goto_2a0
    new-instance v3, Ljava/util/ArrayList;

    .line 93
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2ad
    :goto_2ad
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_340

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/measurement/internal/zzai;

    if-eqz v4, :cond_2ad

    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zzai;->zzc:Lcom/google/android/gms/measurement/internal/zzqb;

    new-instance v6, Lcom/google/android/gms/measurement/internal/zzqd;

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zzai;->zza:Ljava/lang/String;

    .line 95
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v8, v6

    move-object v6, v7

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zzai;->zzb:Ljava/lang/String;

    move-object v11, v8

    iget-object v8, v5, Lcom/google/android/gms/measurement/internal/zzqb;->zzb:Ljava/lang/String;

    .line 96
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzqb;->zza()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v18, v11

    move-object v11, v5

    move-object/from16 v5, v18

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/measurement/internal/zzqd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 97
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/measurement/internal/zzaw;->zzai(Lcom/google/android/gms/measurement/internal/zzqd;)Z

    move-result v6

    if-eqz v6, :cond_306

    .line 98
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v6

    .line 99
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v6

    const-string v7, "User property triggered"

    iget-object v8, v4, Lcom/google/android/gms/measurement/internal/zzai;->zza:Ljava/lang/String;

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzpv;->zzn:Lcom/google/android/gms/measurement/internal/zzio;

    .line 100
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v11

    iget-object v14, v5, Lcom/google/android/gms/measurement/internal/zzqd;->zzc:Ljava/lang/String;

    .line 101
    invoke-virtual {v11, v14}, Lcom/google/android/gms/measurement/internal/zzgx;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v14, v5, Lcom/google/android/gms/measurement/internal/zzqd;->zze:Ljava/lang/Object;

    .line 102
    invoke-virtual {v6, v7, v8, v11, v14}, Lcom/google/android/gms/measurement/internal/zzhc;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_327

    .line 103
    :cond_306
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v6

    .line 104
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v6

    const-string v7, "Too many active user properties, ignoring"

    iget-object v8, v4, Lcom/google/android/gms/measurement/internal/zzai;->zza:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzpv;->zzn:Lcom/google/android/gms/measurement/internal/zzio;

    .line 105
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v11

    iget-object v14, v5, Lcom/google/android/gms/measurement/internal/zzqd;->zzc:Ljava/lang/String;

    .line 106
    invoke-virtual {v11, v14}, Lcom/google/android/gms/measurement/internal/zzgx;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v14, v5, Lcom/google/android/gms/measurement/internal/zzqd;->zze:Ljava/lang/Object;

    .line 107
    invoke-virtual {v6, v7, v8, v11, v14}, Lcom/google/android/gms/measurement/internal/zzhc;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 102
    :goto_327
    iget-object v6, v4, Lcom/google/android/gms/measurement/internal/zzai;->zzi:Lcom/google/android/gms/measurement/internal/zzbh;

    if-eqz v6, :cond_32e

    .line 108
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_32e
    new-instance v6, Lcom/google/android/gms/measurement/internal/zzqb;

    .line 109
    invoke-direct {v6, v5}, Lcom/google/android/gms/measurement/internal/zzqb;-><init>(Lcom/google/android/gms/measurement/internal/zzqd;)V

    iput-object v6, v4, Lcom/google/android/gms/measurement/internal/zzai;->zzc:Lcom/google/android/gms/measurement/internal/zzqb;

    iput-boolean v13, v4, Lcom/google/android/gms/measurement/internal/zzai;->zze:Z

    .line 110
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/measurement/internal/zzaw;->zzah(Lcom/google/android/gms/measurement/internal/zzai;)Z

    goto/16 :goto_2ad

    .line 111
    :cond_340
    invoke-virtual {v1, v12, v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzax(Lcom/google/android/gms/measurement/internal/zzbh;Lcom/google/android/gms/measurement/internal/zzr;)V

    .line 112
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_347
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzbh;

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzbh;

    .line 113
    invoke-direct {v4, v3, v9, v10}, Lcom/google/android/gms/measurement/internal/zzbh;-><init>(Lcom/google/android/gms/measurement/internal/zzbh;J)V

    invoke-virtual {v1, v4, v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzax(Lcom/google/android/gms/measurement/internal/zzbh;Lcom/google/android/gms/measurement/internal/zzr;)V

    goto :goto_347

    .line 114
    :cond_35c
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzS()V
    :try_end_363
    .catchall {:try_start_9d .. :try_end_363} :catchall_36b

    .line 115
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzL()V

    return-void

    :catchall_36b
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaw;->zzL()V

    .line 116
    throw v0
.end method

.method final zzT(Lcom/google/android/gms/measurement/internal/zzbh;Ljava/lang/String;)V
    .registers 47

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzaw;->zzl(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v2

    if-eqz v2, :cond_de

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzh;->zzF()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1c

    goto/16 :goto_de

    .line 4
    :cond_1c
    invoke-direct {v0, v2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaF(Lcom/google/android/gms/measurement/internal/zzh;)Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_3e

    .line 5
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzbh;->zza:Ljava/lang/String;

    const-string v5, "_ui"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_56

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v4

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Could not find package. appId"

    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_56

    .line 7
    :cond_3e
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_56

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "App version does not match; dropping event. appId"

    .line 35
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_56
    :goto_56
    move-object v4, v2

    .line 8
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzr;

    move-object v5, v4

    .line 9
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzh;->zzH()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    .line 10
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzF()Ljava/lang/String;

    move-result-object v5

    move-object v8, v6

    .line 11
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzh;->zze()J

    move-result-wide v6

    move-object v9, v8

    .line 12
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzE()Ljava/lang/String;

    move-result-object v8

    move-object v11, v9

    .line 13
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzq()J

    move-result-wide v9

    move-object v13, v11

    .line 14
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzh;->zzn()J

    move-result-wide v11

    .line 15
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzh;->zzaJ()Z

    move-result v14

    .line 16
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzh;->zzG()Ljava/lang/String;

    move-result-object v16

    .line 17
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzh;->zzaI()Z

    move-result v20

    .line 18
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzh;->zzA()Ljava/lang/String;

    move-result-object v22

    .line 19
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzh;->zzx()Ljava/lang/Boolean;

    move-result-object v23

    .line 20
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzh;->zzo()J

    move-result-wide v24

    .line 21
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzh;->zzN()Ljava/util/List;

    move-result-object v26

    .line 22
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzpv;->zzu(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzjx;->zzq()Ljava/lang/String;

    move-result-object v28

    .line 23
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzh;->zzaL()Z

    move-result v31

    .line 24
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzh;->zzw()J

    move-result-wide v32

    .line 25
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzpv;->zzu(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzjx;->zzb()I

    move-result v34

    .line 26
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzpv;->zzm(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzba;->zzj()Ljava/lang/String;

    move-result-object v35

    .line 27
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzh;->zza()I

    move-result v36

    .line 28
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzh;->zzf()J

    move-result-wide v37

    .line 29
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzh;->zzM()Ljava/lang/String;

    move-result-object v39

    .line 30
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzh;->zzK()Ljava/lang/String;

    move-result-object v40

    .line 31
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzh;->zzb()I

    move-result v43

    const/16 v30, 0x0

    const-wide/16 v41, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v27, 0x0

    const-string v29, ""

    invoke-direct/range {v2 .. v43}, Lcom/google/android/gms/measurement/internal/zzr;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJILjava/lang/String;IJLjava/lang/String;Ljava/lang/String;JI)V

    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzU(Lcom/google/android/gms/measurement/internal/zzbh;Lcom/google/android/gms/measurement/internal/zzr;)V

    return-void

    .line 3
    :cond_de
    :goto_de
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "No app data available; dropping event"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final zzU(Lcom/google/android/gms/measurement/internal/zzbh;Lcom/google/android/gms/measurement/internal/zzr;)V
    .registers 11

    .line 1
    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzhf;->zzb(Lcom/google/android/gms/measurement/internal/zzbh;)Lcom/google/android/gms/measurement/internal/zzhf;

    move-result-object p1

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzhf;->zzd:Landroid/os/Bundle;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzB()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzk(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 5
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/measurement/internal/zzqf;->zzO(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzB()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzf(Ljava/lang/String;)I

    move-result v0

    .line 8
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/measurement/internal/zzqf;->zzQ(Lcom/google/android/gms/measurement/internal/zzhf;I)V

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhf;->zza()Lcom/google/android/gms/measurement/internal/zzbh;

    move-result-object p1

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzbh;->zza:Ljava/lang/String;

    const-string v1, "_cmp"

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto :goto_62

    .line 17
    :cond_38
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzbh;->zzb:Lcom/google/android/gms/measurement/internal/zzbf;

    const-string v1, "referrer API v2"

    .line 11
    const-string v2, "_cis"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzbf;->zzg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    const-string v1, "gclid"

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbf;->zzg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 14
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_62

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/zzbh;->zzd:J

    .line 15
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzqb;

    const-string v3, "_lgclid"

    const-string v7, "auto"

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzqb;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, v2, p2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzas(Lcom/google/android/gms/measurement/internal/zzqb;Lcom/google/android/gms/measurement/internal/zzr;)V

    .line 17
    :cond_62
    :goto_62
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzS(Lcom/google/android/gms/measurement/internal/zzbh;Lcom/google/android/gms/measurement/internal/zzr;)V

    return-void
.end method

.method final zzV()V
    .registers 2

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzt:I

    return-void
.end method

.method final zzW(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .registers 12

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzM()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p4, :cond_12

    :try_start_10
    new-array p4, v0, [B

    .line 4
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "onConfigFetched. Response size"

    array-length v3, p4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzH()V
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_174

    .line 6
    :try_start_2b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzl(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v1

    const/16 v2, 0xc8

    const/16 v4, 0x130

    if-eq p2, v2, :cond_40

    const/16 v2, 0xcc

    if-eq p2, v2, :cond_40

    if-ne p2, v4, :cond_44

    move p2, v4

    :cond_40
    if-nez p3, :cond_44

    const/4 v2, 0x1

    goto :goto_45

    :cond_44
    move v2, v0

    :goto_45
    if-nez v1, :cond_5a

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p2

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p2

    const-string p3, "App does not exist in onConfigFetched. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 9
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_157

    :cond_5a
    const/16 v5, 0x194

    if-nez v2, :cond_b6

    if-ne p2, v5, :cond_61

    goto :goto_b6

    .line 33
    :cond_61
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object p4

    invoke-interface {p4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p4

    invoke-virtual {v1, p4, p5}, Lcom/google/android/gms/measurement/internal/zzh;->zzam(J)V

    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object p4

    .line 35
    invoke-virtual {p4, v1, v0, v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzT(Lcom/google/android/gms/measurement/internal/zzh;ZZ)V

    .line 36
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p4

    const-string p5, "Fetching config failed. code, error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, p5, v1, p3}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzr()Lcom/google/android/gms/measurement/internal/zzif;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/zzif;->zzq(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzk:Lcom/google/android/gms/measurement/internal/zzoa;

    .line 38
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzoa;->zze:Lcom/google/android/gms/measurement/internal/zzhp;

    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/measurement/internal/zzhp;->zzb(J)V

    const/16 p1, 0x1f7

    if-eq p2, p1, :cond_a2

    const/16 p1, 0x1ad

    if-ne p2, p1, :cond_b1

    :cond_a2
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzk:Lcom/google/android/gms/measurement/internal/zzoa;

    .line 40
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzoa;->zzc:Lcom/google/android/gms/measurement/internal/zzhp;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzhp;->zzb(J)V

    .line 41
    :cond_b1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaL()V

    goto/16 :goto_157

    .line 45
    :cond_b6
    :goto_b6
    const-string p3, "Last-Modified"

    .line 10
    invoke-static {p5, p3}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaG(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v2, "ETag"

    .line 11
    invoke-static {p5, v2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaG(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    const/4 v2, 0x0

    if-eq p2, v5, :cond_d0

    if-ne p2, v4, :cond_c8

    goto :goto_d0

    .line 14
    :cond_c8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzr()Lcom/google/android/gms/measurement/internal/zzif;

    move-result-object v4

    invoke-virtual {v4, p1, p4, p3, p5}, Lcom/google/android/gms/measurement/internal/zzif;->zzz(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z

    goto :goto_e1

    .line 12
    :cond_d0
    :goto_d0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzr()Lcom/google/android/gms/measurement/internal/zzif;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/zzif;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object p3

    if-nez p3, :cond_e1

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzr()Lcom/google/android/gms/measurement/internal/zzif;

    move-result-object p3

    invoke-virtual {p3, p1, v2, v2, v2}, Lcom/google/android/gms/measurement/internal/zzif;->zzz(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z

    .line 15
    :cond_e1
    :goto_e1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {v1, p3, p4}, Lcom/google/android/gms/measurement/internal/zzh;->zzab(J)V

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object p3

    .line 17
    invoke-virtual {p3, v1, v0, v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzT(Lcom/google/android/gms/measurement/internal/zzh;ZZ)V

    if-ne p2, v5, :cond_103

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p2

    .line 19
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzl()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p2

    const-string p3, "Config not found. Using empty config. appId"

    .line 20
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_114

    .line 21
    :cond_103
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string p3, "Successfully fetched config. Got network response. code, size"

    .line 23
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 24
    invoke-virtual {p1, p3, p2, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    :goto_114
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzp()Lcom/google/android/gms/measurement/internal/zzhk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhk;->zzd()Z

    move-result p1

    if-eqz p1, :cond_128

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaN()Z

    move-result p1

    if-eqz p1, :cond_128

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzat()V

    goto :goto_157

    .line 26
    :cond_128
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/measurement/internal/zzgi;->zzaM:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 27
    invoke-virtual {p1, v2, p2}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result p1

    if-eqz p1, :cond_154

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzp()Lcom/google/android/gms/measurement/internal/zzhk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhk;->zzd()Z

    move-result p1

    if-eqz p1, :cond_154

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object p1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzh;->zzC()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzaw;->zzY(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_154

    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzh;->zzC()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzav(Ljava/lang/String;)V

    goto :goto_157

    .line 30
    :cond_154
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaL()V

    .line 42
    :goto_157
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzS()V
    :try_end_15e
    .catchall {:try_start_2b .. :try_end_15e} :catchall_16b

    .line 43
    :try_start_15e
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzL()V
    :try_end_165
    .catchall {:try_start_15e .. :try_end_165} :catchall_174

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzu:Z

    .line 45
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaH()V

    return-void

    :catchall_16b
    move-exception p1

    .line 43
    :try_start_16c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaw;->zzL()V

    .line 44
    throw p1
    :try_end_174
    .catchall {:try_start_16c .. :try_end_174} :catchall_174

    :catchall_174
    move-exception p1

    .line 41
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzu:Z

    .line 45
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaH()V

    .line 46
    throw p1
.end method

.method final zzX(Z)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaL()V

    return-void
.end method

.method final zzY(ZILjava/lang/Throwable;[BLjava/lang/String;Ljava/util/List;)V
    .registers 25

    move-object/from16 v1, p0

    move/from16 v0, p2

    move-object/from16 v2, p3

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzM()V

    const/4 v9, 0x0

    if-nez p4, :cond_16

    :try_start_13
    new-array v3, v9, [B

    goto :goto_18

    :cond_16
    move-object/from16 v3, p4

    :goto_18
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzpv;->zzz:Ljava/util/List;

    .line 3
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Ljava/util/List;

    const/4 v11, 0x0

    iput-object v11, v1, Lcom/google/android/gms/measurement/internal/zzpv;->zzz:Ljava/util/List;

    if-eqz p1, :cond_89

    const/16 v4, 0xc8

    if-eq v0, v4, :cond_2f

    const/16 v4, 0xcc

    if-ne v0, v4, :cond_31

    move v0, v4

    :cond_2f
    if-eqz v2, :cond_89

    :cond_31
    new-instance v4, Ljava/lang/String;

    .line 79
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x20

    .line 80
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v4, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 81
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v4

    .line 82
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzhe;->zzl()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v4

    const-string v5, "Network upload failed. Will retry later. code, error"

    .line 83
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 84
    invoke-virtual {v4, v5, v6, v2, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzpv;->zzk:Lcom/google/android/gms/measurement/internal/zzoa;

    .line 85
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzoa;->zze:Lcom/google/android/gms/measurement/internal/zzhp;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzhp;->zzb(J)V

    const/16 v2, 0x1f7

    if-eq v0, v2, :cond_6e

    const/16 v2, 0x1ad

    if-ne v0, v2, :cond_7d

    :cond_6e
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzpv;->zzk:Lcom/google/android/gms/measurement/internal/zzoa;

    .line 86
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzoa;->zzc:Lcom/google/android/gms/measurement/internal/zzhp;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzhp;->zzb(J)V

    .line 87
    :cond_7d
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/google/android/gms/measurement/internal/zzaw;->zzM(Ljava/util/List;)V

    .line 88
    invoke-direct {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaL()V

    goto/16 :goto_2b6

    .line 4
    :cond_89
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v4, "Network upload successful with code, uploadAttempted"

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v0, v5}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_9e
    .catchall {:try_start_13 .. :try_end_9e} :catchall_2bc

    if-eqz p1, :cond_af

    :try_start_a0
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzpv;->zzk:Lcom/google/android/gms/measurement/internal/zzoa;

    .line 7
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzoa;->zzd:Lcom/google/android/gms/measurement/internal/zzhp;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzhp;->zzb(J)V

    :cond_af
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzpv;->zzk:Lcom/google/android/gms/measurement/internal/zzoa;

    .line 9
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzoa;->zze:Lcom/google/android/gms/measurement/internal/zzhp;

    const-wide/16 v12, 0x0

    invoke-virtual {v2, v12, v13}, Lcom/google/android/gms/measurement/internal/zzhp;->zzb(J)V

    .line 10
    invoke-direct {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaL()V

    if-eqz p1, :cond_d0

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v4, "Successful upload. Got network response. code, size"

    array-length v3, v3

    .line 13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 14
    invoke-virtual {v2, v4, v0, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_dd

    .line 15
    :cond_d0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v2, "Purged empty bundles"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 16
    :goto_dd
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzH()V
    :try_end_e4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a0 .. :try_end_e4} :catch_28b
    .catchall {:try_start_a0 .. :try_end_e4} :catchall_2bc

    .line 17
    :try_start_e4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzgi;->zzaM:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 18
    invoke-virtual {v0, v11, v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v0

    const-wide/16 v14, -0x1

    if-eqz v0, :cond_1d3

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzgi;->zzaP:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 20
    invoke-virtual {v0, v11, v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v0

    if-eqz v0, :cond_1a2

    new-instance v0, Ljava/util/HashMap;

    .line 21
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 22
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_107
    :goto_107
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15f

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 23
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzhv;

    .line 24
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v17, v2

    check-cast v17, Lcom/google/android/gms/measurement/internal/zzph;

    .line 25
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/measurement/internal/zzph;->zza()Lcom/google/android/gms/measurement/internal/zzmf;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzmf;->zzd:Lcom/google/android/gms/measurement/internal/zzmf;

    if-eq v2, v3, :cond_107

    .line 26
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v2

    .line 27
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/measurement/internal/zzph;->zzc()Ljava/lang/String;

    move-result-object v5

    .line 28
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/measurement/internal/zzph;->zzd()Ljava/util/Map;

    move-result-object v6

    .line 29
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/measurement/internal/zzph;->zza()Lcom/google/android/gms/measurement/internal/zzmf;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v3, p5

    .line 30
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzaw;->zzd(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzhv;Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/zzmf;Ljava/lang/Long;)J

    move-result-wide v5

    .line 31
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/measurement/internal/zzph;->zza()Lcom/google/android/gms/measurement/internal/zzmf;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzmf;->zze:Lcom/google/android/gms/measurement/internal/zzmf;

    if-ne v2, v3, :cond_107

    cmp-long v2, v5, v14

    if-eqz v2, :cond_107

    .line 32
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhv;->zzf()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_107

    .line 33
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhv;->zzf()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_107

    .line 34
    :cond_15f
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_163
    :goto_163
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 35
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzhv;

    .line 36
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzph;

    .line 37
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzph;->zza()Lcom/google/android/gms/measurement/internal/zzmf;

    move-result-object v3

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzmf;->zzd:Lcom/google/android/gms/measurement/internal/zzmf;

    if-ne v3, v5, :cond_163

    .line 38
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhv;->zzf()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ljava/lang/Long;

    move-object v3, v2

    .line 39
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v2

    .line 40
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzph;->zzc()Ljava/lang/String;

    move-result-object v5

    .line 41
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzph;->zzd()Ljava/util/Map;

    move-result-object v6

    .line 42
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzph;->zza()Lcom/google/android/gms/measurement/internal/zzmf;

    move-result-object v7

    move-object/from16 v3, p5

    .line 43
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzaw;->zzd(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzhv;Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/zzmf;Ljava/lang/Long;)J

    goto :goto_163

    .line 44
    :cond_1a2
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 45
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzhv;

    .line 46
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzph;

    move-object v3, v2

    .line 47
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v2

    .line 48
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzph;->zzc()Ljava/lang/String;

    move-result-object v5

    .line 49
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzph;->zzd()Ljava/util/Map;

    move-result-object v6

    .line 50
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzph;->zza()Lcom/google/android/gms/measurement/internal/zzmf;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v3, p5

    .line 51
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzaw;->zzd(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzhv;Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/zzmf;Ljava/lang/Long;)J

    goto :goto_1a6

    :cond_1d3
    move-object/from16 v3, p5

    .line 52
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_232

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/Long;
    :try_end_1e6
    .catchall {:try_start_e4 .. :try_end_1e6} :catchall_282

    .line 53
    :try_start_1e6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 54
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 55
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    .line 56
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v8, 0x1

    new-array v10, v8, [Ljava/lang/String;

    .line 57
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v9
    :try_end_201
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1e6 .. :try_end_201} :catch_225
    .catchall {:try_start_1e6 .. :try_end_201} :catchall_282

    :try_start_201
    const-string v6, "queue"

    const-string v7, "rowid=?"

    .line 58
    invoke-virtual {v0, v6, v7, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ne v0, v8, :cond_20c

    goto :goto_1d9

    .line 59
    :cond_20c
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v6, "Deleted fewer rows from queue than expected"

    invoke-direct {v0, v6}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_214
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_201 .. :try_end_214} :catch_214
    .catchall {:try_start_201 .. :try_end_214} :catchall_282

    :catch_214
    move-exception v0

    .line 64
    :try_start_215
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 60
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v5

    .line 61
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v5

    const-string v6, "Failed to delete a bundle in a queue table"

    invoke-virtual {v5, v6, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    throw v0
    :try_end_225
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_215 .. :try_end_225} :catch_225
    .catchall {:try_start_215 .. :try_end_225} :catchall_282

    :catch_225
    move-exception v0

    .line 75
    :try_start_226
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzpv;->zzA:Ljava/util/List;

    if-eqz v5, :cond_231

    .line 63
    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_231

    goto :goto_1d9

    .line 64
    :cond_231
    throw v0

    .line 65
    :cond_232
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzS()V
    :try_end_239
    .catchall {:try_start_226 .. :try_end_239} :catchall_282

    .line 66
    :try_start_239
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzL()V

    iput-object v11, v1, Lcom/google/android/gms/measurement/internal/zzpv;->zzA:Ljava/util/List;

    .line 67
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzgi;->zzaM:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 68
    invoke-virtual {v0, v11, v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v0

    if-eqz v0, :cond_266

    .line 69
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzp()Lcom/google/android/gms/measurement/internal/zzhk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhk;->zzd()Z

    move-result v0

    if-eqz v0, :cond_266

    .line 70
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzaw;->zzY(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_266

    .line 74
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzpv;->zzav(Ljava/lang/String;)V

    goto :goto_27f

    .line 71
    :cond_266
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzp()Lcom/google/android/gms/measurement/internal/zzhk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhk;->zzd()Z

    move-result v0

    if-eqz v0, :cond_27a

    invoke-direct {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaN()Z

    move-result v0

    if-eqz v0, :cond_27a

    .line 73
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzat()V

    goto :goto_27f

    :cond_27a
    iput-wide v14, v1, Lcom/google/android/gms/measurement/internal/zzpv;->zzB:J

    .line 72
    invoke-direct {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaL()V

    .line 74
    :goto_27f
    iput-wide v12, v1, Lcom/google/android/gms/measurement/internal/zzpv;->zza:J

    goto :goto_2b6

    :catchall_282
    move-exception v0

    .line 66
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaw;->zzL()V

    .line 75
    throw v0
    :try_end_28b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_239 .. :try_end_28b} :catch_28b
    .catchall {:try_start_239 .. :try_end_28b} :catchall_2bc

    :catch_28b
    move-exception v0

    .line 76
    :try_start_28c
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v3, "Database error while trying to delete uploaded bundles"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/gms/measurement/internal/zzpv;->zza:J

    .line 78
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v2, "Disable upload, time"

    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/zzpv;->zza:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2b6
    .catchall {:try_start_28c .. :try_end_2b6} :catchall_2bc

    .line 88
    :goto_2b6
    iput-boolean v9, v1, Lcom/google/android/gms/measurement/internal/zzpv;->zzv:Z

    .line 89
    invoke-direct {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaH()V

    return-void

    :catchall_2bc
    move-exception v0

    .line 15
    iput-boolean v9, v1, Lcom/google/android/gms/measurement/internal/zzpv;->zzv:Z

    .line 89
    invoke-direct {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaH()V

    .line 90
    throw v0
.end method

.method final zzZ(Ljava/lang/String;ILjava/lang/Throwable;[BLcom/google/android/gms/measurement/internal/zzpz;)V
    .registers 9

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzM()V

    const/4 v0, 0x0

    if-nez p4, :cond_13

    :try_start_d
    new-array p4, v0, [B

    goto :goto_13

    :catchall_10
    move-exception p1

    goto/16 :goto_a8

    :cond_13
    :goto_13
    const/16 v1, 0xc8

    if-eq p2, v1, :cond_1c

    const/16 v1, 0xcc

    if-ne p2, v1, :cond_67

    move p2, v1

    :cond_1c
    if-nez p3, :cond_67

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object p3

    invoke-virtual {p5}, Lcom/google/android/gms/measurement/internal/zzpz;->zzc()J

    move-result-wide p4

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/google/android/gms/measurement/internal/zzaw;->zzK(Ljava/lang/Long;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p3

    .line 5
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p3

    const-string p4, "Successfully uploaded batch from upload queue. appId, status"

    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p4, p1, p2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object p2

    sget-object p3, Lcom/google/android/gms/measurement/internal/zzgi;->zzaM:Lcom/google/android/gms/measurement/internal/zzgg;

    const/4 p4, 0x0

    .line 8
    invoke-virtual {p2, p4, p3}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result p2

    if-eqz p2, :cond_63

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzp()Lcom/google/android/gms/measurement/internal/zzhk;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzhk;->zzd()Z

    move-result p2

    if-eqz p2, :cond_63

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzY(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_63

    .line 12
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzav(Ljava/lang/String;)V

    goto :goto_a2

    .line 11
    :cond_63
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaL()V

    goto :goto_a2

    :cond_67
    new-instance v1, Ljava/lang/String;

    .line 13
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p4, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p4

    const/16 v2, 0x20

    .line 14
    invoke-static {v2, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    invoke-virtual {v1, v0, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzl()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Network upload failed. Will retry later. appId, status, error"

    .line 17
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    if-nez p3, :cond_8d

    move-object p3, p4

    .line 18
    :cond_8d
    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzhc;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object p1

    invoke-virtual {p5}, Lcom/google/android/gms/measurement/internal/zzpz;->zzc()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzaw;->zzN(Ljava/lang/Long;)V

    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaL()V
    :try_end_a2
    .catchall {:try_start_d .. :try_end_a2} :catchall_10

    .line 12
    :goto_a2
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzv:Z

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaH()V

    return-void

    .line 20
    :goto_a8
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzv:Z

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaH()V

    .line 22
    throw p1
.end method

.method final zza()J
    .registers 9

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzk:Lcom/google/android/gms/measurement/internal/zzoa;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzoa;->zzf:Lcom/google/android/gms/measurement/internal/zzhp;

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhp;->zza()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_34

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzqf;->zzJ()Ljava/security/SecureRandom;

    move-result-object v2

    const v4, 0x5265c00

    invoke-virtual {v2, v4}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v2

    int-to-long v4, v2

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    .line 7
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzhp;->zzb(J)V

    :cond_34
    add-long/2addr v0, v4

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final zzaT()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzn:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final zzaU()Lcom/google/android/gms/common/util/Clock;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzn:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public final zzaV()Lcom/google/android/gms/measurement/internal/zzaf;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzn:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaV()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    return-object v0
.end method

.method public final zzaW()Lcom/google/android/gms/measurement/internal/zzhe;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzn:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    return-object v0
.end method

.method public final zzaX()Lcom/google/android/gms/measurement/internal/zzil;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzn:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    return-object v0
.end method

.method final zzaa(Lcom/google/android/gms/measurement/internal/zzh;Lcom/google/android/gms/internal/measurement/zzhw;)V
    .registers 14

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzM()V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhc;->zzc()Lcom/google/android/gms/internal/measurement/zzhb;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzaN()[B

    move-result-object v1

    if-eqz v1, :cond_31

    .line 5
    :try_start_14
    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzqa;->zzp(Lcom/google/android/gms/internal/measurement/zzng;[B)Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzhb;
    :try_end_1a
    .catch Lcom/google/android/gms/internal/measurement/zzmm; {:try_start_14 .. :try_end_1a} :catch_1c

    move-object v0, v1

    goto :goto_31

    .line 6
    :catch_1c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzC()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Failed to parse locally stored ad campaign info. appId"

    .line 9
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    :cond_31
    :goto_31
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzhw;->zzaM()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_39
    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_107

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzhm;

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhm;->zzh()Ljava/lang/String;

    move-result-object v3

    const-string v4, "_cmp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    const-string v3, "gclid"

    .line 12
    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzI(Lcom/google/android/gms/internal/measurement/zzhm;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "gbraid"

    .line 13
    invoke-static {v2, v5, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzI(Lcom/google/android/gms/internal/measurement/zzhm;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "gad_source"

    .line 14
    invoke-static {v2, v6, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzI(Lcom/google/android/gms/internal/measurement/zzhm;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 15
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_77

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_39

    :cond_77
    const-string v6, "click_timestamp"

    const-wide/16 v7, 0x0

    .line 16
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v2, v6, v9}, Lcom/google/android/gms/measurement/internal/zzqa;->zzI(Lcom/google/android/gms/internal/measurement/zzhm;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v6, v9, v7

    if-gtz v6, :cond_91

    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhm;->zzd()J

    move-result-wide v9

    :cond_91
    const-string v6, "_cis"

    .line 18
    invoke-static {v2, v6}, Lcom/google/android/gms/measurement/internal/zzqa;->zzH(Lcom/google/android/gms/internal/measurement/zzhm;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v6, "referrer API v2"

    .line 19
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d3

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzb()J

    move-result-wide v6

    cmp-long v2, v9, v6

    if-lez v2, :cond_39

    .line 21
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzh()Lcom/google/android/gms/internal/measurement/zzhb;

    goto :goto_b4

    .line 23
    :cond_b1
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzhb;->zzp(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhb;

    .line 24
    :goto_b4
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_be

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzg()Lcom/google/android/gms/internal/measurement/zzhb;

    goto :goto_c1

    .line 26
    :cond_be
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/measurement/zzhb;->zzo(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhb;

    .line 27
    :goto_c1
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_cb

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzf()Lcom/google/android/gms/internal/measurement/zzhb;

    goto :goto_ce

    .line 29
    :cond_cb
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/measurement/zzhb;->zzn(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhb;

    .line 30
    :goto_ce
    invoke-virtual {v0, v9, v10}, Lcom/google/android/gms/internal/measurement/zzhb;->zzm(J)Lcom/google/android/gms/internal/measurement/zzhb;

    goto/16 :goto_39

    .line 31
    :cond_d3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zza()J

    move-result-wide v6

    cmp-long v2, v9, v6

    if-lez v2, :cond_39

    .line 32
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e5

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zze()Lcom/google/android/gms/internal/measurement/zzhb;

    goto :goto_e8

    .line 34
    :cond_e5
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzhb;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhb;

    .line 35
    :goto_e8
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f2

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzd()Lcom/google/android/gms/internal/measurement/zzhb;

    goto :goto_f5

    .line 37
    :cond_f2
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/measurement/zzhb;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhb;

    .line 38
    :goto_f5
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_ff

    .line 39
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzc()Lcom/google/android/gms/internal/measurement/zzhb;

    goto :goto_102

    .line 40
    :cond_ff
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/measurement/zzhb;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhb;

    .line 41
    :goto_102
    invoke-virtual {v0, v9, v10}, Lcom/google/android/gms/internal/measurement/zzhb;->zzl(J)Lcom/google/android/gms/internal/measurement/zzhb;

    goto/16 :goto_39

    .line 42
    :cond_107
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzhc;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhc;->zze()Lcom/google/android/gms/internal/measurement/zzhc;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/zzmd;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_120

    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzhc;

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/measurement/zzhw;->zzF(Lcom/google/android/gms/internal/measurement/zzhc;)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 44
    :cond_120
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzhc;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzko;->zzcd()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzh;->zzR([B)V

    .line 45
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzaK()Z

    move-result p2

    if-eqz p2, :cond_13b

    .line 46
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object p2

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p2, p1, v0, v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzT(Lcom/google/android/gms/measurement/internal/zzh;ZZ)V

    :cond_13b
    return-void
.end method

.method final zzab(Lcom/google/android/gms/measurement/internal/zzr;)V
    .registers 10

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzM()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzgi;->zzay:Lcom/google/android/gms/measurement/internal/zzgg;

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_45

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzgi;->zzah:Lcom/google/android/gms/measurement/internal/zzgg;

    invoke-virtual {v1, v3, v6}, Lcom/google/android/gms/measurement/internal/zzam;->zzh(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)I

    move-result v1

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzam;->zzF()J

    move-result-wide v6

    sub-long/2addr v4, v6

    :goto_3a
    if-ge v2, v1, :cond_5c

    .line 10
    invoke-direct {p0, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaM(Ljava/lang/String;J)Z

    move-result v6

    if-eqz v6, :cond_5c

    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 11
    :cond_45
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzam;->zzH()J

    move-result-wide v4

    :goto_4c
    int-to-long v6, v2

    cmp-long v1, v6, v4

    if-gez v1, :cond_5c

    const-wide/16 v6, 0x0

    .line 12
    invoke-direct {p0, v0, v6, v7}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaM(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_5c

    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    .line 13
    :cond_5c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzgi;->zzaz:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 14
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 16
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaJ()V

    .line 17
    :cond_72
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzgi;->zzaQ:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 18
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v1

    if-eqz v1, :cond_a4

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzl:Lcom/google/android/gms/measurement/internal/zzpi;

    .line 19
    iget p1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzG:I

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzih;->zzb(I)Lcom/google/android/gms/internal/measurement/zzih;

    move-result-object p1

    .line 20
    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/measurement/internal/zzpi;->zzd(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzih;)Z

    move-result p1

    if-eqz p1, :cond_a4

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string v1, "[sgtm] Going background, trigger client side upload. appId"

    .line 23
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzau(Ljava/lang/String;J)V

    :cond_a4
    return-void
.end method

.method final zzac(Lcom/google/android/gms/measurement/internal/zzr;)V
    .registers 28

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    const-string v3, "_sysu"

    const-string v4, "_sys"

    const-string v5, "_pfo"

    const-string v0, "com.android.vending"

    const-string v6, "_npa"

    const-string v7, "_uwa"

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzM()V

    .line 3
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaQ(Lcom/google/android/gms/measurement/internal/zzr;)Z

    move-result v9

    if-nez v9, :cond_29

    return-void

    .line 6
    :cond_29
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/google/android/gms/measurement/internal/zzaw;->zzl(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v9

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    if-eqz v9, :cond_59

    .line 7
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzH()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_59

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzb:Ljava/lang/String;

    .line 8
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_59

    .line 9
    invoke-virtual {v9, v11, v12}, Lcom/google/android/gms/measurement/internal/zzh;->zzab(J)V

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v13

    .line 11
    invoke-virtual {v13, v9, v10, v10}, Lcom/google/android/gms/measurement/internal/zzaw;->zzT(Lcom/google/android/gms/measurement/internal/zzh;ZZ)V

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzr()Lcom/google/android/gms/measurement/internal/zzif;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/google/android/gms/measurement/internal/zzif;->zzr(Ljava/lang/String;)V

    .line 13
    :cond_59
    iget-boolean v9, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzh:Z

    if-nez v9, :cond_61

    .line 14
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzg(Lcom/google/android/gms/measurement/internal/zzr;)Lcom/google/android/gms/measurement/internal/zzh;

    return-void

    .line 15
    :cond_61
    iget-wide v13, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzl:J

    cmp-long v9, v13, v11

    if-nez v9, :cond_6f

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v9

    invoke-interface {v9}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v13

    :cond_6f
    move-wide/from16 v17, v13

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzpv;->zzn:Lcom/google/android/gms/measurement/internal/zzio;

    .line 17
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzio;->zzg()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v9

    .line 18
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 19
    iget v9, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzm:I

    const/4 v13, 0x1

    if-eqz v9, :cond_97

    if-eq v9, v13, :cond_97

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v14

    .line 21
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v14

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    .line 22
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v11, "Incorrect app type, assuming installed app. appId, appType"

    .line 23
    invoke-virtual {v14, v11, v15, v9}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move v9, v10

    .line 24
    :cond_97
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzaw;->zzH()V

    .line 25
    :try_start_9e
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v11

    .line 26
    invoke-virtual {v11, v8, v6}, Lcom/google/android/gms/measurement/internal/zzaw;->zzy(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzqd;

    move-result-object v11

    .line 27
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaS(Lcom/google/android/gms/measurement/internal/zzr;)Ljava/lang/Boolean;

    move-result-object v12

    if-eqz v11, :cond_bc

    const-string v14, "auto"

    iget-object v15, v11, Lcom/google/android/gms/measurement/internal/zzqd;->zzb:Ljava/lang/String;

    .line 28
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b7

    goto :goto_bc

    :cond_b7
    move-wide/from16 v12, v17

    const-wide/16 v24, 0x1

    goto :goto_f9

    :cond_bc
    :goto_bc
    if-eqz v12, :cond_f0

    .line 29
    new-instance v15, Lcom/google/android/gms/measurement/internal/zzqb;

    const-string v16, "_npa"

    .line 30
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eq v13, v6, :cond_cb

    const-wide/16 v23, 0x0

    goto :goto_cd

    :cond_cb
    const-wide/16 v23, 0x1

    :goto_cd
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-wide/16 v23, 0x1

    const-string v20, "auto"

    move-object/from16 v19, v6

    move-wide/from16 v13, v23

    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/measurement/internal/zzqb;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    move-wide/from16 v24, v13

    move-wide/from16 v12, v17

    if-eqz v11, :cond_ec

    iget-object v6, v11, Lcom/google/android/gms/measurement/internal/zzqd;->zze:Ljava/lang/Object;

    iget-object v11, v15, Lcom/google/android/gms/measurement/internal/zzqb;->zzd:Ljava/lang/Long;

    .line 31
    invoke-virtual {v6, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f9

    .line 32
    :cond_ec
    invoke-virtual {v1, v15, v2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzas(Lcom/google/android/gms/measurement/internal/zzqb;Lcom/google/android/gms/measurement/internal/zzr;)V

    goto :goto_f9

    :cond_f0
    move-wide/from16 v12, v17

    const-wide/16 v24, 0x1

    if-eqz v11, :cond_f9

    .line 33
    invoke-virtual {v1, v6, v2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzag(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzr;)V

    .line 34
    :cond_f9
    :goto_f9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v6

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzgi;->zzbl:Lcom/google/android/gms/measurement/internal/zzgg;

    const/4 v14, 0x0

    .line 35
    invoke-virtual {v6, v14, v11}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v6

    if-eqz v6, :cond_10c

    .line 36
    iget-wide v14, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzF:J

    invoke-virtual {v1, v2, v14, v15}, Lcom/google/android/gms/measurement/internal/zzpv;->zzP(Lcom/google/android/gms/measurement/internal/zzr;J)V

    goto :goto_10f

    .line 37
    :cond_10c
    invoke-virtual {v1, v2, v12, v13}, Lcom/google/android/gms/measurement/internal/zzpv;->zzP(Lcom/google/android/gms/measurement/internal/zzr;J)V

    .line 38
    :goto_10f
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzg(Lcom/google/android/gms/measurement/internal/zzr;)Lcom/google/android/gms/measurement/internal/zzh;

    if-nez v9, :cond_120

    .line 41
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v9

    const-string v11, "_f"

    .line 42
    invoke-virtual {v9, v8, v11}, Lcom/google/android/gms/measurement/internal/zzaw;->zzs(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v9

    move v11, v10

    goto :goto_12b

    .line 39
    :cond_120
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v9

    const-string v11, "_v"

    .line 40
    invoke-virtual {v9, v8, v11}, Lcom/google/android/gms/measurement/internal/zzaw;->zzs(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v9

    const/4 v11, 0x1

    :goto_12b
    if-nez v9, :cond_3dd

    const-wide/32 v14, 0x36ee80

    .line 42
    div-long v17, v12, v14
    :try_end_132
    .catchall {:try_start_9e .. :try_end_132} :catchall_40c

    add-long v17, v17, v24

    mul-long v17, v17, v14

    const-string v9, "_dac"

    const-string v14, "_et"

    const-string v15, "_r"

    const-string v6, "_c"

    if-nez v11, :cond_38f

    move-object v11, v15

    .line 56
    :try_start_141
    new-instance v15, Lcom/google/android/gms/measurement/internal/zzqb;

    const-string v16, "_fot"

    .line 57
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const-string v20, "auto"

    move-wide/from16 v17, v12

    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/measurement/internal/zzqb;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v1, v15, v2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzas(Lcom/google/android/gms/measurement/internal/zzqb;Lcom/google/android/gms/measurement/internal/zzr;)V

    .line 59
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzpv;->zzm:Lcom/google/android/gms/measurement/internal/zzhw;

    .line 60
    invoke-static {v12}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Lcom/google/android/gms/measurement/internal/zzhw;

    if-eqz v8, :cond_248

    .line 61
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_16d

    goto/16 :goto_248

    .line 130
    :cond_16d
    iget-object v15, v13, Lcom/google/android/gms/measurement/internal/zzhw;->zza:Lcom/google/android/gms/measurement/internal/zzio;

    .line 65
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 66
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzhw;->zza()Z

    move-result v12

    if-nez v12, :cond_18b

    .line 67
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzi()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v8, "Install Referrer Reporter is not available"

    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    goto/16 :goto_257

    :cond_18b
    new-instance v12, Lcom/google/android/gms/measurement/internal/zzhv;

    invoke-direct {v12, v13, v8}, Lcom/google/android/gms/measurement/internal/zzhv;-><init>(Lcom/google/android/gms/measurement/internal/zzhw;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    new-instance v8, Landroid/content/Intent;

    const-string v10, "com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE"

    .line 69
    invoke-direct {v8, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v10, Landroid/content/ComponentName;

    move-object/from16 v16, v15

    const-string v15, "com.google.android.finsky.externalreferrer.GetInstallReferrerService"

    .line 70
    invoke-direct {v10, v0, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 71
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    if-nez v10, :cond_1c3

    .line 72
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzm()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v8, "Failed to obtain Package Manager to verify binding conditions for Install Referrer"

    .line 74
    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    goto/16 :goto_257

    :cond_1c3
    const/4 v15, 0x0

    .line 75
    invoke-virtual {v10, v8, v15}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_23a

    .line 76
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_23a

    .line 80
    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 81
    iget-object v15, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v15, :cond_257

    .line 82
    iget-object v15, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v15, v15, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 83
    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    if-eqz v10, :cond_22c

    .line 84
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22c

    .line 85
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzhw;->zza()Z

    move-result v0

    if-eqz v0, :cond_22c

    new-instance v0, Landroid/content/Intent;

    .line 89
    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_1f5
    .catchall {:try_start_141 .. :try_end_1f5} :catchall_40c

    .line 90
    :try_start_1f5
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v8

    .line 91
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v10

    const/4 v15, 0x1

    .line 92
    invoke-virtual {v8, v10, v0, v12, v15}, Lcom/google/android/gms/common/stats/ConnectionTracker;->bindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 93
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v8

    .line 94
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v8

    const-string v10, "Install Referrer Service is"

    if-eqz v0, :cond_211

    const-string v0, "available"

    goto :goto_213

    .line 95
    :cond_211
    const-string v0, "not available"

    :goto_213
    invoke-virtual {v8, v10, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_216
    .catch Ljava/lang/RuntimeException; {:try_start_1f5 .. :try_end_216} :catch_217
    .catchall {:try_start_1f5 .. :try_end_216} :catchall_40c

    goto :goto_257

    :catch_217
    move-exception v0

    .line 137
    :try_start_218
    iget-object v8, v13, Lcom/google/android/gms/measurement/internal/zzhw;->zza:Lcom/google/android/gms/measurement/internal/zzio;

    .line 96
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v8

    .line 97
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v8

    const-string v10, "Exception occurred while binding to Install Referrer Service"

    .line 98
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-virtual {v8, v10, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_257

    .line 86
    :cond_22c
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v8, "Play Store version 8.3.73 or higher required for Install Referrer"

    .line 88
    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    goto :goto_257

    .line 77
    :cond_23a
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzi()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v8, "Play Service for fetching Install Referrer is unavailable on device"

    .line 79
    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    goto :goto_257

    .line 61
    :cond_248
    :goto_248
    iget-object v0, v13, Lcom/google/android/gms/measurement/internal/zzhw;->zza:Lcom/google/android/gms/measurement/internal/zzio;

    .line 62
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzm()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v8, "Install Referrer Reporter was called with invalid app package name"

    .line 64
    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 100
    :cond_257
    :goto_257
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 101
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzM()V

    new-instance v8, Landroid/os/Bundle;

    .line 102
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    move-wide/from16 v12, v24

    .line 103
    invoke-virtual {v8, v6, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 104
    invoke-virtual {v8, v11, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-wide/16 v10, 0x0

    .line 105
    invoke-virtual {v8, v7, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 106
    invoke-virtual {v8, v5, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 107
    invoke-virtual {v8, v4, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 108
    invoke-virtual {v8, v3, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 109
    invoke-virtual {v8, v14, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 110
    iget-boolean v0, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzo:Z

    if-eqz v0, :cond_286

    .line 111
    invoke-virtual {v8, v9, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 112
    :cond_286
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 113
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    .line 114
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 116
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    const-string v9, "first_open_count"

    .line 117
    invoke-virtual {v0, v6, v9}, Lcom/google/android/gms/measurement/internal/zzaw;->zze(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v10

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzpv;->zzn:Lcom/google/android/gms/measurement/internal/zzio;

    .line 118
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v9

    .line 119
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    if-nez v9, :cond_2c3

    .line 142
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v3, "PackageManager is null, first open report might be inaccurate. appId"

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 144
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2bf
    .catchall {:try_start_218 .. :try_end_2bf} :catchall_40c

    :cond_2bf
    :goto_2bf
    const-wide/16 v21, 0x0

    goto/16 :goto_372

    .line 120
    :cond_2c3
    :try_start_2c3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v0

    .line 121
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    const/4 v15, 0x0

    invoke-virtual {v0, v6, v15}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_2d0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2c3 .. :try_end_2d0} :catch_2d1
    .catchall {:try_start_2c3 .. :try_end_2d0} :catchall_40c

    goto :goto_2e4

    :catch_2d1
    move-exception v0

    .line 122
    :try_start_2d2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v9

    .line 123
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v9

    const-string v12, "Package info is null, first open report might be inaccurate. appId"

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 124
    invoke-virtual {v9, v12, v13, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_2e4
    if-eqz v0, :cond_333

    .line 125
    iget-wide v12, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v21, 0x0

    cmp-long v9, v12, v21

    if-eqz v9, :cond_333

    .line 126
    iget-wide v12, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iget-wide v14, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v0, v12, v14

    if-eqz v0, :cond_318

    .line 127
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzgi;->zzaH:Lcom/google/android/gms/measurement/internal/zzgg;

    const/4 v13, 0x0

    .line 128
    invoke-virtual {v0, v13, v9}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v0

    if-eqz v0, :cond_312

    const-wide/16 v21, 0x0

    cmp-long v0, v10, v21

    if-nez v0, :cond_310

    const-wide/16 v14, 0x1

    .line 129
    invoke-virtual {v8, v7, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-wide/16 v10, 0x0

    :cond_310
    :goto_310
    const/4 v12, 0x0

    goto :goto_31a

    :cond_312
    const-wide/16 v14, 0x1

    .line 130
    invoke-virtual {v8, v7, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_310

    :cond_318
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 129
    :goto_31a
    new-instance v15, Lcom/google/android/gms/measurement/internal/zzqb;

    const-string v16, "_fi"

    const/4 v7, 0x1

    if-eq v7, v12, :cond_324

    const-wide/16 v19, 0x0

    goto :goto_326

    :cond_324
    const-wide/16 v19, 0x1

    .line 131
    :goto_326
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const-string v20, "auto"

    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/measurement/internal/zzqb;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v1, v15, v2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzas(Lcom/google/android/gms/measurement/internal/zzqb;Lcom/google/android/gms/measurement/internal/zzr;)V
    :try_end_332
    .catchall {:try_start_2d2 .. :try_end_332} :catchall_40c

    goto :goto_334

    :cond_333
    const/4 v13, 0x0

    :goto_334
    :try_start_334
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzpv;->zzn:Lcom/google/android/gms/measurement/internal/zzio;

    .line 133
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v0

    .line 134
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    const/4 v15, 0x0

    invoke-virtual {v0, v6, v15}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v14
    :try_end_343
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_334 .. :try_end_343} :catch_344
    .catchall {:try_start_334 .. :try_end_343} :catchall_40c

    goto :goto_357

    :catch_344
    move-exception v0

    .line 135
    :try_start_345
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v7

    .line 136
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v7

    const-string v9, "Application info is null, first open report might be inaccurate. appId"

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 137
    invoke-virtual {v7, v9, v6, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v14, v13

    :goto_357
    if-eqz v14, :cond_2bf

    .line 138
    iget v0, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v12, 0x1

    and-int/2addr v0, v12

    if-eqz v0, :cond_365

    const-wide/16 v12, 0x1

    .line 139
    invoke-virtual {v8, v4, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_367

    :cond_365
    const-wide/16 v12, 0x1

    .line 140
    :goto_367
    iget v0, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2bf

    .line 141
    invoke-virtual {v8, v3, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_2bf

    :goto_372
    cmp-long v0, v10, v21

    if-ltz v0, :cond_379

    .line 145
    invoke-virtual {v8, v5, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 146
    :cond_379
    new-instance v15, Lcom/google/android/gms/measurement/internal/zzbh;

    const-string v16, "_f"

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzbf;

    invoke-direct {v0, v8}, Lcom/google/android/gms/measurement/internal/zzbf;-><init>(Landroid/os/Bundle;)V

    move-wide/from16 v19, v17

    const-string v18, "auto"

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/measurement/internal/zzbh;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbf;Ljava/lang/String;J)V

    .line 147
    invoke-virtual {v1, v15, v2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzU(Lcom/google/android/gms/measurement/internal/zzbh;Lcom/google/android/gms/measurement/internal/zzr;)V

    goto :goto_3fd

    :cond_38f
    move-wide/from16 v19, v12

    move-object v11, v15

    .line 43
    new-instance v15, Lcom/google/android/gms/measurement/internal/zzqb;

    const-string v16, "_fvt"

    .line 44
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-wide/from16 v17, v19

    const-string v20, "auto"

    move-object/from16 v19, v0

    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/measurement/internal/zzqb;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v1, v15, v2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzas(Lcom/google/android/gms/measurement/internal/zzqb;Lcom/google/android/gms/measurement/internal/zzr;)V

    .line 46
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 47
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzM()V

    new-instance v0, Landroid/os/Bundle;

    .line 48
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v12, 0x1

    .line 49
    invoke-virtual {v0, v6, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 50
    invoke-virtual {v0, v11, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 51
    invoke-virtual {v0, v14, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 52
    iget-boolean v3, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzo:Z

    if-eqz v3, :cond_3c7

    .line 53
    invoke-virtual {v0, v9, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 54
    :cond_3c7
    new-instance v15, Lcom/google/android/gms/measurement/internal/zzbh;

    const-string v16, "_v"

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzbf;

    invoke-direct {v3, v0}, Lcom/google/android/gms/measurement/internal/zzbf;-><init>(Landroid/os/Bundle;)V

    move-wide/from16 v19, v17

    const-string v18, "auto"

    move-object/from16 v17, v3

    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/measurement/internal/zzbh;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbf;Ljava/lang/String;J)V

    .line 55
    invoke-virtual {v1, v15, v2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzU(Lcom/google/android/gms/measurement/internal/zzbh;Lcom/google/android/gms/measurement/internal/zzr;)V

    goto :goto_3fd

    :cond_3dd
    move-wide/from16 v17, v12

    .line 148
    iget-boolean v0, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzi:Z

    if-eqz v0, :cond_3fd

    new-instance v0, Landroid/os/Bundle;

    .line 149
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 150
    new-instance v15, Lcom/google/android/gms/measurement/internal/zzbh;

    const-string v16, "_cd"

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzbf;

    invoke-direct {v3, v0}, Lcom/google/android/gms/measurement/internal/zzbf;-><init>(Landroid/os/Bundle;)V

    move-wide/from16 v19, v17

    const-string v18, "auto"

    move-object/from16 v17, v3

    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/measurement/internal/zzbh;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbf;Ljava/lang/String;J)V

    .line 151
    invoke-virtual {v1, v15, v2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzU(Lcom/google/android/gms/measurement/internal/zzbh;Lcom/google/android/gms/measurement/internal/zzr;)V

    .line 152
    :cond_3fd
    :goto_3fd
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzS()V
    :try_end_404
    .catchall {:try_start_345 .. :try_end_404} :catchall_40c

    .line 153
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzL()V

    return-void

    :catchall_40c
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaw;->zzL()V

    .line 154
    throw v0
.end method

.method final zzad()V
    .registers 2

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzs:I

    return-void
.end method

.method final zzae(Lcom/google/android/gms/measurement/internal/zzai;)V
    .registers 3

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzai;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaD(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaf(Lcom/google/android/gms/measurement/internal/zzai;Lcom/google/android/gms/measurement/internal/zzr;)V

    :cond_11
    return-void
.end method

.method final zzaf(Lcom/google/android/gms/measurement/internal/zzai;Lcom/google/android/gms/measurement/internal/zzr;)V
    .registers 13

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzai;->zza:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzai;->zzc:Lcom/google/android/gms/measurement/internal/zzqb;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzai;->zzc:Lcom/google/android/gms/measurement/internal/zzqb;

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzqb;->zzb:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzM()V

    .line 7
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaQ(Lcom/google/android/gms/measurement/internal/zzr;)Z

    move-result v0

    if-nez v0, :cond_25

    return-void

    .line 8
    :cond_25
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzr;->zzh:Z

    if-nez v0, :cond_2d

    .line 9
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzg(Lcom/google/android/gms/measurement/internal/zzr;)Lcom/google/android/gms/measurement/internal/zzh;

    return-void

    .line 10
    :cond_2d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzH()V

    .line 11
    :try_start_34
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzg(Lcom/google/android/gms/measurement/internal/zzr;)Lcom/google/android/gms/measurement/internal/zzh;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzai;->zza:Ljava/lang/String;

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzai;->zzc:Lcom/google/android/gms/measurement/internal/zzqb;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzqb;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzm(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v0

    if-eqz v0, :cond_b4

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v3, "Removing conditional user property"

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzai;->zza:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzn:Lcom/google/android/gms/measurement/internal/zzio;

    .line 16
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v5

    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzai;->zzc:Lcom/google/android/gms/measurement/internal/zzqb;

    .line 17
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzqb;->zzb:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzgx;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 18
    invoke-virtual {v1, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v1

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzai;->zzc:Lcom/google/android/gms/measurement/internal/zzqb;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzqb;->zzb:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzaw;->zza(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzai;->zze:Z

    if-eqz v1, :cond_85

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v1

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzai;->zzc:Lcom/google/android/gms/measurement/internal/zzqb;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzqb;->zzb:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzaw;->zzP(Ljava/lang/String;Ljava/lang/String;)V

    :cond_85
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzai;->zzk:Lcom/google/android/gms/measurement/internal/zzbh;

    if-eqz p1, :cond_d5

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzbh;->zzb:Lcom/google/android/gms/measurement/internal/zzbf;

    if-eqz v1, :cond_92

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbf;->zzc()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_93

    :cond_92
    const/4 v1, 0x0

    :goto_93
    move-object v4, v1

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzB()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v1

    .line 23
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzbh;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzbh;->zza:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzai;->zzb:Ljava/lang/String;

    iget-wide v6, p1, Lcom/google/android/gms/measurement/internal/zzbh;->zzd:J

    const/4 v8, 0x1

    const/4 v9, 0x1

    .line 24
    invoke-virtual/range {v1 .. v9}, Lcom/google/android/gms/measurement/internal/zzqf;->zzC(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzbh;

    move-result-object p1

    .line 25
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzbh;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzax(Lcom/google/android/gms/measurement/internal/zzbh;Lcom/google/android/gms/measurement/internal/zzr;)V

    goto :goto_d5

    .line 26
    :cond_b4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p2

    .line 27
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p2

    const-string v0, "Conditional user property doesn\'t exist"

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzai;->zza:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzn:Lcom/google/android/gms/measurement/internal/zzio;

    .line 28
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v2

    .line 33
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzai;->zzc:Lcom/google/android/gms/measurement/internal/zzqb;

    .line 29
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzqb;->zzb:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/zzgx;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-virtual {p2, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    :cond_d5
    :goto_d5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzS()V
    :try_end_dc
    .catchall {:try_start_34 .. :try_end_dc} :catchall_e4

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzL()V

    return-void

    :catchall_e4
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaw;->zzL()V

    .line 33
    throw p1
.end method

.method final zzag(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzr;)V
    .registers 11

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzM()V

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaQ(Lcom/google/android/gms/measurement/internal/zzr;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 4
    :cond_11
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzr;->zzh:Z

    if-nez v0, :cond_19

    .line 5
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzg(Lcom/google/android/gms/measurement/internal/zzr;)Lcom/google/android/gms/measurement/internal/zzh;

    return-void

    .line 6
    :cond_19
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaS(Lcom/google/android/gms/measurement/internal/zzr;)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "_npa"

    .line 7
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    if-eqz v0, :cond_59

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string v1, "Falling back to manifest metadata value for ad personalization"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 31
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzqb;

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    const/4 p1, 0x1

    .line 33
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq p1, v0, :cond_48

    const-wide/16 v0, 0x0

    goto :goto_4a

    :cond_48
    const-wide/16 v0, 0x1

    :goto_4a
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "auto"

    const-string v3, "_npa"

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzqb;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0, v2, p2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzas(Lcom/google/android/gms/measurement/internal/zzqb;Lcom/google/android/gms/measurement/internal/zzr;)V

    return-void

    .line 8
    :cond_59
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzn:Lcom/google/android/gms/measurement/internal/zzio;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v2

    .line 11
    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/zzgx;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Removing user property"

    .line 12
    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzH()V

    .line 14
    :try_start_77
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzg(Lcom/google/android/gms/measurement/internal/zzr;)Lcom/google/android/gms/measurement/internal/zzh;

    const-string v0, "_id"

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    .line 17
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "_lair"

    .line 18
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzaw;->zzP(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_93
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    .line 20
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 21
    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzP(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaw;->zzS()V

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p2

    .line 24
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p2

    const-string v0, "User property removed"

    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v1

    .line 26
    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzgx;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_be
    .catchall {:try_start_77 .. :try_end_be} :catchall_c6

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzL()V

    return-void

    :catchall_c6
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaw;->zzL()V

    .line 29
    throw p1
.end method

.method final zzah(Lcom/google/android/gms/measurement/internal/zzr;)V
    .registers 9

    .line 1
    const-string v0, "app_id=?"

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzz:Ljava/util/List;

    if-eqz v1, :cond_12

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzA:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzz:Ljava/util/List;

    .line 2
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    .line 7
    :try_start_27
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string v5, "apps"

    .line 8
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    const-string v6, "events"

    .line 9
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "events_snapshot"

    .line 10
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "user_attributes"

    .line 11
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "conditional_properties"

    .line 12
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "raw_events"

    .line 13
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "raw_events_metadata"

    .line 14
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "queue"

    .line 15
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "audience_filter_values"

    .line 16
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "main_event_params"

    .line 17
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "default_event_params"

    .line 18
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "trigger_uris"

    .line 19
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "upload_queue"

    .line 20
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v5, v0

    if-lez v5, :cond_b5

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v3, "Reset analytics data. app, records"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_a0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_27 .. :try_end_a0} :catch_a1

    goto :goto_b5

    :catch_a1
    move-exception v0

    .line 27
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 23
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Error resetting analytics data. appId, error"

    .line 25
    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    :cond_b5
    :goto_b5
    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzh:Z

    if-eqz v0, :cond_bc

    .line 27
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzac(Lcom/google/android/gms/measurement/internal/zzr;)V

    :cond_bc
    return-void
.end method

.method final zzai(Lcom/google/android/gms/measurement/internal/zzr;)V
    .registers 14

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzM()V

    .line 3
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzA:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzba;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v1, "Setting DMA consent for package"

    .line 8
    invoke-virtual {v0, v1, v4, p1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzM()V

    .line 11
    invoke-virtual {p0, v4}, Lcom/google/android/gms/measurement/internal/zzpv;->zzd(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/16 v1, 0x64

    .line 12
    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzba;->zzc(Landroid/os/Bundle;I)Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzba;->zzf()Lcom/google/android/gms/measurement/internal/zzju;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzD:Ljava/util/Map;

    .line 13
    invoke-interface {v2, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v2

    invoke-virtual {v2, v4, p1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzU(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzba;)V

    .line 15
    invoke-virtual {p0, v4}, Lcom/google/android/gms/measurement/internal/zzpv;->zzd(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 16
    invoke-static {p1, v1}, Lcom/google/android/gms/measurement/internal/zzba;->zzc(Landroid/os/Bundle;I)Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzba;->zzf()Lcom/google/android/gms/measurement/internal/zzju;

    move-result-object p1

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzM()V

    .line 20
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzju;->zzc:Lcom/google/android/gms/measurement/internal/zzju;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_68

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzju;->zzd:Lcom/google/android/gms/measurement/internal/zzju;

    if-ne p1, v1, :cond_68

    move v1, v2

    goto :goto_69

    :cond_68
    move v1, v3

    :goto_69
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzju;->zzd:Lcom/google/android/gms/measurement/internal/zzju;

    if-ne v0, v5, :cond_72

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzju;->zzc:Lcom/google/android/gms/measurement/internal/zzju;

    if-ne p1, v0, :cond_72

    goto :goto_73

    :cond_72
    move v2, v3

    :goto_73
    if-nez v1, :cond_79

    if-eqz v2, :cond_78

    goto :goto_79

    :cond_78
    return-void

    .line 21
    :cond_79
    :goto_79
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string v0, "Generated _dcu event for"

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Landroid/os/Bundle;

    .line 22
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v1

    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zza()J

    move-result-wide v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 25
    invoke-virtual/range {v1 .. v11}, Lcom/google/android/gms/measurement/internal/zzaw;->zzo(JLjava/lang/String;ZZZZZZZ)Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/gms/measurement/internal/zzas;->zzf:J

    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v2

    .line 27
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzgi;->zzal:Lcom/google/android/gms/measurement/internal/zzgg;

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzh(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_dc

    const-string v0, "_r"

    const-wide/16 v1, 0x1

    .line 28
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v1

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zza()J

    move-result-wide v2

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 31
    invoke-virtual/range {v1 .. v11}, Lcom/google/android/gms/measurement/internal/zzaw;->zzo(JLjava/lang/String;ZZZZZZZ)Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzas;->zzf:J

    .line 34
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "_dcu realtime event count"

    invoke-virtual {v1, v2, v4, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_dc
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzK:Lcom/google/android/gms/measurement/internal/zzqe;

    const-string v1, "_dcu"

    .line 35
    invoke-interface {v0, v4, v1, p1}, Lcom/google/android/gms/measurement/internal/zzqe;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final zzaj(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzmh;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzH:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    if-eqz p2, :cond_14

    goto :goto_15

    :cond_14
    return-void

    :cond_15
    :goto_15
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzH:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzG:Lcom/google/android/gms/measurement/internal/zzmh;

    return-void
.end method

.method final zzak(Lcom/google/android/gms/measurement/internal/zzr;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzM()V

    .line 3
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    iget v1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzz:I

    .line 5
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzu:Ljava/lang/String;

    .line 6
    invoke-static {p1, v1}, Lcom/google/android/gms/measurement/internal/zzjx;->zzk(Ljava/lang/String;I)Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object p1

    .line 7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzu(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjx;

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Setting storage consent for package"

    .line 10
    invoke-virtual {v1, v2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaq(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzjx;)V

    return-void
.end method

.method final zzal(Ljava/util/List;)V
    .registers 3

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzz:Ljava/util/List;

    if-eqz v0, :cond_1b

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string v0, "Set uploading progress before finishing the previous upload"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    return-void

    :cond_1b
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzz:Ljava/util/List;

    return-void
.end method

.method protected final zzam()V
    .registers 9

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzO()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzae()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_72

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzgi;->zzau:Lcom/google/android/gms/measurement/internal/zzgg;

    const/4 v4, 0x0

    .line 7
    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/zzgg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 6
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v1, v5, v2

    if-nez v1, :cond_32

    goto :goto_72

    .line 8
    :cond_32
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v6

    .line 10
    invoke-interface {v6}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzgi;->zzau:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 11
    invoke-virtual {v6, v4}, Lcom/google/android/gms/measurement/internal/zzgg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 12
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v5, v6

    const-string v4, "trigger_uris"

    const-string v6, "abs(timestamp_millis - ?) > cast(? as integer)"

    .line 13
    invoke-virtual {v1, v4, v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_72

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v4, "Deleted stale trigger uris. rowsDeleted"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    :cond_72
    :goto_72
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzk:Lcom/google/android/gms/measurement/internal/zzoa;

    .line 16
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzoa;->zzd:Lcom/google/android/gms/measurement/internal/zzhp;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhp;->zza()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_8d

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzk:Lcom/google/android/gms/measurement/internal/zzoa;

    .line 17
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzoa;->zzd:Lcom/google/android/gms/measurement/internal/zzhp;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzhp;->zzb(J)V

    .line 18
    :cond_8d
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaL()V

    return-void
.end method

.method final zzan(Lcom/google/android/gms/measurement/internal/zzai;)V
    .registers 3

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzai;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaD(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzao(Lcom/google/android/gms/measurement/internal/zzai;Lcom/google/android/gms/measurement/internal/zzr;)V

    :cond_11
    return-void
.end method

.method final zzao(Lcom/google/android/gms/measurement/internal/zzai;Lcom/google/android/gms/measurement/internal/zzr;)V
    .registers 13

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzai;->zza:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzai;->zzb:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzai;->zzc:Lcom/google/android/gms/measurement/internal/zzqb;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzai;->zzc:Lcom/google/android/gms/measurement/internal/zzqb;

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzqb;->zzb:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzM()V

    .line 8
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaQ(Lcom/google/android/gms/measurement/internal/zzr;)Z

    move-result v0

    if-nez v0, :cond_2a

    return-void

    .line 9
    :cond_2a
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzr;->zzh:Z

    if-nez v0, :cond_32

    .line 10
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzg(Lcom/google/android/gms/measurement/internal/zzr;)Lcom/google/android/gms/measurement/internal/zzh;

    return-void

    :cond_32
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzai;

    .line 11
    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/zzai;-><init>(Lcom/google/android/gms/measurement/internal/zzai;)V

    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/google/android/gms/measurement/internal/zzai;->zze:Z

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzH()V

    .line 13
    :try_start_41
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzai;->zza:Ljava/lang/String;

    .line 14
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzai;->zzc:Lcom/google/android/gms/measurement/internal/zzqb;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzqb;->zzb:Ljava/lang/String;

    .line 15
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzaw;->zzm(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v1

    if-eqz v1, :cond_80

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzai;->zzb:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzai;->zzb:Ljava/lang/String;

    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_80

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 18
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v3, "Updating a conditional user property with different origin. name, origin, origin (from DB)"

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzn:Lcom/google/android/gms/measurement/internal/zzio;

    .line 19
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzai;->zzc:Lcom/google/android/gms/measurement/internal/zzqb;

    .line 20
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzqb;->zzb:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzgx;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzai;->zzb:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzai;->zzb:Ljava/lang/String;

    .line 21
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzhc;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_80
    const/4 v2, 0x1

    if-eqz v1, :cond_b5

    iget-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzai;->zze:Z

    if-eqz v3, :cond_b5

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzai;->zzb:Ljava/lang/String;

    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/zzai;->zzb:Ljava/lang/String;

    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/zzai;->zzd:J

    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/zzai;->zzd:J

    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/zzai;->zzh:J

    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/zzai;->zzh:J

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzai;->zzf:Ljava/lang/String;

    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/zzai;->zzf:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzai;->zzi:Lcom/google/android/gms/measurement/internal/zzbh;

    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/zzai;->zzi:Lcom/google/android/gms/measurement/internal/zzbh;

    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/zzai;->zze:Z

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzqb;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzai;->zzc:Lcom/google/android/gms/measurement/internal/zzqb;

    .line 25
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzqb;->zzb:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzai;->zzc:Lcom/google/android/gms/measurement/internal/zzqb;

    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzqb;->zzc:J

    .line 26
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzqb;->zza()Ljava/lang/Object;

    move-result-object v8

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzai;->zzc:Lcom/google/android/gms/measurement/internal/zzqb;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzqb;->zzf:Ljava/lang/String;

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/zzqb;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v0, Lcom/google/android/gms/measurement/internal/zzai;->zzc:Lcom/google/android/gms/measurement/internal/zzqb;

    goto :goto_d5

    .line 39
    :cond_b5
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzai;->zzf:Ljava/lang/String;

    .line 22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d5

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzqb;

    iget-object p1, v0, Lcom/google/android/gms/measurement/internal/zzai;->zzc:Lcom/google/android/gms/measurement/internal/zzqb;

    .line 23
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzqb;->zzb:Ljava/lang/String;

    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/zzai;->zzd:J

    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzqb;->zza()Ljava/lang/Object;

    move-result-object v7

    iget-object p1, v0, Lcom/google/android/gms/measurement/internal/zzai;->zzc:Lcom/google/android/gms/measurement/internal/zzqb;

    iget-object v8, p1, Lcom/google/android/gms/measurement/internal/zzqb;->zzf:Ljava/lang/String;

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzqb;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/zzai;->zzc:Lcom/google/android/gms/measurement/internal/zzqb;

    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/zzai;->zze:Z

    move p1, v2

    .line 26
    :cond_d5
    :goto_d5
    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzai;->zze:Z

    if-eqz v1, :cond_151

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzai;->zzc:Lcom/google/android/gms/measurement/internal/zzqb;

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzqd;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzai;->zza:Ljava/lang/String;

    .line 27
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzai;->zzb:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzqb;->zzb:Ljava/lang/String;

    iget-wide v6, v1, Lcom/google/android/gms/measurement/internal/zzqb;->zzc:J

    .line 28
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzqb;->zza()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzqd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzaw;->zzai(Lcom/google/android/gms/measurement/internal/zzqd;)Z

    move-result v1

    if-eqz v1, :cond_11e

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v3, "User property updated immediately"

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzai;->zza:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzn:Lcom/google/android/gms/measurement/internal/zzio;

    .line 32
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v5

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzqd;->zzc:Ljava/lang/String;

    .line 33
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzgx;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzqd;->zze:Ljava/lang/Object;

    .line 34
    invoke-virtual {v1, v3, v4, v5, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_13f

    .line 35
    :cond_11e
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v3, "(2)Too many active user properties, ignoring"

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzai;->zza:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzn:Lcom/google/android/gms/measurement/internal/zzio;

    .line 37
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v5

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzqd;->zzc:Ljava/lang/String;

    .line 38
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzgx;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzqd;->zze:Ljava/lang/Object;

    .line 39
    invoke-virtual {v1, v3, v4, v5, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_13f
    if-eqz p1, :cond_151

    .line 34
    iget-object p1, v0, Lcom/google/android/gms/measurement/internal/zzai;->zzi:Lcom/google/android/gms/measurement/internal/zzbh;

    if-eqz p1, :cond_151

    .line 40
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbh;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzai;->zzi:Lcom/google/android/gms/measurement/internal/zzbh;

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzai;->zzd:J

    invoke-direct {p1, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzbh;-><init>(Lcom/google/android/gms/measurement/internal/zzbh;J)V

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzax(Lcom/google/android/gms/measurement/internal/zzbh;Lcom/google/android/gms/measurement/internal/zzr;)V

    .line 42
    :cond_151
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzah(Lcom/google/android/gms/measurement/internal/zzai;)Z

    move-result p1

    if-eqz p1, :cond_17f

    .line 43
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string p2, "Conditional property added"

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzai;->zza:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzn:Lcom/google/android/gms/measurement/internal/zzio;

    .line 45
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzai;->zzc:Lcom/google/android/gms/measurement/internal/zzqb;

    .line 46
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzqb;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzgx;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzai;->zzc:Lcom/google/android/gms/measurement/internal/zzqb;

    .line 47
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzqb;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 48
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1a6

    .line 49
    :cond_17f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string p2, "Too many conditional properties, ignoring"

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzai;->zza:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzn:Lcom/google/android/gms/measurement/internal/zzio;

    .line 51
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzai;->zzc:Lcom/google/android/gms/measurement/internal/zzqb;

    .line 52
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzqb;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzgx;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzai;->zzc:Lcom/google/android/gms/measurement/internal/zzqb;

    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzqb;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 54
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    :goto_1a6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzS()V
    :try_end_1ad
    .catchall {:try_start_41 .. :try_end_1ad} :catchall_1b5

    .line 56
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzL()V

    return-void

    :catchall_1b5
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaw;->zzL()V

    .line 57
    throw p1
.end method

.method final zzap(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzag;)V
    .registers 15

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzgi;->zzaP:Lcom/google/android/gms/measurement/internal/zzgg;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_119

    .line 3
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzM()V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    iget-wide v3, p2, Lcom/google/android/gms/measurement/internal/zzag;->zza:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzaw;->zzx(J)Lcom/google/android/gms/measurement/internal/zzpz;

    move-result-object v0

    if-nez v0, :cond_37

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p2

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p2

    .line 8
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "[sgtm] Queued batch doesn\'t exist. appId, rowId"

    invoke-virtual {p2, v1, p1, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_37
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpz;->zzh()Ljava/lang/String;

    move-result-object v0

    .line 9
    iget v5, p2, Lcom/google/android/gms/measurement/internal/zzag;->zzb:I

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzme;->zzb:Lcom/google/android/gms/measurement/internal/zzme;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzme;->zza()I

    move-result v6

    if-ne v5, v6, :cond_11a

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzF:Ljava/util/Map;

    .line 10
    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_50

    .line 11
    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_50
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzaw;->zzK(Ljava/lang/Long;)V

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v4, "[sgtm] queued batch deleted after successful client upload. appId, rowId"

    .line 15
    invoke-virtual {v0, v4, p1, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    iget-wide v3, p2, Lcom/google/android/gms/measurement/internal/zzag;->zzc:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_119

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 18
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v6

    .line 19
    invoke-virtual {v6, v2, v1}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v1

    if-nez v1, :cond_81

    goto :goto_ed

    .line 20
    :cond_81
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    .line 22
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/content/ContentValues;

    .line 23
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzmf;->zzb:Lcom/google/android/gms/measurement/internal/zzmf;

    .line 24
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzmf;->zza()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "upload_type"

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 25
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v6

    .line 26
    invoke-interface {v6}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "creation_timestamp"

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 27
    :try_start_b3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "upload_queue"

    const-string v8, "rowid=? AND app_id=? AND upload_type=?"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    .line 28
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const/4 v10, 0x1

    aput-object p1, v9, v10

    sget-object v10, Lcom/google/android/gms/measurement/internal/zzmf;->zze:Lcom/google/android/gms/measurement/internal/zzmf;

    .line 29
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzmf;->zza()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v9, v11

    .line 30
    invoke-virtual {v6, v7, v2, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    int-to-long v6, v2

    const-wide/16 v8, 0x1

    cmp-long v2, v6, v8

    if-eqz v2, :cond_ed

    .line 31
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 32
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v5, "Google Signal pending batch not updated. appId, rowId"

    .line 33
    invoke-virtual {v2, v5, p1, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_ed
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b3 .. :try_end_ed} :catch_104

    .line 39
    :cond_ed
    :goto_ed
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    iget-wide v1, p2, Lcom/google/android/gms/measurement/internal/zzag;->zzc:J

    .line 41
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v1, "[sgtm] queued Google Signal batch updated. appId, signalRowId"

    .line 42
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzav(Ljava/lang/String;)V

    return-void

    :catch_104
    move-exception p2

    .line 57
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    .line 36
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Failed to update google Signal pending batch. appid, rowId"

    .line 37
    invoke-virtual {v0, v2, p1, v1, p2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    throw p2

    :cond_119
    :goto_119
    return-void

    .line 44
    :cond_11a
    iget v1, p2, Lcom/google/android/gms/measurement/internal/zzag;->zzb:I

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzme;->zzd:Lcom/google/android/gms/measurement/internal/zzme;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzme;->zza()I

    move-result v2

    if-ne v1, v2, :cond_15b

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzF:Ljava/util/Map;

    .line 45
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzpt;

    if-nez v2, :cond_137

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzpt;

    .line 46
    invoke-direct {v2, p0}, Lcom/google/android/gms/measurement/internal/zzpt;-><init>(Lcom/google/android/gms/measurement/internal/zzpv;)V

    .line 47
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13a

    .line 48
    :cond_137
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzpt;->zzb()V

    .line 47
    :goto_13a
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzpt;->zza(Lcom/google/android/gms/measurement/internal/zzpt;)J

    move-result-wide v1

    .line 49
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 50
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v3

    .line 51
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    div-long/2addr v1, v4

    .line 52
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "[sgtm] Putting sGTM server in backoff mode. appId, destination, nextRetryInSeconds"

    .line 53
    invoke-virtual {v3, v2, p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    :cond_15b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    iget-wide v1, p2, Lcom/google/android/gms/measurement/internal/zzag;->zza:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/measurement/internal/zzaw;->zzN(Ljava/lang/Long;)V

    .line 55
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v1, "[sgtm] increased batch retry count after failed client upload. appId, rowId"

    .line 57
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method final zzaq(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzjx;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzM()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzC:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzaw;->zzX(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzjx;)V

    return-void
.end method

.method final zzar(Ljava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzl(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzh;->zzaF(Z)V

    .line 3
    invoke-virtual {p1, p3}, Lcom/google/android/gms/measurement/internal/zzh;->zzaG(Ljava/lang/Long;)V

    .line 4
    invoke-virtual {p1, p4}, Lcom/google/android/gms/measurement/internal/zzh;->zzaH(Ljava/lang/Long;)V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzaK()Z

    move-result p2

    if-eqz p2, :cond_21

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object p2

    const/4 p3, 0x0

    .line 7
    invoke-virtual {p2, p1, p3, p3}, Lcom/google/android/gms/measurement/internal/zzaw;->zzT(Lcom/google/android/gms/measurement/internal/zzh;ZZ)V

    :cond_21
    return-void
.end method

.method final zzas(Lcom/google/android/gms/measurement/internal/zzqb;Lcom/google/android/gms/measurement/internal/zzr;)V
    .registers 24

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 1
    const-string v3, "_id"

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzM()V

    .line 3
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaQ(Lcom/google/android/gms/measurement/internal/zzr;)Z

    move-result v4

    if-nez v4, :cond_1a

    goto/16 :goto_1ea

    .line 4
    :cond_1a
    iget-boolean v4, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzh:Z

    if-nez v4, :cond_22

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzg(Lcom/google/android/gms/measurement/internal/zzr;)Lcom/google/android/gms/measurement/internal/zzh;

    return-void

    .line 6
    :cond_22
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzB()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v4

    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/zzqb;->zzb:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/measurement/internal/zzqf;->zzj(Ljava/lang/String;)I

    move-result v12

    const/4 v4, 0x1

    const/16 v5, 0x18

    const/4 v13, 0x0

    if-eqz v12, :cond_52

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzB()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v0

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    .line 9
    invoke-virtual {v0, v8, v5, v4}, Lcom/google/android/gms/measurement/internal/zzqf;->zzG(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v14

    if-eqz v8, :cond_43

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    :cond_43
    move v15, v13

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzB()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v9

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzpv;->zzK:Lcom/google/android/gms/measurement/internal/zzqe;

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    const-string v13, "_ev"

    .line 11
    invoke-virtual/range {v9 .. v15}, Lcom/google/android/gms/measurement/internal/zzqf;->zzR(Lcom/google/android/gms/measurement/internal/zzqe;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 12
    :cond_52
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzB()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzqb;->zza()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzqf;->zzd(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v17

    if-eqz v17, :cond_93

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzB()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v3

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    .line 15
    invoke-virtual {v3, v8, v5, v4}, Lcom/google/android/gms/measurement/internal/zzqf;->zzG(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v19

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzqb;->zza()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_81

    .line 17
    instance-of v3, v0, Ljava/lang/String;

    if-nez v3, :cond_79

    instance-of v3, v0, Ljava/lang/CharSequence;

    if-eqz v3, :cond_81

    .line 18
    :cond_79
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    :cond_81
    move/from16 v20, v13

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzB()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v14

    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zzpv;->zzK:Lcom/google/android/gms/measurement/internal/zzqe;

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    const-string v18, "_ev"

    move-object/from16 v16, v0

    .line 20
    invoke-virtual/range {v14 .. v20}, Lcom/google/android/gms/measurement/internal/zzqf;->zzR(Lcom/google/android/gms/measurement/internal/zzqe;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 21
    :cond_93
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzB()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v4

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzqb;->zza()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Lcom/google/android/gms/measurement/internal/zzqf;->zzE(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_1ea

    .line 23
    const-string v4, "_sid"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_117

    .line 24
    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/zzqb;->zzc:J

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzqb;->zzf:Ljava/lang/String;

    .line 25
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 26
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v10

    const-string v12, "_sno"

    invoke-virtual {v10, v9, v12}, Lcom/google/android/gms/measurement/internal/zzaw;->zzy(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzqd;

    move-result-object v10

    if-eqz v10, :cond_ce

    iget-object v12, v10, Lcom/google/android/gms/measurement/internal/zzqd;->zze:Ljava/lang/Object;

    .line 27
    instance-of v14, v12, Ljava/lang/Long;

    if-eqz v14, :cond_ce

    .line 35
    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    goto :goto_102

    :cond_ce
    if-eqz v10, :cond_df

    .line 28
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v12

    .line 29
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v12

    const-string v14, "Retrieved last session number from database does not contain a valid (long) value"

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/zzqd;->zze:Ljava/lang/Object;

    .line 30
    invoke-virtual {v12, v14, v10}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    :cond_df
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v10

    const-string v12, "_s"

    invoke-virtual {v10, v9, v12}, Lcom/google/android/gms/measurement/internal/zzaw;->zzs(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v9

    if-eqz v9, :cond_100

    .line 32
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v10

    .line 33
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v10

    iget-wide v14, v9, Lcom/google/android/gms/measurement/internal/zzbd;->zzc:J

    const-string v9, "Backfill the session number. Last used session number"

    .line 34
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v9, v12}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    move-wide v9, v14

    goto :goto_102

    :cond_100
    const-wide/16 v9, 0x0

    .line 35
    :goto_102
    new-instance v14, Lcom/google/android/gms/measurement/internal/zzqb;

    const-wide/16 v15, 0x1

    add-long/2addr v9, v15

    .line 36
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const-string v15, "_sno"

    move-wide/from16 v16, v5

    move-object/from16 v19, v7

    invoke-direct/range {v14 .. v19}, Lcom/google/android/gms/measurement/internal/zzqb;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v1, v14, v2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzas(Lcom/google/android/gms/measurement/internal/zzqb;Lcom/google/android/gms/measurement/internal/zzr;)V

    :cond_117
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzqd;

    .line 38
    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    .line 39
    invoke-static {v12}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzqb;->zzf:Ljava/lang/String;

    .line 40
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-wide v9, v0, Lcom/google/android/gms/measurement/internal/zzqb;->zzc:J

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/measurement/internal/zzqd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 41
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzpv;->zzn:Lcom/google/android/gms/measurement/internal/zzio;

    iget-object v7, v5, Lcom/google/android/gms/measurement/internal/zzqd;->zzc:Ljava/lang/String;

    .line 43
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v9

    .line 44
    invoke-virtual {v9, v7}, Lcom/google/android/gms/measurement/internal/zzgx;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "Setting user property"

    .line 45
    invoke-virtual {v0, v10, v9, v11}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzH()V

    .line 47
    :try_start_14e
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_171

    .line 48
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    .line 49
    invoke-virtual {v0, v12, v3}, Lcom/google/android/gms/measurement/internal/zzaw;->zzy(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzqd;

    move-result-object v0

    if-eqz v0, :cond_171

    iget-object v3, v5, Lcom/google/android/gms/measurement/internal/zzqd;->zze:Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzqd;->zze:Ljava/lang/Object;

    .line 50
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_171

    .line 51
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    const-string v3, "_lair"

    .line 52
    invoke-virtual {v0, v12, v3}, Lcom/google/android/gms/measurement/internal/zzaw;->zzP(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_171
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzg(Lcom/google/android/gms/measurement/internal/zzr;)Lcom/google/android/gms/measurement/internal/zzh;

    .line 54
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzaw;->zzai(Lcom/google/android/gms/measurement/internal/zzqd;)Z

    move-result v0

    .line 55
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a6

    .line 56
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    move-result-object v3

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzw:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/measurement/internal/zzqa;->zzd(Ljava/lang/String;)J

    move-result-wide v2

    .line 57
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v4

    invoke-virtual {v4, v12}, Lcom/google/android/gms/measurement/internal/zzaw;->zzl(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v4

    if-eqz v4, :cond_1a6

    .line 58
    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/measurement/internal/zzh;->zzaB(J)V

    .line 59
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzh;->zzaK()Z

    move-result v2

    if-eqz v2, :cond_1a6

    .line 60
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v2

    .line 61
    invoke-virtual {v2, v4, v13, v13}, Lcom/google/android/gms/measurement/internal/zzaw;->zzT(Lcom/google/android/gms/measurement/internal/zzh;ZZ)V

    .line 62
    :cond_1a6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaw;->zzS()V

    if-nez v0, :cond_1d9

    .line 63
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v2, "Too many unique user properties are set. Ignoring user property"

    .line 65
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v3

    .line 66
    invoke-virtual {v3, v7}, Lcom/google/android/gms/measurement/internal/zzgx;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v5, Lcom/google/android/gms/measurement/internal/zzqd;->zze:Ljava/lang/Object;

    .line 67
    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzB()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v14

    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zzpv;->zzK:Lcom/google/android/gms/measurement/internal/zzqe;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v17, 0x9

    const/16 v18, 0x0

    move-object/from16 v16, v12

    .line 69
    invoke-virtual/range {v14 .. v20}, Lcom/google/android/gms/measurement/internal/zzqf;->zzR(Lcom/google/android/gms/measurement/internal/zzqe;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1d9
    .catchall {:try_start_14e .. :try_end_1d9} :catchall_1e1

    .line 70
    :cond_1d9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzL()V

    return-void

    :catchall_1e1
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaw;->zzL()V

    .line 71
    throw v0

    :cond_1ea
    :goto_1ea
    return-void
.end method

.method final zzat()V
    .registers 13

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzM()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzw:Z

    const/4 v1, 0x0

    :try_start_e
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzn:Lcom/google/android/gms/measurement/internal/zzio;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaV()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzu()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzny;->zzl()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_2c

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v2, "Upload data called on the client side before use of service was decided"

    .line 7
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    goto/16 :goto_1ab

    .line 8
    :cond_2c
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 57
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v2, "Upload called in the client side when service should be used"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    goto/16 :goto_1ab

    :cond_41
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zza:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_4e

    .line 56
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaL()V

    goto/16 :goto_1ab

    .line 9
    :cond_4e
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzz:Ljava/util/List;

    if-eqz v2, :cond_68

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v2, "Uploading requested multiple times"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    goto/16 :goto_1ab

    .line 11
    :cond_68
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzp()Lcom/google/android/gms/measurement/internal/zzhk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhk;->zzd()Z

    move-result v2

    if-nez v2, :cond_84

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v2, "Network not connected, ignoring upload request"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaL()V

    goto/16 :goto_1ab

    .line 14
    :cond_84
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzgi;->zzah:Lcom/google/android/gms/measurement/internal/zzgg;

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzam;->zzh(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)I

    move-result v6

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzam;->zzF()J

    move-result-wide v9

    sub-long v9, v2, v9

    move v7, v1

    :goto_a1
    if-ge v7, v6, :cond_ac

    .line 17
    invoke-direct {p0, v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaM(Ljava/lang/String;J)Z

    move-result v11

    if-eqz v11, :cond_ac

    add-int/lit8 v7, v7, 0x1

    goto :goto_a1

    .line 18
    :cond_ac
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqr;->zzb()Z

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaJ()V

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzk:Lcom/google/android/gms/measurement/internal/zzoa;

    .line 21
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzoa;->zzd:Lcom/google/android/gms/measurement/internal/zzhp;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhp;->zza()J

    move-result-wide v6

    cmp-long v4, v6, v4

    if-eqz v4, :cond_dc

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v4

    .line 23
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v4

    const-string v5, "Uploading events. Elapsed time since last upload attempt (ms)"

    sub-long v6, v2, v6

    .line 24
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 25
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    :cond_dc
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzaw;->zzA()Ljava/lang/String;

    move-result-object v4

    .line 27
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-wide/16 v6, -0x1

    if-nez v5, :cond_136

    iget-wide v9, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzB:J

    cmp-long v0, v9, v6

    if-nez v0, :cond_131

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0
    :try_end_f6
    .catchall {:try_start_e .. :try_end_f6} :catchall_1b9

    .line 29
    :try_start_f6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v9, "select rowid from raw_events order by rowid desc limit 1;"

    .line 30
    invoke-virtual {v5, v9, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 31
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5
    :try_end_104
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f6 .. :try_end_104} :catch_115
    .catchall {:try_start_f6 .. :try_end_104} :catchall_113

    if-nez v5, :cond_10c

    if-eqz v8, :cond_128

    .line 32
    :goto_108
    :try_start_108
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_10b
    .catchall {:try_start_108 .. :try_end_10b} :catchall_1b9

    goto :goto_128

    .line 33
    :cond_10c
    :try_start_10c
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6
    :try_end_110
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10c .. :try_end_110} :catch_115
    .catchall {:try_start_10c .. :try_end_110} :catchall_113

    if-eqz v8, :cond_128

    goto :goto_108

    :catchall_113
    move-exception v0

    goto :goto_12b

    :catch_115
    move-exception v5

    .line 59
    :try_start_116
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v9, "Error querying raw events"

    invoke-virtual {v0, v9, v5}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_125
    .catchall {:try_start_116 .. :try_end_125} :catchall_113

    if-eqz v8, :cond_128

    goto :goto_108

    .line 32
    :cond_128
    :goto_128
    :try_start_128
    iput-wide v6, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzB:J

    goto :goto_131

    :goto_12b
    if-eqz v8, :cond_130

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 36
    :cond_130
    throw v0

    .line 37
    :cond_131
    :goto_131
    invoke-virtual {p0, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/zzpv;->zzau(Ljava/lang/String;J)V

    goto/16 :goto_1ab

    .line 32
    :cond_136
    iput-wide v6, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzB:J

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v4

    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzam;->zzF()J

    move-result-wide v5

    sub-long/2addr v2, v5

    .line 40
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 41
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V
    :try_end_14a
    .catchall {:try_start_128 .. :try_end_14a} :catchall_1b9

    .line 42
    :try_start_14a
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;"

    new-array v0, v0, [Ljava/lang/String;

    .line 43
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 44
    invoke-virtual {v5, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_15c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14a .. :try_end_15c} :catch_183
    .catchall {:try_start_14a .. :try_end_15c} :catchall_180

    .line 45
    :try_start_15c
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_177

    iget-object v2, v4, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 46
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 47
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v3, "No expired configs for apps with pending events"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V
    :try_end_171
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15c .. :try_end_171} :catch_17e
    .catchall {:try_start_15c .. :try_end_171} :catchall_1b1

    if-eqz v0, :cond_198

    .line 48
    :goto_173
    :try_start_173
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_176
    .catchall {:try_start_173 .. :try_end_176} :catchall_1b9

    goto :goto_198

    .line 49
    :cond_177
    :try_start_177
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8
    :try_end_17b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_177 .. :try_end_17b} :catch_17e
    .catchall {:try_start_177 .. :try_end_17b} :catchall_1b1

    if-eqz v0, :cond_198

    goto :goto_173

    :catch_17e
    move-exception v2

    goto :goto_186

    :catchall_180
    move-exception v0

    move-object v2, v0

    goto :goto_1b3

    :catch_183
    move-exception v0

    move-object v2, v0

    move-object v0, v8

    .line 36
    :goto_186
    :try_start_186
    iget-object v3, v4, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 50
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v3

    .line 51
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v3

    const-string v4, "Error selecting expired configs"

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_195
    .catchall {:try_start_186 .. :try_end_195} :catchall_1b1

    if-eqz v0, :cond_198

    goto :goto_173

    .line 53
    :cond_198
    :goto_198
    :try_start_198
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1ab

    .line 54
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzaw;->zzl(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v0

    if-eqz v0, :cond_1ab

    .line 55
    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzO(Lcom/google/android/gms/measurement/internal/zzh;)V
    :try_end_1ab
    .catchall {:try_start_198 .. :try_end_1ab} :catchall_1b9

    .line 7
    :cond_1ab
    :goto_1ab
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzw:Z

    .line 58
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaH()V

    return-void

    :catchall_1b1
    move-exception v2

    move-object v8, v0

    :goto_1b3
    if-eqz v8, :cond_1b8

    .line 48
    :try_start_1b5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 52
    :cond_1b8
    throw v2
    :try_end_1b9
    .catchall {:try_start_1b5 .. :try_end_1b9} :catchall_1b9

    :catchall_1b9
    move-exception v0

    .line 48
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzw:Z

    .line 58
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaH()V

    .line 59
    throw v0
.end method

.method final zzau(Ljava/lang/String;J)V
    .registers 33

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move-wide/from16 v2, p2

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    .line 2
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzgi;->zzg:Lcom/google/android/gms/measurement/internal/zzgg;

    invoke-virtual {v0, v6, v4}, Lcom/google/android/gms/measurement/internal/zzam;->zzh(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)I

    move-result v0

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzgi;->zzh:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 4
    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzam;->zzh(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v7

    .line 6
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 7
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    const/4 v8, 0x1

    if-lez v0, :cond_2e

    move v9, v8

    goto :goto_2f

    :cond_2e
    move v9, v5

    .line 8
    :goto_2f
    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    if-lez v4, :cond_36

    move v9, v8

    goto :goto_37

    :cond_36
    move v9, v5

    .line 9
    :goto_37
    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 10
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    const/4 v9, 0x2

    .line 11
    :try_start_3e
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    const-string v12, "queue"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/String;

    const-string v14, "rowid"

    aput-object v14, v13, v5

    const-string v14, "data"

    aput-object v14, v13, v8

    const-string v14, "retry_count"

    aput-object v14, v13, v9

    const-string v14, "app_id=?"

    new-array v15, v8, [Ljava/lang/String;

    aput-object v6, v15, v5

    const-string v18, "rowid"

    .line 12
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 13
    invoke-virtual/range {v11 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_67
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3e .. :try_end_67} :catch_214
    .catchall {:try_start_3e .. :try_end_67} :catchall_210

    .line 14
    :try_start_67
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_78

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_71
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_67 .. :try_end_71} :catch_20a
    .catchall {:try_start_67 .. :try_end_71} :catchall_203

    if-eqz v11, :cond_231

    .line 16
    :goto_73
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_231

    .line 161
    :cond_78
    :try_start_78
    new-instance v12, Ljava/util/ArrayList;

    .line 17
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move v13, v5

    .line 18
    :goto_7e
    invoke-interface {v11, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14
    :try_end_82
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_78 .. :try_end_82} :catch_20a
    .catchall {:try_start_78 .. :try_end_82} :catchall_203

    .line 19
    :try_start_82
    invoke-interface {v11, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iget-object v10, v7, Lcom/google/android/gms/measurement/internal/zzoz;->zzg:Lcom/google/android/gms/measurement/internal/zzpv;

    .line 20
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    move-result-object v10
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_8c} :catch_1d2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_82 .. :try_end_8c} :catch_20a
    .catchall {:try_start_82 .. :try_end_8c} :catchall_203

    :try_start_8c
    new-instance v8, Ljava/io/ByteArrayInputStream;

    .line 21
    invoke-direct {v8, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    .line 22
    invoke-direct {v0, v8}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 23
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v5, 0x400

    new-array v5, v5, [B

    move-object/from16 v20, v8

    .line 24
    :goto_a1
    invoke-virtual {v0, v5}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v8

    if-gtz v8, :cond_1b1

    .line 26
    invoke-virtual {v0}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 27
    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayInputStream;->close()V

    .line 28
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_b1} :catch_1bd
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8c .. :try_end_b1} :catch_20a
    .catchall {:try_start_8c .. :try_end_b1} :catchall_203

    .line 29
    :try_start_b1
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_bf

    array-length v5, v0
    :try_end_b8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b1 .. :try_end_b8} :catch_20a
    .catchall {:try_start_b1 .. :try_end_b8} :catchall_203

    add-int/2addr v5, v13

    if-le v5, v4, :cond_bf

    :cond_bb
    move-object/from16 v21, v11

    goto/16 :goto_1f8

    .line 30
    :cond_bf
    :try_start_bf
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhx;->zzz()Lcom/google/android/gms/internal/measurement/zzhw;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/google/android/gms/measurement/internal/zzqa;->zzp(Lcom/google/android/gms/internal/measurement/zzng;[B)Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzhw;
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_c9} :catch_19c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_bf .. :try_end_c9} :catch_20a
    .catchall {:try_start_bf .. :try_end_c9} :catchall_203

    .line 34
    :try_start_c9
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_178

    const/4 v8, 0x0

    .line 35
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    iget-object v8, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzhx;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzhx;

    .line 36
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhx;->zzK()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v20, v8

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhx;->zzK()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_bb

    .line 37
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/internal/measurement/zzhx;->zzJ()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhx;->zzJ()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_bb

    .line 38
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/internal/measurement/zzhx;->zzbu()Z

    move-result v8

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhx;->zzbu()Z

    move-result v10

    if-ne v8, v10, :cond_bb

    .line 39
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/internal/measurement/zzhx;->zzL()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhx;->zzL()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_bb

    .line 40
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/internal/measurement/zzhx;->zzY()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_11e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10
    :try_end_122
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c9 .. :try_end_122} :catch_20a
    .catchall {:try_start_c9 .. :try_end_122} :catchall_203

    move-object/from16 v20, v8

    const-string v8, "_npa"

    const-wide/16 v21, -0x1

    if-eqz v10, :cond_146

    :try_start_12a
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzio;

    move-object/from16 v23, v9

    .line 41
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzio;->zzg()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_141

    .line 42
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzio;->zzc()J

    move-result-wide v9

    goto :goto_14a

    :cond_141
    move-object/from16 v8, v20

    move-object/from16 v9, v23

    goto :goto_11e

    :cond_146
    move-object/from16 v23, v9

    move-wide/from16 v9, v21

    .line 43
    :goto_14a
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/internal/measurement/zzhx;->zzY()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_152
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_172

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/google/android/gms/internal/measurement/zzio;

    move-wide/from16 v24, v9

    .line 44
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/internal/measurement/zzio;->zzg()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16f

    .line 45
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/internal/measurement/zzio;->zzc()J

    move-result-wide v21

    goto :goto_174

    :cond_16f
    move-wide/from16 v9, v24

    goto :goto_152

    :cond_172
    move-wide/from16 v24, v9

    :goto_174
    cmp-long v8, v24, v21

    if-nez v8, :cond_bb

    :cond_178
    const/4 v8, 0x2

    .line 46
    invoke-interface {v11, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-nez v9, :cond_186

    .line 47
    invoke-interface {v11, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/measurement/zzhw;->zzat(I)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 48
    :cond_186
    array-length v0, v0

    add-int/2addr v13, v0

    .line 49
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhx;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_199
    move-object/from16 v21, v11

    goto :goto_1e8

    :catch_19c
    move-exception v0

    .line 52
    iget-object v5, v7, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 31
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v5

    .line 32
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v5

    const-string v8, "Failed to merge queued bundle. appId"

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 33
    invoke-virtual {v5, v8, v9, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1b0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12a .. :try_end_1b0} :catch_20a
    .catchall {:try_start_12a .. :try_end_1b0} :catchall_203

    goto :goto_199

    :cond_1b1
    move-object/from16 v21, v11

    const/4 v11, 0x0

    .line 25
    :try_start_1b4
    invoke-virtual {v9, v5, v11, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1b7
    .catch Ljava/io/IOException; {:try_start_1b4 .. :try_end_1b7} :catch_1bb
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b4 .. :try_end_1b7} :catch_201
    .catchall {:try_start_1b4 .. :try_end_1b7} :catchall_1ff

    move-object/from16 v11, v21

    goto/16 :goto_a1

    :catch_1bb
    move-exception v0

    goto :goto_1c0

    :catch_1bd
    move-exception v0

    move-object/from16 v21, v11

    .line 55
    :goto_1c0
    :try_start_1c0
    iget-object v5, v10, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 50
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v5

    .line 51
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v5

    const-string v8, "Failed to ungzip content"

    invoke-virtual {v5, v8, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    throw v0
    :try_end_1d0
    .catch Ljava/io/IOException; {:try_start_1c0 .. :try_end_1d0} :catch_1d0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c0 .. :try_end_1d0} :catch_201
    .catchall {:try_start_1c0 .. :try_end_1d0} :catchall_1ff

    :catch_1d0
    move-exception v0

    goto :goto_1d5

    :catch_1d2
    move-exception v0

    move-object/from16 v21, v11

    .line 60
    :goto_1d5
    :try_start_1d5
    iget-object v5, v7, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 53
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v5

    .line 54
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v5

    const-string v8, "Failed to unzip queued bundle. appId"

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 55
    invoke-virtual {v5, v8, v9, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    :goto_1e8
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_1ec
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1d5 .. :try_end_1ec} :catch_201
    .catchall {:try_start_1d5 .. :try_end_1ec} :catchall_1ff

    if-eqz v0, :cond_1f8

    if-le v13, v4, :cond_1f1

    goto :goto_1f8

    :cond_1f1
    move-object/from16 v11, v21

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x2

    goto/16 :goto_7e

    :cond_1f8
    :goto_1f8
    if-eqz v21, :cond_1fd

    .line 16
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_1fd
    move-object v0, v12

    goto :goto_231

    :catchall_1ff
    move-exception v0

    goto :goto_206

    :catch_201
    move-exception v0

    goto :goto_20d

    :catchall_203
    move-exception v0

    move-object/from16 v21, v11

    :goto_206
    move-object/from16 v10, v21

    goto/16 :goto_70a

    :catch_20a
    move-exception v0

    move-object/from16 v21, v11

    :goto_20d
    move-object/from16 v11, v21

    goto :goto_216

    :catchall_210
    move-exception v0

    const/4 v10, 0x0

    goto/16 :goto_70a

    :catch_214
    move-exception v0

    const/4 v11, 0x0

    .line 25
    :goto_216
    :try_start_216
    iget-object v4, v7, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 57
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v4

    .line 58
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v4

    const-string v5, "Error querying bundles. appId"

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v5, v7, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_22d
    .catchall {:try_start_216 .. :try_end_22d} :catchall_708

    if-eqz v11, :cond_231

    goto/16 :goto_73

    .line 61
    :cond_231
    :goto_231
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_707

    .line 62
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzu(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v4

    .line 63
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzjw;->zza:Lcom/google/android/gms/measurement/internal/zzjw;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzjx;->zzr(Lcom/google/android/gms/measurement/internal/zzjw;)Z

    move-result v4

    if-eqz v4, :cond_298

    .line 64
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_247
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_266

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 65
    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzhx;

    .line 66
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhx;->zzT()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_247

    .line 67
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhx;->zzT()Ljava/lang/String;

    move-result-object v4

    goto :goto_267

    :cond_266
    const/4 v4, 0x0

    :goto_267
    if-eqz v4, :cond_298

    const/4 v8, 0x0

    .line 68
    :goto_26a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v8, v5, :cond_298

    .line 69
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzhx;

    .line 70
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhx;->zzT()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_285

    goto :goto_295

    .line 71
    :cond_285
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhx;->zzT()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_295

    const/4 v11, 0x0

    .line 72
    invoke-interface {v0, v11, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_298

    :cond_295
    :goto_295
    add-int/lit8 v8, v8, 0x1

    goto :goto_26a

    .line 73
    :cond_298
    :goto_298
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhv;->zzb()Lcom/google/android/gms/internal/measurement/zzht;

    move-result-object v4

    .line 74
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    new-instance v7, Ljava/util/ArrayList;

    .line 75
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/google/android/gms/measurement/internal/zzam;->zzy(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2c1

    .line 77
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzu(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v8

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzjw;->zza:Lcom/google/android/gms/measurement/internal/zzjw;

    .line 78
    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzjx;->zzr(Lcom/google/android/gms/measurement/internal/zzjw;)Z

    move-result v8

    if-eqz v8, :cond_2c1

    const/4 v8, 0x1

    goto :goto_2c2

    :cond_2c1
    const/4 v8, 0x0

    .line 79
    :goto_2c2
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzu(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v9

    sget-object v10, Lcom/google/android/gms/measurement/internal/zzjw;->zza:Lcom/google/android/gms/measurement/internal/zzjw;

    .line 80
    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzjx;->zzr(Lcom/google/android/gms/measurement/internal/zzjw;)Z

    move-result v9

    .line 81
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzu(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v10

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzjw;->zzb:Lcom/google/android/gms/measurement/internal/zzjw;

    .line 82
    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/zzjx;->zzr(Lcom/google/android/gms/measurement/internal/zzjw;)Z

    move-result v10

    .line 83
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzrd;->zzb()Z

    .line 84
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v11

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzgi;->zzaL:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 85
    invoke-virtual {v11, v6, v12}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v11

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzpv;->zzl:Lcom/google/android/gms/measurement/internal/zzpi;

    .line 86
    invoke-virtual {v12, v6}, Lcom/google/android/gms/measurement/internal/zzpi;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzph;

    move-result-object v13

    const/4 v14, 0x0

    :goto_2ea
    if-ge v14, v5, :cond_451

    .line 87
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Pair;

    iget-object v15, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Lcom/google/android/gms/internal/measurement/zzhx;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzmd;->zzch()Lcom/google/android/gms/internal/measurement/zzlz;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/measurement/zzhw;

    .line 88
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzj()J

    move v0, v8

    move/from16 v20, v9

    const-wide/32 v8, 0x1d0da

    invoke-virtual {v15, v8, v9}, Lcom/google/android/gms/internal/measurement/zzhw;->zzaB(J)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 90
    invoke-virtual {v15, v2, v3}, Lcom/google/android/gms/internal/measurement/zzhw;->zzaA(J)Lcom/google/android/gms/internal/measurement/zzhw;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzpv;->zzn:Lcom/google/android/gms/measurement/internal/zzio;

    .line 91
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzio;->zzaV()Lcom/google/android/gms/measurement/internal/zzaf;

    const/4 v8, 0x0

    .line 92
    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/measurement/zzhw;->zzau(Z)Lcom/google/android/gms/internal/measurement/zzhw;

    if-nez v0, :cond_32e

    .line 93
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzhw;->zzt()Lcom/google/android/gms/internal/measurement/zzhw;

    :cond_32e
    if-nez v20, :cond_336

    .line 94
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzhw;->zzz()Lcom/google/android/gms/internal/measurement/zzhw;

    .line 95
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzhw;->zzw()Lcom/google/android/gms/internal/measurement/zzhw;

    :cond_336
    if-nez v10, :cond_33b

    .line 96
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzhw;->zzq()Lcom/google/android/gms/internal/measurement/zzhw;

    .line 97
    :cond_33b
    invoke-virtual {v1, v6, v15}, Lcom/google/android/gms/measurement/internal/zzpv;->zzN(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzhw;)V

    if-nez v11, :cond_343

    .line 98
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzhw;->zzA()Lcom/google/android/gms/internal/measurement/zzhw;

    :cond_343
    if-nez v10, :cond_348

    .line 99
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzhw;->zzr()Lcom/google/android/gms/internal/measurement/zzhw;

    .line 100
    :cond_348
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzhw;->zzaL()Ljava/lang/String;

    move-result-object v9

    .line 101
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_365

    const-string v8, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35b

    goto :goto_365

    :cond_35b
    move/from16 v22, v0

    move/from16 v23, v5

    move/from16 v26, v10

    move/from16 v28, v11

    goto/16 :goto_400

    :cond_365
    :goto_365
    new-instance v8, Ljava/util/ArrayList;

    .line 102
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzhw;->zzaM()Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 103
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move/from16 v22, v0

    move/from16 v23, v5

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 104
    :goto_37c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_3ea

    .line 105
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v27, v9

    move-object/from16 v9, v26

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzhm;

    move/from16 v26, v10

    .line 106
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhm;->zzh()Ljava/lang/String;

    move-result-object v10

    move/from16 v28, v11

    const-string v11, "_fx"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3aa

    .line 107
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->remove()V

    move/from16 v10, v26

    move-object/from16 v9, v27

    move/from16 v11, v28

    const/16 v24, 0x1

    :goto_3a7
    const/16 v25, 0x1

    goto :goto_37c

    .line 108
    :cond_3aa
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhm;->zzh()Ljava/lang/String;

    move-result-object v10

    const-string v11, "_f"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3e3

    .line 109
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    const-string v10, "_pfo"

    .line 110
    invoke-static {v9, v10}, Lcom/google/android/gms/measurement/internal/zzqa;->zzG(Lcom/google/android/gms/internal/measurement/zzhm;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhq;

    move-result-object v10

    if-eqz v10, :cond_3c9

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzhq;->zzd()J

    move-result-wide v10

    .line 111
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 112
    :cond_3c9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    const-string v10, "_uwa"

    .line 113
    invoke-static {v9, v10}, Lcom/google/android/gms/measurement/internal/zzqa;->zzG(Lcom/google/android/gms/internal/measurement/zzhm;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhq;

    move-result-object v9

    if-eqz v9, :cond_3dc

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhq;->zzd()J

    move-result-wide v9

    .line 114
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    :cond_3dc
    move/from16 v10, v26

    move-object/from16 v9, v27

    move/from16 v11, v28

    goto :goto_3a7

    :cond_3e3
    move/from16 v10, v26

    move-object/from16 v9, v27

    move/from16 v11, v28

    goto :goto_37c

    :cond_3ea
    move/from16 v26, v10

    move/from16 v28, v11

    if-eqz v24, :cond_3f6

    .line 115
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzhw;->zzu()Lcom/google/android/gms/internal/measurement/zzhw;

    .line 116
    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/measurement/zzhw;->zzj(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzhw;

    :cond_3f6
    if-eqz v25, :cond_400

    .line 117
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzhw;->zzaF()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    .line 118
    invoke-virtual {v1, v8, v9, v0, v5}, Lcom/google/android/gms/measurement/internal/zzpv;->zzar(Ljava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V

    .line 119
    :cond_400
    :goto_400
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzhw;->zzc()I

    move-result v0

    if-nez v0, :cond_407

    goto :goto_441

    .line 120
    :cond_407
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzgi;->zzaB:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 121
    invoke-virtual {v0, v6, v5}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v0

    if-eqz v0, :cond_428

    .line 122
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzko;->zzcd()[B

    move-result-object v0

    .line 123
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/android/gms/measurement/internal/zzqa;->zzf([B)J

    move-result-wide v8

    invoke-virtual {v15, v8, v9}, Lcom/google/android/gms/internal/measurement/zzhw;->zzQ(J)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 124
    :cond_428
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzgi;->zzaP:Lcom/google/android/gms/measurement/internal/zzgg;

    const/4 v8, 0x0

    .line 125
    invoke-virtual {v0, v8, v5}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v0

    if-eqz v0, :cond_43e

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzph;->zzb()Lcom/google/android/gms/internal/measurement/zzim;

    move-result-object v0

    if-eqz v0, :cond_43e

    .line 126
    invoke-virtual {v15, v0}, Lcom/google/android/gms/internal/measurement/zzhw;->zzaw(Lcom/google/android/gms/internal/measurement/zzim;)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 127
    :cond_43e
    invoke-virtual {v4, v15}, Lcom/google/android/gms/internal/measurement/zzht;->zzc(Lcom/google/android/gms/internal/measurement/zzhw;)Lcom/google/android/gms/internal/measurement/zzht;

    :goto_441
    add-int/lit8 v14, v14, 0x1

    move/from16 v9, v20

    move-object/from16 v0, v21

    move/from16 v8, v22

    move/from16 v5, v23

    move/from16 v10, v26

    move/from16 v11, v28

    goto/16 :goto_2ea

    .line 128
    :cond_451
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzht;->zza()I

    move-result v0

    if-nez v0, :cond_467

    .line 129
    invoke-virtual {v1, v7}, Lcom/google/android/gms/measurement/internal/zzpv;->zzal(Ljava/util/List;)V

    const/4 v5, 0x0

    .line 130
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    const/4 v2, 0x0

    const/16 v3, 0xcc

    const/4 v4, 0x0

    .line 131
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzpv;->zzY(ZILjava/lang/Throwable;[BLjava/lang/String;Ljava/util/List;)V

    return-void

    .line 132
    :cond_467
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhv;

    new-instance v5, Ljava/util/ArrayList;

    .line 133
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 134
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v8

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzgi;->zzaP:Lcom/google/android/gms/measurement/internal/zzgg;

    const/4 v10, 0x0

    .line 135
    invoke-virtual {v8, v10, v9}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v8

    if-eqz v8, :cond_489

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzph;->zza()Lcom/google/android/gms/measurement/internal/zzmf;

    move-result-object v8

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzmf;->zzd:Lcom/google/android/gms/measurement/internal/zzmf;

    if-ne v8, v9, :cond_489

    const/4 v8, 0x1

    goto :goto_48a

    :cond_489
    const/4 v8, 0x0

    :goto_48a
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzph;->zza()Lcom/google/android/gms/measurement/internal/zzmf;

    move-result-object v9

    sget-object v10, Lcom/google/android/gms/measurement/internal/zzmf;->zzc:Lcom/google/android/gms/measurement/internal/zzmf;

    if-eq v9, v10, :cond_49a

    if-eqz v8, :cond_496

    const/4 v9, 0x1

    goto :goto_49b

    :cond_496
    move-object v8, v0

    :cond_497
    move-object v0, v5

    goto/16 :goto_6a5

    :cond_49a
    move v9, v8

    .line 136
    :goto_49b
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhv;

    .line 137
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhv;->zzh()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4a9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4c4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzhx;

    .line 138
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhx;->zzbI()Z

    move-result v8

    if-eqz v8, :cond_4a9

    .line 136
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4c5

    :cond_4c4
    const/4 v0, 0x0

    .line 139
    :goto_4c5
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzhv;

    .line 140
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 141
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzM()V

    .line 142
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/zzhv;->zzc(Lcom/google/android/gms/internal/measurement/zzhv;)Lcom/google/android/gms/internal/measurement/zzht;

    move-result-object v10

    .line 143
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4e2

    .line 144
    invoke-virtual {v10, v0}, Lcom/google/android/gms/internal/measurement/zzht;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzht;

    .line 145
    :cond_4e2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzr()Lcom/google/android/gms/measurement/internal/zzif;

    move-result-object v11

    invoke-virtual {v11, v6}, Lcom/google/android/gms/measurement/internal/zzif;->zzm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 146
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4f3

    .line 147
    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/measurement/zzht;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzht;

    :cond_4f3
    new-instance v11, Ljava/util/ArrayList;

    .line 148
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 149
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhv;->zzh()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_500
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_51d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/measurement/zzhx;

    .line 150
    invoke-static {v14}, Lcom/google/android/gms/internal/measurement/zzhx;->zzA(Lcom/google/android/gms/internal/measurement/zzhx;)Lcom/google/android/gms/internal/measurement/zzhw;

    move-result-object v14

    .line 151
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzhw;->zzt()Lcom/google/android/gms/internal/measurement/zzhw;

    .line 152
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/measurement/zzhx;

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_500

    .line 153
    :cond_51d
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzht;->zzd()Lcom/google/android/gms/internal/measurement/zzht;

    .line 154
    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/measurement/zzht;->zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzht;

    .line 155
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v8

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzgi;->zzaN:Lcom/google/android/gms/measurement/internal/zzgg;

    const/4 v14, 0x0

    .line 156
    invoke-virtual {v8, v14, v11}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v8

    if-eqz v8, :cond_54b

    .line 157
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v8

    .line 158
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v8

    .line 159
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_541

    const-string v14, "null"

    goto :goto_545

    :cond_541
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzht;->zzi()Ljava/lang/String;

    move-result-object v14

    :goto_545
    const-string v15, "[sgtm] Processed MeasurementBatch for sGTM with sgtmJoinId: "

    .line 160
    invoke-virtual {v8, v15, v14}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_558

    .line 161
    :cond_54b
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v8

    const-string v14, "[sgtm] Processed MeasurementBatch for sGTM."

    invoke-virtual {v8, v14}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 162
    :goto_558
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzhv;

    .line 163
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_639

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v10

    const/4 v14, 0x0

    .line 164
    invoke-virtual {v10, v14, v11}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v10

    if-eqz v10, :cond_639

    .line 165
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzhv;

    .line 166
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 167
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzM()V

    .line 168
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhv;->zzb()Lcom/google/android/gms/internal/measurement/zzht;

    move-result-object v10

    .line 169
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v11

    const-string v14, "[sgtm] Processing Google Signal, sgtmJoinId:"

    invoke-virtual {v11, v14, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 170
    invoke-virtual {v10, v0}, Lcom/google/android/gms/internal/measurement/zzht;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzht;

    .line 171
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhv;->zzh()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_59b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5bd

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzhx;

    .line 172
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhx;->zzz()Lcom/google/android/gms/internal/measurement/zzhw;

    move-result-object v11

    .line 173
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhx;->zzN()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/google/android/gms/internal/measurement/zzhw;->zzY(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 174
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhx;->zzd()I

    move-result v4

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/measurement/zzhw;->zzV(I)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 175
    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/measurement/zzht;->zzc(Lcom/google/android/gms/internal/measurement/zzhw;)Lcom/google/android/gms/internal/measurement/zzht;

    goto :goto_59b

    .line 176
    :cond_5bd
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhv;

    iget-object v4, v12, Lcom/google/android/gms/measurement/internal/zzoz;->zzg:Lcom/google/android/gms/measurement/internal/zzpv;

    .line 177
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzpv;->zzr()Lcom/google/android/gms/measurement/internal/zzif;

    move-result-object v4

    .line 178
    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzif;->zzm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 179
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_619

    sget-object v10, Lcom/google/android/gms/measurement/internal/zzgi;->zzr:Lcom/google/android/gms/measurement/internal/zzgg;

    const/4 v14, 0x0

    .line 180
    invoke-virtual {v10, v14}, Lcom/google/android/gms/measurement/internal/zzgg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 181
    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 182
    invoke-virtual {v10}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v11

    .line 183
    invoke-virtual {v10}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzph;

    .line 184
    invoke-virtual {v11}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    if-eqz v9, :cond_60e

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzmf;->zze:Lcom/google/android/gms/measurement/internal/zzmf;

    goto :goto_610

    .line 223
    :cond_60e
    sget-object v11, Lcom/google/android/gms/measurement/internal/zzmf;->zzb:Lcom/google/android/gms/measurement/internal/zzmf;

    .line 185
    :goto_610
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v12

    const/4 v14, 0x0

    invoke-direct {v4, v10, v12, v11, v14}, Lcom/google/android/gms/measurement/internal/zzph;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/zzmf;Lcom/google/android/gms/internal/measurement/zzim;)V

    goto :goto_632

    :cond_619
    const/4 v14, 0x0

    .line 223
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzph;

    sget-object v10, Lcom/google/android/gms/measurement/internal/zzgi;->zzr:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 186
    invoke-virtual {v10, v14}, Lcom/google/android/gms/measurement/internal/zzgg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 187
    check-cast v10, Ljava/lang/String;

    if-eqz v9, :cond_629

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzmf;->zze:Lcom/google/android/gms/measurement/internal/zzmf;

    goto :goto_62b

    .line 188
    :cond_629
    sget-object v11, Lcom/google/android/gms/measurement/internal/zzmf;->zzb:Lcom/google/android/gms/measurement/internal/zzmf;

    :goto_62b
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v12

    invoke-direct {v4, v10, v12, v11, v14}, Lcom/google/android/gms/measurement/internal/zzph;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/zzmf;Lcom/google/android/gms/internal/measurement/zzim;)V

    .line 189
    :goto_632
    invoke-static {v0, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 190
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_639
    if-eqz v9, :cond_497

    .line 191
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzmd;->zzch()Lcom/google/android/gms/internal/measurement/zzlz;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzht;

    const/4 v4, 0x0

    .line 192
    :goto_642
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhv;->zza()I

    move-result v9

    if-ge v4, v9, :cond_65e

    .line 193
    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/measurement/zzhv;->zze(I)Lcom/google/android/gms/internal/measurement/zzhx;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzmd;->zzch()Lcom/google/android/gms/internal/measurement/zzlz;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzhw;

    .line 194
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhw;->zzC()Lcom/google/android/gms/internal/measurement/zzhw;

    .line 195
    invoke-virtual {v9, v2, v3}, Lcom/google/android/gms/internal/measurement/zzhw;->zzO(J)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 196
    invoke-virtual {v0, v4, v9}, Lcom/google/android/gms/internal/measurement/zzht;->zze(ILcom/google/android/gms/internal/measurement/zzhw;)Lcom/google/android/gms/internal/measurement/zzht;

    add-int/lit8 v4, v4, 0x1

    goto :goto_642

    .line 197
    :cond_65e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhv;

    invoke-static {v0, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    invoke-virtual {v1, v7}, Lcom/google/android/gms/measurement/internal/zzpv;->zzal(Ljava/util/List;)V

    const/4 v4, 0x0

    move-object v7, v5

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/16 v3, 0xcc

    .line 199
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzpv;->zzY(ZILjava/lang/Throwable;[BLjava/lang/String;Ljava/util/List;)V

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzph;->zzc()Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-virtual {v1, v6, v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzay(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_707

    .line 201
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v2, "[sgtm] Sending sgtm batches available notification to app"

    .line 203
    invoke-virtual {v0, v2, v6}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    .line 204
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.google.android.gms.measurement.BATCHES_AVAILABLE"

    .line 205
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzpv;->zzn:Lcom/google/android/gms/measurement/internal/zzio;

    .line 207
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v2

    .line 208
    invoke-static {v2, v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaK(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    .line 209
    :goto_6a5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzgi;->zzaO:Lcom/google/android/gms/measurement/internal/zzgg;

    const/4 v14, 0x0

    .line 210
    invoke-virtual {v4, v14, v5}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v4

    if-eqz v4, :cond_6bc

    .line 211
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzp()Lcom/google/android/gms/measurement/internal/zzhk;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzhk;->zzd()Z

    move-result v4

    if-eqz v4, :cond_707

    .line 212
    :cond_6bc
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v4

    .line 213
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzhe;->zzr()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_6d4

    .line 214
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/google/android/gms/measurement/internal/zzqa;->zzq(Lcom/google/android/gms/internal/measurement/zzhv;)Ljava/lang/String;

    move-result-object v10

    goto :goto_6d5

    :cond_6d4
    move-object v10, v14

    .line 215
    :goto_6d5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    .line 216
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzko;->zzcd()[B

    move-result-object v4

    .line 217
    invoke-virtual {v1, v7}, Lcom/google/android/gms/measurement/internal/zzpv;->zzal(Ljava/util/List;)V

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzpv;->zzk:Lcom/google/android/gms/measurement/internal/zzoa;

    .line 218
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzoa;->zze:Lcom/google/android/gms/measurement/internal/zzhp;

    invoke-virtual {v5, v2, v3}, Lcom/google/android/gms/measurement/internal/zzhp;->zzb(J)V

    .line 219
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 220
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    array-length v3, v4

    .line 221
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Uploading data. app, uncompressed size, data"

    invoke-virtual {v2, v4, v6, v3, v10}, Lcom/google/android/gms/measurement/internal/zzhc;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v9, 0x1

    iput-boolean v9, v1, Lcom/google/android/gms/measurement/internal/zzpv;->zzv:Z

    .line 222
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzp()Lcom/google/android/gms/measurement/internal/zzhk;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzpl;

    invoke-direct {v3, v1, v6, v0}, Lcom/google/android/gms/measurement/internal/zzpl;-><init>(Lcom/google/android/gms/measurement/internal/zzpv;Ljava/lang/String;Ljava/util/List;)V

    .line 223
    invoke-virtual {v2, v6, v13, v8, v3}, Lcom/google/android/gms/measurement/internal/zzhk;->zzc(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzph;Lcom/google/android/gms/internal/measurement/zzhv;Lcom/google/android/gms/measurement/internal/zzhg;)V

    :cond_707
    return-void

    :catchall_708
    move-exception v0

    move-object v10, v11

    :goto_70a
    if-eqz v10, :cond_70f

    .line 16
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 60
    :cond_70f
    throw v0
.end method

.method final zzav(Ljava/lang/String;)V
    .registers 10

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzM()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzw:Z

    const/4 v1, 0x0

    :try_start_e
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzn:Lcom/google/android/gms/measurement/internal/zzio;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaV()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzu()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzny;->zzl()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_2c

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string v0, "Upload data called on the client side before use of service was decided"

    .line 7
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    goto/16 :goto_e6

    .line 8
    :cond_2c
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string v0, "Upload called in the client side when service should be used"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    goto/16 :goto_e6

    :cond_41
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zza:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_4e

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaL()V

    goto/16 :goto_e6

    .line 10
    :cond_4e
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzp()Lcom/google/android/gms/measurement/internal/zzhk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhk;->zzd()Z

    move-result v2

    if-nez v2, :cond_6a

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string v0, "Network not connected, ignoring upload request"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaL()V

    goto/16 :goto_e6

    .line 13
    :cond_6a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzY(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_82

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v2, "[sgtm] Upload queue has no batches for appId"

    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_e6

    .line 15
    :cond_82
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzw(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzpz;

    move-result-object v2

    if-eqz v2, :cond_e6

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzpz;->zzg()Lcom/google/android/gms/internal/measurement/zzhv;

    move-result-object v3

    if-eqz v3, :cond_e6

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v4

    .line 17
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v4

    const-string v5, "[sgtm] Uploading data from upload queue. appId, type, url"

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzpz;->zzd()Lcom/google/android/gms/measurement/internal/zzmf;

    move-result-object v6

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzpz;->zzh()Ljava/lang/String;

    move-result-object v7

    .line 18
    invoke-virtual {v4, v5, p1, v6, v7}, Lcom/google/android/gms/measurement/internal/zzhc;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzko;->zzcd()[B

    move-result-object v4

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v5

    .line 21
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzhe;->zzr()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_d4

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/gms/measurement/internal/zzqa;->zzq(Lcom/google/android/gms/internal/measurement/zzhv;)Ljava/lang/String;

    move-result-object v5

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v6

    .line 24
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v6

    const-string v7, "[sgtm] Uploading data from upload queue. appId, uncompressed size, data"

    array-length v4, v4

    .line 25
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 26
    invoke-virtual {v6, v7, p1, v4, v5}, Lcom/google/android/gms/measurement/internal/zzhc;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d4
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzv:Z

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzp()Lcom/google/android/gms/measurement/internal/zzhk;

    move-result-object v0

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzpz;->zzf()Lcom/google/android/gms/measurement/internal/zzph;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzpm;

    invoke-direct {v5, p0, p1, v2}, Lcom/google/android/gms/measurement/internal/zzpm;-><init>(Lcom/google/android/gms/measurement/internal/zzpv;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzpz;)V

    .line 28
    invoke-virtual {v0, p1, v4, v3, v5}, Lcom/google/android/gms/measurement/internal/zzhk;->zzc(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzph;Lcom/google/android/gms/internal/measurement/zzhv;Lcom/google/android/gms/measurement/internal/zzhg;)V
    :try_end_e6
    .catchall {:try_start_e .. :try_end_e6} :catchall_ec

    .line 7
    :cond_e6
    :goto_e6
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzw:Z

    .line 30
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaH()V

    return-void

    :catchall_ec
    move-exception p1

    .line 28
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzw:Z

    .line 30
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaH()V

    .line 31
    throw p1
.end method

.method final zzaw(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzhp;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 14

    const/4 v0, 0x4

    .line 1
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_o"

    aput-object v2, v0, v1

    const-string v2, "_sn"

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v2, 0x2

    const-string v4, "_sc"

    aput-object v4, v0, v2

    const/4 v2, 0x3

    const-string v4, "_si"

    aput-object v4, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/util/CollectionUtils;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzhp;->zzl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzqf;->zzap(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_35

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzqf;->zzap(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2c

    goto :goto_35

    .line 4
    :cond_2c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object p1

    invoke-virtual {p1, p4, v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzc(Ljava/lang/String;Z)I

    move-result p1

    goto :goto_3d

    .line 3
    :cond_35
    :goto_35
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object p1

    invoke-virtual {p1, p4, v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzd(Ljava/lang/String;Z)I

    move-result p1

    :goto_3d
    int-to-long v4, p1

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzhp;->zzm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzhp;->zzm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->codePointCount(II)I

    move-result p1

    int-to-long v1, p1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzB()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object p1

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzhp;->zzl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    const/16 v7, 0x28

    invoke-virtual {p1, v6, v7, v3}, Lcom/google/android/gms/measurement/internal/zzqf;->zzG(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    cmp-long v4, v1, v4

    if-lez v4, :cond_c9

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzhp;->zzl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c9

    .line 9
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzhp;->zzl()Ljava/lang/String;

    move-result-object v0

    const-string v4, "_ev"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzB()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object p1

    .line 11
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzhp;->zzm()Ljava/lang/String;

    move-result-object p2

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    invoke-virtual {v0, p4, v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzd(Ljava/lang/String;Z)I

    move-result p4

    .line 13
    invoke-virtual {p1, p2, p4, v3}, Lcom/google/android/gms/measurement/internal/zzqf;->zzG(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-virtual {p3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 15
    :cond_92
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p4

    .line 16
    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzhe;->zzl()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p4

    .line 17
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v3, "Param value is too long; discarded. Name, value length"

    .line 18
    invoke-virtual {p4, v3, p1, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    const-string p4, "_err"

    invoke-virtual {p3, p4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-nez v0, :cond_c2

    const-wide/16 v5, 0x4

    .line 20
    invoke-virtual {p3, p4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 21
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_c2

    .line 22
    invoke-virtual {p3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "_el"

    .line 23
    invoke-virtual {p3, p1, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 24
    :cond_c2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzhp;->zzl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_c9
    return-void
.end method

.method final zzax(Lcom/google/android/gms/measurement/internal/zzbh;Lcom/google/android/gms/measurement/internal/zzr;)V
    .registers 49

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 1
    const-string v3, "metadata_fingerprint"

    const-string v4, "app_id"

    const-string v5, "_fx"

    const-string v6, "raw_events"

    const-string v7, "_sno"

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v25

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzM()V

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/measurement/internal/zzqa;->zzE(Lcom/google/android/gms/measurement/internal/zzbh;Lcom/google/android/gms/measurement/internal/zzr;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto/16 :goto_d3

    .line 7
    :cond_2f
    iget-boolean v0, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzh:Z

    if-nez v0, :cond_37

    .line 8
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzg(Lcom/google/android/gms/measurement/internal/zzr;)Lcom/google/android/gms/measurement/internal/zzh;

    return-void

    .line 9
    :cond_37
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzr()Lcom/google/android/gms/measurement/internal/zzif;

    move-result-object v0

    move-object/from16 v8, p1

    iget-object v13, v8, Lcom/google/android/gms/measurement/internal/zzbh;->zza:Ljava/lang/String;

    invoke-virtual {v0, v10, v13}, Lcom/google/android/gms/measurement/internal/zzif;->zzx(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v15, "_err"

    const/4 v9, 0x0

    if-eqz v0, :cond_d4

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzpv;->zzn:Lcom/google/android/gms/measurement/internal/zzio;

    .line 12
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v3

    .line 13
    invoke-virtual {v3, v13}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Dropping blocked event. appId"

    .line 14
    invoke-virtual {v0, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzr()Lcom/google/android/gms/measurement/internal/zzif;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/google/android/gms/measurement/internal/zzif;->zzt(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8d

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzr()Lcom/google/android/gms/measurement/internal/zzif;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/google/android/gms/measurement/internal/zzif;->zzy(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_78

    goto :goto_8d

    .line 26
    :cond_78
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d3

    .line 27
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzB()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v8

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzpv;->zzK:Lcom/google/android/gms/measurement/internal/zzqe;

    const-string v12, "_ev"

    const/4 v14, 0x0

    const/16 v11, 0xb

    .line 28
    invoke-virtual/range {v8 .. v14}, Lcom/google/android/gms/measurement/internal/zzqf;->zzR(Lcom/google/android/gms/measurement/internal/zzqe;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 17
    :cond_8d
    :goto_8d
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/google/android/gms/measurement/internal/zzaw;->zzl(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v0

    if-eqz v0, :cond_d3

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzp()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzg()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 20
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    .line 22
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzgi;->zzM:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 23
    invoke-virtual {v4, v9}, Lcom/google/android/gms/measurement/internal/zzgg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 22
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_d3

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v3, "Fetching config for blocked app"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzO(Lcom/google/android/gms/measurement/internal/zzh;)V

    :cond_d3
    :goto_d3
    return-void

    .line 29
    :cond_d4
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzhf;->zzb(Lcom/google/android/gms/measurement/internal/zzbh;)Lcom/google/android/gms/measurement/internal/zzhf;

    move-result-object v0

    .line 30
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzB()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v8

    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/google/android/gms/measurement/internal/zzam;->zzf(Ljava/lang/String;)I

    move-result v11

    .line 32
    invoke-virtual {v8, v0, v11}, Lcom/google/android/gms/measurement/internal/zzqf;->zzQ(Lcom/google/android/gms/measurement/internal/zzhf;I)V

    .line 33
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v8

    .line 34
    sget-object v11, Lcom/google/android/gms/measurement/internal/zzgi;->zzaf:Lcom/google/android/gms/measurement/internal/zzgg;

    const/16 v12, 0xa

    const/16 v13, 0x23

    invoke-virtual {v8, v10, v11, v12, v13}, Lcom/google/android/gms/measurement/internal/zzam;->zzi(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;II)I

    move-result v8

    iget-object v11, v0, Lcom/google/android/gms/measurement/internal/zzhf;->zzd:Landroid/os/Bundle;

    new-instance v12, Ljava/util/TreeSet;

    .line 35
    invoke-virtual {v11}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 36
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_104
    :goto_104
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_124

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v14, "items"

    .line 37
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_104

    .line 38
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzB()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v14

    .line 39
    invoke-virtual {v11, v13}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v13

    .line 40
    invoke-virtual {v14, v13, v8}, Lcom/google/android/gms/measurement/internal/zzqf;->zzP([Landroid/os/Parcelable;I)V

    goto :goto_104

    .line 41
    :cond_124
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhf;->zza()Lcom/google/android/gms/measurement/internal/zzbh;

    move-result-object v8

    .line 42
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzr()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x2

    invoke-static {v0, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_14e

    .line 44
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzpv;->zzn:Lcom/google/android/gms/measurement/internal/zzio;

    .line 46
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v12

    .line 47
    invoke-virtual {v12, v8}, Lcom/google/android/gms/measurement/internal/zzgx;->zzc(Lcom/google/android/gms/measurement/internal/zzbh;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "Logging event"

    invoke-virtual {v0, v13, v12}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    :cond_14e
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzH()V

    .line 49
    :try_start_155
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzg(Lcom/google/android/gms/measurement/internal/zzr;)Lcom/google/android/gms/measurement/internal/zzh;

    const-string v0, "ecommerce_purchase"

    iget-object v12, v8, Lcom/google/android/gms/measurement/internal/zzbh;->zza:Ljava/lang/String;

    .line 50
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_160
    .catchall {:try_start_155 .. :try_end_160} :catchall_b9b

    const-string v13, "refund"

    move-object/from16 v27, v3

    if-nez v0, :cond_177

    :try_start_166
    const-string v0, "purchase"

    .line 51
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_177

    .line 52
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_175

    goto :goto_177

    :cond_175
    const/4 v0, 0x0

    goto :goto_178

    :cond_177
    :goto_177
    const/4 v0, 0x1

    :goto_178
    const-string v9, "_iap"

    .line 53
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_17e
    .catchall {:try_start_166 .. :try_end_17e} :catchall_b9b

    const/16 p1, 0x0

    const-string v3, "value"

    if-nez v9, :cond_195

    if-eqz v0, :cond_188

    const/4 v0, 0x1

    goto :goto_195

    :cond_188
    move-object/from16 v28, v4

    move-object v4, v8

    move/from16 v21, v11

    move-object/from16 v22, v15

    const/16 v16, 0x0

    :goto_191
    const/16 v23, 0x1

    goto/16 :goto_30b

    :cond_195
    :goto_195
    :try_start_195
    iget-object v9, v8, Lcom/google/android/gms/measurement/internal/zzbh;->zzb:Lcom/google/android/gms/measurement/internal/zzbf;

    const-string v11, "currency"

    .line 54
    invoke-virtual {v9, v11}, Lcom/google/android/gms/measurement/internal/zzbf;->zzg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v0, :cond_1fa

    .line 56
    invoke-virtual {v9, v3}, Lcom/google/android/gms/measurement/internal/zzbf;->zzd(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    const-wide v20, 0x412e848000000000L    # 1000000.0

    mul-double v18, v18, v20

    const-wide/16 v22, 0x0

    cmpl-double v0, v18, v22

    if-nez v0, :cond_1c2

    .line 57
    invoke-virtual {v9, v3}, Lcom/google/android/gms/measurement/internal/zzbf;->zze(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v22, v15

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    long-to-double v14, v14

    mul-double v18, v14, v20

    goto :goto_1c4

    :cond_1c2
    move-object/from16 v22, v15

    :goto_1c4
    const-wide/high16 v14, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v0, v18, v14

    if-gtz v0, :cond_1dc

    const-wide/high16 v14, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v0, v18, v14

    if-ltz v0, :cond_1dc

    .line 63
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    .line 64
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_204

    neg-long v14, v14

    goto :goto_204

    .line 58
    :cond_1dc
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v2, "Data lost. Currency value is too big. appId"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 60
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 61
    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzS()V

    goto/16 :goto_59d

    :cond_1fa
    move-object/from16 v22, v15

    .line 55
    invoke-virtual {v9, v3}, Lcom/google/android/gms/measurement/internal/zzbf;->zze(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 65
    :cond_204
    :goto_204
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_302

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 66
    invoke-virtual {v11, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v9, "[A-Z]{3}"

    .line 67
    invoke-virtual {v0, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_302

    const-string v9, "_ltv_"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 68
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Lcom/google/android/gms/measurement/internal/zzaw;->zzy(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzqd;

    move-result-object v0

    if-eqz v0, :cond_261

    iget-object v9, v0, Lcom/google/android/gms/measurement/internal/zzqd;->zze:Ljava/lang/Object;

    .line 69
    instance-of v9, v9, Ljava/lang/Long;

    if-nez v9, :cond_233

    goto :goto_261

    .line 101
    :cond_233
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzqd;->zze:Ljava/lang/Object;

    .line 82
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzqd;

    move-object v9, v10

    iget-object v10, v8, Lcom/google/android/gms/measurement/internal/zzbh;->zzc:Ljava/lang/String;

    .line 83
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v18

    add-long/2addr v12, v14

    .line 84
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v28, v4

    move-object v15, v8

    move-wide/from16 v12, v18

    const/4 v4, 0x2

    const/16 v16, 0x0

    const/16 v23, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/google/android/gms/measurement/internal/zzqd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    move-object v10, v9

    move/from16 v21, v4

    move-object v4, v15

    :goto_25f
    move-object v0, v8

    goto :goto_2ca

    :cond_261
    :goto_261
    move-object/from16 v28, v4

    const/4 v4, 0x2

    const/16 v16, 0x0

    const/16 v23, 0x1

    .line 70
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v9

    .line 71
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzgi;->zzS:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 72
    invoke-virtual {v0, v10, v12}, Lcom/google/android/gms/measurement/internal/zzam;->zzh(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 73
    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 75
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V
    :try_end_281
    .catchall {:try_start_195 .. :try_end_281} :catchall_b9b

    .line 76
    :try_start_281
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    const-string v13, "delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like \'!_ltv!_%\' escape \'!\'order by set_timestamp desc limit ?,10);"
    :try_end_287
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_281 .. :try_end_287} :catch_29c
    .catchall {:try_start_281 .. :try_end_287} :catchall_b9b

    move/from16 v21, v4

    const/4 v4, 0x3

    :try_start_28a
    new-array v4, v4, [Ljava/lang/String;

    aput-object v10, v4, p1

    aput-object v10, v4, v23

    .line 77
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v21

    .line 78
    invoke-virtual {v12, v13, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_299
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_28a .. :try_end_299} :catch_29a
    .catchall {:try_start_28a .. :try_end_299} :catchall_b9b

    goto :goto_2b2

    :catch_29a
    move-exception v0

    goto :goto_29f

    :catch_29c
    move-exception v0

    move/from16 v21, v4

    .line 394
    :goto_29f
    :try_start_29f
    iget-object v4, v9, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 79
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v4

    .line 80
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v4

    const-string v9, "Error pruning currencies. appId"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v4, v9, v12, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    :goto_2b2
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzqd;

    move-object v9, v10

    iget-object v10, v8, Lcom/google/android/gms/measurement/internal/zzbh;->zzc:Ljava/lang/String;

    .line 81
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object v4, v8

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/google/android/gms/measurement/internal/zzqd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    move-object v10, v9

    goto :goto_25f

    .line 85
    :goto_2ca
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzai(Lcom/google/android/gms/measurement/internal/zzqd;)Z

    move-result v8

    if-nez v8, :cond_30b

    .line 86
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v8

    .line 87
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v8

    const-string v9, "Too many unique user properties are set. Ignoring user property. appId"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzpv;->zzn:Lcom/google/android/gms/measurement/internal/zzio;

    .line 88
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v12

    iget-object v13, v0, Lcom/google/android/gms/measurement/internal/zzqd;->zzc:Ljava/lang/String;

    .line 89
    invoke-virtual {v12, v13}, Lcom/google/android/gms/measurement/internal/zzgx;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzqd;->zze:Ljava/lang/Object;

    .line 90
    invoke-virtual {v8, v9, v11, v12, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzB()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v8

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzpv;->zzK:Lcom/google/android/gms/measurement/internal/zzqe;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v11, 0x9

    const/4 v12, 0x0

    .line 92
    invoke-virtual/range {v8 .. v14}, Lcom/google/android/gms/measurement/internal/zzqf;->zzR(Lcom/google/android/gms/measurement/internal/zzqe;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_30b

    :cond_302
    move-object/from16 v28, v4

    move-object v4, v8

    const/16 v16, 0x0

    const/16 v21, 0x2

    goto/16 :goto_191

    :cond_30b
    :goto_30b
    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/zzbh;->zza:Ljava/lang/String;

    .line 93
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzqf;->zzaq(Ljava/lang/String;)Z

    move-result v15

    move-object/from16 v8, v22

    .line 94
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 95
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzB()Lcom/google/android/gms/measurement/internal/zzqf;

    iget-object v8, v4, Lcom/google/android/gms/measurement/internal/zzbh;->zzb:Lcom/google/android/gms/measurement/internal/zzbf;

    if-nez v8, :cond_321

    const-wide/16 v13, 0x0

    goto :goto_343

    .line 158
    :cond_321
    new-instance v9, Lcom/google/android/gms/measurement/internal/zzbe;

    .line 96
    invoke-direct {v9, v8}, Lcom/google/android/gms/measurement/internal/zzbe;-><init>(Lcom/google/android/gms/measurement/internal/zzbf;)V

    const-wide/16 v13, 0x0

    .line 97
    :cond_328
    :goto_328
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_343

    .line 98
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzbe;->zza()Ljava/lang/String;

    move-result-object v11

    .line 97
    move-object v12, v11

    check-cast v12, Ljava/lang/String;

    .line 99
    invoke-virtual {v8, v11}, Lcom/google/android/gms/measurement/internal/zzbf;->zzf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 100
    instance-of v12, v11, [Landroid/os/Parcelable;

    if-eqz v12, :cond_328

    .line 101
    check-cast v11, [Landroid/os/Parcelable;

    array-length v11, v11

    int-to-long v11, v11

    add-long/2addr v13, v11

    goto :goto_328

    :cond_343
    :goto_343
    const-wide/16 v11, 0x1

    add-long/2addr v13, v11

    move-object v9, v8

    .line 102
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v8

    move-wide/from16 v29, v11

    move-object v12, v9

    move-object v11, v10

    .line 103
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zza()J

    move-result-wide v9

    const-wide/16 v31, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v18, v12

    move-wide v12, v13

    const/4 v14, 0x1

    move-object/from16 v22, v16

    const/16 v16, 0x0

    move-object/from16 v24, v18

    const/16 v18, 0x0

    move-object/from16 v33, v5

    move-object/from16 v34, v6

    move-object/from16 v5, v22

    move/from16 v6, v23

    .line 104
    invoke-virtual/range {v8 .. v20}, Lcom/google/android/gms/measurement/internal/zzaw;->zzp(JLjava/lang/String;JZZZZZZZ)Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v8

    move-object v10, v11

    move/from16 v18, v15

    iget-wide v11, v8, Lcom/google/android/gms/measurement/internal/zzas;->zzb:J

    .line 105
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzam;->zzH()J

    move-result-wide v13

    sub-long/2addr v11, v13

    cmp-long v9, v11, v31

    const-wide/16 v13, 0x3e8

    if-lez v9, :cond_3a9

    rem-long/2addr v11, v13

    cmp-long v0, v11, v29

    if-nez v0, :cond_3a0

    .line 106
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v2, "Data loss. Too many events logged. appId, count"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-wide v4, v8, Lcom/google/android/gms/measurement/internal/zzas;->zzb:J

    .line 108
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 109
    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    :cond_3a0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzS()V

    goto/16 :goto_59d

    :cond_3a9
    if-eqz v18, :cond_3f8

    .line 368
    iget-wide v11, v8, Lcom/google/android/gms/measurement/internal/zzas;->zza:J

    .line 111
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzgi;->zzm:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 112
    invoke-virtual {v9, v5}, Lcom/google/android/gms/measurement/internal/zzgg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 113
    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-wide v15, v13

    int-to-long v13, v9

    sub-long/2addr v11, v13

    cmp-long v9, v11, v31

    if-lez v9, :cond_3f8

    rem-long/2addr v11, v15

    cmp-long v0, v11, v29

    if-nez v0, :cond_3df

    .line 387
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 388
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v2, "Data loss. Too many public events logged. appId, count"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-wide v5, v8, Lcom/google/android/gms/measurement/internal/zzas;->zza:J

    .line 389
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 390
    invoke-virtual {v0, v2, v3, v5}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 391
    :cond_3df
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzB()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v8

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzpv;->zzK:Lcom/google/android/gms/measurement/internal/zzqe;

    const-string v12, "_ev"

    iget-object v13, v4, Lcom/google/android/gms/measurement/internal/zzbh;->zza:Ljava/lang/String;

    const/4 v14, 0x0

    const/16 v11, 0x10

    .line 392
    invoke-virtual/range {v8 .. v14}, Lcom/google/android/gms/measurement/internal/zzqf;->zzR(Lcom/google/android/gms/measurement/internal/zzqe;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 393
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzS()V

    goto/16 :goto_59d

    :cond_3f8
    const v9, 0xf4240

    if-eqz v17, :cond_43f

    iget-wide v11, v8, Lcom/google/android/gms/measurement/internal/zzas;->zzd:J

    .line 114
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v13

    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    sget-object v15, Lcom/google/android/gms/measurement/internal/zzgi;->zzl:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 115
    invoke-virtual {v13, v14, v15}, Lcom/google/android/gms/measurement/internal/zzam;->zzh(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)I

    move-result v13

    .line 116
    invoke-static {v9, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    move/from16 v14, p1

    .line 117
    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    int-to-long v13, v13

    sub-long/2addr v11, v13

    cmp-long v13, v11, v31

    if-lez v13, :cond_43f

    cmp-long v0, v11, v29

    if-nez v0, :cond_436

    .line 382
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 383
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v2, "Too many error events logged. appId, count"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-wide v4, v8, Lcom/google/android/gms/measurement/internal/zzas;->zzd:J

    .line 384
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 385
    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 386
    :cond_436
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzS()V

    goto/16 :goto_59d

    .line 118
    :cond_43f
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/measurement/internal/zzbf;->zzc()Landroid/os/Bundle;

    move-result-object v8

    .line 119
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzB()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v11

    const-string v12, "_o"

    iget-object v13, v4, Lcom/google/android/gms/measurement/internal/zzbh;->zzc:Ljava/lang/String;

    invoke-virtual {v11, v8, v12, v13}, Lcom/google/android/gms/measurement/internal/zzqf;->zzS(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzB()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v11

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzD:Ljava/lang/String;

    invoke-virtual {v11, v10, v12}, Lcom/google/android/gms/measurement/internal/zzqf;->zzak(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11
    :try_end_458
    .catchall {:try_start_29f .. :try_end_458} :catchall_b9b

    const-string v12, "_r"

    if-eqz v11, :cond_470

    .line 121
    :try_start_45c
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzB()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v11

    const-string v14, "_dbg"

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v11, v8, v14, v15}, Lcom/google/android/gms/measurement/internal/zzqf;->zzS(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzB()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v11

    invoke-virtual {v11, v8, v12, v15}, Lcom/google/android/gms/measurement/internal/zzqf;->zzS(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_470
    const-string v11, "_s"

    .line 123
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_491

    .line 124
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v11

    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    .line 125
    invoke-virtual {v11, v14, v7}, Lcom/google/android/gms/measurement/internal/zzaw;->zzy(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzqd;

    move-result-object v11

    if-eqz v11, :cond_491

    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/zzqd;->zze:Ljava/lang/Object;

    .line 126
    instance-of v14, v11, Ljava/lang/Long;

    if-eqz v14, :cond_491

    .line 127
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzB()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v14

    invoke-virtual {v14, v8, v7, v11}, Lcom/google/android/gms/measurement/internal/zzqf;->zzS(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    :cond_491
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v7

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzgi;->zzbg:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 129
    invoke-virtual {v7, v5, v11}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v7

    if-eqz v7, :cond_4c3

    const-string v7, "am"

    .line 130
    invoke-static {v13, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4c3

    const-string v7, "_ai"

    .line 131
    invoke-static {v0, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c3

    .line 132
    invoke-virtual {v8, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4c3

    .line 133
    instance-of v7, v0, Ljava/lang/String;
    :try_end_4b5
    .catchall {:try_start_45c .. :try_end_4b5} :catchall_b9b

    if-eqz v7, :cond_4c3

    .line 134
    :try_start_4b7
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    .line 135
    invoke-virtual {v8, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v8, v3, v13, v14}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V
    :try_end_4c3
    .catch Ljava/lang/NumberFormatException; {:try_start_4b7 .. :try_end_4c3} :catch_4c3
    .catchall {:try_start_4b7 .. :try_end_4c3} :catchall_b9b

    .line 137
    :catch_4c3
    :cond_4c3
    :try_start_4c3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v3

    .line 138
    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 140
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V
    :try_end_4d0
    .catchall {:try_start_4c3 .. :try_end_4d0} :catchall_b9b

    .line 141
    :try_start_4d0
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 142
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v7

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzgi;->zzp:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 143
    invoke-virtual {v7, v10, v11}, Lcom/google/android/gms/measurement/internal/zzam;->zzh(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)I

    move-result v7

    .line 144
    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v14, 0x0

    .line 145
    invoke-static {v14, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 146
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v9, "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)"

    move/from16 v11, v21

    new-array v11, v11, [Ljava/lang/String;

    aput-object v10, v11, v14

    aput-object v7, v11, v6
    :try_end_4f7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4d0 .. :try_end_4f7} :catch_501
    .catchall {:try_start_4d0 .. :try_end_4f7} :catchall_b9b

    move-object/from16 v7, v34

    .line 147
    :try_start_4f9
    invoke-virtual {v0, v7, v9, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_4fd
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4f9 .. :try_end_4fd} :catch_4ff
    .catchall {:try_start_4f9 .. :try_end_4fd} :catchall_b9b

    int-to-long v13, v0

    goto :goto_519

    :catch_4ff
    move-exception v0

    goto :goto_504

    :catch_501
    move-exception v0

    move-object/from16 v7, v34

    .line 80
    :goto_504
    :try_start_504
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 148
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v3

    .line 149
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v3

    const-string v9, "Error deleting over the limit events. appId"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 150
    invoke-virtual {v3, v9, v11, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-wide/from16 v13, v31

    :goto_519
    cmp-long v0, v13, v31

    if-lez v0, :cond_532

    .line 151
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v3, "Data lost. Too many events stored on disk, deleted. appId"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 153
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 154
    invoke-virtual {v0, v3, v9, v11}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_532
    move-object/from16 v17, v8

    new-instance v8, Lcom/google/android/gms/measurement/internal/zzbc;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzpv;->zzn:Lcom/google/android/gms/measurement/internal/zzio;

    move-object v11, v10

    iget-object v10, v4, Lcom/google/android/gms/measurement/internal/zzbh;->zzc:Ljava/lang/String;

    move-object v3, v12

    iget-object v12, v4, Lcom/google/android/gms/measurement/internal/zzbh;->zza:Ljava/lang/String;

    iget-wide v13, v4, Lcom/google/android/gms/measurement/internal/zzbh;->zzd:J

    const-wide/16 v15, 0x0

    .line 155
    invoke-direct/range {v8 .. v17}, Lcom/google/android/gms/measurement/internal/zzbc;-><init>(Lcom/google/android/gms/measurement/internal/zzio;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    move-object v0, v8

    move-object v10, v11

    .line 156
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v4

    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/zzbc;->zzb:Ljava/lang/String;

    invoke-virtual {v4, v10, v8}, Lcom/google/android/gms/measurement/internal/zzaw;->zzs(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v4

    if-nez v4, :cond_5c2

    .line 159
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/google/android/gms/measurement/internal/zzaw;->zzi(Ljava/lang/String;)J

    move-result-wide v11

    .line 160
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/google/android/gms/measurement/internal/zzam;->zzb(Ljava/lang/String;)I

    move-result v4

    int-to-long v13, v4

    cmp-long v4, v11, v13

    if-ltz v4, :cond_5a5

    if-eqz v18, :cond_5a5

    .line 374
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 375
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v2, "Too many event names used, ignoring event. appId, name, supported count"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 376
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v4

    .line 377
    invoke-virtual {v4, v8}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 378
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/google/android/gms/measurement/internal/zzam;->zzb(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 379
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzhc;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 380
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzB()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v8

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzpv;->zzK:Lcom/google/android/gms/measurement/internal/zzqe;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v11, 0x8

    const/4 v12, 0x0

    .line 381
    invoke-virtual/range {v8 .. v14}, Lcom/google/android/gms/measurement/internal/zzqf;->zzR(Lcom/google/android/gms/measurement/internal/zzqe;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_59d
    .catchall {:try_start_504 .. :try_end_59d} :catchall_b9b

    .line 368
    :goto_59d
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzL()V

    return-void

    :cond_5a5
    move-object v9, v10

    move-object v10, v8

    .line 381
    :try_start_5a7
    new-instance v8, Lcom/google/android/gms/measurement/internal/zzbd;

    iget-wide v11, v0, Lcom/google/android/gms/measurement/internal/zzbc;->zzd:J

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-wide/from16 v17, v11

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 161
    invoke-direct/range {v8 .. v24}, Lcom/google/android/gms/measurement/internal/zzbd;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-object v4, v0

    goto :goto_5d0

    .line 206
    :cond_5c2
    iget-wide v10, v4, Lcom/google/android/gms/measurement/internal/zzbd;->zzf:J

    .line 157
    invoke-virtual {v0, v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzbc;->zza(Lcom/google/android/gms/measurement/internal/zzio;J)Lcom/google/android/gms/measurement/internal/zzbc;

    move-result-object v8

    iget-wide v9, v8, Lcom/google/android/gms/measurement/internal/zzbc;->zzd:J

    .line 158
    invoke-virtual {v4, v9, v10}, Lcom/google/android/gms/measurement/internal/zzbd;->zzc(J)Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v0

    move-object v4, v8

    move-object v8, v0

    .line 162
    :goto_5d0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzaw;->zzV(Lcom/google/android/gms/measurement/internal/zzbd;)V

    .line 163
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 164
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzM()V

    .line 165
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/zzbc;->zza:Ljava/lang/String;

    .line 167
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 168
    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 169
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhx;->zzz()Lcom/google/android/gms/internal/measurement/zzhw;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/google/android/gms/internal/measurement/zzhw;->zzar(I)Lcom/google/android/gms/internal/measurement/zzhw;

    const-string v0, "android"

    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/measurement/zzhw;->zzan(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 170
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_60a

    .line 171
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/measurement/zzhw;->zzI(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 172
    :cond_60a
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_615

    .line 173
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/measurement/zzhw;->zzK(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 174
    :cond_615
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_620

    .line 175
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/measurement/zzhw;->zzL(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 176
    :cond_620
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzw:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_62b

    .line 177
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/measurement/zzhw;->zzav(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 178
    :cond_62b
    iget-wide v10, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzj:J

    const-wide/32 v12, -0x80000000

    cmp-long v0, v10, v12

    if-eqz v0, :cond_638

    long-to-int v0, v10

    .line 179
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/measurement/zzhw;->zzM(I)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 180
    :cond_638
    iget-wide v10, v2, Lcom/google/android/gms/measurement/internal/zzr;->zze:J

    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/internal/measurement/zzhw;->zzai(J)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 181
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzb:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_648

    .line 182
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/measurement/zzhw;->zzah(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 183
    :cond_648
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzu(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v0

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzu:Ljava/lang/String;

    const/16 v11, 0x64

    .line 184
    invoke-static {v10, v11}, Lcom/google/android/gms/measurement/internal/zzjx;->zzk(Ljava/lang/String;I)Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v10

    .line 185
    invoke-virtual {v0, v10}, Lcom/google/android/gms/measurement/internal/zzjx;->zzl(Lcom/google/android/gms/measurement/internal/zzjx;)Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjx;->zzp()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/measurement/zzhw;->zzT(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 187
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhw;->zzaJ()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_67a

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzp:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_67a

    .line 188
    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/measurement/zzhw;->zzH(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 189
    :cond_67a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqr;->zzb()Z

    .line 190
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v10

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzgi;->zzaV:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 191
    invoke-virtual {v10, v8, v12}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v10

    if-eqz v10, :cond_726

    .line 192
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzB()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/google/android/gms/measurement/internal/zzqf;->zzab(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_726

    .line 193
    iget v8, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzB:I

    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/measurement/zzhw;->zzG(I)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 194
    iget-wide v12, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzC:J

    .line 195
    sget-object v8, Lcom/google/android/gms/measurement/internal/zzjw;->zza:Lcom/google/android/gms/measurement/internal/zzjw;

    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzjx;->zzr(Lcom/google/android/gms/measurement/internal/zzjw;)Z

    move-result v0

    const-wide/16 v14, 0x20

    if-nez v0, :cond_6ad

    cmp-long v0, v12, v31

    if-eqz v0, :cond_6ad

    const-wide/16 v16, -0x2

    and-long v12, v12, v16

    or-long/2addr v12, v14

    :cond_6ad
    cmp-long v0, v12, v29

    if-nez v0, :cond_6b3

    move v0, v6

    goto :goto_6b4

    :cond_6b3
    const/4 v0, 0x0

    .line 196
    :goto_6b4
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/measurement/zzhw;->zzaa(Z)Lcom/google/android/gms/internal/measurement/zzhw;

    cmp-long v0, v12, v31

    if-nez v0, :cond_6bd

    goto/16 :goto_726

    .line 197
    :cond_6bd
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhg;->zza()Lcom/google/android/gms/internal/measurement/zzhf;

    move-result-object v0

    and-long v16, v12, v29

    cmp-long v8, v16, v31

    if-eqz v8, :cond_6c9

    move v8, v6

    goto :goto_6ca

    :cond_6c9
    const/4 v8, 0x0

    .line 198
    :goto_6ca
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/measurement/zzhf;->zzc(Z)Lcom/google/android/gms/internal/measurement/zzhf;

    const-wide/16 v16, 0x2

    and-long v16, v12, v16

    cmp-long v8, v16, v31

    if-eqz v8, :cond_6d7

    move v8, v6

    goto :goto_6d8

    :cond_6d7
    const/4 v8, 0x0

    .line 199
    :goto_6d8
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/measurement/zzhf;->zze(Z)Lcom/google/android/gms/internal/measurement/zzhf;

    const-wide/16 v16, 0x4

    and-long v16, v12, v16

    cmp-long v8, v16, v31

    if-eqz v8, :cond_6e5

    move v8, v6

    goto :goto_6e6

    :cond_6e5
    const/4 v8, 0x0

    .line 200
    :goto_6e6
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/measurement/zzhf;->zzf(Z)Lcom/google/android/gms/internal/measurement/zzhf;

    const-wide/16 v16, 0x8

    and-long v16, v12, v16

    cmp-long v8, v16, v31

    if-eqz v8, :cond_6f3

    move v8, v6

    goto :goto_6f4

    :cond_6f3
    const/4 v8, 0x0

    .line 201
    :goto_6f4
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/measurement/zzhf;->zzg(Z)Lcom/google/android/gms/internal/measurement/zzhf;

    const-wide/16 v16, 0x10

    and-long v16, v12, v16

    cmp-long v8, v16, v31

    if-eqz v8, :cond_701

    move v8, v6

    goto :goto_702

    :cond_701
    const/4 v8, 0x0

    .line 202
    :goto_702
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/measurement/zzhf;->zzb(Z)Lcom/google/android/gms/internal/measurement/zzhf;

    and-long/2addr v14, v12

    cmp-long v8, v14, v31

    if-eqz v8, :cond_70c

    move v14, v6

    goto :goto_70d

    :cond_70c
    const/4 v14, 0x0

    .line 203
    :goto_70d
    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/measurement/zzhf;->zza(Z)Lcom/google/android/gms/internal/measurement/zzhf;

    const-wide/16 v14, 0x40

    and-long/2addr v12, v14

    cmp-long v8, v12, v31

    if-eqz v8, :cond_719

    move v14, v6

    goto :goto_71a

    :cond_719
    const/4 v14, 0x0

    .line 204
    :goto_71a
    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/measurement/zzhf;->zzd(Z)Lcom/google/android/gms/internal/measurement/zzhf;

    .line 205
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhg;

    .line 206
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/measurement/zzhw;->zzN(Lcom/google/android/gms/internal/measurement/zzhg;)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 207
    :cond_726
    :goto_726
    iget-wide v12, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzf:J

    cmp-long v0, v12, v31

    if-eqz v0, :cond_72f

    .line 208
    invoke-virtual {v9, v12, v13}, Lcom/google/android/gms/internal/measurement/zzhw;->zzW(J)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 209
    :cond_72f
    iget-wide v12, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzr:J

    invoke-virtual {v9, v12, v13}, Lcom/google/android/gms/internal/measurement/zzhw;->zzZ(J)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 210
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    move-result-object v8

    iget-object v0, v8, Lcom/google/android/gms/measurement/internal/zzqa;->zzg:Lcom/google/android/gms/measurement/internal/zzpv;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzpv;->zzn:Lcom/google/android/gms/measurement/internal/zzio;

    .line 211
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v10, "com.google.android.gms.measurement"

    .line 213
    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    new-instance v12, Lcom/google/android/gms/measurement/internal/zzbj;

    invoke-direct {v12}, Lcom/google/android/gms/measurement/internal/zzbj;-><init>()V

    .line 214
    invoke-static {v0, v10, v12}, Lcom/google/android/gms/internal/measurement/zzjm;->zza(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Runnable;)Lcom/google/android/gms/internal/measurement/zzjm;

    move-result-object v0

    if-nez v0, :cond_75a

    .line 215
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_75e

    :cond_75a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjm;->zzd()Ljava/util/Map;

    move-result-object v0

    :goto_75e
    if-eqz v0, :cond_7e3

    .line 216
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_768

    goto/16 :goto_7e3

    .line 345
    :cond_768
    new-instance v10, Ljava/util/ArrayList;

    .line 217
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzgi;->zzae:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 218
    invoke-virtual {v12, v5}, Lcom/google/android/gms/measurement/internal/zzgg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 219
    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 220
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_781
    :goto_781
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7dd

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 221
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const-string v15, "measurement.id."

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14
    :try_end_799
    .catchall {:try_start_5a7 .. :try_end_799} :catchall_b9b

    if-eqz v14, :cond_781

    .line 222
    :try_start_79b
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_781

    .line 223
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v12, :cond_781

    iget-object v0, v8, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 225
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v14, "Too many experiment IDs. Number of IDs"

    .line 227
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v0, v14, v15}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7cb
    .catch Ljava/lang/NumberFormatException; {:try_start_79b .. :try_end_7cb} :catch_7cc
    .catchall {:try_start_79b .. :try_end_7cb} :catchall_b9b

    goto :goto_7dd

    :catch_7cc
    move-exception v0

    .line 366
    :try_start_7cd
    iget-object v14, v8, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 228
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v14

    .line 229
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v14

    const-string v15, "Experiment ID NumberFormatException"

    invoke-virtual {v14, v15, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_781

    .line 230
    :cond_7dd
    :goto_7dd
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7e4

    :cond_7e3
    :goto_7e3
    move-object v10, v5

    :cond_7e4
    if-eqz v10, :cond_7e9

    .line 231
    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/measurement/zzhw;->zzk(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 232
    :cond_7e9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzgi;->zzbk:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 233
    invoke-virtual {v0, v5, v8}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v0

    if-eqz v0, :cond_7fa

    const-string v0, ""

    .line 234
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/measurement/zzhw;->zzaf(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 235
    :cond_7fa
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    .line 236
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/google/android/gms/measurement/internal/zzpv;->zzu(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v8

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzu:Ljava/lang/String;

    .line 237
    invoke-static {v10, v11}, Lcom/google/android/gms/measurement/internal/zzjx;->zzk(Ljava/lang/String;I)Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v10

    .line 238
    invoke-virtual {v8, v10}, Lcom/google/android/gms/measurement/internal/zzjx;->zzl(Lcom/google/android/gms/measurement/internal/zzjx;)Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v8

    .line 239
    sget-object v10, Lcom/google/android/gms/measurement/internal/zzjw;->zza:Lcom/google/android/gms/measurement/internal/zzjw;

    invoke-virtual {v8, v10}, Lcom/google/android/gms/measurement/internal/zzjx;->zzr(Lcom/google/android/gms/measurement/internal/zzjw;)Z

    move-result v11

    if-eqz v11, :cond_8ab

    .line 240
    iget-boolean v11, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzn:Z

    if-eqz v11, :cond_8ab

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzpv;->zzk:Lcom/google/android/gms/measurement/internal/zzoa;

    .line 241
    invoke-virtual {v11, v0, v8}, Lcom/google/android/gms/measurement/internal/zzoa;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzjx;)Landroid/util/Pair;

    move-result-object v11

    .line 242
    iget-object v12, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_8ab

    .line 243
    iget-object v12, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v9, v12}, Lcom/google/android/gms/internal/measurement/zzhw;->zzas(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 244
    iget-object v12, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v12, :cond_842

    .line 245
    iget-object v12, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-virtual {v9, v12}, Lcom/google/android/gms/internal/measurement/zzhw;->zzal(Z)Lcom/google/android/gms/internal/measurement/zzhw;

    :cond_842
    iget-object v12, v4, Lcom/google/android/gms/measurement/internal/zzbc;->zzb:Ljava/lang/String;

    move-object/from16 v13, v33

    .line 246
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8ab

    iget-object v11, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    const-string v12, "00000000-0000-0000-0000-000000000000"

    .line 247
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8ab

    .line 248
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v11

    invoke-virtual {v11, v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzl(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v11

    if-eqz v11, :cond_8ab

    .line 249
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzaM()Z

    move-result v12

    if-eqz v12, :cond_8ab

    const/4 v14, 0x0

    .line 250
    invoke-virtual {v1, v0, v14, v5, v5}, Lcom/google/android/gms/measurement/internal/zzpv;->zzar(Ljava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V

    new-instance v12, Landroid/os/Bundle;

    .line 251
    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 252
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzy()Ljava/lang/Long;

    move-result-object v14

    if-eqz v14, :cond_88c

    const-string v15, "_pfo"

    move-object/from16 v34, v7

    .line 253
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object v14, v10

    move-object/from16 v16, v11

    move-wide/from16 v10, v31

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 254
    invoke-virtual {v12, v15, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_891

    :cond_88c
    move-object/from16 v34, v7

    move-object v14, v10

    move-object/from16 v16, v11

    .line 255
    :goto_891
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzh;->zzz()Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_8a0

    const-string v7, "_uwa"

    .line 256
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v12, v7, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_8a0
    move-wide/from16 v6, v29

    .line 257
    invoke-virtual {v12, v3, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzpv;->zzK:Lcom/google/android/gms/measurement/internal/zzqe;

    .line 258
    invoke-interface {v6, v0, v13, v12}, Lcom/google/android/gms/measurement/internal/zzqe;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_8ae

    :cond_8ab
    move-object/from16 v34, v7

    move-object v14, v10

    :goto_8ae
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzpv;->zzn:Lcom/google/android/gms/measurement/internal/zzio;

    .line 259
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzio;->zzg()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v7

    .line 260
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzjr;->zzv()V

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 261
    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/measurement/zzhw;->zzX(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 262
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzio;->zzg()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v7

    .line 263
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzjr;->zzv()V

    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 264
    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/measurement/zzhw;->zzam(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 265
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzio;->zzg()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v7

    .line 266
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbb;->zza()J

    move-result-wide v10

    long-to-int v7, v10

    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/measurement/zzhw;->zzaz(I)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 267
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzio;->zzg()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v7

    .line 268
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbb;->zzb()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/measurement/zzhw;->zzaD(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 269
    iget-wide v10, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzy:J

    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/internal/measurement/zzhw;->zzay(J)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 270
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzio;->zzJ()Z

    move-result v7

    if-eqz v7, :cond_8f6

    .line 271
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhw;->zzaF()Ljava/lang/String;

    .line 272
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8f6

    .line 273
    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/measurement/zzhw;->zzY(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 274
    :cond_8f6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzl(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v7

    if-nez v7, :cond_95e

    new-instance v7, Lcom/google/android/gms/measurement/internal/zzh;

    .line 275
    invoke-direct {v7, v6, v0}, Lcom/google/android/gms/measurement/internal/zzh;-><init>(Lcom/google/android/gms/measurement/internal/zzio;Ljava/lang/String;)V

    .line 276
    invoke-virtual {v1, v8}, Lcom/google/android/gms/measurement/internal/zzpv;->zzC(Lcom/google/android/gms/measurement/internal/zzjx;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzV(Ljava/lang/String;)V

    .line 277
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzk:Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzan(Ljava/lang/String;)V

    .line 278
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzb:Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzao(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v8, v14}, Lcom/google/android/gms/measurement/internal/zzjx;->zzr(Lcom/google/android/gms/measurement/internal/zzjw;)Z

    move-result v6

    if-eqz v6, :cond_927

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzpv;->zzk:Lcom/google/android/gms/measurement/internal/zzoa;

    .line 280
    iget-boolean v10, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzn:Z

    .line 281
    invoke-virtual {v6, v0, v10}, Lcom/google/android/gms/measurement/internal/zzoa;->zzf(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 282
    invoke-virtual {v7, v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzax(Ljava/lang/String;)V

    :cond_927
    const-wide/16 v10, 0x0

    .line 283
    invoke-virtual {v7, v10, v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzat(J)V

    .line 284
    invoke-virtual {v7, v10, v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzau(J)V

    .line 285
    invoke-virtual {v7, v10, v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzas(J)V

    .line 286
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzc:Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzX(Ljava/lang/String;)V

    .line 287
    iget-wide v10, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzj:J

    invoke-virtual {v7, v10, v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzY(J)V

    .line 288
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzd:Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzW(Ljava/lang/String;)V

    .line 289
    iget-wide v10, v2, Lcom/google/android/gms/measurement/internal/zzr;->zze:J

    invoke-virtual {v7, v10, v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzap(J)V

    .line 290
    iget-wide v10, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzf:J

    invoke-virtual {v7, v10, v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzaj(J)V

    .line 291
    iget-boolean v6, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzh:Z

    invoke-virtual {v7, v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzav(Z)V

    .line 292
    iget-wide v10, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzr:J

    invoke-virtual {v7, v10, v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzal(J)V

    .line 293
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v6

    const/4 v14, 0x0

    .line 294
    invoke-virtual {v6, v7, v14, v14}, Lcom/google/android/gms/measurement/internal/zzaw;->zzT(Lcom/google/android/gms/measurement/internal/zzh;ZZ)V

    goto :goto_95f

    :cond_95e
    const/4 v14, 0x0

    :goto_95f
    sget-object v6, Lcom/google/android/gms/measurement/internal/zzjw;->zzb:Lcom/google/android/gms/measurement/internal/zzjw;

    .line 295
    invoke-virtual {v8, v6}, Lcom/google/android/gms/measurement/internal/zzjx;->zzr(Lcom/google/android/gms/measurement/internal/zzjw;)Z

    move-result v6

    if-eqz v6, :cond_97e

    .line 296
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzh;->zzD()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_97e

    .line 297
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzh;->zzD()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v9, v6}, Lcom/google/android/gms/internal/measurement/zzhw;->zzJ(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 298
    :cond_97e
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzh;->zzG()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_995

    .line 299
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzh;->zzG()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v9, v6}, Lcom/google/android/gms/internal/measurement/zzhw;->zzag(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 300
    :cond_995
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzE(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    move v6, v14

    .line 301
    :goto_99e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_a02

    .line 302
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzio;->zze()Lcom/google/android/gms/internal/measurement/zzin;

    move-result-object v8

    .line 303
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/measurement/internal/zzqd;

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/zzqd;->zzc:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/measurement/zzin;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzin;

    .line 304
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/measurement/internal/zzqd;

    iget-wide v10, v10, Lcom/google/android/gms/measurement/internal/zzqd;->zzd:J

    invoke-virtual {v8, v10, v11}, Lcom/google/android/gms/internal/measurement/zzin;->zzg(J)Lcom/google/android/gms/internal/measurement/zzin;

    .line 305
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    move-result-object v10

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/measurement/internal/zzqd;

    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/zzqd;->zze:Ljava/lang/Object;

    invoke-virtual {v10, v8, v11}, Lcom/google/android/gms/measurement/internal/zzqa;->zzx(Lcom/google/android/gms/internal/measurement/zzin;Ljava/lang/Object;)V

    .line 306
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/measurement/zzhw;->zzo(Lcom/google/android/gms/internal/measurement/zzin;)Lcom/google/android/gms/internal/measurement/zzhw;

    const-string v8, "_sid"

    .line 307
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/measurement/internal/zzqd;

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/zzqd;->zzc:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9ff

    .line 308
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzh;->zzv()J

    move-result-wide v10

    const-wide/16 v31, 0x0

    cmp-long v8, v10, v31

    if-eqz v8, :cond_9ff

    .line 309
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    move-result-object v8

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzr;->zzw:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/google/android/gms/measurement/internal/zzqa;->zzd(Ljava/lang/String;)J

    move-result-wide v10

    .line 310
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzh;->zzv()J

    move-result-wide v12

    cmp-long v8, v10, v12

    if-eqz v8, :cond_9ff

    .line 311
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhw;->zzA()Lcom/google/android/gms/internal/measurement/zzhw;
    :try_end_9ff
    .catchall {:try_start_7cd .. :try_end_9ff} :catchall_b9b

    :cond_9ff
    add-int/lit8 v6, v6, 0x1

    goto :goto_99e

    .line 312
    :cond_a02
    :try_start_a02
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v2

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzhx;

    .line 313
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 314
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    .line 315
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 317
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzko;->zzcd()[B

    move-result-object v0

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzoz;->zzg:Lcom/google/android/gms/measurement/internal/zzpv;

    .line 318
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    move-result-object v7

    .line 319
    invoke-virtual {v7, v0}, Lcom/google/android/gms/measurement/internal/zzqa;->zzf([B)J

    move-result-wide v7

    new-instance v10, Landroid/content/ContentValues;

    .line 320
    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 321
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v12, v28

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v13, v27

    invoke-virtual {v10, v13, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v11, "metadata"

    .line 323
    invoke-virtual {v10, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_a47
    .catch Ljava/io/IOException; {:try_start_a02 .. :try_end_a47} :catch_b54
    .catchall {:try_start_a02 .. :try_end_a47} :catchall_b9b

    .line 324
    :try_start_a47
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v11, "raw_events_metadata"

    const/4 v15, 0x4

    .line 325
    invoke-virtual {v0, v11, v5, v10, v15}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_a51
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a47 .. :try_end_a51} :catch_b3b
    .catch Ljava/io/IOException; {:try_start_a47 .. :try_end_a51} :catch_b54
    .catchall {:try_start_a47 .. :try_end_a51} :catchall_b9b

    .line 335
    :try_start_a51
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v2

    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/zzbc;->zzf:Lcom/google/android/gms/measurement/internal/zzbf;

    new-instance v6, Lcom/google/android/gms/measurement/internal/zzbe;

    .line 336
    invoke-direct {v6, v0}, Lcom/google/android/gms/measurement/internal/zzbe;-><init>(Lcom/google/android/gms/measurement/internal/zzbf;)V

    .line 337
    :cond_a5c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a71

    .line 338
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzbe;->zza()Ljava/lang/String;

    move-result-object v0

    .line 337
    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    .line 339
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5c

    :goto_a6f
    const/4 v14, 0x1

    goto :goto_ab0

    .line 340
    :cond_a71
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzr()Lcom/google/android/gms/measurement/internal/zzif;

    move-result-object v0

    iget-object v3, v4, Lcom/google/android/gms/measurement/internal/zzbc;->zza:Ljava/lang/String;

    iget-object v6, v4, Lcom/google/android/gms/measurement/internal/zzbc;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v3, v6}, Lcom/google/android/gms/measurement/internal/zzif;->zzw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 341
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v35

    .line 342
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zza()J

    move-result-wide v36

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v38, v3

    .line 343
    invoke-virtual/range {v35 .. v45}, Lcom/google/android/gms/measurement/internal/zzaw;->zzo(JLjava/lang/String;ZZZZZZZ)Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v3

    move-object/from16 v6, v38

    if-eqz v0, :cond_aaf

    iget-wide v9, v3, Lcom/google/android/gms/measurement/internal/zzas;->zze:J

    .line 344
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzgi;->zzo:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 345
    invoke-virtual {v0, v6, v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzh(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)I

    move-result v0

    int-to-long v14, v0

    cmp-long v0, v9, v14

    if-gez v0, :cond_aaf

    goto :goto_a6f

    :cond_aaf
    const/4 v14, 0x0

    .line 346
    :goto_ab0
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 347
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    .line 348
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/zzbc;->zza:Ljava/lang/String;

    .line 349
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzoz;->zzg:Lcom/google/android/gms/measurement/internal/zzpv;

    .line 350
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    move-result-object v3

    .line 351
    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzm(Lcom/google/android/gms/measurement/internal/zzbc;)Lcom/google/android/gms/internal/measurement/zzhm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzko;->zzcd()[B

    move-result-object v3

    new-instance v6, Landroid/content/ContentValues;

    .line 352
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 353
    invoke-virtual {v6, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "name"

    iget-object v10, v4, Lcom/google/android/gms/measurement/internal/zzbc;->zzb:Ljava/lang/String;

    .line 354
    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "timestamp"

    iget-wide v10, v4, Lcom/google/android/gms/measurement/internal/zzbc;->zzd:J

    .line 355
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 356
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v13, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v7, "data"

    .line 357
    invoke-virtual {v6, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v3, "realtime"

    .line 358
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_afb
    .catchall {:try_start_a51 .. :try_end_afb} :catchall_b9b

    .line 359
    :try_start_afb
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    move-object/from16 v7, v34

    .line 360
    invoke-virtual {v3, v7, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v3, v5, v7

    if-nez v3, :cond_b1f

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 361
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v3

    .line 362
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v3

    const-string v5, "Failed to insert raw event (got -1). appId"

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 363
    invoke-virtual {v3, v5, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_b1e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_afb .. :try_end_b1e} :catch_b24
    .catchall {:try_start_afb .. :try_end_b1e} :catchall_b9b

    goto :goto_b6a

    :cond_b1f
    const-wide/16 v10, 0x0

    .line 373
    :try_start_b21
    iput-wide v10, v1, Lcom/google/android/gms/measurement/internal/zzpv;->zza:J

    goto :goto_b6a

    :catch_b24
    move-exception v0

    .line 330
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 364
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 365
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v3, "Error storing raw event. appId"

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzbc;->zza:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 366
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_b3a
    .catchall {:try_start_b21 .. :try_end_b3a} :catchall_b9b

    goto :goto_b6a

    :catch_b3b
    move-exception v0

    .line 334
    :try_start_b3c
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 326
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 327
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v3, "Error storing raw event metadata. appId"

    .line 328
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzhx;->zzF()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 329
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 330
    throw v0
    :try_end_b54
    .catch Ljava/io/IOException; {:try_start_b3c .. :try_end_b54} :catch_b54
    .catchall {:try_start_b3c .. :try_end_b54} :catchall_b9b

    :catch_b54
    move-exception v0

    .line 331
    :try_start_b55
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 332
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v3, "Data loss. Failed to insert raw event metadata. appId"

    .line 333
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhw;->zzaF()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 334
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 367
    :goto_b6a
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzS()V
    :try_end_b71
    .catchall {:try_start_b55 .. :try_end_b71} :catchall_b9b

    .line 368
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzL()V

    .line 369
    invoke-direct {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaL()V

    .line 370
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 371
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    .line 372
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long v2, v2, v25

    const-wide/32 v4, 0x7a120

    add-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 373
    const-string v3, "Background event processing time, ms"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catchall_b9b
    move-exception v0

    .line 368
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaw;->zzL()V

    .line 394
    throw v0
.end method

.method final zzay(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzl(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_20

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzB()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzM()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzqf;->zzak(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1a

    goto :goto_20

    .line 4
    :cond_1a
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzF:Ljava/util/Map;

    .line 5
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    .line 2
    :cond_20
    :goto_20
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzF:Ljava/util/Map;

    .line 3
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzpt;

    if-nez p1, :cond_2b

    return v1

    .line 4
    :cond_2b
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzpt;->zzc()Z

    move-result p1

    return p1
.end method

.method final zzaz()Z
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzx:Ljava/nio/channels/FileLock;

    const/4 v1, 0x1

    const-string v2, "Storage concurrent access okay"

    if-eqz v0, :cond_21

    .line 2
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_21

    .line 16
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    return v1

    .line 2
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zze:Lcom/google/android/gms/measurement/internal/zzaw;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzn:Lcom/google/android/gms/measurement/internal/zzio;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbx;->zza()Lcom/google/android/gms/internal/measurement/zzby;

    .line 7
    sget v4, Lcom/google/android/gms/internal/measurement/zzcc;->zzb:I

    new-instance v4, Ljava/io/File;

    const-string v5, "google_app_measurement.db"

    .line 8
    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_47
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    .line 9
    invoke-direct {v0, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzy:Ljava/nio/channels/FileChannel;

    .line 10
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzx:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_68

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    return v1

    .line 12
    :cond_68
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v1, "Storage concurrent data access panic"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V
    :try_end_75
    .catch Ljava/io/FileNotFoundException; {:try_start_47 .. :try_end_75} :catch_94
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_75} :catch_85
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_47 .. :try_end_75} :catch_76

    goto :goto_a2

    :catch_76
    move-exception v0

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Storage lock already acquired"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_a2

    :catch_85
    move-exception v0

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Failed to access storage lock file"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_a2

    :catch_94
    move-exception v0

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Failed to acquire storage lock"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_a2
    const/4 v0, 0x0

    return v0
.end method

.method final zzd(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzM()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzr()Lcom/google/android/gms/measurement/internal/zzif;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzif;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgi;

    move-result-object v0

    if-nez v0, :cond_16

    const/4 p1, 0x0

    return-object p1

    :cond_16
    new-instance v0, Landroid/os/Bundle;

    .line 4
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzu(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjx;->zzc()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzm(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzao;

    invoke-direct {v3}, Lcom/google/android/gms/measurement/internal/zzao;-><init>()V

    .line 8
    invoke-virtual {p0, p1, v2, v1, v3}, Lcom/google/android/gms/measurement/internal/zzpv;->zzl(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzba;Lcom/google/android/gms/measurement/internal/zzjx;Lcom/google/android/gms/measurement/internal/zzao;)Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzba;->zzb()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v1

    const-string v2, "_npa"

    .line 11
    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/measurement/internal/zzaw;->zzy(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzqd;

    move-result-object v1

    if-eqz v1, :cond_53

    iget-object p1, v1, Lcom/google/android/gms/measurement/internal/zzqd;->zze:Ljava/lang/Object;

    const-wide/16 v1, 0x1

    .line 12
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_5c

    .line 14
    :cond_53
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzao;

    .line 13
    invoke-direct {v1}, Lcom/google/android/gms/measurement/internal/zzao;-><init>()V

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaC(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzao;)I

    move-result p1

    :goto_5c
    const/4 v1, 0x1

    if-eq v1, p1, :cond_62

    .line 12
    const-string p1, "granted"

    goto :goto_64

    .line 14
    :cond_62
    const-string p1, "denied"

    .line 12
    :goto_64
    const-string v1, "ad_personalization"

    .line 14
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method final zzf(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbh;)Landroid/os/Bundle;
    .registers 7

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzbh;->zzb:Lcom/google/android/gms/measurement/internal/zzbf;

    .line 2
    const-string v1, "_sid"

    invoke-virtual {p2, v1}, Lcom/google/android/gms/measurement/internal/zzbf;->zze(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object p2

    const-string v1, "_sno"

    invoke-virtual {p2, p1, v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzy(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzqd;

    move-result-object p1

    if-eqz p1, :cond_2f

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzqd;->zze:Ljava/lang/Object;

    .line 4
    instance-of p2, p1, Ljava/lang/Long;

    if-eqz p2, :cond_2f

    .line 5
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_2f
    return-object v0
.end method

.method final zzg(Lcom/google/android/gms/measurement/internal/zzr;)Lcom/google/android/gms/measurement/internal/zzh;
    .registers 14

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzM()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzv:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v8, 0x0

    if-nez v1, :cond_25

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzE:Ljava/util/Map;

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzps;

    .line 6
    invoke-direct {v3, p0, v0, v8}, Lcom/google/android/gms/measurement/internal/zzps;-><init>(Lcom/google/android/gms/measurement/internal/zzpv;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzpu;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_25
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzaw;->zzl(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v0

    .line 8
    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzu(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v1

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzu:Ljava/lang/String;

    const/16 v4, 0x64

    .line 9
    invoke-static {v3, v4}, Lcom/google/android/gms/measurement/internal/zzjx;->zzk(Ljava/lang/String;I)Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v3

    .line 10
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzjx;->zzl(Lcom/google/android/gms/measurement/internal/zzjx;)Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v1

    .line 11
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzjw;->zza:Lcom/google/android/gms/measurement/internal/zzjw;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzjx;->zzr(Lcom/google/android/gms/measurement/internal/zzjw;)Z

    move-result v4

    if-eqz v4, :cond_4e

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzk:Lcom/google/android/gms/measurement/internal/zzoa;

    .line 12
    iget-boolean v5, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzn:Z

    .line 13
    invoke-virtual {v4, v2, v5}, Lcom/google/android/gms/measurement/internal/zzoa;->zzf(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    goto :goto_50

    .line 23
    :cond_4e
    const-string v4, ""

    :goto_50
    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v0, :cond_76

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzn:Lcom/google/android/gms/measurement/internal/zzio;

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzh;

    .line 14
    invoke-direct {v5, v0, v2}, Lcom/google/android/gms/measurement/internal/zzh;-><init>(Lcom/google/android/gms/measurement/internal/zzio;Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzjw;->zzb:Lcom/google/android/gms/measurement/internal/zzjw;

    .line 15
    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzjx;->zzr(Lcom/google/android/gms/measurement/internal/zzjw;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 16
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzC(Lcom/google/android/gms/measurement/internal/zzjx;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzV(Ljava/lang/String;)V

    .line 17
    :cond_6a
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzjx;->zzr(Lcom/google/android/gms/measurement/internal/zzjw;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 18
    invoke-virtual {v5, v4}, Lcom/google/android/gms/measurement/internal/zzh;->zzax(Ljava/lang/String;)V

    :cond_73
    move-object v0, v5

    goto/16 :goto_125

    .line 19
    :cond_76
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzjx;->zzr(Lcom/google/android/gms/measurement/internal/zzjw;)Z

    move-result v3

    if-eqz v3, :cond_10c

    if-eqz v4, :cond_10c

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzJ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10c

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzJ()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 25
    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzh;->zzax(Ljava/lang/String;)V

    .line 26
    iget-boolean v4, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzn:Z

    if-eqz v4, :cond_f2

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzk:Lcom/google/android/gms/measurement/internal/zzoa;

    .line 27
    invoke-virtual {v4, v2, v1}, Lcom/google/android/gms/measurement/internal/zzoa;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzjx;)Landroid/util/Pair;

    move-result-object v4

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v5, "00000000-0000-0000-0000-000000000000"

    .line 28
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f2

    if-nez v3, :cond_f2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzjw;->zzb:Lcom/google/android/gms/measurement/internal/zzjw;

    .line 32
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzjx;->zzr(Lcom/google/android/gms/measurement/internal/zzjw;)Z

    move-result v3

    if-eqz v3, :cond_ba

    .line 33
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzC(Lcom/google/android/gms/measurement/internal/zzjx;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzh;->zzV(Ljava/lang/String;)V

    move v11, v10

    goto :goto_bb

    :cond_ba
    move v11, v9

    .line 34
    :goto_bb
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v1

    const-string v3, "_id"

    .line 35
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzaw;->zzy(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzqd;

    move-result-object v1

    if-eqz v1, :cond_126

    .line 36
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v1

    const-string v3, "_lair"

    .line 37
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzaw;->zzy(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzqd;

    move-result-object v1

    if-nez v1, :cond_126

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzqd;

    const-wide/16 v3, 0x1

    .line 39
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v3, "auto"

    const-string v4, "_lair"

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzqd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 40
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzai(Lcom/google/android/gms/measurement/internal/zzqd;)Z

    goto :goto_126

    .line 29
    :cond_f2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzD()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_125

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzjw;->zzb:Lcom/google/android/gms/measurement/internal/zzjw;

    .line 30
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzjx;->zzr(Lcom/google/android/gms/measurement/internal/zzjw;)Z

    move-result v2

    if-eqz v2, :cond_125

    .line 31
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzC(Lcom/google/android/gms/measurement/internal/zzjx;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzh;->zzV(Ljava/lang/String;)V

    goto :goto_125

    .line 21
    :cond_10c
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzD()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_125

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzjw;->zzb:Lcom/google/android/gms/measurement/internal/zzjw;

    .line 22
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzjx;->zzr(Lcom/google/android/gms/measurement/internal/zzjw;)Z

    move-result v2

    if-eqz v2, :cond_125

    .line 23
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzC(Lcom/google/android/gms/measurement/internal/zzjx;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzh;->zzV(Ljava/lang/String;)V

    :cond_125
    :goto_125
    move v11, v10

    .line 41
    :cond_126
    :goto_126
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzh;->zzao(Ljava/lang/String;)V

    .line 42
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzh;->zzS(Ljava/lang/String;)V

    .line 43
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzk:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13b

    .line 44
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzh;->zzan(Ljava/lang/String;)V

    .line 45
    :cond_13b
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zze:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_146

    .line 46
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzh;->zzap(J)V

    .line 47
    :cond_146
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_151

    .line 48
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzh;->zzX(Ljava/lang/String;)V

    .line 49
    :cond_151
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzj:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzh;->zzY(J)V

    .line 50
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzd:Ljava/lang/String;

    if-eqz v1, :cond_15d

    .line 51
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzh;->zzW(Ljava/lang/String;)V

    .line 52
    :cond_15d
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzf:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzh;->zzaj(J)V

    .line 53
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzh:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzh;->zzav(Z)V

    .line 54
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_172

    .line 55
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzh;->zzaq(Ljava/lang/String;)V

    .line 56
    :cond_172
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzn:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzh;->zzU(Z)V

    .line 57
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzq:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzh;->zzaw(Ljava/lang/Boolean;)V

    .line 58
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzr:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzh;->zzal(J)V

    .line 59
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzh;->zzaA(Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpn;->zzb()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzgi;->zzaK:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 61
    invoke-virtual {v1, v8, v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v1

    if-eqz v1, :cond_19b

    .line 65
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzs:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzh;->zzay(Ljava/util/List;)V

    goto :goto_1ad

    .line 62
    :cond_19b
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpn;->zzb()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzgi;->zzaJ:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 63
    invoke-virtual {v1, v8, v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v1

    if-eqz v1, :cond_1ad

    .line 64
    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzh;->zzay(Ljava/util/List;)V

    .line 66
    :cond_1ad
    :goto_1ad
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzx:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzh;->zzaD(Z)V

    .line 67
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzh;->zzaC(Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqr;->zzb()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzgi;->zzaV:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 69
    invoke-virtual {v1, v8, v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v1

    if-eqz v1, :cond_1cb

    .line 70
    iget v1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzB:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzh;->zzT(I)V

    .line 71
    :cond_1cb
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzy:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzh;->zzaE(J)V

    .line 72
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzh;->zzaz(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzgi;->zzaP:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 74
    invoke-virtual {v1, v8, v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v1

    if-eqz v1, :cond_1e6

    .line 75
    iget p1, p1, Lcom/google/android/gms/measurement/internal/zzr;->zzG:I

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzaa(I)V

    .line 76
    :cond_1e6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzaK()Z

    move-result p1

    if-nez p1, :cond_1f0

    if-eqz v11, :cond_1ef

    goto :goto_1f1

    :cond_1ef
    return-object v0

    :cond_1f0
    move v9, v11

    .line 77
    :goto_1f1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object p1

    invoke-virtual {p1, v0, v9, v10}, Lcom/google/android/gms/measurement/internal/zzaw;->zzT(Lcom/google/android/gms/measurement/internal/zzh;ZZ)V

    return-object v0
.end method

.method public final zzh()Lcom/google/android/gms/measurement/internal/zzae;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzh:Lcom/google/android/gms/measurement/internal/zzae;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaR(Lcom/google/android/gms/measurement/internal/zzpg;)Lcom/google/android/gms/measurement/internal/zzpg;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/measurement/internal/zzae;

    return-object v0
.end method

.method public final zzi()Lcom/google/android/gms/measurement/internal/zzam;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzn:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    return-object v0
.end method

.method public final zzj()Lcom/google/android/gms/measurement/internal/zzaw;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zze:Lcom/google/android/gms/measurement/internal/zzaw;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaR(Lcom/google/android/gms/measurement/internal/zzpg;)Lcom/google/android/gms/measurement/internal/zzpg;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/measurement/internal/zzaw;

    return-object v0
.end method

.method final zzl(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzba;Lcom/google/android/gms/measurement/internal/zzjx;Lcom/google/android/gms/measurement/internal/zzao;)Lcom/google/android/gms/measurement/internal/zzba;
    .registers 15

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzr()Lcom/google/android/gms/measurement/internal/zzif;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzif;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgi;

    move-result-object v0

    const-string v1, "-"

    const/16 v2, 0x5a

    const/4 v3, 0x0

    .line 6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x1

    .line 7
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    if-nez v0, :cond_37

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzba;->zzf()Lcom/google/android/gms/measurement/internal/zzju;

    move-result-object p1

    sget-object p3, Lcom/google/android/gms/measurement/internal/zzju;->zzc:Lcom/google/android/gms/measurement/internal/zzju;

    if-ne p1, p3, :cond_2a

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzba;->zza()I

    move-result v2

    .line 4
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzjw;->zzc:Lcom/google/android/gms/measurement/internal/zzjw;

    invoke-virtual {p4, p1, v2}, Lcom/google/android/gms/measurement/internal/zzao;->zzc(Lcom/google/android/gms/measurement/internal/zzjw;I)V

    goto :goto_31

    .line 5
    :cond_2a
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzjw;->zzc:Lcom/google/android/gms/measurement/internal/zzjw;

    sget-object p2, Lcom/google/android/gms/measurement/internal/zzan;->zzj:Lcom/google/android/gms/measurement/internal/zzan;

    invoke-virtual {p4, p1, p2}, Lcom/google/android/gms/measurement/internal/zzao;->zzd(Lcom/google/android/gms/measurement/internal/zzjw;Lcom/google/android/gms/measurement/internal/zzan;)V

    .line 4
    :goto_31
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzba;

    .line 7
    invoke-direct {p1, v4, v2, v6, v1}, Lcom/google/android/gms/measurement/internal/zzba;-><init>(Ljava/lang/Boolean;ILjava/lang/Boolean;Ljava/lang/String;)V

    return-object p1

    .line 8
    :cond_37
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzba;->zzf()Lcom/google/android/gms/measurement/internal/zzju;

    move-result-object v0

    .line 9
    sget-object v7, Lcom/google/android/gms/measurement/internal/zzju;->zzd:Lcom/google/android/gms/measurement/internal/zzju;

    if-eq v0, v7, :cond_90

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzju;->zzc:Lcom/google/android/gms/measurement/internal/zzju;

    if-ne v0, v7, :cond_44

    goto :goto_90

    .line 28
    :cond_44
    sget-object p2, Lcom/google/android/gms/measurement/internal/zzju;->zzb:Lcom/google/android/gms/measurement/internal/zzju;

    if-ne v0, p2, :cond_5d

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzc:Lcom/google/android/gms/measurement/internal/zzif;

    .line 12
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzjw;->zzc:Lcom/google/android/gms/measurement/internal/zzjw;

    .line 13
    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzif;->zzf(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzjw;)Lcom/google/android/gms/measurement/internal/zzju;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzju;->zza:Lcom/google/android/gms/measurement/internal/zzju;

    if-eq p2, v0, :cond_5d

    sget-object p3, Lcom/google/android/gms/measurement/internal/zzjw;->zzc:Lcom/google/android/gms/measurement/internal/zzjw;

    .line 20
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzan;->zzi:Lcom/google/android/gms/measurement/internal/zzan;

    invoke-virtual {p4, p3, v0}, Lcom/google/android/gms/measurement/internal/zzao;->zzd(Lcom/google/android/gms/measurement/internal/zzjw;Lcom/google/android/gms/measurement/internal/zzan;)V

    move-object v0, p2

    goto :goto_99

    :cond_5d
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzc:Lcom/google/android/gms/measurement/internal/zzif;

    .line 14
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzjw;->zzc:Lcom/google/android/gms/measurement/internal/zzjw;

    .line 15
    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzif;->zzh(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzjw;)Lcom/google/android/gms/measurement/internal/zzjw;

    move-result-object v0

    .line 16
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzjx;->zze()Lcom/google/android/gms/measurement/internal/zzju;

    move-result-object p3

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzju;->zzd:Lcom/google/android/gms/measurement/internal/zzju;

    if-eq p3, v8, :cond_6f

    if-ne p3, v7, :cond_70

    :cond_6f
    move v3, v5

    :cond_70
    sget-object v9, Lcom/google/android/gms/measurement/internal/zzjw;->zza:Lcom/google/android/gms/measurement/internal/zzjw;

    if-ne v0, v9, :cond_7f

    if-eqz v3, :cond_7f

    sget-object p2, Lcom/google/android/gms/measurement/internal/zzjw;->zzc:Lcom/google/android/gms/measurement/internal/zzjw;

    .line 19
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzan;->zzc:Lcom/google/android/gms/measurement/internal/zzan;

    invoke-virtual {p4, p2, v0}, Lcom/google/android/gms/measurement/internal/zzao;->zzd(Lcom/google/android/gms/measurement/internal/zzjw;Lcom/google/android/gms/measurement/internal/zzan;)V

    move-object v0, p3

    goto :goto_99

    :cond_7f
    sget-object p3, Lcom/google/android/gms/measurement/internal/zzjw;->zzc:Lcom/google/android/gms/measurement/internal/zzjw;

    .line 17
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzan;->zzb:Lcom/google/android/gms/measurement/internal/zzan;

    invoke-virtual {p4, p3, v0}, Lcom/google/android/gms/measurement/internal/zzao;->zzd(Lcom/google/android/gms/measurement/internal/zzjw;Lcom/google/android/gms/measurement/internal/zzan;)V

    .line 18
    invoke-virtual {p2, p1, p3}, Lcom/google/android/gms/measurement/internal/zzif;->zzu(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzjw;)Z

    move-result p2

    if-eq v5, p2, :cond_8e

    move-object v0, v7

    goto :goto_99

    :cond_8e
    move-object v0, v8

    goto :goto_99

    .line 10
    :cond_90
    :goto_90
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzba;->zza()I

    move-result v2

    .line 11
    sget-object p2, Lcom/google/android/gms/measurement/internal/zzjw;->zzc:Lcom/google/android/gms/measurement/internal/zzjw;

    invoke-virtual {p4, p2, v2}, Lcom/google/android/gms/measurement/internal/zzao;->zzc(Lcom/google/android/gms/measurement/internal/zzjw;I)V

    :goto_99
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzc:Lcom/google/android/gms/measurement/internal/zzif;

    .line 21
    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/internal/zzif;->zzv(Ljava/lang/String;)Z

    move-result p2

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzr()Lcom/google/android/gms/measurement/internal/zzif;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/zzif;->zzp(Ljava/lang/String;)Ljava/util/SortedSet;

    move-result-object p1

    sget-object p3, Lcom/google/android/gms/measurement/internal/zzju;->zzc:Lcom/google/android/gms/measurement/internal/zzju;

    if-eq v0, p3, :cond_c4

    .line 23
    invoke-interface {p1}, Ljava/util/SortedSet;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_b2

    goto :goto_c4

    .line 25
    :cond_b2
    new-instance p3, Lcom/google/android/gms/measurement/internal/zzba;

    .line 27
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    const-string v0, ""

    if-eqz p2, :cond_c0

    .line 28
    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    :cond_c0
    invoke-direct {p3, v6, v2, p4, v0}, Lcom/google/android/gms/measurement/internal/zzba;-><init>(Ljava/lang/Boolean;ILjava/lang/Boolean;Ljava/lang/String;)V

    return-object p3

    .line 23
    :cond_c4
    :goto_c4
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzba;

    .line 25
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p1, v4, v2, p2, v1}, Lcom/google/android/gms/measurement/internal/zzba;-><init>(Ljava/lang/Boolean;ILjava/lang/Boolean;Ljava/lang/String;)V

    return-object p1
.end method

.method final zzm(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzba;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzM()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzD:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/measurement/internal/zzba;

    if-nez v1, :cond_1f

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzq(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v1

    .line 5
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    return-object v1
.end method

.method public final zzo()Lcom/google/android/gms/measurement/internal/zzgx;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzn:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v0

    return-object v0
.end method

.method public final zzp()Lcom/google/android/gms/measurement/internal/zzhk;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzd:Lcom/google/android/gms/measurement/internal/zzhk;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaR(Lcom/google/android/gms/measurement/internal/zzpg;)Lcom/google/android/gms/measurement/internal/zzpg;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/measurement/internal/zzhk;

    return-object v0
.end method

.method public final zzq()Lcom/google/android/gms/measurement/internal/zzhm;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzf:Lcom/google/android/gms/measurement/internal/zzhm;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network broadcast receiver not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzr()Lcom/google/android/gms/measurement/internal/zzif;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzc:Lcom/google/android/gms/measurement/internal/zzif;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaR(Lcom/google/android/gms/measurement/internal/zzpg;)Lcom/google/android/gms/measurement/internal/zzpg;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/measurement/internal/zzif;

    return-object v0
.end method

.method final zzt()Lcom/google/android/gms/measurement/internal/zzio;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzn:Lcom/google/android/gms/measurement/internal/zzio;

    return-object v0
.end method

.method final zzu(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjx;
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzM()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzC:Ljava/util/Map;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzjx;

    if-nez v0, :cond_25

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzu(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v0

    if-nez v0, :cond_22

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    .line 6
    :cond_22
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaq(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzjx;)V

    :cond_25
    return-object v0
.end method

.method public final zzv()Lcom/google/android/gms/measurement/internal/zzmc;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzj:Lcom/google/android/gms/measurement/internal/zzmc;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaR(Lcom/google/android/gms/measurement/internal/zzpg;)Lcom/google/android/gms/measurement/internal/zzpg;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/measurement/internal/zzmc;

    return-object v0
.end method

.method public final zzw()Lcom/google/android/gms/measurement/internal/zzoa;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzk:Lcom/google/android/gms/measurement/internal/zzoa;

    return-object v0
.end method

.method public final zzx()Lcom/google/android/gms/measurement/internal/zzoy;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzg:Lcom/google/android/gms/measurement/internal/zzoy;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaR(Lcom/google/android/gms/measurement/internal/zzpg;)Lcom/google/android/gms/measurement/internal/zzpg;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/measurement/internal/zzoy;

    return-object v0
.end method

.method public final zzy()Lcom/google/android/gms/measurement/internal/zzpi;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpv;->zzl:Lcom/google/android/gms/measurement/internal/zzpi;

    return-object v0
.end method
