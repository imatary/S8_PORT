.class final Lcom/samsung/android/app/omcagent/update/app/DownloadState$5;
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

    const/16 v3, 0xbe

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getCancel()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "Detect user cancel event"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/update/app/DownloadState$5;->CANCEL_APPLICATION_PACKAGE:Lcom/samsung/android/app/omcagent/update/app/DownloadState;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->isPause()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "Detect pause event"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/update/app/DownloadState$5;->PAUSE_APPLICATION_PACKAGE:Lcom/samsung/android/app/omcagent/update/app/DownloadState;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "App State: Installing application package"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getAppInfo()Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setState(I)V

    sget-object v0, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getAppInfo()Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->updateState(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/app/AppInfo;)I

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getPosition()I

    move-result v0

    sget v1, Lcom/samsung/android/app/omcagent/update/app/AppManager;->BACKGROUND:I

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/samsung/android/app/omcagent/update/app/AppManager;->instance:Lcom/samsung/android/app/omcagent/update/app/AppManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getAppInfo()Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/omcagent/update/app/AppManager;->updateUI(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_2
    sget-object v0, Lcom/samsung/android/app/omcagent/update/app/AppManager;->instance:Lcom/samsung/android/app/omcagent/update/app/AppManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getPosition()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getAppInfo()Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/omcagent/update/app/AppManager;->install(Landroid/content/Context;ILjava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/update/app/DownloadState$5;->FINISH_APPLICATION_SESSION:Lcom/samsung/android/app/omcagent/update/app/DownloadState;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "INSTALL_APPLICATION_PACKAGE"

    return-object v0
.end method
