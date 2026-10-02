.class final Lcom/google/android/gms/tagmanager/zzee;
.super Lcom/google/android/gms/tagmanager/zzfl;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"


# static fields
.field private static final zza:Ljava/lang/String;

.field private static final zzb:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zza;->zzaj:Lcom/google/android/gms/internal/gtm/zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zza;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzee;->zza:Ljava/lang/String;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzb;->zzby:Lcom/google/android/gms/internal/gtm/zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzb;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzee;->zzb:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    sget-object v0, Lcom/google/android/gms/tagmanager/zzee;->zza:Ljava/lang/String;

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzfl;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final zzc(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/gtm/zzak;",
            ">;)Z"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/tagmanager/zzee;->zzb:Ljava/lang/String;

    .line 1
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/gtm/zzak;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/tagmanager/zzfv;->zzl(Lcom/google/android/gms/internal/gtm/zzak;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/tagmanager/zzfv;->zzg(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p3

    .line 1
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 v0, 0x1

    if-eq v0, p3, :cond_1a

    const/16 p3, 0x40

    goto :goto_1c

    :cond_1a
    const/16 p3, 0x42

    :goto_1c
    :try_start_1c
    invoke-static {p2, p3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p2

    .line 3
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1
    :try_end_28
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_1c .. :try_end_28} :catch_29

    return p1

    :catch_29
    const/4 p1, 0x0

    return p1
.end method
