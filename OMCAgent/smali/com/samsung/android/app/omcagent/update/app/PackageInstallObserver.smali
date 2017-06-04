.class public abstract Lcom/samsung/android/app/omcagent/update/app/PackageInstallObserver;
.super Ljava/lang/Object;
.source "PackageInstallObserver.java"

# interfaces
.implements Landroid/content/pm/PackageManager$SemPackageInstallListener;


# instance fields
.field private context:Landroid/content/Context;

.field private packageName:Ljava/lang/String;

.field private position:I

.field private startId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/update/app/PackageInstallObserver;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/omcagent/update/app/PackageInstallObserver;->packageName:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/app/omcagent/update/app/PackageInstallObserver;->position:I

    iput p4, p0, Lcom/samsung/android/app/omcagent/update/app/PackageInstallObserver;->startId:I

    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;I)V
    .locals 12

    const/16 v11, 0x2c3

    const/4 v10, 0x1

    const/16 v9, 0xc8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v7, "PackageName is null"

    invoke-virtual {v6, v7}, Lcom/samsung/android/common/log/Logger$Impl;->V(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/omcagent/update/app/PackageInstallObserver;->packageName:Ljava/lang/String;

    :cond_0
    sget-object v6, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Receive Response of package = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / returnCode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    sget-object v6, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    iget-object v7, p0, Lcom/samsung/android/app/omcagent/update/app/PackageInstallObserver;->context:Landroid/content/Context;

    invoke-virtual {v6, v7, p1}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->readAppInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v6, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can not found PackageName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/common/log/Logger$Impl;->V(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    if-ne p2, v10, :cond_6

    invoke-virtual {v0, v9}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setState(I)V

    invoke-virtual {v0, v9}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setResult(I)V

    sget-object v6, Lcom/samsung/android/app/omcagent/update/app/Widget;->instance:Lcom/samsung/android/app/omcagent/update/app/Widget;

    iget-object v7, p0, Lcom/samsung/android/app/omcagent/update/app/PackageInstallObserver;->context:Landroid/content/Context;

    invoke-virtual {v6, v7, p1}, Lcom/samsung/android/app/omcagent/update/app/Widget;->getWidgetItem(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;

    move-result-object v5

    if-eqz v5, :cond_2

    new-instance v3, Lcom/samsung/android/app/omcagent/update/app/PostPositioning;

    iget-object v6, p0, Lcom/samsung/android/app/omcagent/update/app/PackageInstallObserver;->context:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/samsung/android/app/omcagent/update/app/PostPositioning;-><init>(Landroid/content/Context;)V

    sget-object v6, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "widget item : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/samsung/android/app/omcagent/update/app/PostPositioning;->positioningWidget(Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;)Z

    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getMode()I

    move-result v6

    if-ne v6, v10, :cond_3

    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setMode(I)V

    :cond_3
    sget-object v6, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    iget-object v7, p0, Lcom/samsung/android/app/omcagent/update/app/PackageInstallObserver;->context:Landroid/content/Context;

    invoke-virtual {v6, v7, v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->updateState(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/app/AppInfo;)I

    iget v6, p0, Lcom/samsung/android/app/omcagent/update/app/PackageInstallObserver;->position:I

    sget v7, Lcom/samsung/android/app/omcagent/update/app/AppManager;->BACKGROUND:I

    if-eq v6, v7, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getState()I

    move-result v6

    if-ne v6, v9, :cond_8

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getResult()I

    move-result v6

    if-eq v6, v11, :cond_8

    sget-object v6, Lcom/samsung/android/app/omcagent/update/app/AppManager;->instance:Lcom/samsung/android/app/omcagent/update/app/AppManager;

    iget-object v7, p0, Lcom/samsung/android/app/omcagent/update/app/PackageInstallObserver;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/app/omcagent/update/app/AppManager;->reordering(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    :goto_2
    sget-object v6, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    iget-object v7, p0, Lcom/samsung/android/app/omcagent/update/app/PackageInstallObserver;->context:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->readstartedAppCount(Landroid/content/Context;)I

    move-result v4

    const/4 v2, 0x0

    if-nez v4, :cond_5

    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.sbc.intent.APP_INSTALL_FINISH"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x20

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/samsung/android/app/omcagent/update/app/PackageInstallObserver;->context:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 v2, 0x1

    sget-object v6, Lcom/samsung/android/app/omcagent/update/app/AppManager;->instance:Lcom/samsung/android/app/omcagent/update/app/AppManager;

    iget-object v7, p0, Lcom/samsung/android/app/omcagent/update/app/PackageInstallObserver;->context:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/omcagent/update/app/AppManager;->sendAppReport(Landroid/content/Context;)V

    :cond_5
    sget-object v6, Lcom/samsung/android/app/omcagent/update/app/AppManager;->instance:Lcom/samsung/android/app/omcagent/update/app/AppManager;

    iget-object v7, p0, Lcom/samsung/android/app/omcagent/update/app/PackageInstallObserver;->context:Landroid/content/Context;

    invoke-virtual {v6, v7, p1}, Lcom/samsung/android/app/omcagent/update/app/AppManager;->deletedDownloadedPackage(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v6, Lcom/samsung/android/app/omcagent/update/app/AppManager;->instance:Lcom/samsung/android/app/omcagent/update/app/AppManager;

    iget-object v7, p0, Lcom/samsung/android/app/omcagent/update/app/PackageInstallObserver;->context:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/omcagent/update/app/AppManager;->resetTimer(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/samsung/android/app/omcagent/update/app/PackageInstallObserver;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->setIsAppInstalling(Landroid/content/Context;)V

    iget v6, p0, Lcom/samsung/android/app/omcagent/update/app/PackageInstallObserver;->startId:I

    invoke-virtual {p0, v6, v2}, Lcom/samsung/android/app/omcagent/update/app/PackageInstallObserver;->response(IZ)V

    sget-object v6, Lcom/samsung/android/app/omcagent/update/app/AppNotification;->instance:Lcom/samsung/android/app/omcagent/update/app/AppNotification;

    iget-object v7, p0, Lcom/samsung/android/app/omcagent/update/app/PackageInstallObserver;->context:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/omcagent/update/app/AppNotification;->installedAndFailed(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_6
    iget-object v6, p0, Lcom/samsung/android/app/omcagent/update/app/PackageInstallObserver;->context:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/samsung/android/common/util/GeneralUtils;->isPackagedInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "SEM_INSTALL_FAILED_ALREADY_EXISTS"

    invoke-static {v6}, Lcom/samsung/android/app/omcagent/update/app/AppManager;->packageInstallResultCode(Ljava/lang/String;)I

    move-result v6

    if-ne p2, v6, :cond_7

    invoke-virtual {v0, v9}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setState(I)V

    invoke-virtual {v0, v11}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setResult(I)V

    goto/16 :goto_1

    :cond_7
    const/16 v6, 0x2bc

    invoke-virtual {v0, v6}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setState(I)V

    invoke-static {p2}, Lcom/samsung/android/app/omcagent/update/app/AppManager;->installErrorStatus(I)I

    move-result v6

    add-int/lit16 v6, v6, 0x2bc

    invoke-virtual {v0, v6}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setResult(I)V

    goto/16 :goto_1

    :cond_8
    sget-object v6, Lcom/samsung/android/app/omcagent/update/app/AppManager;->instance:Lcom/samsung/android/app/omcagent/update/app/AppManager;

    iget-object v7, p0, Lcom/samsung/android/app/omcagent/update/app/PackageInstallObserver;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getState()I

    move-result v8

    invoke-virtual {v6, v7, p1, v8}, Lcom/samsung/android/app/omcagent/update/app/AppManager;->updateUI(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_2
.end method

.method public abstract response(IZ)V
.end method
