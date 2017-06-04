.class public Lcom/samsung/android/app/omcagent/update/ReportAppResultIntentService;
.super Landroid/app/IntentService;
.source "ReportAppResultIntentService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Service[OMC_ReportAppResultIntentService]"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    sget-object v6, Lcom/samsung/android/app/omcagent/network/AppResultInfo;->instance:Lcom/samsung/android/app/omcagent/network/AppResultInfo;

    invoke-virtual {v6, p0}, Lcom/samsung/android/app/omcagent/network/AppResultInfo;->readResultInfo(Landroid/content/Context;)V

    sget-object v6, Lcom/samsung/android/app/omcagent/network/AppResultInfo;->instance:Lcom/samsung/android/app/omcagent/network/AppResultInfo;

    invoke-virtual {v6}, Lcom/samsung/android/app/omcagent/network/AppResultInfo;->isVaild()Z

    move-result v6

    if-nez v6, :cond_1

    sget-object v6, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v7, "Invalid result info to report!!"

    invoke-virtual {v6, v7}, Lcom/samsung/android/common/log/Logger$Impl;->V(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v6, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->instance:Lcom/samsung/android/app/omcagent/network/DeviceInfo;

    invoke-virtual {v6, p0}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->readDeviceInfo(Landroid/content/Context;)V

    sget-object v6, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;

    invoke-virtual {v6, p0}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->read(Landroid/content/Context;)Z

    new-instance v2, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/ReportAppRestClient;

    sget-object v6, Lcom/samsung/android/app/omcagent/network/AppResultInfo;->instance:Lcom/samsung/android/app/omcagent/network/AppResultInfo;

    sget-object v7, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->instance:Lcom/samsung/android/app/omcagent/network/DeviceInfo;

    sget-object v8, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;

    invoke-direct {v2, p0, v6, v7, v8}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/ReportAppRestClient;-><init>(Landroid/content/Context;Lcom/samsung/android/app/omcagent/network/AppResultInfo;Lcom/samsung/android/app/omcagent/network/DeviceInfo;Lcom/samsung/android/app/omcagent/omc/OmcInfo;)V

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/ReportRestClient;->execute()Z

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/ReportRestClient;->getResponse()Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->isSuccess()Z

    move-result v6

    if-eqz v6, :cond_5

    sget-object v6, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v7, "Receive result: success in ResultRestClient"

    invoke-virtual {v6, v7}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v6, Lcom/samsung/android/app/omcagent/update/app/AppManager;->instance:Lcom/samsung/android/app/omcagent/update/app/AppManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/update/ReportAppResultIntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/omcagent/update/app/AppManager;->stopTimer(Landroid/content/Context;)V

    sget-object v6, Lcom/samsung/android/app/omcagent/db/AppPref;->instance:Lcom/samsung/android/app/omcagent/db/AppPref;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/update/ReportAppResultIntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7, v9}, Lcom/samsung/android/app/omcagent/db/AppPref;->setAppRunning(Landroid/content/Context;Z)V

    sget-object v6, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {v6, p0}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->readNeedToReportAppInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    sget-object v6, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "App State Downloaded App : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    sget-object v6, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "App State Downloaded App list : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v6, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v7, "App State: start to update App state"

    invoke-virtual {v6, v7}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    invoke-virtual {v6}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getState()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_3

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "state"

    const/16 v7, 0xc9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "package = ?"

    new-array v4, v10, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    invoke-virtual {v6}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v9

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/update/ReportAppResultIntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/app/omcagent/db/OmcContentProvider;->APP_ITEMS_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v5, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    invoke-virtual {v6}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getState()I

    move-result v6

    const/16 v7, 0x190

    if-eq v6, v7, :cond_4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    invoke-virtual {v6}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getState()I

    move-result v6

    const/16 v7, 0x2bc

    if-ne v6, v7, :cond_2

    :cond_4
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "state"

    const/16 v7, 0x32

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "package = ?"

    new-array v4, v10, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    invoke-virtual {v6}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v9

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/update/ReportAppResultIntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/app/omcagent/db/OmcContentProvider;->APP_ITEMS_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v5, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    sget-object v6, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v7, "Receive result: fail in ResultRestClient"

    invoke-virtual {v6, v7}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/ReportRestClient;->getResponse()Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->getErrorCode()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    sget-object v6, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v7, "Send Error Report"

    invoke-virtual {v6, v7}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/ReportRestClient;->getResponse()Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->getErrorCode()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/common/diagmon/DiagMon;->sendReport(Ljava/lang/String;)V

    :cond_6
    sget-object v6, Lcom/samsung/android/app/omcagent/update/app/AppManager;->instance:Lcom/samsung/android/app/omcagent/update/app/AppManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/update/ReportAppResultIntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/omcagent/update/app/AppManager;->resetTimer(Landroid/content/Context;)V

    goto/16 :goto_0
.end method
