.class public final synthetic Lcom/google/firebase/analytics/connector/zzb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-api@@22.4.0"

# interfaces
.implements Lcom/google/firebase/events/EventHandler;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handle(Lcom/google/firebase/events/Event;)V
    .registers 2

    invoke-static {p1}, Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;->zza(Lcom/google/firebase/events/Event;)V

    return-void
.end method
