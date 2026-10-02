.class public final Lcom/google/android/gms/games/internal/zzao;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/google/android/gms/games/internal/zzc;


# instance fields
.field private final zza:Lcom/google/android/gms/games/internal/zzah;

.field private final zzb:Lcom/google/android/gms/internal/games_v2/zzae;

.field private zzc:Ljava/lang/ref/WeakReference;

.field private zzd:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/games/internal/zzah;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/zzao;->zzd:Z

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzao;->zza:Lcom/google/android/gms/games/internal/zzah;

    new-instance p1, Lcom/google/android/gms/internal/games_v2/zzae;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/internal/games_v2/zzae;-><init>(ILandroid/os/IBinder;)V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzao;->zzb:Lcom/google/android/gms/internal/games_v2/zzae;

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/games/internal/zzah;I)Lcom/google/android/gms/games/internal/zzao;
    .registers 3

    new-instance v0, Lcom/google/android/gms/games/internal/zzao;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/zzao;-><init>(Lcom/google/android/gms/games/internal/zzah;I)V

    return-object v0
.end method

.method private final zzh(Landroid/view/View;)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, -0x1

    .line 3
    :goto_c
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 4
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget-object v4, p0, Lcom/google/android/gms/games/internal/zzao;->zzb:Lcom/google/android/gms/internal/games_v2/zzae;

    iput v0, v4, Lcom/google/android/gms/internal/games_v2/zzae;->zzc:I

    iput-object v1, v4, Lcom/google/android/gms/internal/games_v2/zzae;->zza:Landroid/os/IBinder;

    const/4 v0, 0x0

    aget v0, v2, v0

    iput v0, v4, Lcom/google/android/gms/internal/games_v2/zzae;->zzd:I

    const/4 v1, 0x1

    aget v1, v2, v1

    iput v1, v4, Lcom/google/android/gms/internal/games_v2/zzae;->zze:I

    add-int/2addr v0, v3

    iput v0, v4, Lcom/google/android/gms/internal/games_v2/zzae;->zzf:I

    add-int/2addr v1, p1

    iput v1, v4, Lcom/google/android/gms/internal/games_v2/zzae;->zzg:I

    iget-boolean p1, p0, Lcom/google/android/gms/games/internal/zzao;->zzd:Z

    if-eqz p1, :cond_3b

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzao;->zzg()V

    :cond_3b
    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzao;->zzc:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_5

    goto :goto_10

    :cond_5
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_10

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/zzao;->zzh(Landroid/view/View;)V

    :cond_10
    :goto_10
    return-void
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/zzao;->zzh(Landroid/view/View;)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzao;->zza:Lcom/google/android/gms/games/internal/zzah;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/zzah;->zzV()V

    .line 2
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public final zza(Landroid/app/Activity;)V
    .registers 5

    const v0, 0x1020002

    .line 1
    :try_start_3
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_7} :catch_8

    goto :goto_9

    :catch_8
    const/4 v0, 0x0

    :goto_9
    const-string v1, "PopupManager"

    if-nez v0, :cond_2c

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2c

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Failed to bind to: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/games_v2/zzfu;->zze(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_2c
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "Binding to: "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/games_v2/zzfu;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/zzao;->zzf(Landroid/view/View;)V

    return-void
.end method

.method public final zzc()Landroid/os/Bundle;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzao;->zzb:Lcom/google/android/gms/internal/games_v2/zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/games_v2/zzae;->zza()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final zzd()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzao;->zzb:Lcom/google/android/gms/internal/games_v2/zzae;

    iget-object v0, v0, Lcom/google/android/gms/internal/games_v2/zzae;->zza:Landroid/os/IBinder;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/games_v2/zzae;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzao;->zzb:Lcom/google/android/gms/internal/games_v2/zzae;

    return-object v0
.end method

.method public final zzf(Landroid/view/View;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzao;->zza:Lcom/google/android/gms/games/internal/zzah;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/zzah;->zzV()V

    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzao;->zzc:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2f

    .line 2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/zzah;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v1, :cond_23

    .line 4
    instance-of v3, v2, Landroid/app/Activity;

    if-eqz v3, :cond_23

    .line 5
    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    :cond_23
    if-eqz v1, :cond_2f

    .line 6
    invoke-virtual {v1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 7
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 8
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2f
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/games/internal/zzao;->zzc:Ljava/lang/ref/WeakReference;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/zzah;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "PopupManager"

    if-nez p1, :cond_56

    .line 10
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_56

    .line 11
    check-cast v0, Landroid/app/Activity;

    const v2, 0x1020002

    .line 12
    :try_start_43
    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1
    :try_end_47
    .catch Ljava/lang/IllegalStateException; {:try_start_43 .. :try_end_47} :catch_47

    :catch_47
    if-nez p1, :cond_51

    .line 13
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    :cond_51
    const-string v0, "You have not specified a View to use as content view for popups. Falling back to the Activity content view. Note that this may not work as expected in multi-screen environments"

    .line 14
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/games_v2/zzfu;->zze(Ljava/lang/String;Ljava/lang/String;)V

    :cond_56
    if-eqz p1, :cond_6d

    .line 15
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/zzao;->zzh(Landroid/view/View;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 16
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/zzao;->zzc:Ljava/lang/ref/WeakReference;

    .line 17
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 19
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    :cond_6d
    const-string p1, "No content view usable to display popups. Popups will not be displayed in response to this client\'s calls. Use setViewForPopups() to set your content view."

    .line 20
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/games_v2/zzfu;->zzg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zzg()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzao;->zzb:Lcom/google/android/gms/internal/games_v2/zzae;

    iget-object v1, v0, Lcom/google/android/gms/internal/games_v2/zzae;->zza:Landroid/os/IBinder;

    if-eqz v1, :cond_13

    iget-object v2, p0, Lcom/google/android/gms/games/internal/zzao;->zza:Lcom/google/android/gms/games/internal/zzah;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/games_v2/zzae;->zza()Landroid/os/Bundle;

    move-result-object v0

    .line 2
    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/games/internal/zzah;->zzU(Landroid/os/IBinder;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    :goto_10
    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/zzao;->zzd:Z

    return-void

    :cond_13
    const/4 v0, 0x1

    goto :goto_10
.end method
