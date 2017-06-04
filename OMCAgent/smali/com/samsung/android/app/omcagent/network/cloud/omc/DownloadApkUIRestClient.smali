.class public Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;
.super Lcom/samsung/android/app/omcagent/network/cloud/CloudGetBaseRestClient;
.source "DownloadApkUIRestClient.java"


# instance fields
.field protected bCancel:Z

.field protected bPause:Z

.field protected pos:I

.field protected targetFile:Ljava/lang/String;

.field protected targetOffset:J

.field protected targetPath:Ljava/lang/String;

.field protected targetSize:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/omcagent/network/cloud/CloudGetBaseRestClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput p3, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;->pos:I

    iput-object p4, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;->targetFile:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;->targetPath:Ljava/lang/String;

    iput-wide p6, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;->targetSize:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;->targetOffset:J

    new-instance v0, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;->response:Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;->targetFile:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;->targetSize:J

    return-wide v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;->pos:I

    return v0
.end method

.method public getTargetFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;->targetFile:Ljava/lang/String;

    return-object v0
.end method

.method public getURI()Ljava/net/URL;
    .locals 3

    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;->urlString:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v1, v0}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCancel()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;->bCancel:Z

    return v0
.end method

.method public isbPause()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;->bPause:Z

    return v0
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onComplete(JJ)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onProgress(JJI)V
    .locals 0

    return-void
.end method

