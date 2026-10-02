.class public Lcom/google/firebase/analytics/GoogleAnalyticsServerPreviewActivity;
.super Landroid/app/Activity;
.source "com.google.android.gms:play-services-measurement-api@@22.4.0"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 2
    invoke-static {p0, p1, p1, p1, p1}, Lcom/google/android/gms/internal/measurement/zzff;->zzg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/internal/measurement/zzff;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/analytics/GoogleAnalyticsServerPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzff;->zzN(Landroid/content/Intent;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/firebase/analytics/GoogleAnalyticsServerPreviewActivity;->finish()V

    return-void
.end method
