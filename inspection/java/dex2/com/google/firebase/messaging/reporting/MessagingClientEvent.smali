.class public final Lcom/google/firebase/messaging/reporting/MessagingClientEvent;
.super Ljava/lang/Object;
.source "MessagingClientEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;,
        Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;,
        Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;,
        Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/messaging/reporting/MessagingClientEvent;


# instance fields
.field private final analytics_label_:Ljava/lang/String;

.field private final bulk_id_:J

.field private final campaign_id_:J

.field private final collapse_key_:Ljava/lang/String;

.field private final composer_label_:Ljava/lang/String;

.field private final event_:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;

.field private final instance_id_:Ljava/lang/String;

.field private final message_id_:Ljava/lang/String;

.field private final message_type_:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

.field private final package_name_:Ljava/lang/String;

.field private final priority_:I

.field private final project_number_:J

.field private final sdk_platform_:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

.field private final topic_:Ljava/lang/String;

.field private final ttl_:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 9
    new-instance v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;

    invoke-direct {v0}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;->build()Lcom/google/firebase/messaging/reporting/MessagingClientEvent;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->DEFAULT_INSTANCE:Lcom/google/firebase/messaging/reporting/MessagingClientEvent;

    return-void
.end method

.method constructor <init>(JLjava/lang/String;Ljava/lang/String;Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;JLcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;Ljava/lang/String;JLjava/lang/String;)V
    .registers 19

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-wide p1, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->project_number_:J

    .line 46
    iput-object p3, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->message_id_:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->instance_id_:Ljava/lang/String;

    .line 48
    iput-object p5, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->message_type_:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    .line 49
    iput-object p6, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->sdk_platform_:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

    .line 50
    iput-object p7, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->package_name_:Ljava/lang/String;

    .line 51
    iput-object p8, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->collapse_key_:Ljava/lang/String;

    .line 52
    iput p9, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->priority_:I

    .line 53
    iput p10, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->ttl_:I

    .line 54
    iput-object p11, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->topic_:Ljava/lang/String;

    .line 55
    iput-wide p12, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->bulk_id_:J

    .line 56
    iput-object p14, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->event_:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;

    .line 57
    iput-object p15, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->analytics_label_:Ljava/lang/String;

    move-wide/from16 p1, p16

    .line 58
    iput-wide p1, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->campaign_id_:J

    move-object/from16 p1, p18

    .line 59
    iput-object p1, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->composer_label_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/messaging/reporting/MessagingClientEvent;
    .registers 1

    .line 172
    sget-object v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->DEFAULT_INSTANCE:Lcom/google/firebase/messaging/reporting/MessagingClientEvent;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;
    .registers 1

    .line 63
    new-instance v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;

    invoke-direct {v0}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getAnalyticsLabel()Ljava/lang/String;
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->analytics_label_:Ljava/lang/String;

    return-object v0
.end method

.method public getBulkId()J
    .registers 3

    .line 140
    iget-wide v0, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->bulk_id_:J

    return-wide v0
.end method

.method public getCampaignId()J
    .registers 3

    .line 161
    iget-wide v0, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->campaign_id_:J

    return-wide v0
.end method

.method public getCollapseKey()Ljava/lang/String;
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->collapse_key_:Ljava/lang/String;

    return-object v0
.end method

.method public getComposerLabel()Ljava/lang/String;
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->composer_label_:Ljava/lang/String;

    return-object v0
.end method

.method public getEvent()Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;
    .registers 2

    .line 147
    iget-object v0, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->event_:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;

    return-object v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->instance_id_:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->message_id_:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageType()Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->message_type_:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->package_name_:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .registers 2

    .line 119
    iget v0, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->priority_:I

    return v0
.end method

.method public getProjectNumber()J
    .registers 3

    .line 70
    iget-wide v0, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->project_number_:J

    return-wide v0
.end method

.method public getSdkPlatform()Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->sdk_platform_:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->topic_:Ljava/lang/String;

    return-object v0
.end method

.method public getTtl()I
    .registers 2

    .line 126
    iget v0, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->ttl_:I

    return v0
.end method
