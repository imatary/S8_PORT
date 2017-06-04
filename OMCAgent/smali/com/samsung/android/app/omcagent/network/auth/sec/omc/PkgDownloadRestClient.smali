.class public Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PkgDownloadRestClient;
.super Lcom/samsung/android/app/omcagent/network/BaseRestClient;
.source "PkgDownloadRestClient.java"


# instance fields
.field private binaryData:[B

.field private context:Landroid/content/Context;

.field private deviceID:Ljava/lang/String;

.field private downloadUrl:Ljava/lang/String;

.field private response:Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

.field private retry:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/network/BaseRestClient;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PkgDownloadRestClient;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PkgDownloadRestClient;->deviceID:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PkgDownloadRestClient;->downloadUrl:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PkgDownloadRestClient;->response:Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    return-void
.end method


# virtual methods
.method public getBinaryData()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PkgDownloadRestClient;->binaryData:[B

    return-object v0
.end method

.method public getResponse()Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PkgDownloadRestClient;->response:Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    return-object v0
.end method

.method public getURI()Ljava/net/URL;
    .locals 3

    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PkgDownloadRestClient;->downloadUrl:Ljava/lang/String;

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

.method public onError(ILjava/net/HttpURLConnection;)V
    .locals 4

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PkgDownloadRestClient;->receiveTextStream(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "error message is empty."

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PkgDownloadRestClient;->response:Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    const/16 v2, 0x384

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->setResult(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PkgDownloadRestClient;->response:Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    sget-object v2, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCError;->instance:Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCError;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCError;->getErrorMessage(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->setMessages(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PkgDownloadRestClient;->response:Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PkgDownloadRestClient;->response:Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PkgDownloadRestClient;->response:Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->getErrorCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->getHttpErrorResult(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->setResult(I)V

    goto :goto_0
.end method

.method public onRequest()Lcom/samsung/android/app/omcagent/network/ObjectRequest;
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PkgDownloadRestClient;->getURI()Ljava/net/URL;

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
    .locals 7

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PkgDownloadRestClient;->response:Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    invoke-virtual {v5}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->setHttpSuccessResult()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    const/16 v5, 0x1000

    new-array v1, v5, [B

    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    sget-object v5, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v6, "Banary data read fail."

    invoke-virtual {v5, v6}, Lcom/samsung/android/common/log/Logger$Impl;->E(Ljava/lang/String;)V

    sget-object v5, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v5, v2}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_1
    const/4 v5, 0x1

    return v5

    :cond_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PkgDownloadRestClient;->binaryData:[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    sget-object v5, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v5, v2}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v2

    sget-object v5, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v5, v2}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception v5

    if-eqz v3, :cond_2

    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_2
    throw v5

    :catch_3
    move-exception v2

    sget-object v6, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v6, v2}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public onRetry()Z
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PkgDownloadRestClient;->retry:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PkgDownloadRestClient;->retry:I

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PkgDownloadRestClient;->retry:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    const-string v1, "N"

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PkgDownloadRestClient;->response:Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->getErrorRetry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PkgDownloadRestClient;->retry:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PkgDownloadRestClient;->response:Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->getResult()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/network/ResultType;->isNetworkFail(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onSetUp()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PkgDownloadRestClient;->response:Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PkgDownloadRestClient;->response:Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    iget-object v4, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PkgDownloadRestClient;->context:Landroid/content/Context;

    invoke-virtual {v3, v4, v1}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->getNetworkResult(Landroid/content/Context;Z)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->setResult(I)V

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PkgDownloadRestClient;->response:Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->isProcessing()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PkgDownloadRestClient;->deviceID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PkgDownloadRestClient;->response:Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    const/16 v2, 0x190

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->setResult(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onTearDown(Ljava/net/HttpURLConnection;)V
    .locals 0

    return-void
.end method
