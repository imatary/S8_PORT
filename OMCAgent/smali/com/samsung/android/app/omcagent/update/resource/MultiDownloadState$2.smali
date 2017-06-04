.class final Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState$2;
.super Ljava/lang/Object;
.source "MultiDownloadState.java"

# interfaces
.implements Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState;
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
.method public run(Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;)Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState;
    .locals 9

    const/16 v8, 0x190

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->getCancel()Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v6, "Detect user cancel event"

    invoke-virtual {v5, v6}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v5, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState$2;->CANCEL_RESOURCES_PACKAGE:Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState;

    :goto_0
    return-object v5

    :cond_0
    sget-object v5, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v6, "MultiDownloadState Resource State: Connecting to resource information server"

    invoke-virtual {v5, v6}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v5, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->readDownloadableResourceInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    sget-object v5, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v6, "Resource Info List is null"

    invoke-virtual {v5, v6}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    sget-object v5, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState$2;->REPORT_RESOURCES:Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState;

    goto :goto_0

    :cond_2
    sget-object v5, Lcom/samsung/android/app/omcagent/update/resource/ResourceNotification;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceNotification;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->getService()Landroid/app/Service;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/app/omcagent/update/resource/ResourceNotification;->connecting(Landroid/content/Context;Landroid/app/Service;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;

    const/16 v6, 0x32

    invoke-virtual {v0, v6}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->setState(I)V

    sget-object v6, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->updateState(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;)I

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lcom/samsung/android/app/omcagent/network/cloud/omc/GalaxyUrlBuilder;->getResources(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/omcagent/network/cloud/omc/GalaxyUrlBuilder;->getOmcResourceDownload(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v6, "Fail to make URL to connect omcResDownload.as"

    invoke-virtual {v5, v6}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;

    invoke-virtual {v0, v8}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->setState(I)V

    sget-object v6, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->updateState(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;)I

    goto :goto_2

    :cond_4
    sget-object v5, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState$2;->DOWNLOAD_RESOURCES_FAIL:Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState;

    goto/16 :goto_0

    :cond_5
    new-instance v3, Lcom/samsung/android/app/omcagent/network/cloud/omc/GalaxyRestClient;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5, v4}, Lcom/samsung/android/app/omcagent/network/cloud/omc/GalaxyRestClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/network/cloud/omc/GalaxyRestClient;->execute()Z

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/network/cloud/omc/GalaxyRestClient;->getResponse()Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->isSuccess()Z

    move-result v5

    if-eqz v5, :cond_7

    new-instance v2, Lcom/samsung/android/app/omcagent/update/resource/ParserGalaxyResourceResponse;

    invoke-direct {v2}, Lcom/samsung/android/app/omcagent/update/resource/ParserGalaxyResourceResponse;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/network/cloud/omc/GalaxyRestClient;->getResponse()Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->getBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/samsung/android/app/omcagent/update/resource/ParserGalaxyResourceResponse;->readResourceDownload(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v6, "Receive result: success in GalaxyRestClient omcResDownload"

    invoke-virtual {v5, v6}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v5, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState$2;->DOWNLOAD_RESOURCES:Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState;

    goto/16 :goto_0

    :cond_6
    sget-object v5, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v6, "Fail to parsing omcResDownload response"

    invoke-virtual {v5, v6}, Lcom/samsung/android/common/log/Logger$Impl;->V(Ljava/lang/String;)V

    :cond_7
    sget-object v5, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v6, "Receive result: fail in GalaxyRestClient omcResDownload"

    invoke-virtual {v5, v6}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;

    invoke-virtual {v0, v8}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->setState(I)V

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/network/cloud/omc/GalaxyRestClient;->getResponse()Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->getResultCode()I

    move-result v6

    add-int/lit16 v6, v6, 0x4e20

    invoke-virtual {v0, v6}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->setResult(I)V

    sget-object v6, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->updateState(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;)I

    goto :goto_3

    :cond_8
    sget-object v5, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState$2;->DOWNLOAD_RESOURCES_FAIL:Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState;

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE_RESOURCES_URL"

    return-object v0
.end method
