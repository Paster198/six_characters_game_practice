.class public final Lcom/google/android/gms/internal/fido/zzer;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fido@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/fido/zzek;


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/android/gms/internal/fido/zzdn;

.field private final zzc:Ljava/util/logging/Level;

.field private final zzd:Ljava/util/Set;

.field private final zze:Lcom/google/android/gms/internal/fido/zzea;


# direct methods
.method private constructor <init>()V
    .registers 9

    .line 1
    sget-object v3, Lcom/google/android/gms/internal/fido/zzdo;->zzb:Lcom/google/android/gms/internal/fido/zzdo;

    sget-object v4, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-static {}, Lcom/google/android/gms/internal/fido/zzeu;->zzd()Ljava/util/Set;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/fido/zzeu;->zzb()Lcom/google/android/gms/internal/fido/zzea;

    move-result-object v7

    const/4 v2, 0x1

    const/4 v5, 0x0

    const-string v1, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/fido/zzer;-><init>(Ljava/lang/String;ZLcom/google/android/gms/internal/fido/zzdn;Ljava/util/logging/Level;ZLjava/util/Set;Lcom/google/android/gms/internal/fido/zzea;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/fido/zzeq;)V
    .registers 10

    .line 2
    sget-object v3, Lcom/google/android/gms/internal/fido/zzdo;->zzb:Lcom/google/android/gms/internal/fido/zzdo;

    sget-object v4, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-static {}, Lcom/google/android/gms/internal/fido/zzeu;->zzd()Ljava/util/Set;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/fido/zzeu;->zzb()Lcom/google/android/gms/internal/fido/zzea;

    move-result-object v7

    const/4 v2, 0x1

    const/4 v5, 0x0

    const-string v1, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/fido/zzer;-><init>(Ljava/lang/String;ZLcom/google/android/gms/internal/fido/zzdn;Ljava/util/logging/Level;ZLjava/util/Set;Lcom/google/android/gms/internal/fido/zzea;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ZLcom/google/android/gms/internal/fido/zzdn;Ljava/util/logging/Level;ZLjava/util/Set;Lcom/google/android/gms/internal/fido/zzea;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    iput-object p1, p0, Lcom/google/android/gms/internal/fido/zzer;->zza:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/fido/zzer;->zzb:Lcom/google/android/gms/internal/fido/zzdn;

    iput-object p4, p0, Lcom/google/android/gms/internal/fido/zzer;->zzc:Ljava/util/logging/Level;

    iput-object p6, p0, Lcom/google/android/gms/internal/fido/zzer;->zzd:Ljava/util/Set;

    iput-object p7, p0, Lcom/google/android/gms/internal/fido/zzer;->zze:Lcom/google/android/gms/internal/fido/zzea;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/fido/zzdp;
    .registers 11

    .line 1
    iget-object v4, p0, Lcom/google/android/gms/internal/fido/zzer;->zzb:Lcom/google/android/gms/internal/fido/zzdn;

    iget-object v5, p0, Lcom/google/android/gms/internal/fido/zzer;->zzc:Ljava/util/logging/Level;

    iget-object v6, p0, Lcom/google/android/gms/internal/fido/zzer;->zzd:Ljava/util/Set;

    iget-object v7, p0, Lcom/google/android/gms/internal/fido/zzer;->zze:Lcom/google/android/gms/internal/fido/zzea;

    new-instance v0, Lcom/google/android/gms/internal/fido/zzeu;

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzer;->zza:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/fido/zzeu;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/fido/zzdn;Ljava/util/logging/Level;Ljava/util/Set;Lcom/google/android/gms/internal/fido/zzea;Lcom/google/android/gms/internal/fido/zzet;)V

    return-object v0
.end method

.method public final zzb(Z)Lcom/google/android/gms/internal/fido/zzer;
    .registers 10

    new-instance v0, Lcom/google/android/gms/internal/fido/zzer;

    iget-object v6, p0, Lcom/google/android/gms/internal/fido/zzer;->zzd:Ljava/util/Set;

    iget-object v7, p0, Lcom/google/android/gms/internal/fido/zzer;->zze:Lcom/google/android/gms/internal/fido/zzea;

    iget-object v3, p0, Lcom/google/android/gms/internal/fido/zzer;->zzb:Lcom/google/android/gms/internal/fido/zzdn;

    sget-object v4, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzer;->zza:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/fido/zzer;-><init>(Ljava/lang/String;ZLcom/google/android/gms/internal/fido/zzdn;Ljava/util/logging/Level;ZLjava/util/Set;Lcom/google/android/gms/internal/fido/zzea;)V

    return-object v0
.end method
