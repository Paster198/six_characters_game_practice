.class final Lcom/google/android/gms/tagmanager/zzca;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"


# instance fields
.field private final zza:J

.field private final zzb:J

.field private zzc:Ljava/lang/String;


# direct methods
.method constructor <init>(JJJ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/tagmanager/zzca;->zza:J

    iput-wide p5, p0, Lcom/google/android/gms/tagmanager/zzca;->zzb:J

    return-void
.end method


# virtual methods
.method final zza()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/zzca;->zzb:J

    return-wide v0
.end method

.method final zzb()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/zzca;->zza:J

    return-wide v0
.end method

.method final zzc()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzca;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method final zzd(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_f

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzca;->zzc:Ljava/lang/String;

    :cond_f
    :goto_f
    return-void
.end method
