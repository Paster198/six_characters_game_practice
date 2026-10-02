.class final Lcom/google/android/gms/internal/fido/zzfb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fido@@21.0.0"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/fido/zzfc;

    check-cast p2, Lcom/google/android/gms/internal/fido/zzfc;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/fido/zzfc;->zza(Lcom/google/android/gms/internal/fido/zzfc;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/internal/fido/zzfc;->zza(Lcom/google/android/gms/internal/fido/zzfc;)Ljava/lang/String;

    const/4 p1, 0x0

    throw p1
.end method
