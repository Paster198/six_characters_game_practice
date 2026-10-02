.class public final Lcom/google/android/gms/internal/measurement/zzcj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@22.4.0"


# static fields
.field public static final zza:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_9

    const/high16 v0, 0x2000000

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    sput v0, Lcom/google/android/gms/internal/measurement/zzcj;->zza:I

    return-void
.end method
