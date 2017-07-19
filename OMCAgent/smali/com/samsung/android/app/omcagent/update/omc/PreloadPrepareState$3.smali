.class final Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareState$3;
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
    .locals 12

    const/16 v11, 0x1a6

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "Preload Prepare State: add preloaded application to Database"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareStateContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/db/OmcPref;->hasPackageAppsInfo(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "application does not exist"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareState$3;->PREPARED_PACKAGE:Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareState;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareStateContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->read(Landroid/content/Context;)Z

    sget-object v0, Lcom/samsung/android/app/omcagent/db/AppPref;->instance:Lcom/samsung/android/app/omcagent/db/AppPref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareStateContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->getMcc()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->getMnc()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareStateContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getServiceTransactionId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareStateContext;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getReportUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/samsung/android/app/omcagent/common/Device;->readOmcVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/app/omcagent/db/AppPref;->setAppSessionInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v0, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareStateContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->readAppInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareStateContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->deleteAppInfoExceptInstalledMandatory(Landroid/content/Context;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "Already added application DB"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->getPreloadOMCPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "apps.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/app/omcagent/common/FileUtils;->getTextInFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareStateContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setAppResultCode(Landroid/content/Context;I)V

    sget-object v0, Lcom/samsung/android/app/omcagent/update/app/AppManager;->instance:Lcom/samsung/android/app/omcagent/update/app/AppManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareStateContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppManager;->report(Landroid/content/Context;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareState$3;->PREPARED_PACKAGE:Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareState;

    goto/16 :goto_0

    :cond_2
    new-instance v10, Lcom/samsung/android/app/omcagent/update/app/ParserAppsXml;

    invoke-direct {v10}, Lcom/samsung/android/app/omcagent/update/app/ParserAppsXml;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareStateContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v10, v0, v8}, Lcom/samsung/android/app/omcagent/update/app/ParserAppsXml;->read(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "Fail to appInfo database"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareStateContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setAppResultCode(Landroid/content/Context;I)V

    sget-object v0, Lcom/samsung/android/app/omcagent/update/app/AppManager;->instance:Lcom/samsung/android/app/omcagent/update/app/AppManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareStateContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppManager;->report(Landroid/content/Context;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareState$3;->PREPARED_PACKAGE:Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareState;

    goto/16 :goto_0

    :cond_3
    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "Success to create appInfo database"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareState$3;->CHECK_TYPE_SAMSUNGAPPS_APPLICATIONS:Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareState;

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "ADD_PRELOAD_APPLICATIONS_TO_DB"

    return-object v0
.end method
