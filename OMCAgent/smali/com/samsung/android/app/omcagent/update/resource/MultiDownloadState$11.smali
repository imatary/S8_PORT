.class final Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState$11;
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
    .locals 11

    sget-object v7, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v8, "MultiDownload State: Copying resource to target directories"

    invoke-virtual {v7, v8}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    const-string v7, "persist.sys.omc_respath"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/app/omcagent/update/omc/OmcDef;->OMC_RESOURCE_NONPRELOAD_DIRECTORY_PATH:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    sget-object v6, Lcom/samsung/android/app/omcagent/update/omc/OmcDef;->OMC_OMR_DIRECTORY_PATH:Ljava/lang/String;

    :goto_0
    sget-object v7, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resource target path : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v7, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getPreloadState(Landroid/content/Context;)I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    sget-object v7, Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;

    invoke-virtual {v7}, Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;->clearTargetResources()Z

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->getResourceInfoList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_4

    :cond_1
    sget-object v7, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v8, "resource list is empty"

    invoke-virtual {v7, v8}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v7, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState$11;->REPORT_RESOURCES:Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState;

    :goto_1
    return-object v7

    :cond_2
    sget-object v7, Lcom/samsung/android/app/omcagent/update/omc/OmcDef;->OMC_RESOURCE_DIRECTORY_PATH_SALESCODE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    sget-object v6, Lcom/samsung/android/app/omcagent/update/omc/OmcDef;->OMC_RESOURCE_DIRECTORY_PATH_SALESCODE:Ljava/lang/String;

    goto :goto_0

    :cond_3
    sget-object v7, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v8

    const/16 v9, 0x1fe

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setResourceResultCode(Landroid/content/Context;I)V

    sget-object v7, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState$11;->REPORT_RESOURCES:Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState;

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;

    sget-object v8, Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->getResourceId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;->getResourceFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9, v5, v6}, Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;->checkResourceList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    sget-object v8, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v9, "Fail to make resource dir"

    invoke-virtual {v8, v9}, Lcom/samsung/android/common/log/Logger$Impl;->E(Ljava/lang/String;)V

    const/16 v8, 0x191

    invoke-virtual {v2, v8}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->setState(I)V

    const/16 v8, 0x1fe

    invoke-virtual {v2, v8}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->setResult(I)V

    sget-object v8, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9, v2}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->updateState(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;)I

    const/4 v4, 0x1

    goto :goto_2

    :cond_6
    if-eqz v4, :cond_7

    sget-object v7, Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;

    invoke-virtual {v7}, Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;->clearTargetResources()Z

    sget-object v7, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState$11;->REPORT_RESOURCES:Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState;

    goto :goto_1

    :cond_7
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;

    sget-object v8, Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->getResourceId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;->getResourceFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "resource Mode : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->getMode()I

    move-result v10

    invoke-static {v10}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo$INSTALL_MODE;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->getMode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    const/4 v8, 0x3

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->getMode()I

    move-result v9

    if-ne v8, v9, :cond_8

    sget-object v8, Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->getResourceId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v5, v9}, Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;->copySecZip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    sget-object v8, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setRebootType(Landroid/content/Context;I)V

    :goto_4
    if-eqz v1, :cond_a

    const/4 v8, 0x3

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->getMode()I

    move-result v9

    if-ne v8, v9, :cond_9

    const/16 v8, 0xb4

    invoke-virtual {v2, v8}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->setState(I)V

    const/16 v8, 0xb4

    invoke-virtual {v2, v8}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->setResult(I)V

    :goto_5
    sget-object v8, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9, v2}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->updateState(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;)I

    goto/16 :goto_3

    :cond_8
    sget-object v8, Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;

    invoke-virtual {v8, v5, v6}, Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;->copyResources(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_4

    :cond_9
    const/16 v8, 0xc8

    invoke-virtual {v2, v8}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->setState(I)V

    const/16 v8, 0xc8

    invoke-virtual {v2, v8}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->setResult(I)V

    sget-object v8, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->getResourceId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setResourceVersion(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    sget-object v8, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Fail to copy resource("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->getResourceId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/common/log/Logger$Impl;->E(Ljava/lang/String;)V

    const/16 v8, 0x191

    invoke-virtual {v2, v8}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->setState(I)V

    const/16 v8, 0x1fe

    invoke-virtual {v2, v8}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->setResult(I)V

    sget-object v8, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9, v2}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->updateState(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;)I

    const/4 v4, 0x1

    goto/16 :goto_3

    :cond_b
    if-eqz v4, :cond_c

    sget-object v7, Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;

    invoke-virtual {v7}, Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;->clearTargetResources()Z

    sget-object v7, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState$11;->REPORT_RESOURCES:Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState;

    goto/16 :goto_1

    :cond_c
    new-instance v0, Landroid/content/Intent;

    const-string v7, "com.samsung.intent.action.RSCUPDATE_START"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x20

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    sget-object v7, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState$11;->REPORT_RESOURCES:Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState;

    goto/16 :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "COPY_RESOURCE_PACKAGE"

    return-object v0
.end method
