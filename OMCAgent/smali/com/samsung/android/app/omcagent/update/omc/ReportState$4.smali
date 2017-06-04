.class final Lcom/samsung/android/app/omcagent/update/omc/ReportState$4;
.super Ljava/lang/Object;
.source "ReportState.java"

# interfaces
.implements Lcom/samsung/android/app/omcagent/update/omc/ReportState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/update/omc/ReportState;
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
.method public run(Lcom/samsung/android/app/omcagent/update/omc/ReportStateContext;)Lcom/samsung/android/app/omcagent/update/omc/ReportState;
    .locals 4

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "Report State: Initialize OMC Session..."

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/android/common/util/GeneralUtils;->stopProcessLog(I)V

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "Clear Source packages"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->instance:Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/ReportStateContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->clearSourcePackage(Landroid/content/Context;)Z

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "Initialize internal State"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/ReportStateContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setUpdateRetryCountForReportOMCPackage(Landroid/content/Context;I)V

    sget-object v0, Lcom/samsung/android/app/omcagent/db/TaskPref;->instance:Lcom/samsung/android/app/omcagent/db/TaskPref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/ReportStateContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/db/TaskPref;->init(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/ReportStateContext;->isAppOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/ReportStateContext;->isStartDM()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/android/app/omcagent/ProcessOMC;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/ProcessOMC;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/ReportStateContext;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/ReportStateContext;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/omcagent/ProcessOMC;->execute(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_1
    sget-object v0, Lcom/samsung/android/app/omcagent/update/omc/ReportState$4;->FINISH_RESULT_REPORT:Lcom/samsung/android/app/omcagent/update/omc/ReportState;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "INITIALIZE_OMC_RESULT"

    return-object v0
.end method
