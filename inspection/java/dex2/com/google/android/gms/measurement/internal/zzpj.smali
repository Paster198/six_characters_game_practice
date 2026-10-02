.class public final synthetic Lcom/google/android/gms/measurement/internal/zzpj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@22.4.0"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzhg;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/measurement/internal/zzpv;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzpv;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzpj;->zza:Lcom/google/android/gms/measurement/internal/zzpv;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpj;->zza:Lcom/google/android/gms/measurement/internal/zzpv;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzpv;->zzW(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void
.end method
