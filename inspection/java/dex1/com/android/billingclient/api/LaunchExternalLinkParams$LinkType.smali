.class public interface abstract annotation Lcom/android/billingclient/api/LaunchExternalLinkParams$LinkType;
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
    name = "LinkType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final LINK_TO_APP_DOWNLOAD:I = 0x2

.field public static final LINK_TO_DIGITAL_CONTENT_OFFER:I = 0x1

.field public static final LINK_TYPE_UNSPECIFIED:I
