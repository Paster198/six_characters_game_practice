.class public interface abstract annotation Lcom/android/billingclient/api/LaunchExternalLinkParams$LaunchMode;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/LaunchExternalLinkParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "LaunchMode"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final CALLER_WILL_LAUNCH_LINK:I = 0x2

.field public static final LAUNCH_IN_EXTERNAL_BROWSER_OR_APP:I = 0x1

.field public static final LAUNCH_MODE_UNSPECIFIED:I
