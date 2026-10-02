.class public final synthetic Lcom/android/billingclient/api/zzam;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/android/billingclient/api/BillingClientImpl;

.field public final synthetic zzb:Lcom/android/billingclient/api/BillingProgramInformationDialogListener;

.field public final synthetic zzc:Lcom/android/billingclient/api/BillingProgramInformationDialogParams;

.field public final synthetic zzd:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingProgramInformationDialogListener;Lcom/android/billingclient/api/BillingProgramInformationDialogParams;Landroid/app/Activity;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzam;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    iput-object p2, p0, Lcom/android/billingclient/api/zzam;->zzb:Lcom/android/billingclient/api/BillingProgramInformationDialogListener;

    iput-object p3, p0, Lcom/android/billingclient/api/zzam;->zzc:Lcom/android/billingclient/api/BillingProgramInformationDialogParams;

    iput-object p4, p0, Lcom/android/billingclient/api/zzam;->zzd:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/android/billingclient/api/zzam;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    iget-object v1, p0, Lcom/android/billingclient/api/zzam;->zzb:Lcom/android/billingclient/api/BillingProgramInformationDialogListener;

    iget-object v2, p0, Lcom/android/billingclient/api/zzam;->zzc:Lcom/android/billingclient/api/BillingProgramInformationDialogParams;

    iget-object v3, p0, Lcom/android/billingclient/api/zzam;->zzd:Landroid/app/Activity;

    invoke-static {v0, v1, v2, v3}, Lcom/android/billingclient/api/BillingClientImpl;->zzI(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingProgramInformationDialogListener;Lcom/android/billingclient/api/BillingProgramInformationDialogParams;Landroid/app/Activity;)Ljava/lang/Void;

    const/4 v0, 0x0

    return-object v0
.end method
