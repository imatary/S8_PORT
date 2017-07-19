.class final Lcom/samsung/android/app/omcagent/update/app/DownloadState$2;
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
    .locals 8

    const/16 v7, 0x190

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getCancel()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v4, "Detect user cancel event"

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/app/omcagent/update/app/DownloadState$2;->CANCEL_APPLICATION_PACKAGE:Lcom/samsung/android/app/omcagent/update/app/DownloadState;

    :goto_0
    return-object v3

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->isPause()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v4, "Detect pause event"

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/app/omcagent/update/app/DownloadState$2;->PAUSE_APPLICATION_PACKAGE:Lcom/samsung/android/app/omcagent/update/app/DownloadState;

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v4, "App State: Connecting to application information server"

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getAppInfo()Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    move-result-object v3

    const/16 v4, 0x6e

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setState(I)V

    sget-object v3, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getAppInfo()Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->updateState(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/app/AppInfo;)I

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getPosition()I

    move-result v3

    sget v4, Lcom/samsung/android/app/omcagent/update/app/AppManager;->BACKGROUND:I

    if-eq v3, v4, :cond_2

    sget-object v3, Lcom/samsung/android/app/omcagent/update/app/AppManager;->instance:Lcom/samsung/android/app/omcagent/update/app/AppManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getAppInfo()Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getAppInfo()Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getState()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/app/omcagent/update/app/AppManager;->updateUI(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_2
    sget-object v3, Lcom/samsung/android/app/omcagent/update/app/AppNotification;->instance:Lcom/samsung/android/app/omcagent/update/app/AppNotification;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getService()Landroid/app/Service;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getAppInfo()Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/app/omcagent/update/app/AppNotification;->connecting(Landroid/content/Context;Landroid/app/Service;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/app/omcagent/network/cloud/omc/GalaxyRestClient;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getAppInfo()Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/omcagent/network/cloud/omc/GalaxyUrlBuilder;->getOmcAppDownload(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/omcagent/network/cloud/omc/GalaxyRestClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/network/cloud/omc/GalaxyRestClient;->execute()Z

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/network/cloud/omc/GalaxyRestClient;->getResponse()Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v1, Lcom/samsung/android/app/omcagent/update/app/ParserGalaxyAppResponse;

    invoke-direct {v1}, Lcom/samsung/android/app/omcagent/update/app/ParserGalaxyAppResponse;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/network/cloud/omc/GalaxyRestClient;->getResponse()Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/app/omcagent/update/app/ParserGalaxyAppResponse;->readAppDownload(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v4, "Receive result: success in GalaxyRestClient omcAppDownload"

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getAppInfo()Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->readAppInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->setAppInfo(Lcom/samsung/android/app/omcagent/update/app/AppInfo;)V

    sget-object v3, Lcom/samsung/android/app/omcagent/update/app/DownloadState$2;->DOWNLOAD_APPLICATION_PACKAGE:Lcom/samsung/android/app/omcagent/update/app/DownloadState;

    goto/16 :goto_0

    :cond_3
    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v4, "Fail to parsing omcAppDownload response"

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->V(Ljava/lang/String;)V

    :cond_4
    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v4, "Receive result: fail in GalaxyRestClient omcAppDownload"

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getAppInfo()Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setState(I)V

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getAppInfo()Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/network/cloud/omc/GalaxyRestClient;->getResponse()Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->getResultCode()I

    move-result v4

    add-int/lit16 v4, v4, 0x4e20

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setResult(I)V

    sget-object v3, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getAppInfo()Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->updateState(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/app/AppInfo;)I

    sget-object v3, Lcom/samsung/android/app/omcagent/update/app/AppNotification;->instance:Lcom/samsung/android/app/omcagent/update/app/AppNotification;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/omcagent/update/app/AppNotification;->installedAndFailed(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getPosition()I

    move-result v3

    sget v4, Lcom/samsung/android/app/omcagent/update/app/AppManager;->BACKGROUND:I

    if-eq v3, v4, :cond_5

    sget-object v3, Lcom/samsung/android/app/omcagent/update/app/AppManager;->instance:Lcom/samsung/android/app/omcagent/update/app/AppManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getAppInfo()Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v7}, Lcom/samsung/android/app/omcagent/update/app/AppManager;->updateUI(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_5
    sget-object v3, Lcom/samsung/android/app/omcagent/update/app/DownloadState$2;->FINISH_APPLICATION_SESSION:Lcom/samsung/android/app/omcagent/update/app/DownloadState;

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE_APPLICATION_URL"

    return-object v0
.end method
