.class final Lcom/google/android/gms/internal/measurement/zzmz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@22.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zznt;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zznf;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/measurement/zznf;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzmx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzmz;->zza:Lcom/google/android/gms/internal/measurement/zznf;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmy;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/measurement/zznf;

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzly;->zza()Lcom/google/android/gms/internal/measurement/zzly;

    move-result-object v3

    aput-object v3, v1, v2

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzmz;->zza:Lcom/google/android/gms/internal/measurement/zznf;

    sget v3, Lcom/google/android/gms/internal/measurement/zznp;->zza:I

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzmy;-><init>([Lcom/google/android/gms/internal/measurement/zznf;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzmk;->zzb:[B

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznf;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmz;->zzb:Lcom/google/android/gms/internal/measurement/zznf;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzns;
    .registers 10

    .line 1
    sget v0, Lcom/google/android/gms/internal/measurement/zznu;->zza:I

    const-class v0, Lcom/google/android/gms/internal/measurement/zzmd;

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_c

    sget v0, Lcom/google/android/gms/internal/measurement/zznp;->zza:I

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmz;->zzb:Lcom/google/android/gms/internal/measurement/zznf;

    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zznf;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzne;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzne;->zzb()Z

    move-result v0

    if-nez v0, :cond_40

    .line 5
    sget v0, Lcom/google/android/gms/internal/measurement/zznp;->zza:I

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznn;->zza()Lcom/google/android/gms/internal/measurement/zznm;

    move-result-object v3

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmv;->zza()Lcom/google/android/gms/internal/measurement/zzmu;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznu;->zzm()Lcom/google/android/gms/internal/measurement/zzoe;

    move-result-object v5

    .line 8
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzne;->zzc()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_34

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzls;->zza()Lcom/google/android/gms/internal/measurement/zzlq;

    move-result-object v0

    goto :goto_35

    :cond_34
    const/4 v0, 0x0

    :goto_35
    move-object v6, v0

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznd;->zza()Lcom/google/android/gms/internal/measurement/zznc;

    move-result-object v7

    move-object v1, p1

    .line 11
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/zznk;->zzl(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzne;Lcom/google/android/gms/internal/measurement/zznm;Lcom/google/android/gms/internal/measurement/zzmu;Lcom/google/android/gms/internal/measurement/zzoe;Lcom/google/android/gms/internal/measurement/zzlq;Lcom/google/android/gms/internal/measurement/zznc;)Lcom/google/android/gms/internal/measurement/zznk;

    move-result-object p1

    return-object p1

    .line 12
    :cond_40
    sget p1, Lcom/google/android/gms/internal/measurement/zznp;->zza:I

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznu;->zzm()Lcom/google/android/gms/internal/measurement/zzoe;

    move-result-object p1

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzls;->zza()Lcom/google/android/gms/internal/measurement/zzlq;

    move-result-object v0

    .line 14
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzne;->zza()Lcom/google/android/gms/internal/measurement/zznh;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zznl;->zzc(Lcom/google/android/gms/internal/measurement/zzoe;Lcom/google/android/gms/internal/measurement/zzlq;Lcom/google/android/gms/internal/measurement/zznh;)Lcom/google/android/gms/internal/measurement/zznl;

    move-result-object p1

    return-object p1
.end method
