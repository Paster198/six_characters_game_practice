.class Lcom/google/android/gms/internal/gtm/zzak$1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzvf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/gtm/zzak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/gtm/zzvf<",
        "Ljava/lang/Integer;",
        "Lcom/google/android/gms/internal/gtm/zzao;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Ljava/lang/Integer;)Lcom/google/android/gms/internal/gtm/zzao;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzao;->zzb(I)Lcom/google/android/gms/internal/gtm/zzao;

    move-result-object p1

    if-nez p1, :cond_c

    sget-object p1, Lcom/google/android/gms/internal/gtm/zzao;->zza:Lcom/google/android/gms/internal/gtm/zzao;

    :cond_c
    return-object p1
.end method

.method public bridge synthetic zzb(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzak$1;->zza(Ljava/lang/Integer;)Lcom/google/android/gms/internal/gtm/zzao;

    move-result-object p1

    return-object p1
.end method
