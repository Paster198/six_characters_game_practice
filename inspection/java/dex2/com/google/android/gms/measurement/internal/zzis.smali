.class public final synthetic Lcom/google/android/gms/measurement/internal/zzis;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@22.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/measurement/internal/zzjp;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzpc;

.field public final synthetic zzd:Lcom/google/android/gms/measurement/internal/zzgr;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzjp;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzpc;Lcom/google/android/gms/measurement/internal/zzgr;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzis;->zza:Lcom/google/android/gms/measurement/internal/zzjp;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzis;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzis;->zzc:Lcom/google/android/gms/measurement/internal/zzpc;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzis;->zzd:Lcom/google/android/gms/measurement/internal/zzgr;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzis;->zza:Lcom/google/android/gms/measurement/internal/zzjp;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzis;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzis;->zzc:Lcom/google/android/gms/measurement/internal/zzpc;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzis;->zzd:Lcom/google/android/gms/measurement/internal/zzgr;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzjp;->zzd(Lcom/google/android/gms/measurement/internal/zzjp;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzpc;Lcom/google/android/gms/measurement/internal/zzgr;)V

    return-void
.end method