.method public onRequest()Lcom/samsung/android/app/omcagent/network/ObjectRequest;
    .locals 8

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;->getURI()Ljava/net/URL;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v4, "URL is null!"

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;->targetPath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;->targetOffset:J

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Target File is already exist. Continue to download after Byte="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    :cond_1
    new-instance v1, Lcom/samsung/android/app/omcagent/network/ObjectRequest;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/omcagent/network/ObjectRequest;-><init>(Ljava/net/URL;)V

    sget-object v3, Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;->GET:Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/omcagent/network/ObjectRequest;->setMethod(Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/app/omcagent/network/cloud/omc/OMCHeader;

    invoke-direct {v3}, Lcom/samsung/android/app/omcagent/network/cloud/omc/OMCHeader;-><init>()V

    iget-wide v4, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;->targetOffset:J

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/omcagent/network/cloud/omc/OMCHeader;->getHeaders(J)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/omcagent/network/ObjectRequest;->setHeaders(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public onResult(Ljava/net/HttpURLConnection;)Z
    .locals 22

    const/4 v13, 0x0

    const/16 v16, 0x0

    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;->targetSize:J

    long-to-double v0, v4

    move-wide/from16 v18, v0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;->targetSize:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;->onStart(J)V

    const v3, 0x8000

    :try_start_0
    new-array v9, v3, [B

    const/16 v17, 0x0

    new-instance v14, Ljava/io/BufferedInputStream;

    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v14, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_15
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;->targetFile:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;->targetOffset:J

    const-wide/16 v20, 0x0

    cmp-long v3, v6, v20

    if-nez v3, :cond_3

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v16

    :goto_1
    invoke-virtual {v14, v9}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;->isCancel()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;->isbPause()Z

    move-result v3

    if-nez v3, :cond_4

    add-int v17, v17, v2

    add-int/lit8 v15, v15, 0x1

    const/16 v3, 0x20

    if-ne v3, v15, :cond_0

    const/4 v15, 0x0

    move/from16 v0, v17

    int-to-double v10, v0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;->targetSize:J

    move/from16 v0, v17

    int-to-long v6, v0

    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    mul-double v20, v20, v10

    div-double v20, v20, v18

    move-wide/from16 v0, v20

    double-to-int v8, v0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;->onProgress(JJI)V

    :cond_0
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_12
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v12

    move-object v13, v14

    :goto_2
    :try_start_2
    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v3, v12}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;->response:Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    const/16 v4, 0x19a

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->setResult(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v3, 0x0

    if-eqz v16, :cond_1

    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    :cond_1
    :goto_3
    if-eqz v13, :cond_2

    :try_start_4
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    :cond_2
    :goto_4
    return v3

    :cond_3
    const v3, 0x8000

    goto :goto_0

    :cond_4
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->flush()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;->isCancel()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;->onCancel()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;->response:Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    const/16 v4, 0x320

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->setResult(I)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_14
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_13
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_12
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v3, 0x0

    if-eqz v16, :cond_5

    :try_start_6
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_5
    :goto_5
    if-eqz v14, :cond_6

    :try_start_7
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_6
    :goto_6
    move-object v13, v14

    goto :goto_4

    :catch_1
    move-exception v12

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v4, v12}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_2
    move-exception v12

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v4, v12}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_7
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;->isbPause()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;->onPause()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;->response:Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    const/16 v4, 0x320

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->setResult(I)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_14
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_13
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_12
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    const/4 v3, 0x0

    if-eqz v16, :cond_8

    :try_start_9
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :cond_8
    :goto_7
    if-eqz v14, :cond_9

    :try_start_a
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    :cond_9
    :goto_8
    move-object v13, v14

    goto :goto_4

    :catch_3
    move-exception v12

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v4, v12}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_7

    :catch_4
    move-exception v12

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v4, v12}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_a
    :try_start_b
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;->targetSize:J

    move/from16 v0, v17

    int-to-long v6, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;->onComplete(JJ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;->response:Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->setHttpSuccessResult()V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/net/SocketException; {:try_start_b .. :try_end_b} :catch_14
    .catch Ljava/net/UnknownHostException; {:try_start_b .. :try_end_b} :catch_13
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_12
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    const/4 v3, 0x1

    if-eqz v16, :cond_b

    :try_start_c
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    :cond_b
    :goto_9
    if-eqz v14, :cond_c

    :try_start_d
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    :cond_c
    :goto_a
    move-object v13, v14

    goto/16 :goto_4

    :catch_5
    move-exception v12

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v4, v12}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_9

    :catch_6
    move-exception v12

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v4, v12}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_a

    :catch_7
    move-exception v12

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v4, v12}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :catch_8
    move-exception v12

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v4, v12}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :catch_9
    move-exception v3

    :goto_b
    move-object v12, v3

    :goto_c
    :try_start_e
    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v3, v12}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;->response:Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->setResult(I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz v16, :cond_d

    :try_start_f
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    :cond_d
    :goto_d
    if-eqz v13, :cond_e

    :try_start_10
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    :cond_e
    :goto_e
    const/4 v3, 0x0

    goto/16 :goto_4

    :catch_a
    move-exception v12

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v3, v12}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_d

    :catch_b
    move-exception v12

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v3, v12}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_e

    :catch_c
    move-exception v12

    :goto_f
    :try_start_11
    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v3, v12}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;->response:Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    const/16 v4, 0x19a

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->setResult(I)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    if-eqz v16, :cond_f

    :try_start_12
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_e

    :cond_f
    :goto_10
    if-eqz v13, :cond_e

    :try_start_13
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_d

    goto :goto_e

    :catch_d
    move-exception v12

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v3, v12}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_e

    :catch_e
    move-exception v12

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v3, v12}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_10

    :catchall_0
    move-exception v3

    :goto_11
    if-eqz v16, :cond_10

    :try_start_14
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_f

    :cond_10
    :goto_12
    if-eqz v13, :cond_11

    :try_start_15
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_10

    :cond_11
    :goto_13
    throw v3

    :catch_f
    move-exception v12

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v4, v12}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_12

    :catch_10
    move-exception v12

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v4, v12}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_13

    :catch_11
    move-exception v3

    :goto_14
    move-object v12, v3

    goto :goto_c

    :catchall_1
    move-exception v3

    move-object v13, v14

    goto :goto_11

    :catch_12
    move-exception v12

    move-object v13, v14

    goto :goto_f

    :catch_13
    move-exception v3

    move-object v13, v14

    goto :goto_14

    :catch_14
    move-exception v3

    move-object v13, v14

    goto :goto_b

    :catch_15
    move-exception v12

    goto/16 :goto_2
.end method

.method public onStart(J)V
    .locals 0

    return-void
.end method

.method public setCancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;->bCancel:Z

    return-void
.end method

.method public setbPause(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;->bPause:Z

    return-void
.end method
