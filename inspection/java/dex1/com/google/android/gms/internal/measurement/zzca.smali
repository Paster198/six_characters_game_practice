.class public abstract Lcom/google/android/gms/internal/measurement/zzca;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .registers 6

    .line 1
    sget p3, Lcom/google/android/gms/internal/measurement/zzcc;->zzb:I

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbx;->zza()Lcom/google/android/gms/internal/measurement/zzby;

    const-string p3, ""

    .line 3
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-ne v0, p3, :cond_10

    move-object p2, p4

    .line 4
    :cond_10
    invoke-direct {p0, p1, p2, p4, v0}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method
