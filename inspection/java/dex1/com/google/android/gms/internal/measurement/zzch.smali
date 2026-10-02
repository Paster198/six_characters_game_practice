.class final Lcom/google/android/gms/internal/measurement/zzch;
.super Ljava/lang/ThreadLocal;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic initialValue()Ljava/lang/Object;
    .registers 2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method
