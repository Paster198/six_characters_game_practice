.class public final Lcom/google/android/gms/internal/fido/zzay;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Ljava/util/Set;

.field private final zzc:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 10

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/fido/zzcf;->zzk()Lcom/google/android/gms/internal/fido/zzcf;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v1, "com.google.android.gms.fido"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/fido/zzay;-><init>(Ljava/lang/String;Ljava/util/Set;ZZZZZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/Set;ZZZZZ)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "com.google.android.gms.fido"

    iput-object p1, p0, Lcom/google/android/gms/internal/fido/zzay;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/fido/zzay;->zzb:Ljava/util/Set;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/fido/zzay;->zzc:Z

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;J)Lcom/google/android/gms/internal/fido/zzaq;
    .registers 18

    .line 1
    const-class v0, Ljava/lang/Long;

    new-instance v1, Lcom/google/android/gms/internal/fido/zzaq;

    .line 2
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/internal/fido/zzak;

    sget-object v12, Lcom/google/android/gms/internal/fido/zzav;->zza:Lcom/google/android/gms/internal/fido/zzav;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v13, Lcom/google/android/gms/internal/fido/zzaw;

    invoke-direct {v13, v0}, Lcom/google/android/gms/internal/fido/zzaw;-><init>(Ljava/lang/Class;)V

    iget-boolean v9, p0, Lcom/google/android/gms/internal/fido/zzay;->zzc:Z

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/google/android/gms/internal/fido/zzay;->zzb:Ljava/util/Set;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v5 .. v13}, Lcom/google/android/gms/internal/fido/zzak;-><init>(ZZZZZLjava/util/Set;Lcom/google/android/gms/internal/fido/zzax;Lcom/google/android/gms/internal/fido/zzax;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/fido/zzay;->zza:Ljava/lang/String;

    const/4 v6, 0x1

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/fido/zzaq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/fido/zzak;Z)V

    return-object v1
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/fido/zzaq;
    .registers 14

    .line 1
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/fido/zzaq;

    new-instance v2, Lcom/google/android/gms/internal/fido/zzak;

    sget-object v9, Lcom/google/android/gms/internal/fido/zzat;->zza:Lcom/google/android/gms/internal/fido/zzat;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Lcom/google/android/gms/internal/fido/zzau;

    invoke-direct {v10, v0}, Lcom/google/android/gms/internal/fido/zzau;-><init>(Ljava/lang/Class;)V

    iget-boolean v6, p0, Lcom/google/android/gms/internal/fido/zzay;->zzc:Z

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/gms/internal/fido/zzay;->zzb:Ljava/util/Set;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/fido/zzak;-><init>(ZZZZZLjava/util/Set;Lcom/google/android/gms/internal/fido/zzax;Lcom/google/android/gms/internal/fido/zzax;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzay;->zza:Ljava/lang/String;

    const/4 v6, 0x1

    move-object v3, p1

    move-object v4, p2

    move-object v5, v2

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/fido/zzaq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/fido/zzak;Z)V

    return-object v1
.end method

.method public final zzc(Ljava/lang/String;Z)Lcom/google/android/gms/internal/fido/zzaq;
    .registers 17

    .line 1
    const-class v0, Ljava/lang/Boolean;

    new-instance v1, Lcom/google/android/gms/internal/fido/zzaq;

    .line 2
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/internal/fido/zzak;

    sget-object v12, Lcom/google/android/gms/internal/fido/zzar;->zza:Lcom/google/android/gms/internal/fido/zzar;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v13, Lcom/google/android/gms/internal/fido/zzas;

    invoke-direct {v13, v0}, Lcom/google/android/gms/internal/fido/zzas;-><init>(Ljava/lang/Class;)V

    iget-boolean v9, p0, Lcom/google/android/gms/internal/fido/zzay;->zzc:Z

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/google/android/gms/internal/fido/zzay;->zzb:Ljava/util/Set;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v5 .. v13}, Lcom/google/android/gms/internal/fido/zzak;-><init>(ZZZZZLjava/util/Set;Lcom/google/android/gms/internal/fido/zzax;Lcom/google/android/gms/internal/fido/zzax;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/fido/zzay;->zza:Ljava/lang/String;

    const/4 v6, 0x1

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/fido/zzaq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/fido/zzak;Z)V

    return-object v1
.end method

.method public final zzd()Lcom/google/android/gms/internal/fido/zzay;
    .registers 9

    new-instance v0, Lcom/google/android/gms/internal/fido/zzay;

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzay;->zza:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/fido/zzay;->zzb:Ljava/util/Set;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/fido/zzay;-><init>(Ljava/lang/String;Ljava/util/Set;ZZZZZ)V

    return-object v0
.end method

.method public final zze(Ljava/util/Set;)Lcom/google/android/gms/internal/fido/zzay;
    .registers 10

    iget-boolean v6, p0, Lcom/google/android/gms/internal/fido/zzay;->zzc:Z

    new-instance v0, Lcom/google/android/gms/internal/fido/zzay;

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzay;->zza:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/fido/zzay;-><init>(Ljava/lang/String;Ljava/util/Set;ZZZZZ)V

    return-object v0
.end method
