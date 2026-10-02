.class public abstract Lcom/google/android/gms/internal/fido/zzei;
.super Lcom/google/android/gms/internal/fido/zzdp;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# instance fields
.field private final zza:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/fido/zzdp;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/fido/zzei;->zza:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public zza()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzei;->zza:Ljava/lang/String;

    return-object v0
.end method
