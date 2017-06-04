.class Lcom/samsung/android/sdk/ssf/account/TokenResponseListener;
.super Lcom/samsung/android/sdk/ssf/common/model/ResponseListener;
.source "TokenResponseListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/samsung/android/sdk/ssf/SsfResult;",
        ">",
        "Lcom/samsung/android/sdk/ssf/common/model/ResponseListener",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private typeArgumentClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/volley/toolbox/RequestFuture;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/toolbox/RequestFuture",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ssf/common/model/ResponseListener;-><init>(Lcom/android/volley/toolbox/RequestFuture;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/ssf/account/TokenResponseListener;->typeArgumentClass:Ljava/lang/Class;

    return-void
.end method

.method private parseError(Lcom/samsung/android/sdk/ssf/SsfResult;Lcom/android/volley/VolleyError;)V
    .locals 10

    const/16 v9, 0x2af8

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    const/4 v7, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v8, p2, Lcom/samsung/android/sdk/ssf/common/model/CancelError;

    if-eqz v8, :cond_2

    const/16 v8, 0x2716

    iput v8, p1, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    goto :goto_0

    :cond_2
    instance-of v8, p2, Lcom/android/volley/TimeoutError;

    if-eqz v8, :cond_3

    const/16 v8, 0x2af9

    iput v8, p1, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    goto :goto_0

    :cond_3
    instance-of v8, p2, Lcom/android/volley/NoConnectionError;

    if-nez v8, :cond_4

    instance-of v8, p2, Lcom/samsung/android/sdk/ssf/common/model/SocketError;

    if-eqz v8, :cond_5

    :cond_4
    const/16 v8, 0x2afa

    iput v8, p1, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    goto :goto_0

    :cond_5
    instance-of v8, p2, Lcom/android/volley/NetworkError;

    if-eqz v8, :cond_7

    iput v9, p1, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    :cond_6
    :goto_1
    iget-object v6, p2, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-nez v6, :cond_8

    iput v9, p1, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    goto :goto_0

    :cond_7
    instance-of v8, p2, Lcom/android/volley/ServerError;

    if-eqz v8, :cond_6

    const/16 v8, 0x2ee0

    iput v8, p1, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    goto :goto_1

    :cond_8
    const/4 v4, 0x0

    iget-object v8, v6, Lcom/android/volley/NetworkResponse;->data:[B

    if-eqz v8, :cond_9

    :try_start_0
    new-instance v5, Ljava/lang/String;

    iget-object v8, v6, Lcom/android/volley/NetworkResponse;->data:[B

    const-string/jumbo v9, "UTF-8"

    invoke-direct {v5, v8, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    :cond_9
    :goto_2
    iget v8, v6, Lcom/android/volley/NetworkResponse;->statusCode:I

    iput v8, p1, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    :try_start_1
    const-class v8, Lcom/samsung/android/sdk/ssf/account/io/AccountErrorResponse;

    invoke-virtual {v3, v4, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/samsung/android/sdk/ssf/account/io/AccountErrorResponse;

    move-object v7, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_a
    :goto_3
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/samsung/android/sdk/ssf/account/io/AccountErrorResponse;->getRcode()J

    move-result-wide v8

    iput-wide v8, p1, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    invoke-virtual {v7}, Lcom/samsung/android/sdk/ssf/account/io/AccountErrorResponse;->getRmsg()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p1, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    iget v8, p1, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/ssf/account/io/AccountErrorResponse;->getStatusCode(I)I

    move-result v8

    iput v8, p1, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    iget v8, p1, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v9, 0x4e25

    if-eq v8, v9, :cond_b

    iget v8, p1, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v9, 0x4e26

    if-ne v8, v9, :cond_0

    :cond_b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p1, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "Try again in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Lcom/samsung/android/sdk/ssf/account/io/AccountErrorResponse;->getLeftBlockingHour()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " Hours"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p1, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    goto/16 :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v8

    goto :goto_3
.end method


# virtual methods
.method public onError(ILcom/android/volley/VolleyError;Ljava/lang/Object;)V
    .locals 5

    iget-object v3, p0, Lcom/samsung/android/sdk/ssf/account/TokenResponseListener;->mFuture:Lcom/android/volley/toolbox/RequestFuture;

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/sdk/ssf/account/TokenResponseListener;->typeArgumentClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/ssf/SsfResult;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-direct {p0, v1, p2}, Lcom/samsung/android/sdk/ssf/account/TokenResponseListener;->parseError(Lcom/samsung/android/sdk/ssf/SsfResult;Lcom/android/volley/VolleyError;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/ssf/account/TokenResponseListener;->mFuture:Lcom/android/volley/toolbox/RequestFuture;

    invoke-virtual {v3, v1}, Lcom/android/volley/toolbox/RequestFuture;->onResponse(Ljava/lang/Object;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/samsung/android/sdk/ssf/SsfResult;

    invoke-direct {v2}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    invoke-direct {p0, v2, p2}, Lcom/samsung/android/sdk/ssf/account/TokenResponseListener;->parseError(Lcom/samsung/android/sdk/ssf/SsfResult;Lcom/android/volley/VolleyError;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/ssf/account/TokenResponseListener;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4, v2, p3}, Lcom/samsung/android/sdk/ssf/SsfListener;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onResponse(ILcom/samsung/android/sdk/ssf/SsfResult;ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/16 v2, 0x2710

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/TokenResponseListener;->mFuture:Lcom/android/volley/toolbox/RequestFuture;

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    iput v2, p2, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    iput p3, p2, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/TokenResponseListener;->mFuture:Lcom/android/volley/toolbox/RequestFuture;

    invoke-virtual {v1, p2}, Lcom/android/volley/toolbox/RequestFuture;->onResponse(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/ssf/SsfResult;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    iput p3, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    iput v2, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v1, 0xc8

    if-ne p3, v1, :cond_2

    if-nez p2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/TokenResponseListener;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, p1, v2, v0, p4}, Lcom/samsung/android/sdk/ssf/SsfListener;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/TokenResponseListener;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-virtual {v1, p1, p2, v0, p4}, Lcom/samsung/android/sdk/ssf/SsfListener;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(ILjava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/samsung/android/sdk/ssf/SsfResult;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/ssf/account/TokenResponseListener;->onResponse(ILcom/samsung/android/sdk/ssf/SsfResult;ILjava/lang/Object;)V

    return-void
.end method
