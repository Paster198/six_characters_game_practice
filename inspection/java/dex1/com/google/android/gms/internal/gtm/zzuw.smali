.class final Lcom/google/android/gms/internal/gtm/zzuw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzun;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/gtm/zzun<",
        "Lcom/google/android/gms/internal/gtm/zzuw;",
        ">;"
    }
.end annotation


# instance fields
.field final zza:Lcom/google/android/gms/internal/gtm/zzvc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/gtm/zzvc<",
            "*>;"
        }
    .end annotation
.end field

.field final zzb:I

.field final zzc:Lcom/google/android/gms/internal/gtm/zzye;

.field final zzd:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzvc;ILcom/google/android/gms/internal/gtm/zzye;ZZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/gtm/zzvc<",
            "*>;I",
            "Lcom/google/android/gms/internal/gtm/zzye;",
            "ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzuw;->zza:Lcom/google/android/gms/internal/gtm/zzvc;

    iput p2, p0, Lcom/google/android/gms/internal/gtm/zzuw;->zzb:I

    iput-object p3, p0, Lcom/google/android/gms/internal/gtm/zzuw;->zzc:Lcom/google/android/gms/internal/gtm/zzye;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/gtm/zzuw;->zzd:Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzuw;

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzuw;->zzb:I

    .line 2
    iget p1, p1, Lcom/google/android/gms/internal/gtm/zzuw;->zzb:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final zza()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzuw;->zzb:I

    return v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/gtm/zzwj;Lcom/google/android/gms/internal/gtm/zzwk;)Lcom/google/android/gms/internal/gtm/zzwj;
    .registers 4

    .line 1
    check-cast p2, Lcom/google/android/gms/internal/gtm/zzuz;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzut;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/gtm/zzut;->zzz(Lcom/google/android/gms/internal/gtm/zzuz;)Lcom/google/android/gms/internal/gtm/zzut;

    return-object p1
.end method

.method public final zzc(Lcom/google/android/gms/internal/gtm/zzwp;Lcom/google/android/gms/internal/gtm/zzwp;)Lcom/google/android/gms/internal/gtm/zzwp;
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 1
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final zzd()Lcom/google/android/gms/internal/gtm/zzye;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzuw;->zzc:Lcom/google/android/gms/internal/gtm/zzye;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/gtm/zzyf;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzuw;->zzc:Lcom/google/android/gms/internal/gtm/zzye;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzye;->zza()Lcom/google/android/gms/internal/gtm/zzyf;

    move-result-object v0

    return-object v0
.end method

.method public final zzf()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final zzg()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
