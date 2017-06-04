.class public Lcom/samsung/android/app/omcagent/update/omc/OmcPackageDownloader;
.super Ljava/lang/Object;
.source "OmcPackageDownloader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadPkg(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    const-string v9, "200"

    sget-object v10, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->instance:Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;

    invoke-virtual {v10, p1}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->getPacakgeFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget-object v10, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Download Package at: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    new-instance v8, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PkgDownloadRestClient;

    sget-object v10, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->instance:Lcom/samsung/android/app/omcagent/network/DeviceInfo;

    invoke-virtual {v10}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->getUniqueID()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, p1, v10, p2}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PkgDownloadRestClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PkgDownloadRestClient;->execute()Z

    invoke-virtual {v8}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PkgDownloadRestClient;->getResponse()Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->getResult()I

    move-result v7

    invoke-virtual {v8}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PkgDownloadRestClient;->getResponse()Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->isSuccess()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v8}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PkgDownloadRestClient;->getBinaryData()[B

    move-result-object v0

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v1

    sget-object v10, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "downloadFilePath deleted : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v6, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v6, :cond_0

    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    return-object v9

    :catch_0
    move-exception v3

    sget-object v10, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v10, v3}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v4

    :goto_1
    :try_start_3
    sget-object v10, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v10, v4}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    const-string v9, "510"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_0

    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v3

    sget-object v10, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v10, v3}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v10

    :goto_2
    if-eqz v5, :cond_1

    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_1
    :goto_3
    throw v10

    :catch_3
    move-exception v3

    sget-object v11, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v11, v3}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_2
    sget-object v10, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v11, "Receive result: fail in PkgDownloadRestClient"

    invoke-virtual {v10, v11}, Lcom/samsung/android/common/log/Logger$Impl;->E(Ljava/lang/String;)V

    sget-object v10, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "HTTP ErrorCode: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/samsung/android/common/log/Logger$Impl;->E(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PkgDownloadRestClient;->getResponse()Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->getErrorCode()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v8}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PkgDownloadRestClient;->getResponse()Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->getErrorCode()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/common/diagmon/DiagMon;->sendReport(Ljava/lang/String;)V

    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :catchall_1
    move-exception v10

    move-object v5, v6

    goto :goto_2

    :catch_4
    move-exception v4

    move-object v5, v6

    goto :goto_1
.end method

