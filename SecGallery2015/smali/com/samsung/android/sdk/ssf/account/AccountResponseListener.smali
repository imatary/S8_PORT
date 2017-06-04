.class Lcom/samsung/android/sdk/ssf/account/AccountResponseListener;
.super Lcom/samsung/android/sdk/ssf/common/model/ResponseListener;
.source "AccountResponseListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/samsung/android/sdk/ssf/common/model/ResponseListener",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ssf/common/model/ResponseListener;-><init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V

    return-void
.end method


# virtual methods
.method public onError(ILcom/android/volley/VolleyError;Ljava/lang/Object;)V
    .locals 13

    const/4 v12, 0x0

    const/16 v11, 0x2af8

    const/4 v7, 0x0

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    const/4 v8, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/samsung/android/sdk/ssf/account/AccountResponseListener;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    move-object/from16 v0, p3

    invoke-virtual {v10, p1, v12, v7, v0}, Lcom/samsung/android/sdk/ssf/SsfListener;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_1
    new-instance v7, Lcom/samsung/android/sdk/ssf/SsfResult;

    invoke-direct {v7}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    instance-of v10, p2, Lcom/samsung/android/sdk/ssf/common/model/CancelError;

    if-eqz v10, :cond_2

    const/16 v10, 0x2716

    iput v10, v7, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    goto :goto_0

    :cond_2
    instance-of v10, p2, Lcom/android/volley/TimeoutError;

    if-eqz v10, :cond_3

    const/16 v10, 0x2af9

    iput v10, v7, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    goto :goto_0

    :cond_3
    instance-of v10, p2, Lcom/android/volley/NoConnectionError;

    if-nez v10, :cond_4

    instance-of v10, p2, Lcom/samsung/android/sdk/ssf/common/model/SocketError;

    if-eqz v10, :cond_5

    :cond_4
    const/16 v10, 0x2afa

    iput v10, v7, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    goto :goto_0

    :cond_5
    instance-of v10, p2, Lcom/android/volley/NetworkError;

    if-eqz v10, :cond_7

    iput v11, v7, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    :cond_6
    :goto_2
    iget-object v6, p2, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-nez v6, :cond_8

    new-instance v9, Lcom/samsung/android/sdk/ssf/SsfResult;

    invoke-direct {v9}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    iput v11, v9, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    iget-object v10, p0, Lcom/samsung/android/sdk/ssf/account/AccountResponseListener;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    move-object/from16 v0, p3

    invoke-virtual {v10, p1, v12, v9, v0}, Lcom/samsung/android/sdk/ssf/SsfListener;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    instance-of v10, p2, Lcom/android/volley/ServerError;

    if-eqz v10, :cond_6

    const/16 v10, 0x2ee0

    iput v10, v7, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    goto :goto_2

    :cond_8
    const/4 v4, 0x0

    iget-object v10, v6, Lcom/android/volley/NetworkResponse;->data:[B

    if-eqz v10, :cond_9

    :try_start_0
    new-instance v5, Ljava/lang/String;

    iget-object v10, v6, Lcom/android/volley/NetworkResponse;->data:[B

    const-string/jumbo v11, "UTF-8"

    invoke-direct {v5, v10, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    :cond_9
    :goto_3
    iget v10, v6, Lcom/android/volley/NetworkResponse;->statusCode:I

    iput v10, v7, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    :try_start_1
    const-class v10, Lcom/samsung/android/sdk/ssf/account/io/AccountErrorResponse;

    invoke-virtual {v3, v4, v10}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lcom/samsung/android/sdk/ssf/account/io/AccountErrorResponse;

    move-object v8, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_a
    :goto_4
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/account/io/AccountErrorResponse;->getRcode()J

    move-result-wide v10

    iput-wide v10, v7, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/account/io/AccountErrorResponse;->getRmsg()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    iget v10, v7, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    invoke-virtual {v8, v10}, Lcom/samsung/android/sdk/ssf/account/io/AccountErrorResponse;->getStatusCode(I)I

    move-result v10

    iput v10, v7, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    iget v10, v7, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v11, 0x4e25

    if-eq v10, v11, :cond_b

    iget v10, v7, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v11, 0x4e26

    if-ne v10, v11, :cond_0

    :cond_b
    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/account/io/AccountErrorResponse;->getLeftBlockingHour()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    goto/16 :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception v10

    goto :goto_4
.end method

.method public onResponse(ILjava/lang/Object;ILjava/lang/Object;)V
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/ssf/SsfResult;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    iput p3, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    const/16 v1, 0x2710

    iput v1, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v1, 0xc8

    if-ne p3, v1, :cond_0

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/AccountResponseListener;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, p1, v2, v0, p4}, Lcom/samsung/android/sdk/ssf/SsfListener;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/AccountResponseListener;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-virtual {v1, p1, p2, v0, p4}, Lcom/samsung/android/sdk/ssf/SsfListener;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V

    goto :goto_0
.end method
