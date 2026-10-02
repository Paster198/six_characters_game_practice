.class public final Lcom/android/billingclient/api/EnableBillingProgramParams$Builder;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/EnableBillingProgramParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zza:I

.field private zzb:Lcom/android/billingclient/api/DeveloperProvidedBillingListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bridge synthetic zza(Lcom/android/billingclient/api/EnableBillingProgramParams$Builder;)I
    .registers 1

    iget p0, p0, Lcom/android/billingclient/api/EnableBillingProgramParams$Builder;->zza:I

    return p0
.end method

.method static bridge synthetic zzb(Lcom/android/billingclient/api/EnableBillingProgramParams$Builder;)Lcom/android/billingclient/api/DeveloperProvidedBillingListener;
    .registers 1

    iget-object p0, p0, Lcom/android/billingclient/api/EnableBillingProgramParams$Builder;->zzb:Lcom/android/billingclient/api/DeveloperProvidedBillingListener;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/android/billingclient/api/EnableBillingProgramParams;
    .registers 3

    new-instance v0, Lcom/android/billingclient/api/EnableBillingProgramParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/billingclient/api/EnableBillingProgramParams;-><init>(Lcom/android/billingclient/api/EnableBillingProgramParams$Builder;Lcom/android/billingclient/api/zzdp;)V

    return-object v0
.end method

.method public setBillingProgram(I)Lcom/android/billingclient/api/EnableBillingProgramParams$Builder;
    .registers 2

    iput p1, p0, Lcom/android/billingclient/api/EnableBillingProgramParams$Builder;->zza:I

    return-object p0
.end method

.method public setDeveloperProvidedBillingListener(Lcom/android/billingclient/api/DeveloperProvidedBillingListener;)Lcom/android/billingclient/api/EnableBillingProgramParams$Builder;
    .registers 2

    iput-object p1, p0, Lcom/android/billingclient/api/EnableBillingProgramParams$Builder;->zzb:Lcom/android/billingclient/api/DeveloperProvidedBillingListener;

    return-object p0
.end method
