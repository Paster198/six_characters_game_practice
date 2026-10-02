.class public interface abstract annotation Lcom/android/billingclient/api/BillingClient$OnPurchasesUpdatedSubResponseCode;
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
    name = "OnPurchasesUpdatedSubResponseCode"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final NO_APPLICABLE_SUB_RESPONSE_CODE:I = 0x0

.field public static final PAYMENT_DECLINED_DUE_TO_INSUFFICIENT_FUNDS:I = 0x1

.field public static final USER_INELIGIBLE:I = 0x2
