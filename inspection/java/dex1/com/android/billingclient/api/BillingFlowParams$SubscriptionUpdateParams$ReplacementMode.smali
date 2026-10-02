.class public interface abstract annotation Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$ReplacementMode;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ReplacementMode"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final CHARGE_FULL_PRICE:I = 0x5

.field public static final CHARGE_PRORATED_PRICE:I = 0x2

.field public static final DEFERRED:I = 0x6

.field public static final UNKNOWN_REPLACEMENT_MODE:I = 0x0

.field public static final WITHOUT_PRORATION:I = 0x3

.field public static final WITH_TIME_PRORATION:I = 0x1
