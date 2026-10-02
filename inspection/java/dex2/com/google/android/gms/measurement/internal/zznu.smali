.class public final synthetic Lcom/google/android/gms/measurement/internal/zznu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/measurement/internal/zzny;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzny;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zznu;->zza:Lcom/google/android/gms/measurement/internal/zzny;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznu;->zza:Lcom/google/android/gms/measurement/internal/zzny;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzny;->zzB()V

    return-void
.end method
