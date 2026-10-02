.class final Lcom/google/android/gms/tagmanager/zzs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final zza:Lcom/google/android/gms/tagmanager/zzr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/zzr<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/zzq;-><init>(Lcom/google/android/gms/tagmanager/zzs;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzs;->zza:Lcom/google/android/gms/tagmanager/zzr;

    return-void
.end method

.method public static final zza(ILcom/google/android/gms/tagmanager/zzr;)Lcom/google/android/gms/tagmanager/zzdb;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/tagmanager/zzr<",
            "TK;TV;>;)",
            "Lcom/google/android/gms/tagmanager/zzdb;"
        }
    .end annotation

    new-instance p0, Lcom/google/android/gms/tagmanager/zzdb;

    const/high16 v0, 0x100000

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/tagmanager/zzdb;-><init>(ILcom/google/android/gms/tagmanager/zzr;)V

    return-object p0
.end method
