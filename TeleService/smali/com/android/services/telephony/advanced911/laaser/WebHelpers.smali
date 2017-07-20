.class Lcom/android/services/telephony/advanced911/laaser/WebHelpers;
.super Ljava/lang/Object;
.source "WebHelpers.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static webComWrapper(Ljava/lang/String;Ljava/lang/String;)Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;
    .locals 3

    const-string/jumbo v0, "POST"

    const-string/jumbo v1, "https://production.laaseroemapi.net"

    const/4 v2, 0x3

    invoke-static {v0, v1, p0, p1, v2}, Lcom/android/services/telephony/advanced911/laaser/WebHelpers;->webComWrapper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;

    move-result-object v0

    return-object v0
.end method

.method static webComWrapper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;
    .locals 9

    new-instance v5, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;

    invoke-direct {v5}, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;-><init>()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    if-nez v6, :cond_0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-gt v1, p4, :cond_6

    :try_start_0
    const-string/jumbo v6, "WebHelpers"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Try : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5, v1}, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->setAttempt(I)V

    new-instance v4, Lcom/android/services/telephony/advanced911/laaser/WebCom;

    invoke-direct {v4}, Lcom/android/services/telephony/advanced911/laaser/WebCom;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, p0, v6, p3}, Lcom/android/services/telephony/advanced911/laaser/WebCom;->httpsRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->setResult(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/services/telephony/advanced911/laaser/WebCom;->getHttpResponseCode()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->setHttpResponseCode(I)V

    invoke-virtual {v4}, Lcom/android/services/telephony/advanced911/laaser/WebCom;->getHeaders()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->setHttpHeaders(Ljava/util/Map;)V

    const-string/jumbo v6, "WebHelpers"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "HttpResponseCode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->getHttpResponseCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " / script : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->isHttpOk()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->getResult()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    :cond_1
    const/4 v6, -0x2

    invoke-virtual {v5, v6}, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->setCode(I)V

    return-object v5

    :cond_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v5}, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->getResult()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "summary"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "summary"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v6, "success"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->setSuccess(Z)V

    const-string/jumbo v6, "message"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->setMessage(Ljava/lang/String;)V

    const-string/jumbo v6, "code"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->setCode(I)V

    invoke-virtual {v5}, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->getSuccess()Z

    move-result v6

    if-nez v6, :cond_3

    return-object v5

    :cond_3
    invoke-virtual {v5}, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->getSuccess()Z

    move-result v6

    if-nez v6, :cond_4

    const/4 v6, -0x3

    invoke-virtual {v5, v6}, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->setCode(I)V

    return-object v5

    :cond_4
    const-string/jumbo v6, "data"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string/jumbo v6, "data"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->setData(Ljava/lang/Object;)V

    :goto_1
    return-object v5

    :cond_5
    const/4 v6, -0x4

    invoke-virtual {v5, v6}, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->setCode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v6, "WebHelpers"

    invoke-static {v6, v0}, Lcom/android/services/telephony/advanced911/laaser/Log;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v6, "WebHelpers"

    const-string/jumbo v7, "Too many tries"

    invoke-static {v6, v7}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, -0x5

    invoke-virtual {v5, v6}, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->setCode(I)V

    return-object v5
.end method
