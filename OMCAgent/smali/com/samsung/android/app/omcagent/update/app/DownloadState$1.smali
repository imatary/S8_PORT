.class final Lcom/samsung/android/app/omcagent/update/app/DownloadState$1;
.super Ljava/lang/Object;
.source "DownloadState.java"

# interfaces
.implements Lcom/samsung/android/app/omcagent/update/app/DownloadState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/update/app/DownloadState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;)Lcom/samsung/android/app/omcagent/update/app/DownloadState;
    .locals 4

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "App State: check application session"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getAppInfo()Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "App Info is null"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/update/app/DownloadState$1;->FINISH_APPLICATION_SESSION:Lcom/samsung/android/app/omcagent/update/app/DownloadState;

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getCancel()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "Detect user cancel event"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/update/app/DownloadState$1;->CANCEL_APPLICATION_PACKAGE:Lcom/samsung/android/app/omcagent/update/app/DownloadState;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->isPause()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "Detect pause event"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/update/app/DownloadState$1;->PAUSE_APPLICATION_PACKAGE:Lcom/samsung/android/app/omcagent/update/app/DownloadState;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getState()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not implemented yet:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/update/app/DownloadState$1;->FINISH_APPLICATION_SESSION:Lcom/samsung/android/app/omcagent/update/app/DownloadState;

    goto :goto_0

    :sswitch_0
    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "Start Download & Install"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/update/app/DownloadState$1;->UPDATE_APPLICATION_URL:Lcom/samsung/android/app/omcagent/update/app/DownloadState;

    goto :goto_0

    :sswitch_1
    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "Resume Download & Install"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/update/app/DownloadState$1;->UPDATE_APPLICATION_URL:Lcom/samsung/android/app/omcagent/update/app/DownloadState;

    goto :goto_0

    :sswitch_2
    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "Retry Download & Install"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/update/app/DownloadState$1;->UPDATE_APPLICATION_URL:Lcom/samsung/android/app/omcagent/update/app/DownloadState;

    goto :goto_0

    :sswitch_3
    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "Resume Verify package"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/update/app/DownloadState$1;->VERIFY_APPLICATION_PACKAGE:Lcom/samsung/android/app/omcagent/update/app/DownloadState;

    goto :goto_0

    :sswitch_4
    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "Already Installed"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/update/app/DownloadState$1;->FINISH_APPLICATION_SESSION:Lcom/samsung/android/app/omcagent/update/app/DownloadState;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x32 -> :sswitch_0
        0x4b -> :sswitch_0
        0x64 -> :sswitch_1
        0x6e -> :sswitch_1
        0x82 -> :sswitch_1
        0x96 -> :sswitch_1
        0x9b -> :sswitch_1
        0xa0 -> :sswitch_3
        0xaa -> :sswitch_3
        0xbe -> :sswitch_3
        0xc8 -> :sswitch_4
        0x190 -> :sswitch_2
        0x200 -> :sswitch_2
        0x2bc -> :sswitch_2
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "START_APPLICATION_SESSION"

    return-object v0
.end method
