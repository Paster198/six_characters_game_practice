.class final Lcom/google/android/gms/measurement/internal/zzlr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzjx;

.field final synthetic zzb:J

.field final synthetic zzc:Z

.field final synthetic zzd:Lcom/google/android/gms/measurement/internal/zzlw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzlw;Lcom/google/android/gms/measurement/internal/zzjx;JZ)V
    .registers 6

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzlr;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzlr;->zzb:J

    iput-boolean p5, p0, Lcom/google/android/gms/measurement/internal/zzlr;->zzc:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlr;->zzd:Lcom/google/android/gms/measurement/internal/zzlw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlr;->zzd:Lcom/google/android/gms/measurement/internal/zzlw;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlr;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzlw;->zzaj(Lcom/google/android/gms/measurement/internal/zzjx;)V

    iget-boolean v5, p0, Lcom/google/android/gms/measurement/internal/zzlr;->zzc:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzlr;->zzb:J

    const/4 v4, 0x1

    .line 2
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzlw;->zzD(Lcom/google/android/gms/measurement/internal/zzlw;Lcom/google/android/gms/measurement/internal/zzjx;JZZ)V

    return-void
.end method
