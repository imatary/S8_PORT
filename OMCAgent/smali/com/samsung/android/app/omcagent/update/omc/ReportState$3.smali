.class final Lcom/samsung/android/app/omcagent/update/omc/ReportState$3;
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
    .locals 6

    sget-object v2, Lcom/samsung/android/app/omcagent/network/OMCResultInfo;->instance:Lcom/samsung/android/app/omcagent/network/OMCResultInfo;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/ReportStateContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/omcagent/network/OMCResultInfo;->readResultInfo(Landroid/content/Context;)V

    sget-object v2, Lcom/samsung/android/app/omcagent/network/OMCResultInfo;->instance:Lcom/samsung/android/app/omcagent/network/OMCResultInfo;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/network/OMCResultInfo;->isVaild()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "Invalid result info to report!!"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->V(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/app/omcagent/update/omc/ReportState$3;->INITIALIZE_OMC_RESULT:Lcom/samsung/android/app/omcagent/update/omc/ReportState;

    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->instance:Lcom/samsung/android/app/omcagent/network/DeviceInfo;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/ReportStateContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->readDeviceInfo(Landroid/content/Context;)V

    sget-object v2, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/ReportStateContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->read(Landroid/content/Context;)Z

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "Report State: Reporting result..."

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/ReportOMCRestClient;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/ReportStateContext;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/omcagent/network/OMCResultInfo;->instance:Lcom/samsung/android/app/omcagent/network/OMCResultInfo;

    sget-object v4, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->instance:Lcom/samsung/android/app/omcagent/network/DeviceInfo;

    sget-object v5, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/ReportOMCRestClient;-><init>(Landroid/content/Context;Lcom/samsung/android/app/omcagent/network/OMCResultInfo;Lcom/samsung/android/app/omcagent/network/DeviceInfo;Lcom/samsung/android/app/omcagent/omc/OmcInfo;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/ReportRestClient;->execute()Z

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/ReportRestClient;->getResponse()Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "Receive result: success in ReportOMCRestClient"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/app/omcagent/update/omc/ReportState$3;->INITIALIZE_OMC_RESULT:Lcom/samsung/android/app/omcagent/update/omc/ReportState;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "Receive result: fail in ReportOMCRestClient"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/ReportRestClient;->getResponse()Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "Send Error Report"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/ReportRestClient;->getResponse()Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/common/diagmon/DiagMon;->sendReport(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/app/omcagent/update/omc/ReportState$3;->INITIALIZE_OMC_RESULT:Lcom/samsung/android/app/omcagent/update/omc/ReportState;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/ReportRestClient;->getResponse()Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->getResult()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/app/omcagent/network/ResultType;->isNetworkFail(I)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "Network is not available"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/app/omcagent/update/omc/ReportState$3;->FINISH_RESULT_REPORT:Lcom/samsung/android/app/omcagent/update/omc/ReportState;

    goto/16 :goto_0

    :cond_3
    sget-object v2, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/ReportStateContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getUpdateRetryCountForReportOMCPackage(Landroid/content/Context;)I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    if-lez v1, :cond_4

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wait next retry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/ReportStateContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setUpdateRetryCountForReportOMCPackage(Landroid/content/Context;I)V

    sget-object v2, Lcom/samsung/android/app/omcagent/update/omc/ReportState$3;->FINISH_RESULT_REPORT:Lcom/samsung/android/app/omcagent/update/omc/ReportState;

    goto/16 :goto_0

    :cond_4
    sget-object v2, Lcom/samsung/android/app/omcagent/update/omc/ReportState$3;->INITIALIZE_OMC_RESULT:Lcom/samsung/android/app/omcagent/update/omc/ReportState;

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "REPORT_RESULT"

    return-object v0
.end method
