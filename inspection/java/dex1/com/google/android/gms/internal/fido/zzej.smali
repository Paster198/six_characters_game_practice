.class public final Lcom/google/android/gms/internal/fido/zzej;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fido@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/fido/zzek;


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/android/gms/internal/fido/zzdn;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/fido/zzdo;->zzb:Lcom/google/android/gms/internal/fido/zzdo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, ""

    iput-object v1, p0, Lcom/google/android/gms/internal/fido/zzej;->zza:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/fido/zzej;->zzb:Lcom/google/android/gms/internal/fido/zzdn;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/fido/zzdp;
    .registers 9

    .line 1
    iget-object v4, p0, Lcom/google/android/gms/internal/fido/zzej;->zzb:Lcom/google/android/gms/internal/fido/zzdn;

    new-instance v0, Lcom/google/android/gms/internal/fido/zzes;

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzej;->zza:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v3, 0x1

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/fido/zzes;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/fido/zzdn;ZZ)V

    return-object v0
.end method
