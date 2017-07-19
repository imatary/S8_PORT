.class final Lcom/samsung/android/app/omcagent/update/app/DownloadState$3;
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
    .locals 12

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getCancel()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "Detect user cancel event"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/app/omcagent/update/app/DownloadState$3;->CANCEL_APPLICATION_PACKAGE:Lcom/samsung/android/app/omcagent/update/app/DownloadState;

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->isPause()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "Detect pause event"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/app/omcagent/update/app/DownloadState$3;->PAUSE_APPLICATION_PACKAGE:Lcom/samsung/android/app/omcagent/update/app/DownloadState;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "App State: Checking downloaded application package exist"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/samsung/android/app/omcagent/update/app/AppManager;->instance:Lcom/samsung/android/app/omcagent/update/app/AppManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getAppInfo()Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/omcagent/update/app/AppManager;->getPackageFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getAppInfo()Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getContentSize()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "Already download Target application package"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getAppInfo()Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    move-result-object v2

    const/16 v3, 0xa0

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setState(I)V

    sget-object v2, Lcom/samsung/android/app/omcagent/update/app/DownloadState$3;->VERIFY_APPLICATION_PACKAGE:Lcom/samsung/android/app/omcagent/update/app/DownloadState;

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "App State: Connecting to download application package to server"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getAppInfo()Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    move-result-object v2

    const/16 v3, 0x96

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setState(I)V

    sget-object v2, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getAppInfo()Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->updateState(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/app/AppInfo;)I

    sget-object v2, Lcom/samsung/android/app/omcagent/update/app/AppManager;->instance:Lcom/samsung/android/app/omcagent/update/app/AppManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getAppInfo()Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x6e

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/app/omcagent/update/app/AppManager;->updateUI(Landroid/content/Context;Ljava/lang/String;I)V

    new-instance v1, Lcom/samsung/android/app/omcagent/update/app/DownloadState$3$1;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getAppInfo()Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getContentUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getPosition()I

    move-result v5

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getAppInfo()Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    sget-object v2, Lcom/samsung/android/app/omcagent/update/app/AppManager;->instance:Lcom/samsung/android/app/omcagent/update/app/AppManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getAppInfo()Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lcom/samsung/android/app/omcagent/update/app/AppManager;->getPackageFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getAppInfo()Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getContentSize()J

    move-result-wide v8

    move-object v2, p0

    move-object v10, p1

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/app/omcagent/update/app/DownloadState$3$1;-><init>(Lcom/samsung/android/app/omcagent/update/app/DownloadState$3;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLcom/samsung/android/app/omcagent/update/app/DownloadStateContext;)V

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->setRestClient(Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;)V

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;->execute()Z

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;->isCancel()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->isCancelAll()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "Receive result: network cancel in DownloadApkUIRestClient"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getAppInfo()Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    move-result-object v2

    const/16 v3, 0x190

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setState(I)V

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getAppInfo()Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    move-result-object v2

    const/16 v3, 0x194

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setResult(I)V

    :goto_1
    sget-object v2, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getAppInfo()Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->updateState(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/app/AppInfo;)I

    const/16 v2, 0x190

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getAppInfo()Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getState()I

    move-result v3

    if-ne v2, v3, :cond_3

    sget-object v2, Lcom/samsung/android/app/omcagent/update/app/AppNotification;->instance:Lcom/samsung/android/app/omcagent/update/app/AppNotification;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/omcagent/update/app/AppNotification;->installedAndFailed(Landroid/content/Context;)V

    :cond_3
    sget-object v2, Lcom/samsung/android/app/omcagent/update/app/DownloadState$3;->CANCEL_APPLICATION_PACKAGE:Lcom/samsung/android/app/omcagent/update/app/DownloadState;

    goto/16 :goto_0

    :cond_4
    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "Receive result: user cancel in DownloadApkUIRestClient"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getAppInfo()Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    move-result-object v2

    const/16 v3, 0x200

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setState(I)V

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getAppInfo()Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    move-result-object v2

    const/16 v3, 0x200

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setResult(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;->isbPause()Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "Receive result: pausing(disconnected wifi) in DownloadApkUIRestClient"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/app/omcagent/update/app/DownloadState$3;->PAUSE_APPLICATION_PACKAGE:Lcom/samsung/android/app/omcagent/update/app/DownloadState;

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;->getResponse()Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "Receive result: success in DownloadApkUIRestClient"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getAppInfo()Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    move-result-object v2

    const/16 v3, 0xa0

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setState(I)V

    sget-object v2, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getAppInfo()Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->updateState(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/app/AppInfo;)I

    sget-object v2, Lcom/samsung/android/app/omcagent/update/app/DownloadState$3;->VERIFY_APPLICATION_PACKAGE:Lcom/samsung/android/app/omcagent/update/app/DownloadState;

    goto/16 :goto_0

    :cond_7
    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "Receive result: fail in DownloadApkUIRestClient"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;->getResponse()Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->getResult()I

    move-result v11

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getDownloadRetryCnt()I

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_8

    const/16 v2, 0x64

    if-ne v11, v2, :cond_8

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->increaseDownloadRetryCnt()V

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retry Downloading: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getDownloadRetryCnt()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/app/omcagent/update/app/AppManager;->instance:Lcom/samsung/android/app/omcagent/update/app/AppManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getAppInfo()Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/omcagent/update/app/AppManager;->deletedDownloadedPackage(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getAppInfo()Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setState(I)V

    sget-object v2, Lcom/samsung/android/app/omcagent/update/app/DownloadState$3;->START_APPLICATION_SESSION:Lcom/samsung/android/app/omcagent/update/app/DownloadState;

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getAppInfo()Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    move-result-object v2

    const/16 v3, 0x190

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setState(I)V

    sparse-switch v11, :sswitch_data_0

    const/16 v11, 0x193

    :goto_2
    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getAppInfo()Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setResult(I)V

    sget-object v2, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getAppInfo()Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->updateState(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/app/AppInfo;)I

    sget-object v2, Lcom/samsung/android/app/omcagent/update/app/AppNotification;->instance:Lcom/samsung/android/app/omcagent/update/app/AppNotification;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/omcagent/update/app/AppNotification;->installedAndFailed(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getPosition()I

    move-result v2

    sget v3, Lcom/samsung/android/app/omcagent/update/app/AppManager;->BACKGROUND:I

    if-eq v2, v3, :cond_9

    sget-object v2, Lcom/samsung/android/app/omcagent/update/app/AppManager;->instance:Lcom/samsung/android/app/omcagent/update/app/AppManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getAppInfo()Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x190

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/app/omcagent/update/app/AppManager;->updateUI(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_9
    sget-object v2, Lcom/samsung/android/app/omcagent/update/app/AppManager;->instance:Lcom/samsung/android/app/omcagent/update/app/AppManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/omcagent/update/app/AppManager;->resetTimer(Landroid/content/Context;)V

    sget-object v2, Lcom/samsung/android/app/omcagent/update/app/DownloadState$3;->FINISH_APPLICATION_SESSION:Lcom/samsung/android/app/omcagent/update/app/DownloadState;

    goto/16 :goto_0

    :sswitch_0
    const/16 v11, 0x194

    goto :goto_2

    :sswitch_1
    const/16 v11, 0x1f5

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x6e -> :sswitch_0
        0x78 -> :sswitch_0
        0x19a -> :sswitch_1
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "DOWNLOAD_APPLICATION_PACKAGE"

    return-object v0
.end method
