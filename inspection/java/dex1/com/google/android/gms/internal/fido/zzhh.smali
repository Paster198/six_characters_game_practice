.class public final Lcom/google/android/gms/internal/fido/zzhh;
.super Lcom/google/android/gms/internal/fido/zzhp;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# instance fields
.field private final zza:Z


# direct methods
.method constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/fido/zzhp;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/fido/zzhh;->zza:Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 6

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/fido/zzhp;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzhp;->zza()I

    move-result v0

    const/16 v1, -0x20

    invoke-static {v1}, Lcom/google/android/gms/internal/fido/zzhh;->zzd(B)I

    move-result v2

    if-eq v2, v0, :cond_18

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzhp;->zza()I

    move-result p1

    invoke-static {v1}, Lcom/google/android/gms/internal/fido/zzhh;->zzd(B)I

    move-result v0

    sub-int/2addr v0, p1

    return v0

    .line 4
    :cond_18
    check-cast p1, Lcom/google/android/gms/internal/fido/zzhh;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/fido/zzhh;->zza:Z

    const/16 v1, 0x14

    const/16 v2, 0x15

    const/4 v3, 0x1

    if-eq v3, v0, :cond_25

    move v0, v1

    goto :goto_26

    :cond_25
    move v0, v2

    .line 5
    :goto_26
    iget-boolean p1, p1, Lcom/google/android/gms/internal/fido/zzhh;->zza:Z

    if-eq v3, p1, :cond_2b

    goto :goto_2c

    :cond_2b
    move v1, v2

    :goto_2c
    sub-int/2addr v0, v1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 1
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    :cond_13
    check-cast p1, Lcom/google/android/gms/internal/fido/zzhh;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/fido/zzhh;->zza:Z

    iget-boolean p1, p1, Lcom/google/android/gms/internal/fido/zzhh;->zza:Z

    if-ne v2, p1, :cond_1c

    return v0

    :cond_1c
    return v1
.end method

.method public final hashCode()I
    .registers 3

    const/16 v0, -0x20

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzhh;->zzd(B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/fido/zzhh;->zza:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/fido/zzhh;->zza:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final zza()I
    .registers 2

    const/16 v0, -0x20

    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzhh;->zzd(B)I

    move-result v0

    return v0
.end method
