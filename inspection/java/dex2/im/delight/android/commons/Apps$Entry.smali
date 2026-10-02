.class public Lim/delight/android/commons/Apps$Entry;
.super Ljava/lang/Object;
.source "Apps.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/delight/android/commons/Apps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lim/delight/android/commons/Apps$Entry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mSystemApp:Z

.field private final mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 180
    new-instance v0, Lim/delight/android/commons/Apps$Entry$1;

    invoke-direct {v0}, Lim/delight/android/commons/Apps$Entry$1;-><init>()V

    sput-object v0, Lim/delight/android/commons/Apps$Entry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/delight/android/commons/Apps$Entry;->mPackageName:Ljava/lang/String;

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/delight/android/commons/Apps$Entry;->mTitle:Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_17

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    iput-boolean v0, p0, Lim/delight/android/commons/Apps$Entry;->mSystemApp:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lim/delight/android/commons/Apps$1;)V
    .registers 3

    .line 117
    invoke-direct {p0, p1}, Lim/delight/android/commons/Apps$Entry;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lim/delight/android/commons/Apps$Entry;->mPackageName:Ljava/lang/String;

    .line 125
    iput-object p2, p0, Lim/delight/android/commons/Apps$Entry;->mTitle:Ljava/lang/String;

    .line 126
    iput-boolean p3, p0, Lim/delight/android/commons/Apps$Entry;->mSystemApp:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLim/delight/android/commons/Apps$1;)V
    .registers 5

    .line 117
    invoke-direct {p0, p1, p2, p3}, Lim/delight/android/commons/Apps$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 163
    iget-object v0, p0, Lim/delight/android/commons/Apps$Entry;->mPackageName:Ljava/lang/String;

    # invokes: Lim/delight/android/commons/Apps;->getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    invoke-static {p1, v0}, Lim/delight/android/commons/Apps;->access$100(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 135
    iget-object v0, p0, Lim/delight/android/commons/Apps$Entry;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 144
    iget-object v0, p0, Lim/delight/android/commons/Apps$Entry;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isSystemApp()Z
    .registers 2

    .line 153
    iget-boolean v0, p0, Lim/delight/android/commons/Apps$Entry;->mSystemApp:Z

    return v0
.end method

.method public launch(Landroid/content/Context;)V
    .registers 3

    .line 172
    iget-object v0, p0, Lim/delight/android/commons/Apps$Entry;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v0}, Lim/delight/android/commons/Apps;->launch(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 202
    iget-object p2, p0, Lim/delight/android/commons/Apps$Entry;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    iget-object p2, p0, Lim/delight/android/commons/Apps$Entry;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    iget-boolean p2, p0, Lim/delight/android/commons/Apps$Entry;->mSystemApp:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
