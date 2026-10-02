.class final Lcom/android/billingclient/api/zzcl;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# instance fields
.field private final zza:Ljava/util/List;

.field private final zzb:Ljava/util/List;

.field private final zzc:I

.field private final zzd:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/billingclient/api/zzcl;->zzc:I

    iput-object p2, p0, Lcom/android/billingclient/api/zzcl;->zzd:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/billingclient/api/zzcl;->zza:Ljava/util/List;

    iput-object p4, p0, Lcom/android/billingclient/api/zzcl;->zzb:Ljava/util/List;

    return-void
.end method


# virtual methods
.method final zza()I
    .registers 2

    iget v0, p0, Lcom/android/billingclient/api/zzcl;->zzc:I

    return v0
.end method

.method final zzb()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/billingclient/api/zzcl;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method final zzc()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/android/billingclient/api/zzcl;->zza:Ljava/util/List;

    return-object v0
.end method

.method final zzd()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/android/billingclient/api/zzcl;->zzb:Ljava/util/List;

    return-object v0
.end method
