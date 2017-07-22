.class Lcom/android/services/telephony/advanced911/laaser/WebCom;
.super Ljava/lang/Object;
.source "WebCom.java"


# instance fields
.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHttpResponseCode:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/services/telephony/advanced911/laaser/WebCom;->mHeaders:Ljava/util/Map;

    return-object v0
.end method

.method getHttpResponseCode()I
    .locals 1

    iget v0, p0, Lcom/android/services/telephony/advanced911/laaser/WebCom;->mHttpResponseCode:I

    return v0
.end method

.method httpsRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v9, -0x1

    const/4 v10, 0x0

    const-string/jumbo v7, "http.keepAlive"

    const-string/jumbo v8, "false"

    invoke-static {v7, v8}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iput v9, p0, Lcom/android/services/telephony/advanced911/laaser/WebCom;->mHttpResponseCode:I

    const-string/jumbo v7, "WebCom"

    invoke-static {v7, p2}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "WebCom"

    invoke-static {v7, p3}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljavax/net/ssl/HttpsURLConnection;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    const/16 v7, 0x1388

    invoke-virtual {v6, v7}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    const/16 v7, 0x1388

    invoke-virtual {v6, v7}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const-string/jumbo v7, "Connection"

    const-string/jumbo v8, "close"

    invoke-virtual {v6, v7, v8}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljavax/net/ssl/HttpsURLConnection;->setFixedLengthStreamingMode(I)V

    const-string/jumbo v7, "Content-Length"

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "Content-Type"

    const-string/jumbo v8, "aapplication/json"

    invoke-virtual {v6, v7, v8}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2, p3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    :cond_0
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v7

    iput v7, p0, Lcom/android/services/telephony/advanced911/laaser/WebCom;->mHttpResponseCode:I

    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getContentLength()I

    move-result v1

    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v7

    iput-object v7, p0, Lcom/android/services/telephony/advanced911/laaser/WebCom;->mHeaders:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/android/services/telephony/advanced911/laaser/WebCom;->isHttpOk()Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, "WebCom"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "HttpResponseCode not ok : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/services/telephony/advanced911/laaser/WebCom;->mHttpResponseCode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v1, :cond_1

    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/services/telephony/advanced911/laaser/WebCom;->readFromStream(Ljava/io/InputStream;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    :cond_1
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    return-object v10

    :cond_2
    if-nez v1, :cond_3

    const-string/jumbo v7, "WebCom"

    const-string/jumbo v8, "no data?"

    invoke-static {v7, v8}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    return-object v10

    :cond_3
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/services/telephony/advanced911/laaser/WebCom;->readFromStream(Ljava/io/InputStream;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    if-eq v1, v9, :cond_5

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    if-eq v1, v7, :cond_5

    :cond_4
    const-string/jumbo v7, "WebCom"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "bad data error? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :cond_5
    const/16 v7, 0x2c

    if-eq v1, v7, :cond_4

    const-string/jumbo v7, "WebCom"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "httpsRequest - result : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v3

    const-string/jumbo v7, "WebCom"

    invoke-static {v7, v3}, Lcom/android/services/telephony/advanced911/laaser/Log;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string/jumbo v7, ""

    return-object v7
.end method

.method isHttpOk()Z
    .locals 2

    iget v0, p0, Lcom/android/services/telephony/advanced911/laaser/WebCom;->mHttpResponseCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method readFromStream(Ljava/io/InputStream;)Ljava/io/ByteArrayOutputStream;
    .locals 6

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-eqz p1, :cond_0

    const/16 v4, 0x800

    :try_start_0
    new-array v1, v4, [B

    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v4, "WebCom"

    invoke-static {v4, v2}, Lcom/android/services/telephony/advanced911/laaser/Log;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    const-string/jumbo v4, "WebCom"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
