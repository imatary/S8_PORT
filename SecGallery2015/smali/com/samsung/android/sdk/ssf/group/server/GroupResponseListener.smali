.class public Lcom/samsung/android/sdk/ssf/group/server/GroupResponseListener;
.super Lcom/samsung/android/sdk/ssf/common/model/ResponseListener;
.source "GroupResponseListener.java"


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


# instance fields
.field protected TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ssf/common/model/ResponseListener;-><init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V

    const-class v0, Lcom/samsung/android/sdk/ssf/group/server/GroupResponseListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/group/server/GroupResponseListener;->TAG:Ljava/lang/String;

    const-class v0, Lcom/samsung/android/sdk/ssf/group/GroupManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/group/server/GroupResponseListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method private parseError(Lcom/android/volley/VolleyError;Lcom/samsung/android/sdk/ssf/SsfResult;)V
    .locals 17

    const/4 v10, -0x1

    const/16 v11, 0x2ee0

    if-nez p1, :cond_0

    move-object/from16 v0, p2

    iput v10, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p1

    instance-of v13, v0, Lcom/samsung/android/sdk/ssf/common/model/CancelError;

    if-eqz v13, :cond_7

    const-string/jumbo v13, "consume cancel error, this is just for release thread"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/sdk/ssf/group/server/GroupResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v13, v14}, Lcom/samsung/android/sdk/ssf/group/util/GroupLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0x2716

    :cond_1
    :goto_1
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    const-string/jumbo v4, ""

    const/4 v6, 0x0

    if-eqz v9, :cond_6

    iget v12, v9, Lcom/android/volley/NetworkResponse;->statusCode:I

    iget-object v3, v9, Lcom/android/volley/NetworkResponse;->data:[B

    const-string/jumbo v8, ""

    if-eqz v3, :cond_2

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v3}, Ljava/lang/String;-><init>([B)V

    :cond_2
    :try_start_0
    new-instance v7, Lcom/google/gson/Gson;

    invoke-direct {v7}, Lcom/google/gson/Gson;-><init>()V

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    const-class v13, Lcom/samsung/android/sdk/ssf/group/io/GroupErrorResponse;

    invoke-virtual {v7, v8, v13}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Lcom/samsung/android/sdk/ssf/group/io/GroupErrorResponse;

    move-object v6, v0

    :cond_3
    if-eqz v6, :cond_4

    invoke-virtual {v6, v12}, Lcom/samsung/android/sdk/ssf/group/io/GroupErrorResponse;->getStatusCode(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    :cond_4
    :goto_2
    const/16 v13, 0x1f8

    if-ne v12, v13, :cond_5

    const/16 v10, 0x2af9

    :cond_5
    const-string/jumbo v13, "HTTP ERROR [%d : %s]"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v8, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/ssf/group/server/GroupResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v4, v13}, Lcom/samsung/android/sdk/ssf/group/util/GroupLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    int-to-long v14, v11

    move-object/from16 v0, p2

    iput-wide v14, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    move-object/from16 v0, p2

    iput v10, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    move-object/from16 v0, p2

    iput-object v4, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    goto :goto_0

    :cond_7
    move-object/from16 v0, p1

    instance-of v13, v0, Lcom/android/volley/NoConnectionError;

    if-nez v13, :cond_8

    move-object/from16 v0, p1

    instance-of v13, v0, Lcom/samsung/android/sdk/ssf/common/model/SocketError;

    if-eqz v13, :cond_a

    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/VolleyError;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/ssf/group/server/GroupResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v2, v13}, Lcom/samsung/android/sdk/ssf/group/util/GroupLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_9
    const/16 v10, 0x2afa

    goto :goto_1

    :cond_a
    move-object/from16 v0, p1

    instance-of v13, v0, Lcom/android/volley/TimeoutError;

    if-eqz v13, :cond_b

    const-string/jumbo v13, "Timeout Error"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/sdk/ssf/group/server/GroupResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v13, v14}, Lcom/samsung/android/sdk/ssf/group/util/GroupLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0x2af9

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p1

    instance-of v13, v0, Lcom/android/volley/ServerError;

    if-eqz v13, :cond_c

    const-string/jumbo v13, "Server Error"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/sdk/ssf/group/server/GroupResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v13, v14}, Lcom/samsung/android/sdk/ssf/group/util/GroupLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0x2ee0

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p1

    instance-of v13, v0, Lcom/android/volley/NetworkError;

    if-eqz v13, :cond_d

    const-string/jumbo v13, "Network Error"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/sdk/ssf/group/server/GroupResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v13, v14}, Lcom/samsung/android/sdk/ssf/group/util/GroupLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0x2af8

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p1

    instance-of v13, v0, Lcom/android/volley/ParseError;

    if-eqz v13, :cond_1

    const/16 v10, 0x2afb

    goto/16 :goto_1

    :catch_0
    move-exception v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/ssf/group/server/GroupResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v5, v13}, Lcom/samsung/android/sdk/ssf/group/util/GroupLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public onError(ILcom/android/volley/VolleyError;Ljava/lang/Object;)V
    .locals 4

    new-instance v1, Lcom/samsung/android/sdk/ssf/SsfResult;

    invoke-direct {v1}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    iget-object v0, p2, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v0, :cond_0

    iget v2, v0, Lcom/android/volley/NetworkResponse;->statusCode:I

    iput v2, v1, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    :cond_0
    invoke-direct {p0, p2, v1}, Lcom/samsung/android/sdk/ssf/group/server/GroupResponseListener;->parseError(Lcom/android/volley/VolleyError;Lcom/samsung/android/sdk/ssf/SsfResult;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/group/server/GroupResponseListener;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, v1, p3}, Lcom/samsung/android/sdk/ssf/SsfListener;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V

    return-void
.end method

.method public onProgress(IILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/group/server/GroupResponseListener;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/ssf/SsfListener;->onProgress(IILjava/lang/Object;)V

    return-void
.end method

.method public onResponse(ILjava/lang/Object;ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/sdk/ssf/SsfResult;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    iput p3, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/group/server/GroupResponseListener;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-virtual {v1, p1, p2, v0, p4}, Lcom/samsung/android/sdk/ssf/SsfListener;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V

    return-void
.end method
