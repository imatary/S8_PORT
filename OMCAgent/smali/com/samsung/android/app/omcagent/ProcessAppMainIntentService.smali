.class public Lcom/samsung/android/app/omcagent/ProcessAppMainIntentService;
.super Landroid/app/IntentService;
.source "ProcessAppMainIntentService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Service[OMC_AppProcessIntentService]"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ProcessAppMainIntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {v4, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->isAppInstallStart(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v5, "Nothing to do before user action"

    invoke-virtual {v4, v5}, Lcom/samsung/android/common/log/Logger$Impl;->V(Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/android/app/omcagent/update/app/AppManager;->instance:Lcom/samsung/android/app/omcagent/update/app/AppManager;

    invoke-virtual {v4, v2}, Lcom/samsung/android/app/omcagent/update/app/AppManager;->stopTimer(Landroid/content/Context;)V

    sget-object v4, Lcom/samsung/android/app/omcagent/db/AppPref;->instance:Lcom/samsung/android/app/omcagent/db/AppPref;

    invoke-virtual {v4, v2, v6}, Lcom/samsung/android/app/omcagent/db/AppPref;->setAppRunning(Landroid/content/Context;Z)V

    :cond_0
    sget-object v4, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {v4, v2}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->getAppCount(Landroid/content/Context;)I

    move-result v4

    if-gtz v4, :cond_2

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v5, "Nothing to do before App list is set up"

    invoke-virtual {v4, v5}, Lcom/samsung/android/common/log/Logger$Impl;->V(Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/android/app/omcagent/update/app/AppManager;->instance:Lcom/samsung/android/app/omcagent/update/app/AppManager;

    invoke-virtual {v4, v2}, Lcom/samsung/android/app/omcagent/update/app/AppManager;->stopTimer(Landroid/content/Context;)V

    sget-object v4, Lcom/samsung/android/app/omcagent/db/AppPref;->instance:Lcom/samsung/android/app/omcagent/db/AppPref;

    invoke-virtual {v4, v2, v6}, Lcom/samsung/android/app/omcagent/db/AppPref;->setAppRunning(Landroid/content/Context;Z)V

    :cond_1
    return-void

    :cond_2
    sget-object v4, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {v4, v2}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->readInstallingAppInfoList_ToResume(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "App State: start to Download & Install App list: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    sget-object v4, Lcom/samsung/android/app/omcagent/update/app/AppManager;->instance:Lcom/samsung/android/app/omcagent/update/app/AppManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v3, v5}, Lcom/samsung/android/app/omcagent/update/app/AppManager;->execute(Landroid/content/Context;ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
