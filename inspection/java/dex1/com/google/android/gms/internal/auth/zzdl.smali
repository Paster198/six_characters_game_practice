.class public final synthetic Lcom/google/android/gms/internal/auth/zzdl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-base@@18.0.10"

# interfaces
.implements Lcom/google/android/gms/internal/auth/zzdj;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/auth/zzdl;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/auth/zzdl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/auth/zzdl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/auth/zzdl;->zza:Lcom/google/android/gms/internal/auth/zzdl;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
