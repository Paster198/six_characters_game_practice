.class public final Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field zza:Ljava/lang/Integer;

.field zzb:Ljava/lang/Double;

.field zzc:Landroid/net/Uri;

.field zzd:[B

.field zze:Ljava/util/List;

.field zzf:Lcom/google/android/gms/fido/u2f/api/common/ChannelIdValue;

.field zzg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams;
    .registers 9

    .line 1
    new-instance v0, Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams;

    iget-object v1, p0, Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams$Builder;->zza:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams$Builder;->zzb:Ljava/lang/Double;

    iget-object v3, p0, Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams$Builder;->zzc:Landroid/net/Uri;

    iget-object v4, p0, Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams$Builder;->zzd:[B

    iget-object v5, p0, Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams$Builder;->zze:Ljava/util/List;

    iget-object v6, p0, Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams$Builder;->zzf:Lcom/google/android/gms/fido/u2f/api/common/ChannelIdValue;

    iget-object v7, p0, Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams$Builder;->zzg:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams;-><init>(Ljava/lang/Integer;Ljava/lang/Double;Landroid/net/Uri;[BLjava/util/List;Lcom/google/android/gms/fido/u2f/api/common/ChannelIdValue;Ljava/lang/String;)V

    return-object v0
.end method

.method public setAppId(Landroid/net/Uri;)Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams$Builder;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams$Builder;->zzc:Landroid/net/Uri;

    return-object p0
.end method

.method public setChannelIdValue(Lcom/google/android/gms/fido/u2f/api/common/ChannelIdValue;)Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams$Builder;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams$Builder;->zzf:Lcom/google/android/gms/fido/u2f/api/common/ChannelIdValue;

    return-object p0
.end method

.method public setDefaultSignChallenge([B)Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams$Builder;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams$Builder;->zzd:[B

    return-object p0
.end method

.method public setDisplayHint(Ljava/lang/String;)Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams$Builder;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams$Builder;->zzg:Ljava/lang/String;

    return-object p0
.end method

.method public setRegisteredKeys(Ljava/util/List;)Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/fido/u2f/api/common/RegisteredKey;",
            ">;)",
            "Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams$Builder;->zze:Ljava/util/List;

    return-object p0
.end method

.method public setRequestId(Ljava/lang/Integer;)Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams$Builder;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams$Builder;->zza:Ljava/lang/Integer;

    return-object p0
.end method

.method public setTimeoutSeconds(Ljava/lang/Double;)Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams$Builder;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams$Builder;->zzb:Ljava/lang/Double;

    return-object p0
.end method
