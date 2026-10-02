.class public Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.9.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/AccountPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountChooserOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions$Builder;
    }
.end annotation


# instance fields
.field private zza:Landroid/accounts/Account;

.field private zzb:Ljava/util/ArrayList;

.field private zzc:Ljava/util/ArrayList;

.field private zzd:Z

.field private zze:Ljava/lang/String;

.field private zzf:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final synthetic zza()Landroid/accounts/Account;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zza:Landroid/accounts/Account;

    return-object v0
.end method

.method final synthetic zzb(Landroid/accounts/Account;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zza:Landroid/accounts/Account;

    return-void
.end method

.method final synthetic zzc()Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzb:Ljava/util/ArrayList;

    return-object v0
.end method

.method final synthetic zzd(Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzb:Ljava/util/ArrayList;

    return-void
.end method

.method final synthetic zze()Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzc:Ljava/util/ArrayList;

    return-object v0
.end method

.method final synthetic zzf(Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzc:Ljava/util/ArrayList;

    return-void
.end method

.method final synthetic zzg()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzd:Z

    return v0
.end method

.method final synthetic zzh(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzd:Z

    return-void
.end method

.method final synthetic zzi()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zze:Ljava/lang/String;

    return-object v0
.end method

.method final synthetic zzj(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zze:Ljava/lang/String;

    return-void
.end method

.method final synthetic zzk()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzf:Landroid/os/Bundle;

    return-object v0
.end method

.method final synthetic zzl(Landroid/os/Bundle;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzf:Landroid/os/Bundle;

    return-void
.end method
