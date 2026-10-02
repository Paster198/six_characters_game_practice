.class final Lcom/google/android/gms/dynamite/zzo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.9.0"

# interfaces
.implements Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;


# instance fields
.field private final zza:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/dynamite/zzo;->zza:I

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Ljava/lang/String;Z)I
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public final zzb(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3

    iget p1, p0, Lcom/google/android/gms/dynamite/zzo;->zza:I

    return p1
.end method
