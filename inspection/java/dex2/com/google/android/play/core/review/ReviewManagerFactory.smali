.class public Lcom/google/android/play/core/review/ReviewManagerFactory;
.super Ljava/lang/Object;
.source "com.google.android.play:review@@2.0.1"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/google/android/play/core/review/ReviewManager;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_7

    move-object p0, v0

    :cond_7
    new-instance v0, Lcom/google/android/play/core/review/zzd;

    .line 2
    new-instance v1, Lcom/google/android/play/core/review/zzi;

    invoke-direct {v1, p0}, Lcom/google/android/play/core/review/zzi;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/google/android/play/core/review/zzd;-><init>(Lcom/google/android/play/core/review/zzi;)V

    return-object v0
.end method
