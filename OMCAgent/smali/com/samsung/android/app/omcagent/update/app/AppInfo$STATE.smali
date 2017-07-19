.class public Lcom/samsung/android/app/omcagent/update/app/AppInfo$STATE;
.super Ljava/lang/Object;
.source "AppInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/update/app/AppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "STATE"
.end annotation


# static fields
.field public static final CANCELED:I = 0x200

.field public static final CONNECTING:I = 0x6e

.field public static final DOWNLOADED:I = 0xa0

.field public static final DOWNLOADING:I = 0x96

.field public static final DOWNLOAD_FAIL:I = 0x190

.field public static final INITIALIZE:I = 0xa

.field public static final INSTALLED:I = 0xc8

.field public static final INSTALLING:I = 0xbe

.field public static final INSTALL_FAIL:I = 0x2bc

.field public static final NONE:I = 0x0

.field public static final NOT_FOUND:I = 0x194

.field public static final PAUSE_CONNECTING:I = 0x82

.field public static final PAUSE_DOWNLOADING:I = 0x9b

.field public static final READY:I = 0x32

.field public static final REPORTED:I = 0xc9

.field public static final STARTING:I = 0x64

.field public static final VERIFYING:I = 0xaa

.field public static final WAITING:I = 0x4b


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "NONE"

    goto :goto_0

    :sswitch_1
    const-string v0, "INITIALIZE"

    goto :goto_0

    :sswitch_2
    const-string v0, "READY"

    goto :goto_0

    :sswitch_3
    const-string v0, "WAITING"

    goto :goto_0

    :sswitch_4
    const-string v0, "STARTING"

    goto :goto_0

    :sswitch_5
    const-string v0, "CONNECTING"

    goto :goto_0

    :sswitch_6
    const-string v0, "PAUSE_CONNECTING"

    goto :goto_0

    :sswitch_7
    const-string v0, "DOWNLOADING"

    goto :goto_0

    :sswitch_8
    const-string v0, "PAUSE_DOWNLOADING"

    goto :goto_0

    :sswitch_9
    const-string v0, "DOWNLOADED"

    goto :goto_0

    :sswitch_a
    const-string v0, "DOWNLOAD_FAIL"

    goto :goto_0

    :sswitch_b
    const-string v0, "VERIFYING"

    goto :goto_0

    :sswitch_c
    const-string v0, "INSTALLING"

    goto :goto_0

    :sswitch_d
    const-string v0, "INSTALLED"

    goto :goto_0

    :sswitch_e
    const-string v0, "INSTALL_FAIL"

    goto :goto_0

    :sswitch_f
    const-string v0, "CANCELED"

    goto :goto_0

    :sswitch_10
    const-string v0, "NOT_FOUND"

    goto :goto_0

    :sswitch_11
    const-string v0, "REPORTED"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x32 -> :sswitch_2
        0x4b -> :sswitch_3
        0x64 -> :sswitch_4
        0x6e -> :sswitch_5
        0x82 -> :sswitch_6
        0x96 -> :sswitch_7
        0x9b -> :sswitch_8
        0xa0 -> :sswitch_9
        0xaa -> :sswitch_b
        0xbe -> :sswitch_c
        0xc8 -> :sswitch_d
        0xc9 -> :sswitch_11
        0x190 -> :sswitch_a
        0x194 -> :sswitch_10
        0x200 -> :sswitch_f
        0x2bc -> :sswitch_e
    .end sparse-switch
.end method
