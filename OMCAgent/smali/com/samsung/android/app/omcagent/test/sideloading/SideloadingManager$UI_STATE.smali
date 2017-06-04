.class public Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingManager$UI_STATE;
.super Ljava/lang/Object;
.source "SideloadingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UI_STATE"
.end annotation


# static fields
.field public static final CHECK_FILE:I = 0x14

.field public static final COPY_CONFIGURATION:I = 0x64

.field public static final FAILED:I = 0x190

.field public static final INSTALL_APP:I = 0x32

.field public static final LOAD_FILE:I = 0xa

.field public static final NONE:I = 0x0

.field public static final REBOOT:I = 0xc8

.field public static final UPDATE_CONFIGURATION:I = 0x96


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 2

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_STATE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "STATE_NONE"

    goto :goto_0

    :sswitch_1
    const-string v0, "STATE_LOADING_FILES"

    goto :goto_0

    :sswitch_2
    const-string v0, "STATE_CHECKING_FILES"

    goto :goto_0

    :sswitch_3
    const-string v0, "STATE_INSTALLING_APPS"

    goto :goto_0

    :sswitch_4
    const-string v0, "STATE_COPYING_CONFIGURATION"

    goto :goto_0

    :sswitch_5
    const-string v0, "STATE_UPDATING_CONFIGURATION"

    goto :goto_0

    :sswitch_6
    const-string v0, "STATE_REBOOTING"

    goto :goto_0

    :sswitch_7
    const-string v0, "STATE_FAILED"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x14 -> :sswitch_2
        0x32 -> :sswitch_3
        0x64 -> :sswitch_4
        0x96 -> :sswitch_5
        0xc8 -> :sswitch_6
        0x190 -> :sswitch_7
    .end sparse-switch
.end method
