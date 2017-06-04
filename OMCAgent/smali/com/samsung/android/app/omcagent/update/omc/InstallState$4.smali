.class final Lcom/samsung/android/app/omcagent/update/omc/InstallState$4;
.super Ljava/lang/Object;
.source "InstallState.java"

# interfaces
.implements Lcom/samsung/android/app/omcagent/update/omc/InstallState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/update/omc/InstallState;
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
.method public run(Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;)Lcom/samsung/android/app/omcagent/update/omc/InstallState;
    .locals 5

    const/16 v4, 0xc8

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "Install State: Start to packages & resources installation"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->isOOBState(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "persist.sys.setupwizard"

    invoke-static {v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FINISH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/app/omcagent/update/app/Widget;->instance:Lcom/samsung/android/app/omcagent/update/app/Widget;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/update/app/Widget;->generateWidgetList(Landroid/content/Context;)V

    :cond_0
    sget-object v1, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getPreloadState(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setPreloadState(Landroid/content/Context;I)V

    sget-object v1, Lcom/samsung/android/app/omcagent/db/TaskPref;->instance:Lcom/samsung/android/app/omcagent/db/TaskPref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/app/omcagent/db/TaskPref;->setOMCState(Landroid/content/Context;I)V

    new-instance v1, Lcom/samsung/android/app/omcagent/ProcessOMC;

    invoke-direct {v1}, Lcom/samsung/android/app/omcagent/ProcessOMC;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.intent.action.OMCPRELOAD_FINISH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/omcagent/ProcessOMC;->execute(Landroid/content/Context;Landroid/content/Intent;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/update/omc/InstallState$4;->FINISH_PACKAGE_INSTALL:Lcom/samsung/android/app/omcagent/update/omc/InstallState;

    :goto_0
    return-object v1

    :cond_1
    sget-object v1, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->instance:Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->install(Landroid/content/Context;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.OMCUPDATE_MODEMSTART"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/db/TaskPref;->instance:Lcom/samsung/android/app/omcagent/db/TaskPref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/app/omcagent/db/TaskPref;->setOMCState(Landroid/content/Context;I)V

    new-instance v1, Lcom/samsung/android/app/omcagent/ProcessOMC;

    invoke-direct {v1}, Lcom/samsung/android/app/omcagent/ProcessOMC;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.android.omcagent.intent.BEFORE_RECOVERY"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/omcagent/ProcessOMC;->execute(Landroid/content/Context;Landroid/content/Intent;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/update/omc/InstallState$4;->FINISH_PACKAGE_INSTALL:Lcom/samsung/android/app/omcagent/update/omc/InstallState;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "START_TO_INSTALL"

    return-object v0
.end method
