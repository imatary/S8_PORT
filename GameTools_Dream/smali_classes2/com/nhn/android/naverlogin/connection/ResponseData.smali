.class public Lcom/nhn/android/naverlogin/connection/ResponseData;
.super Ljava/lang/Object;
.source "ResponseData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field public mContent:Ljava/lang/String;

.field public mCookie:Ljava/lang/String;

.field public mErrorDetail:Ljava/lang/String;

.field public mStat:Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

.field public mStatusCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "NaverLoginOAuth|ResponseData"

    iput-object v0, p0, Lcom/nhn/android/naverlogin/connection/ResponseData;->TAG:Ljava/lang/String;

    sget-object v0, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;->SUCCESS:Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    iput-object v0, p0, Lcom/nhn/android/naverlogin/connection/ResponseData;->mStat:Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    const/4 v0, -0x1

    iput v0, p0, Lcom/nhn/android/naverlogin/connection/ResponseData;->mStatusCode:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nhn/android/naverlogin/connection/ResponseData;->mContent:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nhn/android/naverlogin/connection/ResponseData;->mCookie:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nhn/android/naverlogin/connection/ResponseData;->mErrorDetail:Ljava/lang/String;

    return-void
.end method

.method private getContent(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 10

    const/16 v7, 0x400

    const/16 v1, 0x400

    new-array v5, v7, [C

    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    const-string/jumbo v8, "UTF-8"

    invoke-direct {v7, p1, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    const/4 v7, 0x0

    const/16 v8, 0x400

    :try_start_1
    invoke-virtual {v6, v5, v7, v8}, Ljava/io/BufferedReader;->read([CII)I

    move-result v4

    if-gtz v4, :cond_0

    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    :catch_0
    move-exception v3

    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :try_start_2
    invoke-virtual {v0, v5, v7, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_1
    move-exception v2

    sget-object v7, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;->EXCEPTION_FAIL:Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "getContent()-IOException:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/nhn/android/naverlogin/connection/ResponseData;->setResultCode(Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;Ljava/lang/String;)V

    goto :goto_2

    :catch_2
    move-exception v2

    sget-object v7, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;->EXCEPTION_FAIL:Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "getContent()-RuntimeException:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/nhn/android/naverlogin/connection/ResponseData;->setResultCode(Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public setResponseData(Lorg/apache/http/HttpResponse;Ljava/lang/String;)V
    .locals 5

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/nhn/android/naverlogin/connection/ResponseData;->mCookie:Ljava/lang/String;

    :cond_0
    if-nez p1, :cond_2

    const-string/jumbo v2, "NaverLoginOAuth|ResponseData"

    const-string/jumbo v3, "error : httpResponse is null !!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;->FAIL:Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    const-string/jumbo v3, "setResponseData() - httpResponse is null"

    invoke-virtual {p0, v2, v3}, Lcom/nhn/android/naverlogin/connection/ResponseData;->setResultCode(Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nhn/android/naverlogin/connection/ResponseData;->getContent(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nhn/android/naverlogin/connection/ResponseData;->mContent:Ljava/lang/String;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    iput v2, p0, Lcom/nhn/android/naverlogin/connection/ResponseData;->mStatusCode:I

    sget-boolean v2, Lcom/nhn/android/naverlogin/OAuthLoginDefine;->DEVELOPER_VERSION:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "NaverLoginOAuth|ResponseData"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "headers:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "NaverLoginOAuth|ResponseData"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "status:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;->EXCEPTION_FAIL:Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setResponseData()-IllegalStateException:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/nhn/android/naverlogin/connection/ResponseData;->setResultCode(Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v2, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;->EXCEPTION_FAIL:Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setResponseData()-Exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/nhn/android/naverlogin/connection/ResponseData;->setResultCode(Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setResultCode(Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nhn/android/naverlogin/connection/ResponseData;->mStat:Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    iput-object p2, p0, Lcom/nhn/android/naverlogin/connection/ResponseData;->mErrorDetail:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Statuscode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/nhn/android/naverlogin/connection/ResponseData;->mStatusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Content:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nhn/android/naverlogin/connection/ResponseData;->mContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Cookie:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nhn/android/naverlogin/connection/ResponseData;->mCookie:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ErrorDetail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nhn/android/naverlogin/connection/ResponseData;->mErrorDetail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
