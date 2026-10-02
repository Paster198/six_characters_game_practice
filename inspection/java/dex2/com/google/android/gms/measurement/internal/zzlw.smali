.class public final Lcom/google/android/gms/measurement/internal/zzlw;
.super Lcom/google/android/gms/measurement/internal/zzg;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"


# instance fields
.field protected zza:Lcom/google/android/gms/measurement/internal/zzlv;

.field final zzb:Lcom/google/android/gms/measurement/internal/zzx;

.field protected zzc:Z

.field private zzd:Lcom/google/android/gms/measurement/internal/zzkb;

.field private final zze:Ljava/util/Set;

.field private zzf:Z

.field private final zzg:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzh:Ljava/lang/Object;

.field private zzi:Z

.field private zzj:I

.field private zzk:Lcom/google/android/gms/measurement/internal/zzaz;

.field private zzl:Lcom/google/android/gms/measurement/internal/zzaz;

.field private zzm:Ljava/util/PriorityQueue;

.field private zzn:Z

.field private zzo:Lcom/google/android/gms/measurement/internal/zzjx;

.field private final zzp:Ljava/util/concurrent/atomic/AtomicLong;

.field private zzq:J

.field private zzr:Lcom/google/android/gms/measurement/internal/zzaz;

.field private zzs:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private zzt:Lcom/google/android/gms/measurement/internal/zzaz;