.method public reportDownload(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    sget-object v1, Lcom/samsung/android/app/omcagent/network/OMCPackageResultInfo;->instance:Lcom/samsung/android/app/omcagent/network/OMCPackageResultInfo;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/omcagent/network/OMCPackageResultInfo;->readResultInfo(Landroid/content/Context;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/network/OMCPackageResultInfo;->instance:Lcom/samsung/android/app/omcagent/network/OMCPackageResultInfo;

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/omcagent/network/OMCPackageResultInfo;->setUpdateVersion(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/ReportPackageRestClient;

    sget-object v1, Lcom/samsung/android/app/omcagent/network/OMCPackageResultInfo;->instance:Lcom/samsung/android/app/omcagent/network/OMCPackageResultInfo;

    sget-object v2, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->instance:Lcom/samsung/android/app/omcagent/network/DeviceInfo;

    sget-object v3, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/ReportPackageRestClient;-><init>(Landroid/content/Context;Lcom/samsung/android/app/omcagent/network/OMCPackageResultInfo;Lcom/samsung/android/app/omcagent/network/DeviceInfo;Lcom/samsung/android/app/omcagent/omc/OmcInfo;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/ReportPackageRestClient;->execute()Z

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/ReportPackageRestClient;->getResponse()Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "Receive result: success in ReportPackageRestClient"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "Receive result: Fail in ReportPackageRestClient"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/ReportPackageRestClient;->getResponse()Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/ReportPackageRestClient;->getResponse()Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/common/diagmon/DiagMon;->sendReport(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public runOMCDownload(Landroid/content/Context;I)V
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageDownloader;->runOMCDownload(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public runOMCDownload(Landroid/content/Context;ILjava/lang/String;)V
    .locals 20

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v4, "Run OMC Package Download"

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->instance:Lcom/samsung/android/app/omcagent/network/DeviceInfo;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->readDeviceInfo(Landroid/content/Context;)V

    sget-object v3, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->read(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->read(Landroid/content/Context;Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;)Z

    :cond_0
    const/4 v3, 0x5

    move/from16 v0, p2

    if-ne v0, v3, :cond_1

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pushMsg(sessionId): "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->setSessionId(Ljava/lang/String;)V

    :cond_1
    const/16 v18, 0x0

    const/16 v16, 0x1

    :goto_0
    if-eqz v16, :cond_3

    new-instance v2, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/CheckVersionRestClient;

    sget-object v3, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->instance:Lcom/samsung/android/app/omcagent/network/DeviceInfo;

    sget-object v4, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;

    invoke-static/range {p2 .. p2}, Lcom/samsung/android/app/omcagent/update/omc/Configs$DownloadRequestValueType;->getInitTypeString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3, v4, v11}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/CheckVersionRestClient;-><init>(Landroid/content/Context;Lcom/samsung/android/app/omcagent/network/DeviceInfo;Lcom/samsung/android/app/omcagent/omc/OmcInfo;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/CheckVersionRestClient;->execute()Z

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/CheckVersionRestClient;->getResponse()Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_b

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v4, "Receive result: success in DownloadRestClient"

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/CheckVersionRestClient;->getResultObject()Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/CheckUpdateResponse;

    move-result-object v17

    if-nez v17, :cond_4

    const/4 v3, 0x3

    move/from16 v0, v18

    if-ge v0, v3, :cond_2

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "retry : "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v4, "Receive result: fail in DownloadRestClient (resultObject is null)"

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->E(Ljava/lang/String;)V

    const/16 v16, 0x0

    :cond_3
    :goto_1
    return-void

    :cond_4
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/CheckUpdateResponse;->getUpdateAvailable()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "N"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v4, "No update available"

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    const/4 v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setInitType_forResume(Landroid/content/Context;I)V

    sget-object v3, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-static {}, Lcom/samsung/android/app/omcagent/common/Device;->readOmcVersion()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setAppAndResVersion(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/app/omcagent/db/TaskPref;->instance:Lcom/samsung/android/app/omcagent/db/TaskPref;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/omcagent/db/TaskPref;->init(Landroid/content/Context;)V

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PRELOAD_STATE : "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v11, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getPreloadState(Landroid/content/Context;)I

    move-result v11

    invoke-static {v11}, Lcom/samsung/android/app/omcagent/db/OmcPref$LOAD_PRELOAD_STATE;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->isOOBState(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getPreloadState(Landroid/content/Context;)I

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    sget-object v3, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getPreloadState(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    sget-object v3, Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;->init(Landroid/content/Context;)V

    sget-object v3, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setPreloadState(Landroid/content/Context;I)V

    sget-object v3, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setSimChangedInfo(Landroid/content/Context;Z)V

    sget-object v3, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->instance:Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;

    sget-object v4, Lcom/samsung/android/app/omcagent/update/omc/OmcDef;->OMC_CACHE_DIRECTORY_PATH_OMC:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->clearTargetOMCPackage(Ljava/lang/String;)Z

    sget-object v3, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->instance:Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;

    const-string v4, "com.samsung.android.omcagent.intent.NO_UPDATE"

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->loadPreloadPackage(Landroid/content/Context;Ljava/lang/String;)V

    :cond_6
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/samsung/android/common/util/GeneralUtils;->stopProcessLog(I)V

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/samsung/android/common/util/GeneralUtils;->startProcessLog(I)V

    const/16 v16, 0x0

    goto/16 :goto_1

    :cond_7
    const-string v3, "Y"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v4, "Update available"

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->isOOBState(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Lcom/samsung/android/app/omcagent/update/app/AppNotification;->instance:Lcom/samsung/android/app/omcagent/update/app/AppNotification;

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Lcom/samsung/android/app/omcagent/update/app/AppNotification;->removeWaitWifi(Landroid/content/Context;Z)V

    :cond_8
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/CheckUpdateResponse;->getSessionId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/CheckUpdateResponse;->getReportURL()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/CheckUpdateResponse;->getUpdateVersion()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/CheckUpdateResponse;->getUpdateURL()Ljava/lang/String;

    move-result-object v14

    :try_start_0
    const-string v3, "UTF-8"

    invoke-static {v14, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    :goto_2
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/CheckUpdateResponse;->getPkgSize()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/CheckUpdateResponse;->getPkgHash()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageDownloader;->downloadPkg(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v3, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    const-string v11, "none"

    const-string v12, "0"

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v13}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setDownloadResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v3, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v13}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setAppAndResVersion(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageDownloader;->reportDownload(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->isOOBState(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object v3, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->instance:Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->updateDeviceOmcVersion(Landroid/content/Context;)V

    :cond_9
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/samsung/android/common/util/GeneralUtils;->stopProcessLog(I)V

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/samsung/android/common/util/GeneralUtils;->startProcessLog(I)V

    sget-object v3, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    const/4 v4, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setPreloadState(Landroid/content/Context;I)V

    sget-object v3, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->instance:Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;

    sget-object v4, Lcom/samsung/android/app/omcagent/update/omc/OmcDef;->OMC_CACHE_DIRECTORY_PATH_OMC:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->clearTargetOMCPackage(Ljava/lang/String;)Z

    sget-object v3, Lcom/samsung/android/app/omcagent/db/TaskPref;->instance:Lcom/samsung/android/app/omcagent/db/TaskPref;

    const/16 v4, 0x50

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Lcom/samsung/android/app/omcagent/db/TaskPref;->setOMCState(Landroid/content/Context;I)V

    new-instance v3, Lcom/samsung/android/app/omcagent/ProcessOMC;

    invoke-direct {v3}, Lcom/samsung/android/app/omcagent/ProcessOMC;-><init>()V

    new-instance v4, Landroid/content/Intent;

    const-string v11, "com.samsung.android.omcagent.intent.DOWNLOAD_FINISH"

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Lcom/samsung/android/app/omcagent/ProcessOMC;->execute(Landroid/content/Context;Landroid/content/Intent;)V

    sget-object v3, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    const/4 v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setInitType_forResume(Landroid/content/Context;I)V

    const/16 v16, 0x0

    goto/16 :goto_1

    :catch_0
    move-exception v15

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v4, "Fail to decode URL. Unsupported Encoding Option: \'UTF-8\'."

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Use not decoded, original URL: \'"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, "\'"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_2

    :cond_a
    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v4, "updateAvailable is empty"

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->E(Ljava/lang/String;)V

    :cond_b
    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v4, "Receive result: fail in DownloadRestClient"

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->E(Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HTTP ErrorCode: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/CheckVersionRestClient;->getResponse()Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->getResult()I

    move-result v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->E(Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OMC ErrorCode: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/CheckVersionRestClient;->getResponse()Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->getErrorCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->E(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/CheckVersionRestClient;->getResponse()Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->getErrorCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/CheckVersionRestClient;->getResponse()Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->getErrorCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/common/diagmon/DiagMon;->sendReport(Ljava/lang/String;)V

    :cond_c
    const/16 v16, 0x0

    goto/16 :goto_0
.end method
