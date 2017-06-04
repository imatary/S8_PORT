.class public Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadIconRestClient;
.super Lcom/samsung/android/app/omcagent/network/cloud/CloudGetBaseRestClient;
.source "DownloadIconRestClient.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/omcagent/network/cloud/CloudGetBaseRestClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadIconRestClient;->response:Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    return-void
.end method


# virtual methods
.method public getURI()Ljava/net/URL;
    .locals 3

    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadIconRestClient;->urlString:Ljava/lang/String;

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

.method public onRequest()Lcom/samsung/android/app/omcagent/network/ObjectRequest;
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadIconRestClient;->getURI()Ljava/net/URL;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "URL is null!"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/app/omcagent/network/ObjectRequest;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/omcagent/network/ObjectRequest;-><init>(Ljava/net/URL;)V

    sget-object v2, Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;->GET:Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/omcagent/network/ObjectRequest;->setMethod(Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/app/omcagent/network/cloud/omc/OMCHeader;

    invoke-direct {v2}, Lcom/samsung/android/app/omcagent/network/cloud/omc/OMCHeader;-><init>()V

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/app/omcagent/network/cloud/omc/OMCHeader;->getHeaders(J)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/omcagent/network/ObjectRequest;->setHeaders(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public onResult(Ljava/net/HttpURLConnection;)Z
    .locals 10

    const/16 v9, 0x19a

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/16 v7, 0x1000

    :try_start_0
    new-array v0, v7, [B

    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    const/16 v8, 0x1000

    invoke-direct {v4, v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_1

    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v3, v4

    :goto_1
    :try_start_2
    sget-object v7, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v7, v2}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    iget-object v7, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadIconRestClient;->response:Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    const/16 v8, 0x19a

    invoke-virtual {v7, v8}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->setResult(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_0
    :goto_2
    return v6

    :cond_1
    :try_start_4
    iget-object v7, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadIconRestClient;->response:Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->setIcon([B)V

    iget-object v7, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadIconRestClient;->response:Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    invoke-virtual {v7}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->setHttpSuccessResult()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_2
    :goto_3
    move-object v3, v4

    goto :goto_2

    :catch_1
    move-exception v2

    sget-object v7, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v7, v2}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_2
    move-exception v2

    sget-object v7, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v7, v2}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_3
    move-exception v2

    :goto_4
    :try_start_6
    sget-object v7, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v7, v2}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v3, :cond_3

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_3
    :goto_5
    iget-object v7, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadIconRestClient;->response:Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    invoke-virtual {v7, v9}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->setResult(I)V

    goto :goto_2

    :catch_4
    move-exception v2

    sget-object v7, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v7, v2}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_5

    :catchall_0
    move-exception v6

    :goto_6
    if-eqz v3, :cond_4

    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_4
    :goto_7
    throw v6

    :catch_5
    move-exception v2

    sget-object v7, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v7, v2}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_7

    :catchall_1
    move-exception v6

    move-object v3, v4

    goto :goto_6

    :catch_6
    move-exception v2

    move-object v3, v4

    goto :goto_4

    :catch_7
    move-exception v2

    goto :goto_1
.end method