.field private final zzv:Lcom/google/android/gms/measurement/internal/zzqe;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/measurement/internal/zzio;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzg;-><init>(Lcom/google/android/gms/measurement/internal/zzio;)V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zze:Ljava/util/Set;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzh:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzi:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzj:I

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzc:Z

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzlk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzlk;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzv:Lcom/google/android/gms/measurement/internal/zzqe;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzg:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzo:Lcom/google/android/gms/measurement/internal/zzjx;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzq:J

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzp:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzx;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/zzx;-><init>(Lcom/google/android/gms/measurement/internal/zzio;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzb:Lcom/google/android/gms/measurement/internal/zzx;

    return-void
.end method

.method public static synthetic zzA(Lcom/google/android/gms/measurement/internal/zzlw;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 8

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzgi;->zzbj:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v0

    const-wide/16 v1, 0x1f4

    const-string v3, "IABTCF_TCString change picked up in listener."

    const-string v4, "IABTCF_TCString"

    if-nez v0, :cond_32

    .line 4
    invoke-static {p2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_49

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzt:Lcom/google/android/gms/measurement/internal/zzaz;

    .line 7
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/measurement/internal/zzaz;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzaz;->zzd(J)V

    return-void

    .line 8
    :cond_32
    invoke-static {p2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    const-string v0, "IABTCF_gdprApplies"

    .line 9
    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    const-string v0, "IABTCF_EnableAdvertiserConsentMode"

    .line 10
    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_49

    goto :goto_4a

    :cond_49
    return-void

    .line 11
    :cond_4a
    :goto_4a
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzt:Lcom/google/android/gms/measurement/internal/zzaz;

    .line 13
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/measurement/internal/zzaz;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzaz;->zzd(J)V

    return-void
.end method

.method static bridge synthetic zzB(Lcom/google/android/gms/measurement/internal/zzlw;Z)V
    .registers 2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzi:Z

    return-void
.end method

.method static bridge synthetic zzC(Lcom/google/android/gms/measurement/internal/zzlw;I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzj:I

    return-void
.end method

.method static synthetic zzD(Lcom/google/android/gms/measurement/internal/zzlw;Lcom/google/android/gms/measurement/internal/zzjx;JZZ)V
    .registers 12

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzht;->zzh()Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzq:J

    cmp-long v2, p2, v2

    if-gtz v2, :cond_33

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjx;->zzb()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzjx;->zzb()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/measurement/internal/zzjx;->zzs(II)Z

    move-result v1

    if-nez v1, :cond_25

    goto :goto_33

    .line 26
    :cond_25
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p0

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzi()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p0

    const-string p2, "Dropped out-of-date consent setting, proposed settings"

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_33
    :goto_33
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzjx;->zzb()I

    move-result v2

    .line 7
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzht;->zzq(I)Z

    move-result v3

    if-eqz v3, :cond_98

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzht;->zzb()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzjx;->zzq()Ljava/lang/String;

    move-result-object v4

    const-string v5, "consent_settings"

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v4, "consent_source"

    .line 10
    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 11
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v1, "Setting storage consent(FE)"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzq:J

    .line 14
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzu()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzny;->zzac()Z

    move-result p0

    if-eqz p0, :cond_82

    .line 18
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzu()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object p0

    .line 19
    invoke-virtual {p0, p4}, Lcom/google/android/gms/measurement/internal/zzny;->zzX(Z)V

    goto :goto_89

    .line 16
    :cond_82
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzu()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object p0

    .line 17
    invoke-virtual {p0, p4}, Lcom/google/android/gms/measurement/internal/zzny;->zzR(Z)V

    :goto_89
    if-eqz p5, :cond_97

    .line 20
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzu()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object p0

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 21
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzny;->zzE(Ljava/util/concurrent/atomic/AtomicReference;)V

    :cond_97
    return-void

    .line 22
    :cond_98
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzi()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzjx;->zzb()I

    move-result p1

    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "Lower precedence consent source ignored, proposed source"

    .line 25
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic zzE(Lcom/google/android/gms/measurement/internal/zzlw;Ljava/lang/Boolean;Z)V
    .registers 3

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzlw;->zzas(Ljava/lang/Boolean;Z)V

    return-void
.end method

.method static bridge synthetic zzF(Lcom/google/android/gms/measurement/internal/zzlw;I)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzk:Lcom/google/android/gms/measurement/internal/zzaz;

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzku;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/measurement/internal/zzku;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;Lcom/google/android/gms/measurement/internal/zzjs;)V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzk:Lcom/google/android/gms/measurement/internal/zzaz;

    :cond_d
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzk:Lcom/google/android/gms/measurement/internal/zzaz;

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzaz;->zzd(J)V

    return-void
.end method

.method static bridge synthetic zzG(Lcom/google/android/gms/measurement/internal/zzlw;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzlw;->zzat()V

    return-void
.end method

.method static bridge synthetic zzaq(Lcom/google/android/gms/measurement/internal/zzlw;Ljava/lang/Throwable;)I
    .registers 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzn:Z

    const/4 v1, 0x2

    if-nez v0, :cond_b

    return v1

    .line 2
    :cond_b
    instance-of v2, p1, Ljava/lang/IllegalStateException;

    if-nez v2, :cond_38

    const-string v2, "garbage collected"

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ServiceUnavailableException"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    goto :goto_38

    .line 6
    :cond_28
    instance-of p0, p1, Ljava/lang/SecurityException;

    if-eqz p0, :cond_37

    const-string p0, "READ_DEVICE_CONFIG"

    invoke-virtual {v0, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_35

    return v1

    :cond_35
    const/4 p0, 0x3

    return p0

    :cond_37
    return v1

    .line 4
    :cond_38
    :goto_38
    const-string p1, "Background"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_42

    return v0

    :cond_42
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzn:Z

    return v0
.end method

.method private final zzar(Lcom/google/android/gms/measurement/internal/zzpa;)Lcom/google/android/gms/measurement/internal/zzme;
    .registers 12

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URI;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzpa;->zzc:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v5
    :try_end_b
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_b} :catch_f1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_b} :catch_ef

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzh()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzn()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    iget-wide v6, p1, Lcom/google/android/gms/measurement/internal/zzpa;->zza:J

    .line 10
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzpa;->zzc:Ljava/lang/String;

    iget-object v7, p1, Lcom/google/android/gms/measurement/internal/zzpa;->zzb:[B

    array-length v7, v7

    .line 11
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "[sgtm] Uploading data from app. row_id, url, uncompressed size"

    .line 12
    invoke-virtual {v2, v8, v3, v6, v7}, Lcom/google/android/gms/measurement/internal/zzhc;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzpa;->zzg:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    .line 16
    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzpa;->zzg:Ljava/lang/String;

    const-string v7, "[sgtm] Uploading data from app. row_id"

    .line 17
    invoke-virtual {v2, v7, v3, v6}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4f
    new-instance v7, Ljava/util/HashMap;

    .line 18
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 19
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzpa;->zzd:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5e
    :goto_5e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_78

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 20
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 21
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5e

    .line 22
    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5e

    .line 23
    :cond_78
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzr()Lcom/google/android/gms/measurement/internal/zzmb;

    move-result-object v3

    .line 24
    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzpa;->zzb:[B

    new-instance v8, Lcom/google/android/gms/measurement/internal/zzkn;

    invoke-direct {v8, p0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzkn;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/zzpa;)V

    .line 25
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzjr;->zzv()V

    .line 26
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, v3, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object p1

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzma;

    .line 30
    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzma;-><init>(Lcom/google/android/gms/measurement/internal/zzmb;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzly;)V

    .line 31
    invoke-virtual {p1, v2}, Lcom/google/android/gms/measurement/internal/zzil;->zzp(Ljava/lang/Runnable;)V

    .line 32
    :try_start_9d
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 33
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    .line 34
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    monitor-enter v1
    :try_end_b0
    .catch Ljava/lang/InterruptedException; {:try_start_9d .. :try_end_b0} :catch_d0

    .line 35
    :goto_b0
    :try_start_b0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_ca

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_ca

    .line 36
    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 37
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    .line 38
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v2, v4

    goto :goto_b0

    .line 39
    :cond_ca
    monitor-exit v1

    goto :goto_df

    :catchall_cc
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_cf
    .catchall {:try_start_b0 .. :try_end_cf} :catchall_cc

    :try_start_cf
    throw p1
    :try_end_d0
    .catch Ljava/lang/InterruptedException; {:try_start_cf .. :try_end_d0} :catch_d0

    .line 4
    :catch_d0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 40
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string v0, "[sgtm] Interrupted waiting for uploading batch"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 42
    :goto_df
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_e8

    sget-object p1, Lcom/google/android/gms/measurement/internal/zzme;->zza:Lcom/google/android/gms/measurement/internal/zzme;

    goto :goto_ee

    :cond_e8
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzme;

    :goto_ee
    return-object p1

    :catch_ef
    move-exception v0

    goto :goto_f2

    :catch_f1
    move-exception v0

    :goto_f2
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzpa;->zzc:Ljava/lang/String;

    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzpa;->zza:J

    .line 4
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v3, "[sgtm] Bad upload url for row_id"

    invoke-virtual {v1, v3, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lcom/google/android/gms/measurement/internal/zzme;->zzc:Lcom/google/android/gms/measurement/internal/zzme;

    return-object p1
.end method

.method private final zzas(Ljava/lang/Boolean;Z)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Setting app measurement enabled (FE)"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v1

    .line 6
    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzht;->zzm(Ljava/lang/Boolean;)V

    if-eqz p2, :cond_41

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object p2

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 9
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzht;->zzb()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "measurement_enabled_from_api"

    if-eqz p1, :cond_3b

    .line 10
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_3e

    .line 11
    :cond_3b
    invoke-interface {p2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 12
    :goto_3e
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_41
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 13
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzio;->zzK()Z

    move-result p2

    if-nez p2, :cond_53

    if-eqz p1, :cond_52

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_52

    goto :goto_53

    :cond_52
    return-void

    .line 14
    :cond_53
    :goto_53
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzlw;->zzat()V

    return-void
.end method

.method private final zzat()V
    .registers 15

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v1

    .line 3
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzht;->zzh:Lcom/google/android/gms/measurement/internal/zzhr;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhr;->zza()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4f

    const-string v2, "unset"

    .line 4
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    const-string v4, "_npa"

    const/4 v5, 0x0

    .line 7
    const-string v3, "app"

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzlw;->zzan(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    goto :goto_50

    .line 16
    :cond_2b
    const-string v2, "true"

    .line 8
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eq v2, v1, :cond_37

    const-wide/16 v1, 0x0

    goto :goto_39

    :cond_37
    const-wide/16 v1, 0x1

    :goto_39
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 10
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v12

    const-string v9, "app"

    const-string v10, "_npa"

    move-object v8, p0

    .line 11
    invoke-virtual/range {v8 .. v13}, Lcom/google/android/gms/measurement/internal/zzlw;->zzan(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    move-object v2, v8

    goto :goto_50

    :cond_4f
    move-object v2, p0

    .line 7
    :goto_50
    iget-object v1, v2, Lcom/google/android/gms/measurement/internal/zzlw;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzJ()Z

    move-result v1

    if-eqz v1, :cond_84

    iget-boolean v1, v2, Lcom/google/android/gms/measurement/internal/zzlw;->zzc:Z

    if-eqz v1, :cond_84

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v3, "Recording app launch after enabling measurement for the first time (FE)"

    .line 19
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlw;->zzH()V

    iget-object v1, v2, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzv()Lcom/google/android/gms/measurement/internal/zzop;

    move-result-object v1

    .line 22
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzop;->zza:Lcom/google/android/gms/measurement/internal/zzoo;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza()V

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzkw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzkw;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;)V

    .line 24
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzil;->zzq(Ljava/lang/Runnable;)V

    return-void

    .line 13
    :cond_84
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v1, "Updating Scion state (FE)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzu()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzny;->zzV()V

    return-void
.end method

.method static bridge synthetic zzh(Lcom/google/android/gms/measurement/internal/zzlw;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzj:I

    return p0
.end method

.method static bridge synthetic zzj(Lcom/google/android/gms/measurement/internal/zzlw;)Lcom/google/android/gms/measurement/internal/zzaz;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzr:Lcom/google/android/gms/measurement/internal/zzaz;

    return-object p0
.end method

.method public static synthetic zzz(Lcom/google/android/gms/measurement/internal/zzlw;Landroid/os/Bundle;)V
    .registers 16

    .line 1
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    move-object v2, p1

    goto/16 :goto_ee

    .line 43
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    new-instance v2, Landroid/os/Bundle;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v3

    .line 3
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzht;->zzt:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzho;->zza()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_23
    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_9f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_69

    .line 6
    instance-of v7, v6, Ljava/lang/String;

    if-nez v7, :cond_69

    instance-of v7, v6, Ljava/lang/Long;

    if-nez v7, :cond_69

    instance-of v7, v6, Ljava/lang/Double;

    if-nez v7, :cond_69

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v5

    .line 18
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzqf;->zzal(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzv:Lcom/google/android/gms/measurement/internal/zzqe;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1b

    const/4 v11, 0x0

    .line 20
    invoke-virtual/range {v7 .. v13}, Lcom/google/android/gms/measurement/internal/zzqf;->zzR(Lcom/google/android/gms/measurement/internal/zzqe;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 21
    :cond_5b
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v5

    .line 22
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzhe;->zzl()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v5

    const-string v7, "Invalid default event parameter type. Name, value"

    .line 23
    invoke-virtual {v5, v7, v4, v6}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_23

    .line 7
    :cond_69
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzqf;->zzap(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7d

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v5

    .line 9
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzhe;->zzl()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v5

    const-string v6, "Invalid default event parameter name. Name"

    invoke-virtual {v5, v6, v4}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_23

    :cond_7d
    if-nez v6, :cond_83

    .line 10
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_23

    .line 11
    :cond_83
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v7

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v8

    .line 13
    invoke-virtual {v8, v1, v5}, Lcom/google/android/gms/measurement/internal/zzam;->zzc(Ljava/lang/String;Z)I

    move-result v5

    const-string v8, "param"

    .line 14
    invoke-virtual {v7, v8, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzqf;->zzaf(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v5

    .line 16
    invoke-virtual {v5, v2, v4, v6}, Lcom/google/android/gms/measurement/internal/zzqf;->zzS(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_23

    .line 24
    :cond_9f
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v3

    .line 26
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzam;->zze()I

    move-result v3

    .line 27
    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v4

    if-gt v4, v3, :cond_b1

    goto :goto_ee

    :cond_b1
    new-instance v4, Ljava/util/TreeSet;

    .line 28
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 29
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_be
    :goto_be
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    add-int/lit8 v5, v5, 0x1

    if-le v5, v3, :cond_be

    .line 30
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_be

    .line 31
    :cond_d2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzv:Lcom/google/android/gms/measurement/internal/zzqe;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1a

    const/4 v11, 0x0

    .line 32
    invoke-virtual/range {v7 .. v13}, Lcom/google/android/gms/measurement/internal/zzqf;->zzR(Lcom/google/android/gms/measurement/internal/zzqe;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzl()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v3, "Too many default event parameters set. Discarding beyond event parameter limit"

    .line 35
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 1
    :goto_ee
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v3

    .line 37
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzht;->zzt:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/measurement/internal/zzho;->zzb(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_10d

    .line 39
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object p1

    .line 40
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzgi;->zzbd:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 41
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result p1

    if-eqz p1, :cond_10c

    goto :goto_10d

    :cond_10c
    return-void

    :cond_10d
    :goto_10d
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 42
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzio;->zzu()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object p0

    .line 43
    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/zzny;->zzT(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final zzH()V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzM()Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_ab

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaV()Lcom/google/android/gms/measurement/internal/zzaf;

    const-string v2, "google_analytics_deferred_deep_link_enabled"

    .line 6
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzn(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_42

    .line 7
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Deferred Deep Link feature enabled."

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzko;

    invoke-direct {v2, p0}, Lcom/google/android/gms/measurement/internal/zzko;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;)V

    .line 11
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzil;->zzq(Ljava/lang/Runnable;)V

    :cond_42
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzu()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzny;->zzA()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzc:Z

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzht;->zzb()Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "previous_os_version"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 17
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzg()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v3

    .line 18
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzjr;->zzv()V

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 19
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_85

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_85

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzht;->zzb()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 21
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 22
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 23
    :cond_85
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ab

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzg()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjr;->zzv()V

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ab

    new-instance v0, Landroid/os/Bundle;

    .line 27
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "_po"

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "auto"

    const-string v2, "_ou"

    .line 29
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzlw;->zzR(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_ab
    :goto_ab
    return-void
.end method

.method final zzI()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzl:Lcom/google/android/gms/measurement/internal/zzaz;

    if-eqz v0, :cond_a

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaz;->zzb()V

    :cond_a
    return-void
.end method

.method public final zzJ(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 2
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    new-instance v3, Landroid/os/Bundle;

    .line 4
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "name"

    .line 5
    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "creation_timestamp"

    .line 6
    invoke-virtual {v3, p1, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    if-eqz p2, :cond_28

    const-string p1, "expired_event_name"

    .line 7
    invoke-virtual {v3, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "expired_event_params"

    .line 8
    invoke-virtual {v3, p1, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 9
    :cond_28
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzlg;

    invoke-direct {p2, p0, v3}, Lcom/google/android/gms/measurement/internal/zzlg;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;Landroid/os/Bundle;)V

    .line 10
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzil;->zzq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzK()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zza:Lcom/google/android/gms/measurement/internal/zzlv;

    if-eqz v1, :cond_21

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zza:Lcom/google/android/gms/measurement/internal/zzlv;

    .line 5
    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_21
    return-void
.end method

.method final zzL()V
    .registers 10

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqr;->zzb()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    const/4 v2, 0x0

    .line 1
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzgi;->zzaW:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 3
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzil;->zzu()Z

    move-result v1

    if-nez v1, :cond_7b

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaV()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 7
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzaf;->zza()Z

    move-result v1

    if-nez v1, :cond_6d

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Getting trigger URIs (FE)"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    .line 11
    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v3

    new-instance v8, Lcom/google/android/gms/measurement/internal/zzki;

    invoke-direct {v8, p0, v4}, Lcom/google/android/gms/measurement/internal/zzki;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-wide/16 v5, 0x2710

    const-string v7, "get trigger URIs"

    .line 13
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzil;->zze(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 14
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_60

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v1, "Timed out waiting for get trigger URIs"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    return-void

    .line 17
    :cond_60
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzkj;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/measurement/internal/zzkj;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;Ljava/util/List;)V

    .line 18
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzil;->zzq(Ljava/lang/Runnable;)V

    return-void

    .line 19
    :cond_6d
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v1, "Cannot get trigger URIs from main thread"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    return-void

    .line 21
    :cond_7b
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v1, "Cannot get trigger URIs from analytics worker thread"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    :cond_88
    return-void
.end method

.method public final zzM()V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v1

    .line 3
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzht;->zzo:Lcom/google/android/gms/measurement/internal/zzhn;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhn;->zzb()Z

    move-result v1

    if-nez v1, :cond_5d

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v1

    .line 5
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzht;->zzp:Lcom/google/android/gms/measurement/internal/zzhp;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhp;->zza()J

    move-result-wide v1

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v3

    .line 7
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzht;->zzp:Lcom/google/android/gms/measurement/internal/zzhp;

    const-wide/16 v4, 0x1

    add-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzhp;->zzb(J)V

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    const-wide/16 v3, 0x5

    cmp-long v1, v1, v3

    if-ltz v1, :cond_48

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Permanently failed to retrieve Deferred Deep Link. Reached maximum retries."

    .line 11
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v0

    .line 13
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzht;->zzo:Lcom/google/android/gms/measurement/internal/zzhn;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhn;->zza(Z)V

    return-void

    :cond_48
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzr:Lcom/google/android/gms/measurement/internal/zzaz;

    if-nez v0, :cond_55

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzld;

    .line 14
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/measurement/internal/zzld;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;Lcom/google/android/gms/measurement/internal/zzjs;)V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzr:Lcom/google/android/gms/measurement/internal/zzaz;

    :cond_55
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzr:Lcom/google/android/gms/measurement/internal/zzaz;

    const-wide/16 v1, 0x0

    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzaz;->zzd(J)V

    return-void

    .line 16
    :cond_5d
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v1, "Deferred Deep Link already retrieved. Not fetching again."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    return-void
.end method

.method public final zzN()V
    .registers 34

    move-object/from16 v0, p0

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v3, "Handle tcf update."

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzht;->zza()Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    .line 6
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 7
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzgi;->zzbj:Lcom/google/android/gms/measurement/internal/zzgg;

    const/4 v5, 0x0

    .line 8
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzgg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 7
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string v7, "IABTCF_PurposeConsents"

    const-string v8, "IABTCF_EnableAdvertiserConsentMode"

    const-string v9, "IABTCF_gdprApplies"

    const-string v10, "IABTCF_PolicyVersion"

    const-string v11, "IABTCF_CmpSdkID"

    const-string v12, "IABTCF_VendorConsents"

    const-string v14, ""

    const/16 v15, 0x2f2

    const/16 v16, 0x0

    if-eqz v6, :cond_17c

    .line 9
    sget v3, Lcom/google/android/gms/measurement/internal/zzot;->zzb:I

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/util/Map$Entry;

    sget-object v6, Lcom/google/android/gms/internal/measurement/zzkl;->zzb:Lcom/google/android/gms/internal/measurement/zzkl;

    const/16 v17, 0x2

    sget-object v13, Lcom/google/android/gms/measurement/internal/zzos;->zza:Lcom/google/android/gms/measurement/internal/zzos;

    .line 10
    invoke-static {v6, v13}, Lcom/google/android/gms/measurement/internal/zzor;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v6

    aput-object v6, v3, v16

    sget-object v6, Lcom/google/android/gms/internal/measurement/zzkl;->zzc:Lcom/google/android/gms/internal/measurement/zzkl;

    const/16 v18, 0x1

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzos;->zzd:Lcom/google/android/gms/measurement/internal/zzos;

    .line 11
    invoke-static {v6, v5}, Lcom/google/android/gms/measurement/internal/zzor;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v6

    aput-object v6, v3, v18

    sget-object v6, Lcom/google/android/gms/internal/measurement/zzkl;->zzd:Lcom/google/android/gms/internal/measurement/zzkl;

    .line 12
    invoke-static {v6, v13}, Lcom/google/android/gms/measurement/internal/zzor;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v6

    aput-object v6, v3, v17

    sget-object v6, Lcom/google/android/gms/internal/measurement/zzkl;->zze:Lcom/google/android/gms/internal/measurement/zzkl;

    .line 13
    invoke-static {v6, v13}, Lcom/google/android/gms/measurement/internal/zzor;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v6

    const/4 v13, 0x3

    aput-object v6, v3, v13

    sget-object v6, Lcom/google/android/gms/internal/measurement/zzkl;->zzh:Lcom/google/android/gms/internal/measurement/zzkl;

    .line 14
    invoke-static {v6, v5}, Lcom/google/android/gms/measurement/internal/zzor;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v6

    const/4 v13, 0x4

    aput-object v6, v3, v13

    sget-object v6, Lcom/google/android/gms/internal/measurement/zzkl;->zzj:Lcom/google/android/gms/internal/measurement/zzkl;

    .line 15
    invoke-static {v6, v5}, Lcom/google/android/gms/measurement/internal/zzor;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v6

    const/4 v13, 0x5

    aput-object v6, v3, v13

    sget-object v6, Lcom/google/android/gms/internal/measurement/zzkl;->zzk:Lcom/google/android/gms/internal/measurement/zzkl;

    .line 16
    invoke-static {v6, v5}, Lcom/google/android/gms/measurement/internal/zzor;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v5

    const/4 v6, 0x6

    aput-object v5, v3, v6

    .line 17
    invoke-static {v3}, Lcom/google/common/collect/ImmutableMap;->ofEntries([Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v19

    const-string v3, "CH"

    .line 18
    invoke-static {v3}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v21

    new-array v3, v13, [C

    .line 19
    invoke-static {v2, v11}, Lcom/google/android/gms/measurement/internal/zzot;->zza(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v23

    .line 20
    invoke-static {v2, v10}, Lcom/google/android/gms/measurement/internal/zzot;->zza(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v26

    .line 21
    invoke-static {v2, v9}, Lcom/google/android/gms/measurement/internal/zzot;->zza(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v25

    const-string v5, "IABTCF_PurposeOneTreatment"

    .line 22
    invoke-static {v2, v5}, Lcom/google/android/gms/measurement/internal/zzot;->zza(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v27

    .line 23
    invoke-static {v2, v8}, Lcom/google/android/gms/measurement/internal/zzot;->zza(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v24

    const-string v5, "IABTCF_PublisherCC"

    .line 24
    invoke-static {v2, v5}, Lcom/google/android/gms/measurement/internal/zzot;->zzb(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 25
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v5

    .line 26
    invoke-virtual/range {v19 .. v19}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v6

    :goto_bf
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/16 v9, 0x2f3

    if-eqz v8, :cond_124

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzkl;

    .line 27
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzkl;->zza()I

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "IABTCF_PublisherRestrictions"

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/google/android/gms/measurement/internal/zzot;->zzb(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 28
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_11a

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v11, v9, :cond_f0

    goto :goto_11a

    .line 29
    :cond_f0
    invoke-virtual {v10, v15}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0xa

    invoke-static {v9, v10}, Ljava/lang/Character;->digit(CI)I

    move-result v9

    if-ltz v9, :cond_117

    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkm;->values()[Lcom/google/android/gms/internal/measurement/zzkm;

    move-result-object v10

    array-length v10, v10

    if-le v9, v10, :cond_104

    goto :goto_117

    :cond_104
    if-eqz v9, :cond_117

    move/from16 v10, v18

    if-eq v9, v10, :cond_114

    move/from16 v10, v17

    if-eq v9, v10, :cond_111

    sget-object v9, Lcom/google/android/gms/internal/measurement/zzkm;->zzd:Lcom/google/android/gms/internal/measurement/zzkm;

    goto :goto_11c

    :cond_111
    sget-object v9, Lcom/google/android/gms/internal/measurement/zzkm;->zzc:Lcom/google/android/gms/internal/measurement/zzkm;

    goto :goto_11c

    :cond_114
    sget-object v9, Lcom/google/android/gms/internal/measurement/zzkm;->zzb:Lcom/google/android/gms/internal/measurement/zzkm;

    goto :goto_11c

    :cond_117
    :goto_117
    sget-object v9, Lcom/google/android/gms/internal/measurement/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzkm;

    goto :goto_11c

    .line 28
    :cond_11a
    :goto_11a
    sget-object v9, Lcom/google/android/gms/internal/measurement/zzkm;->zzd:Lcom/google/android/gms/internal/measurement/zzkm;

    .line 31
    :goto_11c
    invoke-virtual {v5, v8, v9}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const/16 v17, 0x2

    const/16 v18, 0x1

    goto :goto_bf

    .line 32
    :cond_124
    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableMap$Builder;->buildOrThrow()Lcom/google/common/collect/ImmutableMap;

    move-result-object v20

    .line 33
    invoke-static {v2, v7}, Lcom/google/android/gms/measurement/internal/zzot;->zzb(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 34
    invoke-static {v2, v12}, Lcom/google/android/gms/measurement/internal/zzot;->zzb(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 35
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/16 v7, 0x31

    if-nez v6, :cond_147

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v9, :cond_147

    .line 36
    invoke-virtual {v5, v15}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_147

    const/16 v31, 0x1

    goto :goto_149

    :cond_147
    move/from16 v31, v16

    :goto_149
    const-string v5, "IABTCF_PurposeLegitimateInterests"

    .line 37
    invoke-static {v2, v5}, Lcom/google/android/gms/measurement/internal/zzot;->zzb(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string v5, "IABTCF_VendorLegitimateInterests"

    .line 38
    invoke-static {v2, v5}, Lcom/google/android/gms/measurement/internal/zzot;->zzb(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 39
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_16a

    .line 40
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v9, :cond_16a

    .line 41
    invoke-virtual {v2, v15}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_16a

    const/16 v32, 0x1

    goto :goto_16c

    :cond_16a
    move/from16 v32, v16

    :goto_16c
    const/16 v2, 0x32

    aput-char v2, v3, v16

    .line 42
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzoq;

    move-object/from16 v22, v3

    .line 43
    invoke-static/range {v19 .. v32}, Lcom/google/android/gms/measurement/internal/zzot;->zzc(Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableSet;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/measurement/internal/zzoq;-><init>(Ljava/util/Map;)V

    goto :goto_1ea

    .line 44
    :cond_17c
    invoke-static {v2, v12}, Lcom/google/android/gms/measurement/internal/zzot;->zzb(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 45
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_199

    .line 46
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v15, :cond_199

    .line 47
    invoke-virtual {v5, v15}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    const-string v6, "GoogleConsent"

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_199
    invoke-static {v2, v9}, Lcom/google/android/gms/measurement/internal/zzot;->zza(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1a9

    const-string v9, "gdprApplies"

    .line 49
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_1a9
    invoke-static {v2, v8}, Lcom/google/android/gms/measurement/internal/zzot;->zza(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v5

    if-eq v5, v6, :cond_1b8

    const-string v8, "EnableAdvertiserConsentMode"

    .line 51
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_1b8
    invoke-static {v2, v10}, Lcom/google/android/gms/measurement/internal/zzot;->zza(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v5

    if-eq v5, v6, :cond_1c7

    const-string v8, "PolicyVersion"

    .line 53
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_1c7
    invoke-static {v2, v7}, Lcom/google/android/gms/measurement/internal/zzot;->zzb(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 55
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1d6

    const-string v7, "PurposeConsents"

    .line 56
    invoke-interface {v3, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_1d6
    invoke-static {v2, v11}, Lcom/google/android/gms/measurement/internal/zzot;->zza(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v2

    if-eq v2, v6, :cond_1e5

    const-string v5, "CmpSdkID"

    .line 58
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e5
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzoq;

    .line 59
    invoke-direct {v2, v3}, Lcom/google/android/gms/measurement/internal/zzoq;-><init>(Ljava/util/Map;)V

    .line 60
    :goto_1ea
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v3

    .line 61
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v3

    const-string v5, "Tcf preferences read"

    invoke-virtual {v3, v5, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v3

    const/4 v5, 0x0

    .line 63
    invoke-virtual {v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v3

    const/16 v4, -0x1e

    const-string v5, "_tcf"

    const-string v6, "auto"

    const-string v7, "_tcfd"

    const-string v8, "Consent generated from Tcf"

    if-eqz v3, :cond_2ad

    .line 75
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v3

    .line 76
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 77
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzht;->zzb()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v9, "stored_tcf_param"

    invoke-interface {v3, v9, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v9, Ljava/util/HashMap;

    .line 78
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 79
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_22e

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzoq;

    .line 80
    invoke-direct {v3, v9}, Lcom/google/android/gms/measurement/internal/zzoq;-><init>(Ljava/util/Map;)V

    goto :goto_263

    .line 101
    :cond_22e
    const-string v10, ";"

    .line 81
    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 82
    array-length v10, v3

    move/from16 v11, v16

    :goto_237
    if-ge v11, v10, :cond_25e

    aget-object v12, v3, v11

    const-string v13, "="

    .line 83
    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 84
    array-length v13, v12

    const/4 v14, 0x2

    if-lt v13, v14, :cond_259

    sget-object v13, Lcom/google/android/gms/measurement/internal/zzot;->zza:Lcom/google/common/collect/ImmutableList;

    aget-object v15, v12, v16

    invoke-virtual {v13, v15}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_259

    .line 85
    aget-object v13, v12, v16

    const/16 v18, 0x1

    aget-object v12, v12, v18

    invoke-interface {v9, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_25b

    :cond_259
    const/16 v18, 0x1

    :goto_25b
    add-int/lit8 v11, v11, 0x1

    goto :goto_237

    :cond_25e
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzoq;

    .line 86
    invoke-direct {v3, v9}, Lcom/google/android/gms/measurement/internal/zzoq;-><init>(Ljava/util/Map;)V

    .line 87
    :goto_263
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v9

    .line 88
    invoke-virtual {v9, v2}, Lcom/google/android/gms/measurement/internal/zzht;->zzr(Lcom/google/android/gms/measurement/internal/zzoq;)Z

    move-result v9

    if-eqz v9, :cond_2e4

    .line 89
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzoq;->zza()Landroid/os/Bundle;

    move-result-object v9

    .line 90
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v10

    .line 91
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v8, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    if-eq v9, v8, :cond_28b

    .line 92
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 93
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v10

    .line 94
    invoke-virtual {v0, v9, v4, v10, v11}, Lcom/google/android/gms/measurement/internal/zzlw;->zzaf(Landroid/os/Bundle;IJ)V

    :cond_28b
    new-instance v1, Landroid/os/Bundle;

    .line 95
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 96
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzoq;->zzc(Lcom/google/android/gms/measurement/internal/zzoq;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "_tcfm"

    .line 97
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzoq;->zzb()Ljava/lang/String;

    move-result-object v3

    const-string v4, "_tcfd2"

    .line 99
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzoq;->zzd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0, v6, v5, v1}, Lcom/google/android/gms/measurement/internal/zzlw;->zzR(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 64
    :cond_2ad
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v3

    .line 65
    invoke-virtual {v3, v2}, Lcom/google/android/gms/measurement/internal/zzht;->zzr(Lcom/google/android/gms/measurement/internal/zzoq;)Z

    move-result v3

    if-eqz v3, :cond_2e4

    .line 66
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzoq;->zza()Landroid/os/Bundle;

    move-result-object v3

    .line 67
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v9

    .line 68
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v9

    invoke-virtual {v9, v8, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v8, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    if-eq v3, v8, :cond_2d5

    .line 69
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 70
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v8

    .line 71
    invoke-virtual {v0, v3, v4, v8, v9}, Lcom/google/android/gms/measurement/internal/zzlw;->zzaf(Landroid/os/Bundle;IJ)V

    :cond_2d5
    new-instance v1, Landroid/os/Bundle;

    .line 72
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 73
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzoq;->zzd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0, v6, v5, v1}, Lcom/google/android/gms/measurement/internal/zzlw;->zzR(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2e4
    return-void
.end method

.method public final zzO(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 13

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v7

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/measurement/internal/zzlw;->zzP(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    return-void
.end method

.method public final zzP(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V
    .registers 18

    if-nez p3, :cond_7

    .line 1
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_7
    move-object v5, p3

    const-string p3, "screen_view"

    .line 2
    invoke-static {p2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1c

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()Lcom/google/android/gms/measurement/internal/zzmo;

    move-result-object p1

    move-wide/from16 v3, p6

    .line 4
    invoke-virtual {p1, v5, v3, v4}, Lcom/google/android/gms/measurement/internal/zzmo;->zzy(Landroid/os/Bundle;J)V

    return-void

    :cond_1c
    move-wide/from16 v3, p6

    const/4 p3, 0x1

    if-eqz p5, :cond_2d

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzd:Lcom/google/android/gms/measurement/internal/zzkb;

    if-eqz v0, :cond_2d

    .line 5
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzqf;->zzap(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 p3, 0x0

    :cond_2d
    :goto_2d
    move v7, p3

    if-nez p1, :cond_32

    const-string p1, "app"

    :cond_32
    move-object v1, p1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p2

    move v8, p4

    move v6, p5

    .line 6
    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/measurement/internal/zzlw;->zzZ(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method public final zzQ(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 15

    .line 1
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzio;->zzP()V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    const/4 v7, 0x1

    const/4 v8, 0x1

    .line 4
    const-string v1, "auto"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v5, p3

    move-object v9, p4

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/measurement/internal/zzlw;->zzZ(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method final zzR(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 11

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzlw;->zzS(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    return-void
.end method

.method final zzS(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V
    .registers 16

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzd:Lcom/google/android/gms/measurement/internal/zzkb;

    const/4 v2, 0x1

    if-eqz v1, :cond_10

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzqf;->zzap(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :cond_10
    :goto_10
    move v7, v2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    .line 3
    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/measurement/internal/zzlw;->zzT(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method protected final zzT(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .registers 32

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p5

    .line 1
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzlw;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzJ()Z

    move-result v2

    if-eqz v2, :cond_4c0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzh()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zzp()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3f

    .line 8
    invoke-interface {v2, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    goto :goto_3f

    .line 10
    :cond_2f
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 174
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v2, "Dropping non-safelisted event. event name, origin"

    invoke-virtual {v0, v2, v8, v7}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 8
    :cond_3f
    :goto_3f
    iget-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzlw;->zzf:Z

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-nez v2, :cond_9d

    iput-boolean v12, v1, Lcom/google/android/gms/measurement/internal/zzlw;->zzf:Z

    .line 9
    :try_start_48
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzN()Z

    move-result v0
    :try_end_4c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_48 .. :try_end_4c} :catch_8e

    const-string v2, "com.google.android.gms.tagmanager.TagManagerService"

    if-nez v0, :cond_5f

    :try_start_50
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v2, v12, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_63

    .line 10
    :cond_5f
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_63
    .catch Ljava/lang/ClassNotFoundException; {:try_start_50 .. :try_end_63} :catch_8e

    .line 12
    :goto_63
    :try_start_63
    const-string v2, "initialize"

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v11

    .line 13
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 15
    invoke-virtual {v0, v10, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_7c} :catch_7d

    goto :goto_9d

    :catch_7d
    move-exception v0

    .line 19
    :try_start_7e
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 16
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v3, "Failed to invoke Tag Manager\'s initialize() method"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7e .. :try_end_8d} :catch_8e

    goto :goto_9d

    .line 177
    :catch_8e
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzi()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v2, "Tag Manager is not found and thus will not be used"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 15
    :cond_9d
    :goto_9d
    const-string v0, "_cmp"

    .line 20
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c5

    .line 21
    const-string v0, "gclid"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c5

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 22
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaV()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 23
    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 24
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    .line 25
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    const-string v2, "auto"

    const-string v3, "_lgclid"

    .line 26
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzlw;->zzan(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    :cond_c5
    move-object v6, v1

    iget-object v13, v6, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 27
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzio;->zzaV()Lcom/google/android/gms/measurement/internal/zzaf;

    if-eqz p6, :cond_e4

    .line 28
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzqf;->zzau(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 29
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v0

    .line 30
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v1

    .line 31
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzht;->zzt:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzho;->zza()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Lcom/google/android/gms/measurement/internal/zzqf;->zzO(Landroid/os/Bundle;Landroid/os/Bundle;)V

    :cond_e4
    const/16 v0, 0x28

    const/4 v1, 0x2

    if-nez p8, :cond_161

    .line 32
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzio;->zzaV()Lcom/google/android/gms/measurement/internal/zzaf;

    const-string v2, "_iap"

    .line 33
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_161

    iget-object v2, v6, Lcom/google/android/gms/measurement/internal/zzlw;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 34
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v3

    .line 35
    const-string v4, "event"

    invoke-virtual {v3, v4, v8}, Lcom/google/android/gms/measurement/internal/zzqf;->zzah(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_104

    :goto_102
    move v3, v1

    goto :goto_11e

    .line 36
    :cond_104
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzjy;->zza:[Ljava/lang/String;

    sget-object v14, Lcom/google/android/gms/measurement/internal/zzjy;->zzb:[Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v14, v8}, Lcom/google/android/gms/measurement/internal/zzqf;->zzae(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_111

    const/16 v3, 0xd

    goto :goto_11e

    :cond_111
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 37
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    .line 38
    invoke-virtual {v3, v4, v0, v8}, Lcom/google/android/gms/measurement/internal/zzqf;->zzad(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11d

    goto :goto_102

    :cond_11d
    move v3, v11

    :goto_11e
    if-eqz v3, :cond_161

    .line 165
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 166
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzf()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    .line 167
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v4

    .line 168
    invoke-virtual {v4, v8}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Invalid public event name. Event will not be logged (FE)"

    .line 169
    invoke-virtual {v1, v5, v4}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 170
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v1

    .line 171
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    invoke-virtual {v1, v8, v0, v12}, Lcom/google/android/gms/measurement/internal/zzqf;->zzG(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v8, :cond_146

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    .line 172
    :cond_146
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v1

    iget-object v2, v6, Lcom/google/android/gms/measurement/internal/zzlw;->zzv:Lcom/google/android/gms/measurement/internal/zzqe;

    const/4 v4, 0x0

    const-string v5, "_ev"

    move-object/from16 p6, v0

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move/from16 p4, v3

    move-object/from16 p3, v4

    move-object/from16 p5, v5

    move/from16 p7, v11

    .line 173
    invoke-virtual/range {p1 .. p7}, Lcom/google/android/gms/measurement/internal/zzqf;->zzR(Lcom/google/android/gms/measurement/internal/zzqe;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 39
    :cond_161
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzio;->zzaV()Lcom/google/android/gms/measurement/internal/zzaf;

    iget-object v14, v6, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 40
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()Lcom/google/android/gms/measurement/internal/zzmo;

    move-result-object v2

    .line 41
    invoke-virtual {v2, v11}, Lcom/google/android/gms/measurement/internal/zzmo;->zzj(Z)Lcom/google/android/gms/measurement/internal/zzmh;

    move-result-object v2

    const-string v3, "_sc"

    if-eqz v2, :cond_17a

    .line 42
    invoke-virtual {v9, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_17a

    iput-boolean v12, v2, Lcom/google/android/gms/measurement/internal/zzmh;->zzd:Z

    :cond_17a
    if-eqz p6, :cond_180

    if-nez p8, :cond_180

    move v4, v12

    goto :goto_181

    :cond_180
    move v4, v11

    .line 43
    :goto_181
    invoke-static {v2, v9, v4}, Lcom/google/android/gms/measurement/internal/zzqf;->zzN(Lcom/google/android/gms/measurement/internal/zzmh;Landroid/os/Bundle;Z)V

    const-string v2, "am"

    .line 44
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 45
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzqf;->zzap(Ljava/lang/String;)Z

    move-result v4

    if-eqz p6, :cond_1c7

    iget-object v5, v6, Lcom/google/android/gms/measurement/internal/zzlw;->zzd:Lcom/google/android/gms/measurement/internal/zzkb;

    if-eqz v5, :cond_1c7

    if-nez v4, :cond_1c7

    if-eqz v2, :cond_19a

    move v9, v12

    goto :goto_1c8

    .line 156
    :cond_19a
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    .line 158
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v1

    .line 159
    invoke-virtual {v1, v8}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v2

    .line 161
    invoke-virtual {v2, v9}, Lcom/google/android/gms/measurement/internal/zzgx;->zzb(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Passing event to registered event handler (FE)"

    .line 162
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v6, Lcom/google/android/gms/measurement/internal/zzlw;->zzd:Lcom/google/android/gms/measurement/internal/zzkb;

    .line 163
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v6, Lcom/google/android/gms/measurement/internal/zzlw;->zzd:Lcom/google/android/gms/measurement/internal/zzkb;

    move-wide/from16 v4, p3

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    .line 164
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzkb;->interceptEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    return-void

    :cond_1c7
    move v9, v2

    .line 45
    :goto_1c8
    iget-object v15, v6, Lcom/google/android/gms/measurement/internal/zzlw;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 46
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzio;->zzM()Z

    move-result v2

    if-nez v2, :cond_1d2

    goto/16 :goto_4bf

    .line 47
    :cond_1d2
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v2

    .line 48
    invoke-virtual {v2, v8}, Lcom/google/android/gms/measurement/internal/zzqf;->zzf(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_21c

    .line 49
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 50
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzf()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    .line 51
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v3

    .line 52
    invoke-virtual {v3, v8}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Invalid event name. Event will not be logged (FE)"

    .line 53
    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v1

    .line 55
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    .line 56
    invoke-virtual {v1, v8, v0, v12}, Lcom/google/android/gms/measurement/internal/zzqf;->zzG(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v8, :cond_202

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    .line 57
    :cond_202
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v1

    iget-object v3, v6, Lcom/google/android/gms/measurement/internal/zzlw;->zzv:Lcom/google/android/gms/measurement/internal/zzqe;

    const-string v4, "_ev"

    move-object/from16 p3, p9

    move-object/from16 p6, v0

    move-object/from16 p1, v1

    move/from16 p4, v2

    move-object/from16 p2, v3

    move-object/from16 p5, v4

    move/from16 p7, v11

    .line 58
    invoke-virtual/range {p1 .. p7}, Lcom/google/android/gms/measurement/internal/zzqf;->zzR(Lcom/google/android/gms/measurement/internal/zzqe;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_21c
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "_o"

    aput-object v2, v0, v11

    const-string v4, "_sn"

    aput-object v4, v0, v12

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const-string v3, "_si"

    aput-object v3, v0, v1

    .line 59
    invoke-static {v0}, Lcom/google/android/gms/common/util/CollectionUtils;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 60
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v0

    move-object v1, v8

    move-object v8, v2

    move-object v2, v1

    move-object/from16 v3, p5

    move/from16 v5, p8

    move-object/from16 v1, p9

    move-object/from16 v16, v13

    .line 61
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzqf;->zzA(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)Landroid/os/Bundle;

    move-result-object v0

    move-object v1, v2

    .line 62
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzio;->zzaV()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 64
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()Lcom/google/android/gms/measurement/internal/zzmo;

    move-result-object v2

    .line 65
    invoke-virtual {v2, v11}, Lcom/google/android/gms/measurement/internal/zzmo;->zzj(Z)Lcom/google/android/gms/measurement/internal/zzmh;

    move-result-object v2

    const-string v3, "_ae"

    if-eqz v2, :cond_286

    .line 66
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_286

    .line 67
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzio;->zzv()Lcom/google/android/gms/measurement/internal/zzop;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzop;->zzb:Lcom/google/android/gms/measurement/internal/zzon;

    const-wide/16 p5, 0x0

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzon;->zzc:Lcom/google/android/gms/measurement/internal/zzop;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 68
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    .line 69
    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v4

    move/from16 v17, v11

    iget-wide v11, v2, Lcom/google/android/gms/measurement/internal/zzon;->zzb:J

    sub-long v11, v4, v11

    iput-wide v4, v2, Lcom/google/android/gms/measurement/internal/zzon;->zzb:J

    cmp-long v2, v11, p5

    if-lez v2, :cond_28a

    .line 70
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v2

    .line 71
    invoke-virtual {v2, v0, v11, v12}, Lcom/google/android/gms/measurement/internal/zzqf;->zzL(Landroid/os/Bundle;J)V

    goto :goto_28a

    :cond_286
    move/from16 v17, v11

    const-wide/16 p5, 0x0

    :cond_28a
    :goto_28a
    const-string v2, "auto"

    .line 72
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "_ffr"

    if-nez v2, :cond_2dc

    const-string v2, "_ssr"

    .line 73
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2dc

    .line 80
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v2

    .line 81
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 82
    invoke-static {v4}, Lcom/google/android/gms/common/util/Strings;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2ac

    move-object v4, v10

    goto :goto_2b2

    :cond_2ac
    if-eqz v4, :cond_2b2

    .line 83
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 82
    :cond_2b2
    :goto_2b2
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 84
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v5

    .line 85
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzht;->zzq:Lcom/google/android/gms/measurement/internal/zzhr;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzhr;->zza()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2ce

    .line 86
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v2

    .line 87
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzht;->zzq:Lcom/google/android/gms/measurement/internal/zzhr;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/zzhr;->zzb(Ljava/lang/String;)V

    goto :goto_2fb

    .line 154
    :cond_2ce
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v1, "Not logging duplicate session_start_with_rollout event"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    return-void

    .line 74
    :cond_2dc
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2fb

    .line 75
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 76
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v2

    .line 77
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzht;->zzq:Lcom/google/android/gms/measurement/internal/zzhr;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhr;->zza()Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2fb

    .line 79
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_2fb
    :goto_2fb
    new-instance v11, Ljava/util/ArrayList;

    .line 88
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 89
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v2

    .line 91
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzgi;->zzba:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 92
    invoke-virtual {v2, v10, v4}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v2

    if-eqz v2, :cond_318

    .line 95
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzio;->zzv()Lcom/google/android/gms/measurement/internal/zzop;

    move-result-object v2

    .line 96
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzop;->zzp()Z

    move-result v2

    goto :goto_322

    .line 93
    :cond_318
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v2

    .line 94
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzht;->zzn:Lcom/google/android/gms/measurement/internal/zzhn;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhn;->zzb()Z

    move-result v2

    .line 97
    :goto_322
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v4

    .line 98
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzht;->zzk:Lcom/google/android/gms/measurement/internal/zzhp;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzhp;->zza()J

    move-result-wide v4

    cmp-long v4, v4, p5

    if-lez v4, :cond_39d

    .line 99
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v4

    move-wide/from16 v12, p3

    .line 100
    invoke-virtual {v4, v12, v13}, Lcom/google/android/gms/measurement/internal/zzht;->zzp(J)Z

    move-result v4

    if-eqz v4, :cond_396

    if-eqz v2, :cond_396

    .line 101
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 102
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v4, "Current session is expired, remove the session number, ID, and engagement time"

    .line 103
    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 104
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    .line 105
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    move-object v2, v3

    const-string v3, "_sid"

    move-wide v5, v4

    const/4 v4, 0x0

    move-object/from16 v18, v2

    .line 106
    const-string v2, "auto"

    move-wide/from16 v20, p5

    move-object/from16 p5, v11

    move-wide/from16 v10, v20

    move-object/from16 v1, p0

    move-object/from16 v19, v18

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzlw;->zzan(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 107
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 108
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    const-string v3, "_sno"

    .line 109
    const-string v2, "auto"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzlw;->zzan(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 110
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 111
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    const-string v3, "_se"

    .line 112
    const-string v2, "auto"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzlw;->zzan(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    move-object v6, v1

    .line 113
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v1

    .line 114
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzht;->zzl:Lcom/google/android/gms/measurement/internal/zzhp;

    invoke-virtual {v1, v10, v11}, Lcom/google/android/gms/measurement/internal/zzhp;->zzb(J)V

    goto :goto_3a6

    :cond_396
    move-wide/from16 v20, p5

    move-object/from16 p5, v11

    move-wide/from16 v10, v20

    goto :goto_3a4

    :cond_39d
    move-wide/from16 v12, p5

    move-object/from16 p5, v11

    move-wide v10, v12

    move-wide/from16 v12, p3

    :goto_3a4
    move-object/from16 v19, v3

    :goto_3a6
    const-string v1, "extend_session"

    .line 115
    invoke-virtual {v0, v1, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_3c9

    .line 116
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 117
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "EXTEND_SESSION param attached: initiate a new session or extend the current active session"

    .line 118
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzio;->zzv()Lcom/google/android/gms/measurement/internal/zzop;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzop;->zza:Lcom/google/android/gms/measurement/internal/zzoo;

    const/4 v2, 0x1

    .line 120
    invoke-virtual {v1, v12, v13, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zzb(JZ)V

    :cond_3c9
    new-instance v1, Ljava/util/ArrayList;

    .line 121
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 122
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v3, v17

    :goto_3db
    if-ge v3, v2, :cond_426

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 123
    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_423

    .line 124
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    .line 125
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 126
    instance-of v10, v5, Landroid/os/Bundle;

    if-eqz v10, :cond_3f8

    const/4 v10, 0x1

    new-array v11, v10, [Landroid/os/Bundle;

    .line 127
    check-cast v5, Landroid/os/Bundle;

    aput-object v5, v11, v17

    goto :goto_41e

    .line 128
    :cond_3f8
    instance-of v10, v5, [Landroid/os/Parcelable;

    if-eqz v10, :cond_409

    .line 129
    check-cast v5, [Landroid/os/Parcelable;

    array-length v10, v5

    const-class v11, [Landroid/os/Bundle;

    .line 130
    invoke-static {v5, v10, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, [Landroid/os/Bundle;

    goto :goto_41e

    .line 131
    :cond_409
    instance-of v10, v5, Ljava/util/ArrayList;

    if-eqz v10, :cond_41d

    .line 132
    check-cast v5, Ljava/util/ArrayList;

    .line 133
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Landroid/os/Bundle;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, [Landroid/os/Bundle;

    goto :goto_41e

    :cond_41d
    const/4 v11, 0x0

    :goto_41e
    if-eqz v11, :cond_423

    .line 134
    invoke-virtual {v0, v4, v11}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_423
    add-int/lit8 v3, v3, 0x1

    goto :goto_3db

    :cond_426
    move/from16 v10, v17

    .line 135
    :goto_428
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_494

    move-object/from16 v11, p5

    .line 136
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-eqz v10, :cond_43b

    const-string v1, "_ep"

    goto :goto_43d

    :cond_43b
    move-object/from16 v1, p2

    .line 137
    :goto_43d
    invoke-virtual {v0, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p7, :cond_44c

    .line 138
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v2

    const/4 v15, 0x0

    .line 139
    invoke-virtual {v2, v0, v15}, Lcom/google/android/gms/measurement/internal/zzqf;->zzz(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_44d

    :cond_44c
    const/4 v15, 0x0

    .line 140
    :goto_44d
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzbh;

    move-object v3, v2

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzbf;

    invoke-direct {v2, v0}, Lcom/google/android/gms/measurement/internal/zzbf;-><init>(Landroid/os/Bundle;)V

    move-object v4, v7

    move-object v7, v0

    move-object v0, v3

    move-object v3, v4

    move-wide v4, v12

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzbh;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbf;Ljava/lang/String;J)V

    .line 141
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzio;->zzu()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object v1

    move-object/from16 v12, p9

    .line 142
    invoke-virtual {v1, v0, v12}, Lcom/google/android/gms/measurement/internal/zzny;->zzM(Lcom/google/android/gms/measurement/internal/zzbh;Ljava/lang/String;)V

    if-nez v9, :cond_489

    iget-object v0, v6, Lcom/google/android/gms/measurement/internal/zzlw;->zze:Ljava/util/Set;

    .line 143
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_46e
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_489

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzkc;

    new-instance v3, Landroid/os/Bundle;

    .line 144
    invoke-direct {v3, v7}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v4, p3

    .line 145
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzkc;->onEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    goto :goto_46e

    :cond_489
    move-object/from16 v2, p2

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v7, p1

    move-wide/from16 v12, p3

    move-object/from16 p5, v11

    goto :goto_428

    :cond_494
    move-object/from16 v2, p2

    .line 146
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzio;->zzaV()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 147
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()Lcom/google/android/gms/measurement/internal/zzmo;

    move-result-object v0

    move/from16 v1, v17

    .line 148
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzmo;->zzj(Z)Lcom/google/android/gms/measurement/internal/zzmh;

    move-result-object v0

    if-eqz v0, :cond_4bf

    move-object/from16 v0, v19

    .line 149
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4bf

    .line 150
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzio;->zzv()Lcom/google/android/gms/measurement/internal/zzop;

    move-result-object v0

    .line 151
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 152
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzop;->zzb:Lcom/google/android/gms/measurement/internal/zzon;

    const/4 v10, 0x1

    .line 153
    invoke-virtual {v0, v10, v10, v1, v2}, Lcom/google/android/gms/measurement/internal/zzon;->zzd(ZZJ)Z

    :cond_4bf
    :goto_4bf
    return-void

    :cond_4c0
    move-object v6, v1

    .line 175
    iget-object v0, v6, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 176
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v1, "Event not sent since app measurement is disabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    return-void
.end method

.method final zzU()V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzn:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlw;->zzy()Ljava/util/PriorityQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_60

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzi:Z

    if-eqz v1, :cond_15

    goto :goto_60

    .line 3
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlw;->zzy()Ljava/util/PriorityQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/measurement/internal/zzov;

    if-eqz v1, :cond_60

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzqf;->zzB()Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures;

    move-result-object v3

    if-eqz v3, :cond_60

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzi:Z

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzov;->zza:Ljava/lang/String;

    const-string v5, "Registering trigger URI"

    invoke-virtual {v2, v5, v4}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures;->registerTriggerAsync(Landroid/net/Uri;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    if-nez v2, :cond_53

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzi:Z

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlw;->zzy()Ljava/util/PriorityQueue;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    return-void

    :cond_53
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzks;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzks;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;)V

    .line 10
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzkt;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/measurement/internal/zzkt;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;Lcom/google/android/gms/measurement/internal/zzov;)V

    .line 11
    invoke-static {v2, v3, v0}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    :cond_60
    :goto_60
    return-void
.end method

.method public final zzV(Lcom/google/android/gms/measurement/internal/zzkc;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zze:Ljava/util/Set;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string v0, "OnEventListener already registered"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    :cond_1d
    return-void
.end method

.method public final zzW()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Register tcfPrefChangeListener."

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzs:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    if-nez v1, :cond_26

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzky;

    .line 4
    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/measurement/internal/zzky;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;Lcom/google/android/gms/measurement/internal/zzjs;)V

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzt:Lcom/google/android/gms/measurement/internal/zzaz;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzkp;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzkp;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;)V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzs:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 5
    :cond_26
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzht;->zza()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzs:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 7
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public final zzX(J)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzg:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzle;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzle;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;J)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzil;->zzq(Ljava/lang/Runnable;)V

    return-void
.end method

.method final zzY(Ljava/lang/Runnable;)V
    .registers 14

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    const/4 v2, 0x0

    .line 2
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzgi;->zzaR:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 3
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v1

    if-eqz v1, :cond_f4

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzil;->zzu()Z

    move-result v1

    if-nez v1, :cond_e7

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzil;->zzt()Z

    move-result v1

    if-nez v1, :cond_d9

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaV()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 10
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzaf;->zza()Z

    move-result v1

    if-nez v1, :cond_cb

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "[sgtm] Started client-side batch upload work."

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_40
    if-nez v2, :cond_b2

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v5, "[sgtm] Getting upload batches from service (FE)"

    invoke-virtual {v2, v5}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    .line 15
    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v6

    new-instance v11, Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-direct {v11, p0, v7}, Lcom/google/android/gms/measurement/internal/zzkl;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-wide/16 v8, 0x2710

    const-string v10, "[sgtm] Getting upload batches"

    .line 17
    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/measurement/internal/zzil;->zze(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 18
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzpe;

    if-eqz v2, :cond_b2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzpe;->zza:Ljava/util/List;

    .line 19
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_75

    goto :goto_b2

    .line 20
    :cond_75
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v5

    .line 21
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v5

    .line 22
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "[sgtm] Retrieved upload batches. count"

    invoke-virtual {v5, v7, v6}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v3, v5

    .line 24
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_93
    :goto_93
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/measurement/internal/zzpa;

    .line 25
    invoke-direct {p0, v5}, Lcom/google/android/gms/measurement/internal/zzlw;->zzar(Lcom/google/android/gms/measurement/internal/zzpa;)Lcom/google/android/gms/measurement/internal/zzme;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzme;->zzb:Lcom/google/android/gms/measurement/internal/zzme;

    if-ne v5, v6, :cond_aa

    add-int/lit8 v4, v4, 0x1

    goto :goto_93

    :cond_aa
    sget-object v6, Lcom/google/android/gms/measurement/internal/zzme;->zzd:Lcom/google/android/gms/measurement/internal/zzme;

    if-ne v5, v6, :cond_93

    const/4 v2, 0x1

    goto :goto_40

    :cond_b0
    move v2, v1

    goto :goto_40

    .line 26
    :cond_b2
    :goto_b2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    .line 28
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 29
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "[sgtm] Completed client-side batch upload work. total, success"

    .line 30
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 32
    :cond_cb
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string v0, "Cannot retrieve and upload batches from main thread"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    return-void

    .line 34
    :cond_d9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string v0, "Cannot retrieve and upload batches from analytics network thread"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    return-void

    .line 36
    :cond_e7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string v0, "Cannot retrieve and upload batches from analytics worker thread"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    :cond_f4
    return-void
.end method

.method protected final zzZ(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .registers 22

    .line 1
    sget v0, Lcom/google/android/gms/measurement/internal/zzqf;->zza:I

    new-instance v7, Landroid/os/Bundle;

    move-object/from16 v0, p5

    .line 2
    invoke-direct {v7, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {v7}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    invoke-virtual {v7, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 6
    instance-of v3, v2, Landroid/os/Bundle;

    if-eqz v3, :cond_30

    new-instance v3, Landroid/os/Bundle;

    .line 7
    check-cast v2, Landroid/os/Bundle;

    invoke-direct {v3, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v7, v1, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_11

    .line 8
    :cond_30
    instance-of v1, v2, [Landroid/os/Parcelable;

    const/4 v3, 0x0

    if-eqz v1, :cond_4c

    .line 9
    check-cast v2, [Landroid/os/Parcelable;

    .line 10
    :goto_37
    array-length v1, v2

    if-ge v3, v1, :cond_11

    .line 11
    aget-object v1, v2, v3

    instance-of v4, v1, Landroid/os/Bundle;

    if-eqz v4, :cond_49

    new-instance v4, Landroid/os/Bundle;

    .line 12
    check-cast v1, Landroid/os/Bundle;

    invoke-direct {v4, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    aput-object v4, v2, v3

    :cond_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 13
    :cond_4c
    instance-of v1, v2, Ljava/util/List;

    if-eqz v1, :cond_11

    .line 14
    check-cast v2, Ljava/util/List;

    .line 15
    :goto_52
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_11

    .line 16
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 17
    instance-of v4, v1, Landroid/os/Bundle;

    if-eqz v4, :cond_6a

    new-instance v4, Landroid/os/Bundle;

    .line 18
    check-cast v1, Landroid/os/Bundle;

    invoke-direct {v4, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v2, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_6a
    add-int/lit8 v3, v3, 0x1

    goto :goto_52

    :cond_6d
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzkz;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/measurement/internal/zzkz;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    .line 20
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzil;->zzq(Ljava/lang/Runnable;)V

    return-void
.end method

.method final zzaa(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    .registers 14

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzla;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v6, p3

    move-object v5, p5

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzla;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzil;->zzq(Ljava/lang/Runnable;)V

    return-void
.end method

.method final zzab(J)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzl:Lcom/google/android/gms/measurement/internal/zzaz;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzkr;

    .line 2
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/measurement/internal/zzkr;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;Lcom/google/android/gms/measurement/internal/zzjs;)V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzl:Lcom/google/android/gms/measurement/internal/zzaz;

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzl:Lcom/google/android/gms/measurement/internal/zzaz;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzaz;->zzd(J)V

    return-void
.end method

.method final zzac(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzg:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzad(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzlw;->zzae(Landroid/os/Bundle;J)V

    return-void
.end method

.method public final zzae(Landroid/os/Bundle;J)V
    .registers 13

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/os/Bundle;

    .line 2
    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 3
    const-string p1, "app_id"

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Package name should be null when calling setConditionalUserProperty"

    .line 6
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 7
    :cond_23
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    .line 9
    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/measurement/internal/zzjt;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-class p1, Ljava/lang/String;

    .line 10
    const-string v1, "origin"

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/gms/measurement/internal/zzjt;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-class p1, Ljava/lang/String;

    .line 11
    const-string v3, "name"

    invoke-static {v0, v3, p1, v2}, Lcom/google/android/gms/measurement/internal/zzjt;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-class p1, Ljava/lang/Object;

    .line 12
    const-string v4, "value"

    invoke-static {v0, v4, p1, v2}, Lcom/google/android/gms/measurement/internal/zzjt;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-class p1, Ljava/lang/String;

    .line 13
    const-string v5, "trigger_event_name"

    invoke-static {v0, v5, p1, v2}, Lcom/google/android/gms/measurement/internal/zzjt;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-class p1, Ljava/lang/Long;

    const-wide/16 v6, 0x0

    .line 14
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 15
    const-string v7, "trigger_timeout"

    invoke-static {v0, v7, p1, v6}, Lcom/google/android/gms/measurement/internal/zzjt;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "timed_out_event_name"

    const-class v8, Ljava/lang/String;

    .line 16
    invoke-static {v0, p1, v8, v2}, Lcom/google/android/gms/measurement/internal/zzjt;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "timed_out_event_params"

    const-class v8, Landroid/os/Bundle;

    .line 17
    invoke-static {v0, p1, v8, v2}, Lcom/google/android/gms/measurement/internal/zzjt;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "triggered_event_name"

    const-class v8, Ljava/lang/String;

    .line 18
    invoke-static {v0, p1, v8, v2}, Lcom/google/android/gms/measurement/internal/zzjt;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "triggered_event_params"

    const-class v8, Landroid/os/Bundle;

    .line 19
    invoke-static {v0, p1, v8, v2}, Lcom/google/android/gms/measurement/internal/zzjt;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-class p1, Ljava/lang/Long;

    .line 20
    const-string v8, "time_to_live"

    invoke-static {v0, v8, p1, v6}, Lcom/google/android/gms/measurement/internal/zzjt;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "expired_event_name"

    const-class v6, Ljava/lang/String;

    .line 21
    invoke-static {v0, p1, v6, v2}, Lcom/google/android/gms/measurement/internal/zzjt;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "expired_event_params"

    const-class v6, Landroid/os/Bundle;

    .line 22
    invoke-static {v0, p1, v6, v2}, Lcom/google/android/gms/measurement/internal/zzjt;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "creation_timestamp"

    .line 26
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 27
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 29
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v1

    .line 30
    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzqf;->zzj(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_16b

    .line 31
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v1

    .line 32
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/measurement/internal/zzqf;->zzd(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_155

    .line 33
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v1

    .line 34
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/measurement/internal/zzqf;->zzE(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_e1

    .line 35
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    .line 37
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object p3

    .line 38
    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/zzgx;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "Unable to normalize conditional user property value"

    .line 39
    invoke-virtual {v0, p3, p1, p2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 40
    :cond_e1
    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzjt;->zzb(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 41
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 42
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 43
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-wide/16 v3, 0x1

    const-wide v5, 0x39ef8b000L

    if-nez p2, :cond_11e

    .line 44
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    cmp-long p2, v1, v5

    if-gtz p2, :cond_104

    cmp-long p2, v1, v3

    if-gez p2, :cond_11e

    .line 45
    :cond_104
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p2

    .line 46
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p2

    .line 47
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object p3

    .line 48
    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/zzgx;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 49
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string v0, "Invalid conditional user property timeout"

    .line 50
    invoke-virtual {p2, v0, p1, p3}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 51
    :cond_11e
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 52
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    cmp-long p2, v1, v5

    if-gtz p2, :cond_13b

    cmp-long p2, v1, v3

    if-gez p2, :cond_12e

    goto :goto_13b

    .line 59
    :cond_12e
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzlf;

    invoke-direct {p2, p0, v0}, Lcom/google/android/gms/measurement/internal/zzlf;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzil;->zzq(Ljava/lang/Runnable;)V

    return-void

    .line 53
    :cond_13b
    :goto_13b
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p2

    .line 54
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p2

    .line 55
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object p3

    .line 56
    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/zzgx;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string v0, "Invalid conditional user property time to live"

    .line 58
    invoke-virtual {p2, v0, p1, p3}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 61
    :cond_155
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    .line 63
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object p3

    .line 64
    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/zzgx;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "Invalid conditional user property value"

    .line 65
    invoke-virtual {v0, p3, p1, p2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 66
    :cond_16b
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p2

    .line 67
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p2

    .line 68
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object p3

    .line 69
    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/zzgx;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "Invalid conditional user property name"

    .line 70
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final zzaf(Landroid/os/Bundle;IJ)V
    .registers 13

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    .line 2
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    .line 3
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzjv;->zza:Lcom/google/android/gms/measurement/internal/zzjv;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzjv;->zza(Lcom/google/android/gms/measurement/internal/zzjv;)[Lcom/google/android/gms/measurement/internal/zzjw;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_d
    const/4 v3, 0x0

    if-ge v2, v1, :cond_3c

    aget-object v4, v0, v2

    .line 4
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzjw;->zze:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 5
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_39

    const-string v5, "granted"

    .line 6
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_35

    .line 24
    :cond_2b
    const-string v5, "denied"

    .line 7
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_35
    :goto_35
    if-nez v3, :cond_39

    move-object v3, v4

    goto :goto_3c

    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_3c
    :goto_3c
    if-eqz v3, :cond_5a

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzl()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Ignoring invalid consent setting"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzl()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v1, "Valid consent values are \'granted\', \'denied\'"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    :cond_5a
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzil;->zzu()Z

    move-result v0

    .line 14
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzjx;->zzi(Landroid/os/Bundle;I)Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjx;->zzt()Z

    move-result v2

    if-eqz v2, :cond_71

    .line 16
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/measurement/internal/zzlw;->zzak(Lcom/google/android/gms/measurement/internal/zzjx;Z)V

    .line 17
    :cond_71
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzba;->zzc(Landroid/os/Bundle;I)Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzba;->zzk()Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 19
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/measurement/internal/zzlw;->zzag(Lcom/google/android/gms/measurement/internal/zzba;Z)V

    .line 20
    :cond_7e
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzba;->zzg(Landroid/os/Bundle;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_a9

    const/16 v1, -0x1e

    if-ne p2, v1, :cond_8b

    const-string p2, "tcf"

    goto :goto_8d

    .line 24
    :cond_8b
    const-string p2, "app"

    :goto_8d
    move-object v2, p2

    if-eqz v0, :cond_9c

    .line 21
    invoke-virtual {p1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v3, "allow_personalized_ads"

    move-object v1, p0

    move-wide v5, p3

    .line 22
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzlw;->zzan(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    return-void

    :cond_9c
    move-wide v5, p3

    .line 23
    invoke-virtual {p1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v3, "allow_personalized_ads"

    move-wide v6, v5

    const/4 v5, 0x0

    move-object v1, p0

    .line 24
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzlw;->zzam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V

    :cond_a9
    return-void
.end method

.method final zzag(Lcom/google/android/gms/measurement/internal/zzba;Z)V
    .registers 4

    .line 3
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzlq;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzlq;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;Lcom/google/android/gms/measurement/internal/zzba;)V

    if-eqz p2, :cond_e

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 4
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_e
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object p1

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzil;->zzq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzah(Lcom/google/android/gms/measurement/internal/zzkb;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    if-eqz p1, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzd:Lcom/google/android/gms/measurement/internal/zzkb;

    if-eq p1, v0, :cond_16

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    const-string v1, "EventInterceptor already set."

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    :cond_16
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzd:Lcom/google/android/gms/measurement/internal/zzkb;

    return-void
.end method

.method public final zzai(Ljava/lang/Boolean;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzlp;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzlp;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;Ljava/lang/Boolean;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzil;->zzq(Ljava/lang/Runnable;)V

    return-void
.end method

.method final zzaj(Lcom/google/android/gms/measurement/internal/zzjx;)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzjw;->zzb:Lcom/google/android/gms/measurement/internal/zzjw;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzjx;->zzr(Lcom/google/android/gms/measurement/internal/zzjw;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_15

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzjw;->zza:Lcom/google/android/gms/measurement/internal/zzjw;

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzjx;->zzr(Lcom/google/android/gms/measurement/internal/zzjw;)Z

    move-result p1

    if-nez p1, :cond_21

    :cond_15
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzu()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzny;->zzab()Z

    move-result p1

    if-eqz p1, :cond_23

    :cond_21
    move p1, v2

    goto :goto_24

    :cond_23
    move p1, v1

    :goto_24
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzK()Z

    move-result v3

    if-eq p1, v3, :cond_65

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzG(Z)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v0

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzht;->zzb()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "measurement_enabled_from_api"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzht;->zzb()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_54

    :cond_53
    const/4 v0, 0x0

    :goto_54
    if-eqz p1, :cond_5e

    if-eqz v0, :cond_5e

    .line 12
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 13
    :cond_5e
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 14
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzlw;->zzas(Ljava/lang/Boolean;Z)V

    :cond_65
    return-void
.end method

.method public final zzak(Lcom/google/android/gms/measurement/internal/zzjx;Z)V
    .registers 12

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzjx;->zzb()I

    move-result v0

    const/16 v1, -0xa

    if-eq v0, v1, :cond_2c

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzjx;->zze()Lcom/google/android/gms/measurement/internal/zzju;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzju;->zza:Lcom/google/android/gms/measurement/internal/zzju;

    if-ne v2, v3, :cond_2c

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzjx;->zzf()Lcom/google/android/gms/measurement/internal/zzju;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzju;->zza:Lcom/google/android/gms/measurement/internal/zzju;

    if-eq v2, v3, :cond_1c

    goto :goto_2c

    .line 24
    :cond_1c
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzl()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string p2, "Ignoring empty consent settings"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_2c
    :goto_2c
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzh:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2f
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzo:Lcom/google/android/gms/measurement/internal/zzjx;

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzjx;->zzb()I

    move-result v3

    invoke-static {v0, v3}, Lcom/google/android/gms/measurement/internal/zzjx;->zzs(II)Z

    move-result v3
    :try_end_39
    .catchall {:try_start_2f .. :try_end_39} :catchall_cb

    const/4 v4, 0x0

    if-eqz v3, :cond_64

    :try_start_3c
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzo:Lcom/google/android/gms/measurement/internal/zzjx;

    .line 5
    invoke-virtual {p1, v3}, Lcom/google/android/gms/measurement/internal/zzjx;->zzu(Lcom/google/android/gms/measurement/internal/zzjx;)Z

    move-result v3

    .line 6
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzjw;->zzb:Lcom/google/android/gms/measurement/internal/zzjw;

    invoke-virtual {p1, v5}, Lcom/google/android/gms/measurement/internal/zzjx;->zzr(Lcom/google/android/gms/measurement/internal/zzjw;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_54

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzo:Lcom/google/android/gms/measurement/internal/zzjx;

    .line 7
    invoke-virtual {v6, v5}, Lcom/google/android/gms/measurement/internal/zzjx;->zzr(Lcom/google/android/gms/measurement/internal/zzjw;)Z

    move-result v5

    if-nez v5, :cond_54

    move v4, v7

    :cond_54
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzo:Lcom/google/android/gms/measurement/internal/zzjx;

    .line 8
    invoke-virtual {p1, v5}, Lcom/google/android/gms/measurement/internal/zzjx;->zzm(Lcom/google/android/gms/measurement/internal/zzjx;)Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzo:Lcom/google/android/gms/measurement/internal/zzjx;
    :try_end_5c
    .catchall {:try_start_3c .. :try_end_5c} :catchall_5f

    move v8, v4

    move v4, v7

    goto :goto_66

    :catchall_5f
    move-exception v0

    move-object p1, v0

    move-object v4, p0

    goto/16 :goto_ce

    :cond_64
    move v3, v4

    move v8, v3

    :goto_66
    move-object v5, p1

    .line 9
    :try_start_67
    monitor-exit v2
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_cb

    if-nez v4, :cond_7a

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzi()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string p2, "Ignoring lower-priority consent settings, proposed settings"

    .line 12
    invoke-virtual {p1, p2, v5}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_7a
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzp:Ljava/util/concurrent/atomic/AtomicLong;

    .line 13
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v6

    if-eqz v3, :cond_a1

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzg:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzlr;

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzlr;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;Lcom/google/android/gms/measurement/internal/zzjx;JZ)V

    if-eqz p2, :cond_97

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 18
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_97
    iget-object p1, v4, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object p1

    .line 16
    invoke-virtual {p1, v3}, Lcom/google/android/gms/measurement/internal/zzil;->zzr(Ljava/lang/Runnable;)V

    return-void

    :cond_a1
    move-object v4, p0

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzls;

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzls;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;Lcom/google/android/gms/measurement/internal/zzjx;JZ)V

    if-eqz p2, :cond_b0

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 20
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_b0
    const/16 p1, 0x1e

    if-eq v0, p1, :cond_c1

    if-ne v0, v1, :cond_b7

    goto :goto_c1

    .line 22
    :cond_b7
    iget-object p1, v4, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object p1

    .line 24
    invoke-virtual {p1, v3}, Lcom/google/android/gms/measurement/internal/zzil;->zzq(Ljava/lang/Runnable;)V

    return-void

    .line 20
    :cond_c1
    :goto_c1
    iget-object p1, v4, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object p1

    .line 22
    invoke-virtual {p1, v3}, Lcom/google/android/gms/measurement/internal/zzil;->zzr(Ljava/lang/Runnable;)V

    return-void

    :catchall_cb
    move-exception v0

    move-object v4, p0

    :goto_cd
    move-object p1, v0

    .line 9
    :goto_ce
    :try_start_ce
    monitor-exit v2
    :try_end_cf
    .catchall {:try_start_ce .. :try_end_cf} :catchall_d0

    throw p1

    :catchall_d0
    move-exception v0

    goto :goto_cd
.end method

.method public final zzal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 13

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzlw;->zzam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V

    return-void
.end method

.method public final zzam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v1, p3

    const/4 v3, 0x0

    const/16 v4, 0x18

    if-eqz p4, :cond_17

    .line 7
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v5

    .line 8
    invoke-virtual {v5, v2}, Lcom/google/android/gms/measurement/internal/zzqf;->zzj(Ljava/lang/String;)I

    move-result v5

    :goto_15
    move v12, v5

    goto :goto_41

    .line 26
    :cond_17
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 1
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v5

    .line 2
    const-string v6, "user property"

    invoke-virtual {v5, v6, v2}, Lcom/google/android/gms/measurement/internal/zzqf;->zzah(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x6

    if-nez v7, :cond_28

    :goto_26
    move v12, v8

    goto :goto_41

    .line 3
    :cond_28
    sget-object v7, Lcom/google/android/gms/measurement/internal/zzka;->zza:[Ljava/lang/String;

    const/4 v9, 0x0

    .line 4
    invoke-virtual {v5, v6, v7, v9, v2}, Lcom/google/android/gms/measurement/internal/zzqf;->zzae(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_34

    const/16 v5, 0xf

    goto :goto_15

    :cond_34
    iget-object v7, v5, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 5
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    .line 6
    invoke-virtual {v5, v6, v4, v2}, Lcom/google/android/gms/measurement/internal/zzqf;->zzad(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_40

    goto :goto_26

    :cond_40
    move v12, v3

    :goto_41
    const/4 v5, 0x1

    if-eqz v12, :cond_67

    .line 8
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v6

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    .line 11
    invoke-virtual {v6, v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzqf;->zzG(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v14

    if-eqz v2, :cond_57

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    :cond_57
    move v15, v3

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzlw;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    iget-object v10, v0, Lcom/google/android/gms/measurement/internal/zzlw;->zzv:Lcom/google/android/gms/measurement/internal/zzqe;

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v9

    const/4 v11, 0x0

    const-string v13, "_ev"

    .line 13
    invoke-virtual/range {v9 .. v15}, Lcom/google/android/gms/measurement/internal/zzqf;->zzR(Lcom/google/android/gms/measurement/internal/zzqe;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_67
    if-nez p1, :cond_6c

    const-string v6, "app"

    goto :goto_6e

    :cond_6c
    move-object/from16 v6, p1

    :goto_6e
    if-eqz v1, :cond_b8

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 14
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v8

    .line 15
    invoke-virtual {v8, v2, v1}, Lcom/google/android/gms/measurement/internal/zzqf;->zzd(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v12

    if-eqz v12, :cond_a7

    .line 19
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v6

    .line 20
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    .line 21
    invoke-virtual {v6, v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzqf;->zzG(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v14

    .line 22
    instance-of v2, v1, Ljava/lang/String;

    if-nez v2, :cond_8f

    instance-of v2, v1, Ljava/lang/CharSequence;

    if-eqz v2, :cond_97

    .line 23
    :cond_8f
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    :cond_97
    move v15, v3

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzlw;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    iget-object v10, v0, Lcom/google/android/gms/measurement/internal/zzlw;->zzv:Lcom/google/android/gms/measurement/internal/zzqe;

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v9

    const/4 v11, 0x0

    const-string v13, "_ev"

    .line 25
    invoke-virtual/range {v9 .. v15}, Lcom/google/android/gms/measurement/internal/zzqf;->zzR(Lcom/google/android/gms/measurement/internal/zzqe;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 16
    :cond_a7
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v3

    .line 17
    invoke-virtual {v3, v2, v1}, Lcom/google/android/gms/measurement/internal/zzqf;->zzE(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_b7

    move-wide/from16 v3, p5

    move-object v1, v6

    .line 18
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzlw;->zzaa(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :cond_b7
    return-void

    :cond_b8
    move-object v1, v6

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-wide/from16 v3, p5

    .line 26
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzlw;->zzaa(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    return-void
.end method

.method final zzan(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V
    .registers 15

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    const-string v0, "allow_personalized_ads"

    .line 5
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 6
    instance-of v0, p3, Ljava/lang/String;

    const-string v1, "_npa"

    if-eqz v0, :cond_56

    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_56

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    const-string v0, "false"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-wide/16 v2, 0x1

    if-eq p3, p2, :cond_37

    const-wide/16 p2, 0x0

    goto :goto_38

    :cond_37
    move-wide p2, v2

    :goto_38
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 10
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object p3

    .line 11
    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/zzht;->zzh:Lcom/google/android/gms/measurement/internal/zzhr;

    move-object v4, p2

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-nez v2, :cond_51

    const-string v0, "true"

    :cond_51
    invoke-virtual {p3, v0}, Lcom/google/android/gms/measurement/internal/zzhr;->zzb(Ljava/lang/String;)V

    move-object p3, p2

    goto :goto_65

    :cond_56
    if-nez p3, :cond_66

    .line 20
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object p2

    .line 8
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzht;->zzh:Lcom/google/android/gms/measurement/internal/zzhr;

    const-string v0, "unset"

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzhr;->zzb(Ljava/lang/String;)V

    :goto_65
    move-object p2, v1

    .line 11
    :cond_66
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v1, "Setting user property(FE)"

    const-string v2, "non_personalized_ads(_npa)"

    invoke-virtual {v0, v1, v2, p3}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_77
    move-object v4, p2

    move-object v7, p3

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 14
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzio;->zzJ()Z

    move-result p3

    if-nez p3, :cond_91

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string p2, "User property not set since app measurement is disabled"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    return-void

    .line 17
    :cond_91
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzio;->zzM()Z

    move-result p2

    if-nez p2, :cond_98

    return-void

    :cond_98
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 18
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzqb;

    move-object v8, p1

    move-wide v5, p4

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzqb;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzio;->zzu()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object p1

    .line 20
    invoke-virtual {p1, v3}, Lcom/google/android/gms/measurement/internal/zzny;->zzY(Lcom/google/android/gms/measurement/internal/zzqb;)V

    return-void
.end method

.method public final zzao(Lcom/google/android/gms/measurement/internal/zzkc;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zze:Ljava/util/Set;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string v0, "OnEventListener had not been registered"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    :cond_1d
    return-void
.end method

.method final zzap()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzn:Z

    return v0
.end method

.method protected final zzf()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final zzi(Ljava/lang/String;)I
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    const/16 p1, 0x19

    return p1
.end method

.method public final zzl()Ljava/lang/Boolean;
    .registers 7

    .line 1
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzlb;

    invoke-direct {v5, p0, v1}, Lcom/google/android/gms/measurement/internal/zzlb;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-wide/16 v2, 0x3a98

    const-string v4, "boolean test flag value"

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzil;->zze(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final zzm()Ljava/lang/Double;
    .registers 7

    .line 1
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzlo;

    invoke-direct {v5, p0, v1}, Lcom/google/android/gms/measurement/internal/zzlo;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-wide/16 v2, 0x3a98

    const-string v4, "double test flag value"

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzil;->zze(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public final zzp()Ljava/lang/Integer;
    .registers 7

    .line 1
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzln;

    invoke-direct {v5, p0, v1}, Lcom/google/android/gms/measurement/internal/zzln;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-wide/16 v2, 0x3a98

    const-string v4, "int test flag value"

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzil;->zze(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public final zzq()Ljava/lang/Long;
    .registers 7

    .line 1
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzlm;

    invoke-direct {v5, p0, v1}, Lcom/google/android/gms/measurement/internal/zzlm;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-wide/16 v2, 0x3a98

    const-string v4, "long test flag value"

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzil;->zze(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public final zzr()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzg:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final zzs()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()Lcom/google/android/gms/measurement/internal/zzmo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzi()Lcom/google/android/gms/measurement/internal/zzmh;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzmh;->zzb:Ljava/lang/String;

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzt()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()Lcom/google/android/gms/measurement/internal/zzmo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzi()Lcom/google/android/gms/measurement/internal/zzmh;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzmh;->zza:Ljava/lang/String;

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzu()Ljava/lang/String;
    .registers 7

    .line 1
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzll;

    invoke-direct {v5, p0, v1}, Lcom/google/android/gms/measurement/internal/zzll;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-wide/16 v2, 0x3a98

    const-string v4, "String test flag value"

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzil;->zze(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final zzv(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzil;->zzu()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string p2, "Cannot get conditional user properties from analytics worker thread"

    .line 19
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    .line 20
    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    return-object p1

    .line 3
    :cond_20
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaV()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 4
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzaf;->zza()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string p2, "Cannot get conditional user properties from main thread"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    .line 7
    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    return-object p1

    :cond_3c
    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzlh;

    const/4 v6, 0x0

    move-object v7, p1

    move-object v8, p2

    move-object v5, v4

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzlh;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    const-wide/16 v5, 0x1388

    const-string v7, "get conditional user properties"

    move-object v8, v3

    move-object v3, v1

    .line 10
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzil;->zze(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 11
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_77

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string p2, "Timed out waiting for get conditional user properties"

    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Ljava/util/ArrayList;

    .line 15
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 16
    :cond_77
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzqf;->zzK(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public final zzw(Z)Ljava/util/List;
    .registers 9

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Getting user properties (FE)"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzil;->zzu()Z

    move-result v1

    if-nez v1, :cond_6d

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaV()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 7
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzaf;->zza()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string v0, "Cannot get all user properties from main thread"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_37
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 11
    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v1

    new-instance v6, Lcom/google/android/gms/measurement/internal/zzlc;

    invoke-direct {v6, p0, v2, p1}, Lcom/google/android/gms/measurement/internal/zzlc;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;Ljava/util/concurrent/atomic/AtomicReference;Z)V

    const-wide/16 v3, 0x1388

    const-string v5, "get user properties"

    .line 13
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzil;->zze(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 14
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_6c

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    .line 17
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "Timed out waiting for get user properties, includeInternal"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_6c
    return-object v1

    .line 19
    :cond_6d
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string v0, "Cannot get all user properties from analytics worker thread"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 21
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final zzx(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .registers 13

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzil;->zzu()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string p2, "Cannot get user properties from analytics worker thread"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 23
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1e
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaV()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 4
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzaf;->zza()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string p2, "Cannot get user properties from main thread"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_39
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v8

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzli;

    const/4 v4, 0x0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-object v3, v2

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzli;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v2, v3

    const-wide/16 v3, 0x1388

    const-string v5, "get user properties"

    move-object v6, v1

    move-object v1, v8

    .line 10
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzil;->zze(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 11
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_77

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    .line 14
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string p3, "Timed out waiting for handle get user properties, includeInternal"

    .line 15
    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 17
    :cond_77
    new-instance p2, Landroidx/collection/ArrayMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p2, p3}, Landroidx/collection/ArrayMap;-><init>(I)V

    .line 18
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_84
    :goto_84
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/measurement/internal/zzqb;

    .line 19
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzqb;->zza()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_84

    .line 20
    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/zzqb;->zzb:Ljava/lang/String;

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_84

    :cond_9c
    return-object p2
.end method

.method final zzy()Ljava/util/PriorityQueue;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzm:Ljava/util/PriorityQueue;

    if-nez v0, :cond_19

    new-instance v0, Ljava/util/PriorityQueue;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzkf;

    invoke-direct {v1}, Lcom/google/android/gms/measurement/internal/zzkf;-><init>()V

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzkh;

    invoke-direct {v2}, Lcom/google/android/gms/measurement/internal/zzkh;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzm:Ljava/util/PriorityQueue;

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlw;->zzm:Ljava/util/PriorityQueue;

    return-object v0
.end method
