.class final Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareState$2;
.super Ljava/lang/Object;
.source "PreloadPrepareState.java"

# interfaces
.implements Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareState;
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
.method public run(Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareStateContext;)Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareState;
    .locals 9

    const/16 v8, 0x1a6

    sget-object v6, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v7, "Preload Prepare State: add preloaded resource to Database"

    invoke-virtual {v6, v7}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v6, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareStateContext;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/omcagent/db/OmcPref;->hasPackageResourceInfo(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v7, "Resource does not exist"

    invoke-virtual {v6, v7}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v6, Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareState$2;->ADD_PRELOAD_APPLICATIONS_TO_DB:Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareState;

    :goto_0
    return-object v6

    :cond_0
    const-string v6, "persist.sys.omc_respath"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->getPreloadOMCPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v7, "Skip resource check at preloaded resource"

    invoke-virtual {v6, v7}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v6, Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareState$2;->ADD_PRELOAD_APPLICATIONS_TO_DB:Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareState;

    goto :goto_0

    :cond_1
    sget-object v6, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareStateContext;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->readResourceInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    sget-object v6, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareStateContext;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->deleteAll(Landroid/content/Context;)V

    invoke-interface {v3}, Ljava/util/List;->clear()V

    sget-object v6, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v7, "Already added resource db"

    invoke-virtual {v6, v7}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    :cond_2
    sget-object v6, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v7, "Need to create DB from preloaded resources"

    invoke-virtual {v6, v7}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->getPreloadOMCPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "resources.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/common/FileUtils;->getTextInFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareStateContext;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setResourceResultCode(Landroid/content/Context;I)V

    sget-object v6, Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareState$2;->REPORT_RESOURCES:Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareState;

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/samsung/android/app/omcagent/update/resource/ParserResourcesXml;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/update/resource/ParserResourcesXml;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareStateContext;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Lcom/samsung/android/app/omcagent/update/resource/ParserResourcesXml;->readResourceInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_4

    sget-object v6, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v7, "Fail to create resourceInfo database"

    invoke-virtual {v6, v7}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    sget-object v6, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareStateContext;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setResourceResultCode(Landroid/content/Context;I)V

    sget-object v6, Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareState$2;->REPORT_RESOURCES:Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareState;

    goto/16 :goto_0

    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;

    sget-object v7, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareStateContext;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->create(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;)V

    goto :goto_1

    :cond_5
    sget-object v6, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v7, "Success to create resourceInfo database"

    invoke-virtual {v6, v7}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    sget-object v6, Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareState$2;->ADD_PRELOAD_APPLICATIONS_TO_DB:Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareState;

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "ADD_PRELOAD_RESOURCE_INFO_TO_DB"

    return-object v0
.end method
