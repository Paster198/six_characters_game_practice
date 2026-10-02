.class public final Lcom/google/android/gms/common/wrappers/AttributionSourceWrapper;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.9.0"


# instance fields
.field private final zza:Landroid/content/AttributionSource;


# direct methods
.method public constructor <init>(Landroid/content/AttributionSource;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/wrappers/AttributionSourceWrapper;->zza:Landroid/content/AttributionSource;

    return-void
.end method


# virtual methods
.method public getAttributionSource()Landroid/content/AttributionSource;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/wrappers/AttributionSourceWrapper;->zza:Landroid/content/AttributionSource;

    return-object v0
.end method
