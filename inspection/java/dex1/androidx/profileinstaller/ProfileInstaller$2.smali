.class Landroidx/profileinstaller/ProfileInstaller$2;
.super Ljava/lang/Object;
.source "ProfileInstaller.java"

# interfaces
.implements Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/profileinstaller/ProfileInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "ProfileInstaller"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDiagnosticReceived(ILjava/lang/Object;)V
    .registers 3

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1e

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1b

    const/4 p2, 0x3

    if-eq p1, p2, :cond_18

    const/4 p2, 0x4

    if-eq p1, p2, :cond_15

    const/4 p2, 0x5

    if-eq p1, p2, :cond_12

    .line 127
    const-string p1, ""

    goto :goto_20

    .line 141
    :cond_12
    const-string p1, "DIAGNOSTIC_PROFILE_IS_COMPRESSED"

    goto :goto_20

    .line 139
    :cond_15
    const-string p1, "DIAGNOSTIC_REF_PROFILE_DOES_NOT_EXIST"

    goto :goto_20

    .line 136
    :cond_18
    const-string p1, "DIAGNOSTIC_REF_PROFILE_EXISTS"

    goto :goto_20

    .line 133
    :cond_1b
    const-string p1, "DIAGNOSTIC_CURRENT_PROFILE_DOES_NOT_EXIST"

    goto :goto_20

    .line 130
    :cond_1e
    const-string p1, "DIAGNOSTIC_CURRENT_PROFILE_EXISTS"

    .line 144
    :goto_20
    const-string p2, "ProfileInstaller"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResultReceived(ILjava/lang/Object;)V
    .registers 6

    packed-switch p1, :pswitch_data_3a

    .line 150
    :pswitch_3
    const-string v0, ""

    goto :goto_23

    .line 169
    :pswitch_6
    const-string v0, "RESULT_DELETE_SKIP_FILE_SUCCESS"

    goto :goto_23

    .line 168
    :pswitch_9
    const-string v0, "RESULT_INSTALL_SKIP_FILE_SUCCESS"

    goto :goto_23

    .line 166
    :pswitch_c
    const-string v0, "RESULT_PARSE_EXCEPTION"

    goto :goto_23

    .line 164
    :pswitch_f
    const-string v0, "RESULT_IO_EXCEPTION"

    goto :goto_23

    .line 162
    :pswitch_12
    const-string v0, "RESULT_BASELINE_PROFILE_NOT_FOUND"

    goto :goto_23

    .line 160
    :pswitch_15
    const-string v0, "RESULT_DESIRED_FORMAT_UNSUPPORTED"

    goto :goto_23

    .line 158
    :pswitch_18
    const-string v0, "RESULT_NOT_WRITABLE"

    goto :goto_23

    .line 156
    :pswitch_1b
    const-string v0, "RESULT_UNSUPPORTED_ART_VERSION"

    goto :goto_23

    .line 154
    :pswitch_1e
    const-string v0, "RESULT_ALREADY_INSTALLED"

    goto :goto_23

    .line 152
    :pswitch_21
    const-string v0, "RESULT_INSTALL_SUCCESS"

    :goto_23
    const/4 v1, 0x6

    .line 173
    const-string v2, "ProfileInstaller"

    if-eq p1, v1, :cond_33

    const/4 v1, 0x7

    if-eq p1, v1, :cond_33

    const/16 v1, 0x8

    if-eq p1, v1, :cond_33

    .line 180
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 177
    :cond_33
    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v2, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_3
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method
