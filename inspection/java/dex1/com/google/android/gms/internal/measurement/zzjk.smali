.class public final synthetic Lcom/google/android/gms/internal/measurement/zzjk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzjq;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/measurement/zzjm;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzjm;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zza:Lcom/google/android/gms/internal/measurement/zzjm;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzjm;->zzc(Lcom/google/android/gms/internal/measurement/zzjm;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
