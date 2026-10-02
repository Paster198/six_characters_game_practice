.class public abstract Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;
.super Lcom/google/android/gms/internal/common/zzb;
.source "com.google.android.gms:play-services-basement@@18.9.0"

# interfaces
.implements Lcom/google/android/gms/dynamic/IFragmentWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/dynamic/IFragmentWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    const-string v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/common/zzb;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IFragmentWrapper;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_4
    const-string v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/dynamic/IFragmentWrapper;

    if-eqz v1, :cond_11

    .line 2
    check-cast v0, Lcom/google/android/gms/dynamic/IFragmentWrapper;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/dynamic/zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/dynamic/zza;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_172

    const/4 p1, 0x0

    return p1

    .line 1
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->zzf(Landroid/os/Parcel;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzA(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_170

    .line 5
    :pswitch_18
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/common/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 7
    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->zzf(Landroid/os/Parcel;)V

    .line 8
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzz(Landroid/content/Intent;I)V

    .line 9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_170

    .line 4
    :pswitch_2f
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 10
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/common/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 11
    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->zzf(Landroid/os/Parcel;)V

    .line 12
    invoke-virtual {p0, p1}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzy(Landroid/content/Intent;)V

    .line 13
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_170

    .line 14
    :pswitch_42
    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->zza(Landroid/os/Parcel;)Z

    move-result p1

    .line 15
    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->zzf(Landroid/os/Parcel;)V

    .line 16
    invoke-virtual {p0, p1}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzx(Z)V

    .line 17
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_170

    .line 18
    :pswitch_51
    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->zza(Landroid/os/Parcel;)Z

    move-result p1

    .line 19
    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->zzf(Landroid/os/Parcel;)V

    .line 20
    invoke-virtual {p0, p1}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzw(Z)V

    .line 21
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_170

    .line 22
    :pswitch_60
    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->zza(Landroid/os/Parcel;)Z

    move-result p1

    .line 23
    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->zzf(Landroid/os/Parcel;)V

    .line 24
    invoke-virtual {p0, p1}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzv(Z)V

    .line 25
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_170

    .line 26
    :pswitch_6f
    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->zza(Landroid/os/Parcel;)Z

    move-result p1

    .line 27
    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->zzf(Landroid/os/Parcel;)V

    .line 28
    invoke-virtual {p0, p1}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzu(Z)V

    .line 29
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_170

    .line 30
    :pswitch_7e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 31
    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->zzf(Landroid/os/Parcel;)V

    .line 32
    invoke-virtual {p0, p1}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzt(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 33
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_170

    .line 34
    :pswitch_91
    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzs()Z

    move-result p1

    .line 35
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 36
    sget p2, Lcom/google/android/gms/internal/common/zzc;->zza:I

    .line 37
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_170

    .line 38
    :pswitch_9f
    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzr()Z

    move-result p1

    .line 39
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 40
    sget p2, Lcom/google/android/gms/internal/common/zzc;->zza:I

    .line 41
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_170

    .line 42
    :pswitch_ad
    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzq()Z

    move-result p1

    .line 43
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 44
    sget p2, Lcom/google/android/gms/internal/common/zzc;->zza:I

    .line 45
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_170

    .line 46
    :pswitch_bb
    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzp()Z

    move-result p1

    .line 47
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 48
    sget p2, Lcom/google/android/gms/internal/common/zzc;->zza:I

    .line 49
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_170

    .line 50
    :pswitch_c9
    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzo()Z

    move-result p1

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    sget p2, Lcom/google/android/gms/internal/common/zzc;->zza:I

    .line 53
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_170

    .line 54
    :pswitch_d7
    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzn()Z

    move-result p1

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    sget p2, Lcom/google/android/gms/internal/common/zzc;->zza:I

    .line 57
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_170

    .line 58
    :pswitch_e5
    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzm()Z

    move-result p1

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    sget p2, Lcom/google/android/gms/internal/common/zzc;->zza:I

    .line 61
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_170

    .line 62
    :pswitch_f3
    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzl()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/zzc;->zze(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_170

    .line 65
    :pswitch_ff
    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzk()Z

    move-result p1

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    sget p2, Lcom/google/android/gms/internal/common/zzc;->zza:I

    .line 68
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_170

    .line 69
    :pswitch_10c
    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzj()I

    move-result p1

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_170

    .line 72
    :pswitch_117
    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzi()Lcom/google/android/gms/dynamic/IFragmentWrapper;

    move-result-object p1

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/zzc;->zze(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_170

    .line 75
    :pswitch_122
    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzh()Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_170

    .line 78
    :pswitch_12d
    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzg()Z

    move-result p1

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    sget p2, Lcom/google/android/gms/internal/common/zzc;->zza:I

    .line 81
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_170

    .line 82
    :pswitch_13a
    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzf()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/zzc;->zze(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_170

    .line 85
    :pswitch_145
    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zze()Lcom/google/android/gms/dynamic/IFragmentWrapper;

    move-result-object p1

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/zzc;->zze(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_170

    .line 88
    :pswitch_150
    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzd()I

    move-result p1

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_170

    .line 91
    :pswitch_15b
    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzc()Landroid/os/Bundle;

    move-result-object p1

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/zzc;->zzd(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto :goto_170

    .line 94
    :pswitch_166
    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->zzb()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/zzc;->zze(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_170
    const/4 p1, 0x1

    return p1

    :pswitch_data_172
    .packed-switch 0x2
        :pswitch_166
        :pswitch_15b
        :pswitch_150
        :pswitch_145
        :pswitch_13a
        :pswitch_12d
        :pswitch_122
        :pswitch_117
        :pswitch_10c
        :pswitch_ff
        :pswitch_f3
        :pswitch_e5
        :pswitch_d7
        :pswitch_c9
        :pswitch_bb
        :pswitch_ad
        :pswitch_9f
        :pswitch_91
        :pswitch_7e
        :pswitch_6f
        :pswitch_60
        :pswitch_51
        :pswitch_42
        :pswitch_2f
        :pswitch_18
        :pswitch_5
    .end packed-switch
.end method
