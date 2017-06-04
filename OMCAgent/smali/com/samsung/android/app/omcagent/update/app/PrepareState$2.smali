.class final Lcom/samsung/android/app/omcagent/update/app/PrepareState$2;
.super Ljava/lang/Object;
.source "PrepareState.java"

# interfaces
.implements Lcom/samsung/android/app/omcagent/update/app/PrepareState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/update/app/PrepareState;
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
.method public run(Lcom/samsung/android/app/omcagent/update/app/PrepareStateContext;)Lcom/samsung/android/app/omcagent/update/app/PrepareState;
    .locals 10

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v5, "App Prepare State: downloading application\'s icons"

    invoke-virtual {v4, v5}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/PrepareStateContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->readDownloadableAppInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v5, "Downloadable AppInfo does not exist!!"

    invoke-virtual {v4, v5}, Lcom/samsung/android/common/log/Logger$Impl;->E(Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/android/app/omcagent/update/app/PrepareState$2;->FINISH_APPLICATION_PREPARE:Lcom/samsung/android/app/omcagent/update/app/PrepareState;

    :goto_0
    return-object v4

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getIconDrawable()[B

    move-result-object v5

    if-nez v5, :cond_3

    sget-object v5, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start download "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'s icons"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadIconRestClient;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/PrepareStateContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadIconRestClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadIconRestClient;->execute()Z

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadIconRestClient;->getResponse()Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->isSuccess()Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Receive result: success in DownloadIconRestClient "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadIconRestClient;->getResponse()Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->getIcon()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setIconDrawable([B)V

    sget-object v5, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/PrepareStateContext;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->updateState(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/app/AppInfo;)I

    sget-object v5, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/PrepareStateContext;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->updateIcon(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/app/AppInfo;)I

    :cond_3
    :goto_2
    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getContentSize()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_2

    sget-object v5, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start update "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/app/omcagent/network/cloud/omc/GalaxyRestClient;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/PrepareStateContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/PrepareStateContext;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/omcagent/network/cloud/omc/GalaxyUrlBuilder;->getOmcAppDownload(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/app/omcagent/network/cloud/omc/GalaxyRestClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/network/cloud/omc/GalaxyRestClient;->execute()Z

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/network/cloud/omc/GalaxyRestClient;->getResponse()Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->isSuccess()Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance v2, Lcom/samsung/android/app/omcagent/update/app/ParserGalaxyAppResponse;

    invoke-direct {v2}, Lcom/samsung/android/app/omcagent/update/app/ParserGalaxyAppResponse;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/PrepareStateContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/network/cloud/omc/GalaxyRestClient;->getResponse()Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->getBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/samsung/android/app/omcagent/update/app/ParserGalaxyAppResponse;->readAppDownload(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v6, "Receive result: success in GalaxyRestClient omcAppDownload"

    invoke-virtual {v5, v6}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    sget-object v5, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Receive result: fail in DownloadIconRestClient "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    sget-object v5, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v6, "Fail to parsing omcAppDownload response"

    invoke-virtual {v5, v6}, Lcom/samsung/android/common/log/Logger$Impl;->V(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    sget-object v5, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v6, "Receive result: fail in GalaxyRestClient omcAppDownload"

    invoke-virtual {v5, v6}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    sget-object v4, Lcom/samsung/android/app/omcagent/update/app/AppManager;->instance:Lcom/samsung/android/app/omcagent/update/app/AppManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/PrepareStateContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/omcagent/update/app/AppManager;->updateIcon(Landroid/content/Context;)V

    sget-object v4, Lcom/samsung/android/app/omcagent/update/app/PrepareState$2;->FINISH_APPLICATION_PREPARE:Lcom/samsung/android/app/omcagent/update/app/PrepareState;

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "DOWNLOAD_APPLICATION_ICONS"

    return-object v0
.end method
