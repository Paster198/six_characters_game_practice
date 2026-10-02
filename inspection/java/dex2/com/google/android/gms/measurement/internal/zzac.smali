.class final Lcom/google/android/gms/measurement/internal/zzac;
.super Lcom/google/android/gms/measurement/internal/zzab;
.source "com.google.android.gms:play-services-measurement@@22.4.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzae;

.field private final zzh:Lcom/google/android/gms/internal/measurement/zzfr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzae;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzfr;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzac;->zza:Lcom/google/android/gms/measurement/internal/zzae;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/measurement/internal/zzab;-><init>(Ljava/lang/String;I)V

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzac;->zzh:Lcom/google/android/gms/internal/measurement/zzfr;

    return-void
.end method


# virtual methods
.method final zza()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzac;->zzh:Lcom/google/android/gms/internal/measurement/zzfr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfr;->zza()I

    move-result v0

    return v0
.end method

.method final zzb()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method final zzc()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method final zzd(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/zzio;Z)Z
    .registers 17

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpq;->zzb()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzac;->zza:Lcom/google/android/gms/measurement/internal/zzae;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzac;->zzb:Ljava/lang/String;

    .line 3
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzgi;->zzaC:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 4
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzac;->zzh:Lcom/google/android/gms/internal/measurement/zzfr;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfr;->zzg()Z

    move-result v3

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfr;->zzh()Z

    move-result v4

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfr;->zzi()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v3, :cond_2c

    if-nez v4, :cond_2c

    if-eqz v5, :cond_2a

    goto :goto_2c

    :cond_2a
    move v3, v6

    goto :goto_2d

    :cond_2c
    :goto_2c
    move v3, v7

    :goto_2d
    const/4 v4, 0x0

    if-eqz p4, :cond_54

    if-nez v3, :cond_54

    .line 67
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    iget p2, p0, Lcom/google/android/gms/measurement/internal/zzac;->zzc:I

    .line 69
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 70
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfr;->zzj()Z

    move-result p3

    if-eqz p3, :cond_4e

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfr;->zza()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_4e
    const-string p3, "Property filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID"

    .line 71
    invoke-virtual {p1, p3, p2, v4}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v7

    .line 8
    :cond_54
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfr;->zzb()Lcom/google/android/gms/internal/measurement/zzfl;

    move-result-object v8

    .line 9
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfl;->zzg()Z

    move-result v9

    .line 10
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzio;->zzt()Z

    move-result v10

    if-eqz v10, :cond_95

    .line 11
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfl;->zzi()Z

    move-result v10

    if-nez v10, :cond_83

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v8

    .line 13
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v8

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v9

    .line 15
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzio;->zzg()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzgx;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "No number filter for long property. property"

    .line 16
    invoke-virtual {v8, v10, v9}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_161

    .line 17
    :cond_83
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzio;->zzc()J

    move-result-wide v10

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfl;->zzc()Lcom/google/android/gms/internal/measurement/zzfp;

    move-result-object v4

    invoke-static {v10, v11, v4}, Lcom/google/android/gms/measurement/internal/zzac;->zzh(JLcom/google/android/gms/internal/measurement/zzfp;)Ljava/lang/Boolean;

    move-result-object v4

    .line 18
    invoke-static {v4, v9}, Lcom/google/android/gms/measurement/internal/zzac;->zzj(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_161

    .line 19
    :cond_95
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzio;->zzr()Z

    move-result v10

    if-eqz v10, :cond_ce

    .line 20
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfl;->zzi()Z

    move-result v10

    if-nez v10, :cond_bc

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v8

    .line 22
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v8

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v9

    .line 24
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzio;->zzg()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzgx;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "No number filter for double property. property"

    .line 25
    invoke-virtual {v8, v10, v9}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_161

    .line 26
    :cond_bc
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzio;->zza()D

    move-result-wide v10

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfl;->zzc()Lcom/google/android/gms/internal/measurement/zzfp;

    move-result-object v4

    invoke-static {v10, v11, v4}, Lcom/google/android/gms/measurement/internal/zzac;->zzg(DLcom/google/android/gms/internal/measurement/zzfp;)Ljava/lang/Boolean;

    move-result-object v4

    .line 27
    invoke-static {v4, v9}, Lcom/google/android/gms/measurement/internal/zzac;->zzj(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_161

    .line 28
    :cond_ce
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzio;->zzv()Z

    move-result v10

    if-eqz v10, :cond_148

    .line 29
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfl;->zzk()Z

    move-result v10

    if-nez v10, :cond_133

    .line 30
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfl;->zzi()Z

    move-result v10

    if-nez v10, :cond_fa

    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v8

    .line 32
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v8

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v9

    .line 34
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzio;->zzg()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzgx;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "No string or number filter defined. property"

    .line 35
    invoke-virtual {v8, v10, v9}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_161

    .line 36
    :cond_fa
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzio;->zzh()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzqa;->zzA(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_115

    .line 37
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzio;->zzh()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfl;->zzc()Lcom/google/android/gms/internal/measurement/zzfp;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/google/android/gms/measurement/internal/zzac;->zzi(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfp;)Ljava/lang/Boolean;

    move-result-object v4

    .line 38
    invoke-static {v4, v9}, Lcom/google/android/gms/measurement/internal/zzac;->zzj(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_161

    .line 39
    :cond_115
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v8

    .line 40
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v8

    .line 41
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v9

    .line 42
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzio;->zzg()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzgx;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 43
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzio;->zzh()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Invalid user property value for Numeric number filter. property, value"

    .line 44
    invoke-virtual {v8, v11, v9, v10}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_161

    .line 45
    :cond_133
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzio;->zzh()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfl;->zzd()Lcom/google/android/gms/internal/measurement/zzfv;

    move-result-object v8

    .line 46
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v10

    .line 45
    invoke-static {v4, v8, v10}, Lcom/google/android/gms/measurement/internal/zzac;->zzf(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfv;Lcom/google/android/gms/measurement/internal/zzhe;)Ljava/lang/Boolean;

    move-result-object v4

    .line 47
    invoke-static {v4, v9}, Lcom/google/android/gms/measurement/internal/zzac;->zzj(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_161

    .line 48
    :cond_148
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v8

    .line 49
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v8

    .line 50
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v9

    .line 51
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzio;->zzg()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzgx;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "User property has no value, property"

    .line 52
    invoke-virtual {v8, v10, v9}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    :goto_161
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    if-nez v4, :cond_16e

    const-string v8, "null"

    goto :goto_16f

    :cond_16e
    move-object v8, v4

    :goto_16f
    const-string v9, "Property filter result"

    .line 55
    invoke-virtual {v0, v9, v8}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v4, :cond_177

    return v6

    .line 56
    :cond_177
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzac;->zzd:Ljava/lang/Boolean;

    if-eqz v5, :cond_187

    .line 57
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_186

    goto :goto_187

    :cond_186
    return v7

    :cond_187
    :goto_187
    if-eqz p4, :cond_18f

    .line 58
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfr;->zzg()Z

    move-result v0

    if-eqz v0, :cond_191

    :cond_18f
    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/zzac;->zze:Ljava/lang/Boolean;

    .line 59
    :cond_191
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1d0

    if-eqz v3, :cond_1d0

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzio;->zzu()Z

    move-result v0

    if-eqz v0, :cond_1d0

    .line 60
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzio;->zzd()J

    move-result-wide v3

    if-eqz p1, :cond_1a9

    .line 61
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :cond_1a9
    if-eqz v1, :cond_1bd

    .line 62
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfr;->zzg()Z

    move-result p1

    if-eqz p1, :cond_1bd

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfr;->zzh()Z

    move-result p1

    if-nez p1, :cond_1bd

    if-eqz p2, :cond_1bd

    .line 63
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 64
    :cond_1bd
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfr;->zzh()Z

    move-result p1

    if-eqz p1, :cond_1ca

    .line 65
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzac;->zzg:Ljava/lang/Long;

    goto :goto_1d0

    .line 66
    :cond_1ca
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzac;->zzf:Ljava/lang/Long;

    :cond_1d0
    :goto_1d0
    return v7
.end method
