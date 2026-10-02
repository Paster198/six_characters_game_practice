.class final Lcom/google/android/gms/internal/measurement/zzmy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@22.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zznf;


# instance fields
.field private final zza:[Lcom/google/android/gms/internal/measurement/zznf;


# direct methods
.method varargs constructor <init>([Lcom/google/android/gms/internal/measurement/zznf;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zza:[Lcom/google/android/gms/internal/measurement/zznf;

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzne;
    .registers 5

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_16

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zza:[Lcom/google/android/gms/internal/measurement/zznf;

    aget-object v1, v1, v0

    .line 1
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/measurement/zznf;->zzc(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 2
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/measurement/zznf;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzne;

    move-result-object p1

    return-object p1

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_16
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "No factory is available for message type: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzc(Ljava/lang/Class;)Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x2

    if-ge v1, v2, :cond_14

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzmy;->zza:[Lcom/google/android/gms/internal/measurement/zznf;

    aget-object v2, v2, v1

    .line 1
    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/measurement/zznf;->zzc(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 p1, 0x1

    return p1

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_14
    return v0
.end method
