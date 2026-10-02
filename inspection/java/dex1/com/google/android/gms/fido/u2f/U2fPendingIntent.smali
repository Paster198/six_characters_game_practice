.class public interface abstract Lcom/google/android/gms/fido/u2f/U2fPendingIntent;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract hasPendingIntent()Z
.end method

.method public abstract launchPendingIntent(Landroid/app/Activity;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation
.end method
