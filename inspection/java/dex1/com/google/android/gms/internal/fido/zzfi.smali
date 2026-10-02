.class public final Lcom/google/android/gms/internal/fido/zzfi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# static fields
.field private static final zza:Ljava/util/Comparator;

.field private static final zzb:Ljava/util/Comparator;

.field private static final zzc:Lcom/google/android/gms/internal/fido/zzfi;


# instance fields
.field private final zzd:Lcom/google/android/gms/internal/fido/zzfg;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/fido/zzfa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fido/zzfa;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fido/zzfi;->zza:Ljava/util/Comparator;

    new-instance v0, Lcom/google/android/gms/internal/fido/zzfb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fido/zzfb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fido/zzfi;->zzb:Ljava/util/Comparator;

    new-instance v0, Lcom/google/android/gms/internal/fido/zzfi;

    new-instance v1, Lcom/google/android/gms/internal/fido/zzfg;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/fido/zzfg;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/fido/zzfi;-><init>(Lcom/google/android/gms/internal/fido/zzfg;)V

    sput-object v0, Lcom/google/android/gms/internal/fido/zzfi;->zzc:Lcom/google/android/gms/internal/fido/zzfi;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/fido/zzfg;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/fido/zzfi;->zzd:Lcom/google/android/gms/internal/fido/zzfg;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/fido/zzfi;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/fido/zzfi;->zzc:Lcom/google/android/gms/internal/fido/zzfi;

    return-object v0
.end method

.method static bridge synthetic zzb()Ljava/util/Comparator;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/fido/zzfi;->zza:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/fido/zzfi;

    if-eqz v0, :cond_12

    check-cast p1, Lcom/google/android/gms/internal/fido/zzfi;

    iget-object p1, p1, Lcom/google/android/gms/internal/fido/zzfi;->zzd:Lcom/google/android/gms/internal/fido/zzfg;

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzfi;->zzd:Lcom/google/android/gms/internal/fido/zzfg;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/fido/zzfg;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzfi;->zzd:Lcom/google/android/gms/internal/fido/zzfg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzfg;->hashCode()I

    move-result v0

    not-int v0, v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzfi;->zzd:Lcom/google/android/gms/internal/fido/zzfg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzfg;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
