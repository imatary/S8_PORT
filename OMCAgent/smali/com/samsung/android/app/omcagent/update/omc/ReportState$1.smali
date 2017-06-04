.class final Lcom/samsung/android/app/omcagent/update/omc/ReportState$1;
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
    .locals 5

    const/4 v4, 0x1

    sget-object v1, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/ReportStateContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getUpdateResultCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.intent.action.OMCPRELOAD_FINISH"

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/ReportStateContext;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->instance:Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/ReportStateContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->updateDeviceOmcVersion(Landroid/content/Context;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/ReportStateContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->read(Landroid/content/Context;)Z

    sget-object v1, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/ReportStateContext;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->readNWriteOOB(Landroid/content/Context;Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;)Z

    sget-object v1, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/ReportStateContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getRebootType(Landroid/content/Context;)I

    move-result v1

    if-ne v4, v1, :cond_0

    sget-object v1, Lcom/samsung/android/app/omcagent/update/omc/RebootNotification;->instance:Lcom/samsung/android/app/omcagent/update/omc/RebootNotification;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/ReportStateContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/update/omc/RebootNotification;->rebooting(Landroid/content/Context;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/update/omc/ReportState$1;->FINISH_RESULT_REPORT:Lcom/samsung/android/app/omcagent/update/omc/ReportState;

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "Report State: Finish to load Preload package"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/update/omc/ReportState$1;->INITIALIZE_OMC_RESULT:Lcom/samsung/android/app/omcagent/update/omc/ReportState;

    goto :goto_0

    :cond_1
    const-string v1, "com.samsung.android.omcagent.intent.INSTALL_PRELOAD_PACKAGE_ERROR"

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/ReportStateContext;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "Report State: Failed to load Preload package"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/update/omc/ReportState$1;->INITIALIZE_OMC_RESULT:Lcom/samsung/android/app/omcagent/update/omc/ReportState;

    goto :goto_0

    :cond_2
    const-string v1, "com.samsung.android.omcagent.intent.FINISH_RECOVERY"

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/ReportStateContext;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "100"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "200"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "511"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_3
    sget-object v1, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/ReportStateContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getPreloadState(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "Report State: Finish to load Preloaded CIQ"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/update/omc/ReportState$1;->INITIALIZE_OMC_RESULT:Lcom/samsung/android/app/omcagent/update/omc/ReportState;

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v4}, Lcom/samsung/android/app/omcagent/update/omc/ReportStateContext;->setResult(Z)V

    sget-object v1, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->instance:Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;

    sget-object v2, Lcom/samsung/android/app/omcagent/update/omc/OmcDef;->OMC_TEMP_XML_DIRECTORY_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->clearTargetOMCPackage(Ljava/lang/String;)Z

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Report State: Update OMC version for resultCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->instance:Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/ReportStateContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->updateDeviceOmcVersion(Landroid/content/Context;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/ReportStateContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->read(Landroid/content/Context;)Z

    sget-object v1, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/ReportStateContext;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->readNWriteOOB(Landroid/content/Context;Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;)Z

    :cond_5
    sget-object v1, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/ReportStateContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getContentType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "Need to report result at App only mode"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/ReportStateContext;->setAppOnly()V

    sget-object v1, Lcom/samsung/android/app/omcagent/update/omc/ReportState$1;->REPORT_RESULT:Lcom/samsung/android/app/omcagent/update/omc/ReportState;

    goto/16 :goto_0

    :cond_6
    const-string v1, "com.samsung.android.omcagent.intent.BEFORE_RECOVERY"

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/ReportStateContext;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/ReportStateContext;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->readNWriteOOB(Landroid/content/Context;Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;)Z

    sget-object v1, Lcom/samsung/android/app/omcagent/update/omc/ReportState$1;->FINISH_RESULT_REPORT:Lcom/samsung/android/app/omcagent/update/omc/ReportState;

    goto/16 :goto_0

    :cond_7
    sget-object v1, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/ReportStateContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->isRebootDevice(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "Need to reboot device"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/update/omc/ReportState$1;->REBOOT_DEVICE:Lcom/samsung/android/app/omcagent/update/omc/ReportState;

    goto/16 :goto_0

    :cond_8
    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "Need to report result"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/update/omc/ReportState$1;->REPORT_RESULT:Lcom/samsung/android/app/omcagent/update/omc/ReportState;

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE_OMC_VERSION"

    return-object v0
.end method
