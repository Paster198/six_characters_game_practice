.class final Lcom/google/android/gms/internal/fido/zzes;
.super Lcom/google/android/gms/internal/fido/zzei;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/fido/zzdn;

.field private final zzb:Ljava/util/logging/Level;

.field private final zzc:Ljava/util/Set;

.field private final zzd:Lcom/google/android/gms/internal/fido/zzea;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/fido/zzdn;ZZ)V
    .registers 7
    .param p2    # Ljava/lang/String;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    sget-object p1, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-static {}, Lcom/google/android/gms/internal/fido/zzeu;->zzd()Ljava/util/Set;

    move-result-object p3

    invoke-static {}, Lcom/google/android/gms/internal/fido/zzeu;->zzb()Lcom/google/android/gms/internal/fido/zzea;

    move-result-object p5

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/fido/zzei;-><init>(Ljava/lang/String;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/fido/zzes;->zza:Lcom/google/android/gms/internal/fido/zzdn;

    iput-object p1, p0, Lcom/google/android/gms/internal/fido/zzes;->zzb:Ljava/util/logging/Level;

    iput-object p3, p0, Lcom/google/android/gms/internal/fido/zzes;->zzc:Ljava/util/Set;

    iput-object p5, p0, Lcom/google/android/gms/internal/fido/zzes;->zzd:Lcom/google/android/gms/internal/fido/zzea;

    return-void
.end method
