.class final Lim/delight/android/commons/Apps$Entry$1;
.super Ljava/lang/Object;
.source "Apps.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/delight/android/commons/Apps$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lim/delight/android/commons/Apps$Entry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lim/delight/android/commons/Apps$Entry;
    .registers 4

    .line 184
    new-instance v0, Lim/delight/android/commons/Apps$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lim/delight/android/commons/Apps$Entry;-><init>(Landroid/os/Parcel;Lim/delight/android/commons/Apps$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 180
    invoke-virtual {p0, p1}, Lim/delight/android/commons/Apps$Entry$1;->createFromParcel(Landroid/os/Parcel;)Lim/delight/android/commons/Apps$Entry;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lim/delight/android/commons/Apps$Entry;
    .registers 2

    .line 189
    new-array p1, p1, [Lim/delight/android/commons/Apps$Entry;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 180
    invoke-virtual {p0, p1}, Lim/delight/android/commons/Apps$Entry$1;->newArray(I)[Lim/delight/android/commons/Apps$Entry;

    move-result-object p1

    return-object p1
.end method
