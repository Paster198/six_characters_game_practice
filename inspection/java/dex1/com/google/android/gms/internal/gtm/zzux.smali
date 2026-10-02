.class public final Lcom/google/android/gms/internal/gtm/zzux;
.super Lcom/google/android/gms/internal/gtm/zzuh;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ContainingType::",
        "Lcom/google/android/gms/internal/gtm/zzwk;",
        "Type:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/gtm/zzuh<",
        "TContainingType;TType;>;"
    }
.end annotation


# instance fields
.field final zza:Lcom/google/android/gms/internal/gtm/zzwk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TContainingType;"
        }
    .end annotation
.end field

.field final zzb:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TType;"
        }
    .end annotation
.end field

.field final zzc:Lcom/google/android/gms/internal/gtm/zzwk;

.field final zzd:Lcom/google/android/gms/internal/gtm/zzuw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzwk;Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzwk;Lcom/google/android/gms/internal/gtm/zzuw;Ljava/lang/Class;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TContainingType;TType;",
            "Lcom/google/android/gms/internal/gtm/zzwk;",
            "Lcom/google/android/gms/internal/gtm/zzuw;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzuh;-><init>()V

    if-eqz p1, :cond_1f

    .line 1
    iget-object p5, p4, Lcom/google/android/gms/internal/gtm/zzuw;->zzc:Lcom/google/android/gms/internal/gtm/zzye;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzye;->zzk:Lcom/google/android/gms/internal/gtm/zzye;

    if-ne p5, v0, :cond_16

    if-eqz p3, :cond_e

    goto :goto_16

    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null messageDefaultInstance"

    .line 3
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_16
    :goto_16
    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzux;->zza:Lcom/google/android/gms/internal/gtm/zzwk;

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzux;->zzb:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/gtm/zzux;->zzc:Lcom/google/android/gms/internal/gtm/zzwk;

    iput-object p4, p0, Lcom/google/android/gms/internal/gtm/zzux;->zzd:Lcom/google/android/gms/internal/gtm/zzuw;

    return-void

    .line 0
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null containingTypeDefaultInstance"

    .line 1
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final zza()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzux;->zzd:Lcom/google/android/gms/internal/gtm/zzuw;

    .line 1
    iget-boolean v0, v0, Lcom/google/android/gms/internal/gtm/zzuw;->zzd:Z

    const/4 v0, 0x0

    return v0
.end method
