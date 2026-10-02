.class public interface abstract annotation Lcom/android/billingclient/api/BillingClient$FeatureType;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/BillingClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "FeatureType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final ALTERNATIVE_BILLING_ONLY:Ljava/lang/String; = "jjj"

.field public static final BILLING_CONFIG:Ljava/lang/String; = "ggg"

.field public static final EXTERNAL_OFFER:Ljava/lang/String; = "kkk"

.field public static final INCLUDE_SUSPENDED_SUBSCRIPTIONS:Ljava/lang/String; = "nnn"

.field public static final IN_APP_MESSAGING:Ljava/lang/String; = "bbb"

.field public static final PRICE_CHANGE_CONFIRMATION:Ljava/lang/String; = "priceChangeConfirmation"

.field public static final PRODUCT_DETAILS:Ljava/lang/String; = "fff"

.field public static final SUBSCRIPTIONS:Ljava/lang/String; = "subscriptions"

.field public static final SUBSCRIPTIONS_UPDATE:Ljava/lang/String; = "subscriptionsUpdate"
