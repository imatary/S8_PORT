.class final Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState$4;
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

    const/16 v8, 0xb4

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->getCancel()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v5, "Detect user cancel event"

    invoke-virtual {v4, v5}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState$4;->CANCEL_RESOURCES_PACKAGE:Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState;

    :goto_0
    return-object v4

    :cond_0
    sget-object v4, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->readDownloadedResourceInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v5, "Resource Info List is not avaliable"

    invoke-virtual {v4, v5}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState$4;->DOWNLOAD_RESOURCES_FAIL:Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState;

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v5, "Resource State: Verifying resources pakcage"

    invoke-virtual {v4, v5}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;

    sget-object v5, Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->getResourceId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;->getResourceFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->getSignature()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v3, v7}, Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;->isValidateSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fail to match resource("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->getResourceId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")\'s signature"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/common/log/Logger$Impl;->E(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/16 v5, 0x190

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->setState(I)V

    const/16 v5, 0x1fc

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->setResult(I)V

    sget-object v5, Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->getResourceId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;->clearSourceResource(Landroid/content/Context;Ljava/lang/String;)Z

    :goto_2
    sget-object v5, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->updateState(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;)I

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v8}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->setState(I)V

    invoke-virtual {v0, v8}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->setResult(I)V

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_5

    sget-object v4, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState$4;->DOWNLOAD_RESOURCES_FAIL:Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState;

    goto/16 :goto_0

    :cond_5
    sget-object v4, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState$4;->DOWNLOAD_RESOURCES_SUCCESS:Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState;

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "VERIFY_RESOURCES_PACKAGE"

    return-object v0
.end method
