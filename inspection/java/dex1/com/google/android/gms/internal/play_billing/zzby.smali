.class final Lcom/google/android/gms/internal/play_billing/zzby;
.super Lcom/google/android/gms/internal/play_billing/zzbs;
.source "com.android.billingclient:billing@@9.1.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/play_billing/zzca;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/play_billing/zzca;I)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzca;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/zzbs;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzby;->zza:Lcom/google/android/gms/internal/play_billing/zzca;

    return-void
.end method


# virtual methods
.method final zza(I)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzby;->zza:Lcom/google/android/gms/internal/play_billing/zzca;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzca;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
