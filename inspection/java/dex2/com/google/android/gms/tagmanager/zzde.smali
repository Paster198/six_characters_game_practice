.class final Lcom/google/android/gms/tagmanager/zzde;
.super Lcom/google/android/gms/tagmanager/zzdr;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"


# static fields
.field private static final zza:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zza;->zzao:Lcom/google/android/gms/internal/gtm/zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zza;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzde;->zza:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    sget-object v0, Lcom/google/android/gms/tagmanager/zzde;->zza:Ljava/lang/String;

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzdr;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final zzc(Lcom/google/android/gms/tagmanager/zzfu;Lcom/google/android/gms/tagmanager/zzfu;Ljava/util/Map;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/zzfu;",
            "Lcom/google/android/gms/tagmanager/zzfu;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/gtm/zzak;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tagmanager/zzfu;->zza(Lcom/google/android/gms/tagmanager/zzfu;)I

    move-result p1

    if-gez p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method
