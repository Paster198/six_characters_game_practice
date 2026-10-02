.class final Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_SessionGeneratorFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "FirebaseSessionsComponent_MainModule_Companion_SessionGeneratorFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_SessionGeneratorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_SessionGeneratorFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    new-instance v0, Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_SessionGeneratorFactory;

    invoke-direct {v0}, Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_SessionGeneratorFactory;-><init>()V

    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_SessionGeneratorFactory$InstanceHolder;->INSTANCE:Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_SessionGeneratorFactory;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_SessionGeneratorFactory;
    .registers 1

    .line 31
    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_SessionGeneratorFactory$InstanceHolder;->INSTANCE:Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_SessionGeneratorFactory;

    return-object v0
.end method
