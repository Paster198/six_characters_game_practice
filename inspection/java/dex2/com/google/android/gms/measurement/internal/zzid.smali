.class final Lcom/google/android/gms/measurement/internal/zzid;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@22.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzr;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzif;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzif;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzid;->zza:Lcom/google/android/gms/measurement/internal/zzif;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(ILjava/lang/String;Ljava/util/List;ZZ)V
    .registers 9

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eqz p1, :cond_7e

    if-eq p1, v1, :cond_53

    if-eq p1, v0, :cond_46

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1b

    .line 17
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzid;->zza:Lcom/google/android/gms/measurement/internal/zzif;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzi()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    goto/16 :goto_8a

    :cond_1b
    if-eqz p4, :cond_2a

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzid;->zza:Lcom/google/android/gms/measurement/internal/zzif;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzm()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    goto :goto_8a

    :cond_2a
    if-nez p5, :cond_39

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzid;->zza:Lcom/google/android/gms/measurement/internal/zzif;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzl()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    goto :goto_8a

    :cond_39
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzid;->zza:Lcom/google/android/gms/measurement/internal/zzif;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    goto :goto_8a

    .line 22
    :cond_46
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzid;->zza:Lcom/google/android/gms/measurement/internal/zzif;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    goto :goto_8a

    :cond_53
    if-eqz p4, :cond_62

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzid;->zza:Lcom/google/android/gms/measurement/internal/zzif;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzh()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    goto :goto_8a

    :cond_62
    if-nez p5, :cond_71

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzid;->zza:Lcom/google/android/gms/measurement/internal/zzif;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzf()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    goto :goto_8a

    :cond_71
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzid;->zza:Lcom/google/android/gms/measurement/internal/zzif;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    goto :goto_8a

    :cond_7e
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzid;->zza:Lcom/google/android/gms/measurement/internal/zzif;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    .line 19
    :goto_8a
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p4

    const/4 p5, 0x0

    if-eq p4, v1, :cond_b6

    const/4 v2, 0x2

    if-eq p4, v2, :cond_aa

    if-eq p4, v0, :cond_9a

    .line 23
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    return-void

    .line 20
    :cond_9a
    invoke-interface {p3, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p4, p5, p3}, Lcom/google/android/gms/measurement/internal/zzhc;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 21
    :cond_aa
    invoke-interface {p3, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p4, p3}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 22
    :cond_b6
    invoke-interface {p3, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
