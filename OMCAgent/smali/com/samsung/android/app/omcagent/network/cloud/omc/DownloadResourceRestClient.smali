.class public Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;
.super Lcom/samsung/android/app/omcagent/network/cloud/CloudGetBaseRestClient;
.source "DownloadResourceRestClient.java"


# instance fields
.field protected bCancel:Z

.field protected pos:I

.field protected targetFile:Ljava/lang/String;

.field protected targetOffset:J

.field protected targetPath:Ljava/lang/String;

.field protected targetSize:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/omcagent/network/cloud/CloudGetBaseRestClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput p3, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;->pos:I

    iput-object p4, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;->targetFile:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;->targetPath:Ljava/lang/String;

    iput-wide p6, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;->targetSize:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;->targetOffset:J

    new-instance v0, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;->response:Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;->targetFile:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;->targetSize:J

    return-wide v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;->pos:I

    return v0
.end method

.method public getURI()Ljava/net/URL;
    .locals 3

    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;->urlString:Ljava/lang/String;

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

    iget-boolean v0, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;->bCancel:Z

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

.method public onProgress(JJI)V
    .locals 0

    return-void
.end method

.method public onRequest()Lcom/samsung/android/app/omcagent/network/ObjectRequest;
    .locals 8

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;->getURI()Ljava/net/URL;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v4, "URL is null!"

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;->targetPath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;->targetOffset:J

    iget-wide v4, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;->targetSize:J

    iget-wide v6, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;->targetOffset:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v4, "Already download Target File"

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->V(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
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

    :cond_2
    new-instance v1, Lcom/samsung/android/app/omcagent/network/ObjectRequest;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/omcagent/network/ObjectRequest;-><init>(Ljava/net/URL;)V

    sget-object v3, Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;->GET:Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/omcagent/network/ObjectRequest;->setMethod(Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/app/omcagent/network/cloud/omc/OMCHeader;

    invoke-direct {v3}, Lcom/samsung/android/app/omcagent/network/cloud/omc/OMCHeader;-><init>()V

    iget-wide v4, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;->targetOffset:J

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/omcagent/network/cloud/omc/OMCHeader;->getHeaders(J)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/omcagent/network/ObjectRequest;->setHeaders(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public onResult(Ljava/net/HttpURLConnection;)Z
    .locals 24

    const/4 v13, 0x0

    const/16 v16, 0x0

    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;->targetSize:J

    long-to-double v0, v4

    move-wide/from16 v20, v0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;->targetSize:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;->onStart(J)V

    const v3, 0x8000

    :try_start_0
    new-array v9, v3, [B

    const/16 v18, 0x0

    new-instance v14, Ljava/io/BufferedInputStream;

    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v14, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_16
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;->targetPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;->targetOffset:J

    const-wide/16 v22, 0x0

    cmp-long v3, v6, v22

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    :goto_0
    move-object/from16 v0, v17

    invoke-direct {v0, v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_17
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_10
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    :try_start_2
    invoke-virtual {v14, v9}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;->isCancel()Z

    move-result v3

    if-nez v3, :cond_4

    add-int v18, v18, v2

    add-int/lit8 v15, v15, 0x1

    const/16 v3, 0x20

    if-ne v3, v15, :cond_0

    const/4 v15, 0x0

    move/from16 v0, v18

    int-to-double v10, v0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;->targetSize:J

    move/from16 v0, v18

    int-to-long v6, v0

    const-wide/high16 v22, 0x4059000000000000L    # 100.0

    mul-double v22, v22, v10

    div-double v22, v22, v20

    move-wide/from16 v0, v22

    double-to-int v8, v0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;->onProgress(JJI)V

    :cond_0
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_15
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_11
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catch_0
    move-exception v12

    move-object/from16 v16, v17

    move-object v13, v14

    :goto_2
    :try_start_3
    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v3, v12}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;->response:Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    const/16 v4, 0x19a

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->setResult(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v3, 0x0

    if-eqz v16, :cond_1

    :try_start_4
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :cond_1
    :goto_3
    if-eqz v13, :cond_2

    :try_start_5
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    :cond_2
    :goto_4
    return v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->flush()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;->isCancel()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;->onCancel()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;->response:Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    const/16 v4, 0x320

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->setResult(I)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_15
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_13
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_11
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/4 v3, 0x0

    if-eqz v17, :cond_5

    :try_start_7
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_5
    :goto_5
    if-eqz v14, :cond_6

    :try_start_8
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :cond_6
    :goto_6
    move-object/from16 v16, v17

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
    :try_start_9
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;->targetSize:J

    move/from16 v0, v18

    int-to-long v6, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;->onComplete(JJ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;->response:Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->setHttpSuccessResult()V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_9} :catch_15
    .catch Ljava/net/UnknownHostException; {:try_start_9 .. :try_end_9} :catch_13
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_11
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    const/4 v3, 0x1

    if-eqz v17, :cond_8

    :try_start_a
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    :cond_8
    :goto_7
    if-eqz v14, :cond_9

    :try_start_b
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    :cond_9
    :goto_8
    move-object/from16 v16, v17

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

    :catch_5
    move-exception v12

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v4, v12}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_6
    move-exception v12

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v4, v12}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_7
    move-exception v3

    :goto_9
    move-object v12, v3

    :goto_a
    :try_start_c
    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v3, v12}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;->response:Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->setResult(I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v16, :cond_a

    :try_start_d
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    :cond_a
    :goto_b
    if-eqz v13, :cond_b

    :try_start_e
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    :cond_b
    :goto_c
    const/4 v3, 0x0

    goto/16 :goto_4

    :catch_8
    move-exception v12

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v3, v12}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_b

    :catch_9
    move-exception v12

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v3, v12}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_c

    :catch_a
    move-exception v12

    :goto_d
    :try_start_f
    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v3, v12}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;->response:Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    const/16 v4, 0x19a

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->setResult(I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-eqz v16, :cond_c

    :try_start_10
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    :cond_c
    :goto_e
    if-eqz v13, :cond_b

    :try_start_11
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b

    goto :goto_c

    :catch_b
    move-exception v12

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v3, v12}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_c

    :catch_c
    move-exception v12

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v3, v12}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_e

    :catchall_0
    move-exception v3

    :goto_f
    if-eqz v16, :cond_d

    :try_start_12
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_d

    :cond_d
    :goto_10
    if-eqz v13, :cond_e

    :try_start_13
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_e

    :cond_e
    :goto_11
    throw v3

    :catch_d
    move-exception v12

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v4, v12}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_10

    :catch_e
    move-exception v12

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v4, v12}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_11

    :catch_f
    move-exception v3

    :goto_12
    move-object v12, v3

    goto :goto_a

    :catchall_1
    move-exception v3

    move-object v13, v14

    goto :goto_f

    :catchall_2
    move-exception v3

    move-object/from16 v16, v17

    move-object v13, v14

    goto :goto_f

    :catch_10
    move-exception v12

    move-object v13, v14

    goto :goto_d

    :catch_11
    move-exception v12

    move-object/from16 v16, v17

    move-object v13, v14

    goto :goto_d

    :catch_12
    move-exception v3

    move-object v13, v14

    goto :goto_12

    :catch_13
    move-exception v3

    move-object/from16 v16, v17

    move-object v13, v14

    goto :goto_12

    :catch_14
    move-exception v3

    move-object v13, v14

    goto/16 :goto_9

    :catch_15
    move-exception v3

    move-object/from16 v16, v17

    move-object v13, v14

    goto/16 :goto_9

    :catch_16
    move-exception v12

    goto/16 :goto_2

    :catch_17
    move-exception v12

    move-object v13, v14

    goto/16 :goto_2
.end method

.method public onStart(J)V
    .locals 0

    return-void
.end method

.method public setCancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;->bCancel:Z

    return-void
.end method
