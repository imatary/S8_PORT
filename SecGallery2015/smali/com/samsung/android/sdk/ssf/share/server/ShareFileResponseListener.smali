.class public Lcom/samsung/android/sdk/ssf/share/server/ShareFileResponseListener;
.super Lcom/samsung/android/sdk/ssf/common/model/ResponseListener;
.source "ShareFileResponseListener.java"


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
.field protected HTTP_STATUS_CODE_ERROR:I

.field protected TAG:Ljava/lang/String;

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
    .locals 1
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

    const/16 v0, 0x190

    iput v0, p0, Lcom/samsung/android/sdk/ssf/share/server/ShareFileResponseListener;->HTTP_STATUS_CODE_ERROR:I

    iput-object p2, p0, Lcom/samsung/android/sdk/ssf/share/server/ShareFileResponseListener;->typeArgumentClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ssf/common/model/ResponseListener;-><init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V

    const/16 v0, 0x190

    iput v0, p0, Lcom/samsung/android/sdk/ssf/share/server/ShareFileResponseListener;->HTTP_STATUS_CODE_ERROR:I

    const-class v0, Lcom/samsung/android/sdk/ssf/file/FileManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/share/server/ShareFileResponseListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method private parseError(Lcom/android/volley/VolleyError;Lcom/samsung/android/sdk/ssf/SsfResult;)V
    .locals 18

    const/4 v10, -0x1

    const/16 v11, 0x2ee0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p1

    instance-of v13, v0, Lcom/samsung/android/sdk/ssf/common/model/CancelError;

    if-eqz v13, :cond_7

    const-string/jumbo v13, "consume cancel error, this is just for release thread"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/sdk/ssf/share/server/ShareFileResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v13, v14}, Lcom/samsung/android/sdk/ssf/file/util/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0x2716

    :cond_1
    :goto_1
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    const-string/jumbo v4, ""

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

    const-class v13, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;

    invoke-virtual {v7, v8, v13}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;

    if-eqz v6, :cond_4

    iget-wide v14, v6, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    const-wide/16 v16, 0x4a40

    cmp-long v13, v14, v16

    if-eqz v13, :cond_3

    iget-wide v14, v6, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide v16, 0xee7142f0L

    cmp-long v13, v14, v16

    if-nez v13, :cond_d

    :cond_3
    const/16 v11, 0x2ee1

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

    iget-object v13, v0, Lcom/samsung/android/sdk/ssf/share/server/ShareFileResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v4, v13}, Lcom/samsung/android/sdk/ssf/file/util/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

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

    iget-object v13, v0, Lcom/samsung/android/sdk/ssf/share/server/ShareFileResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v2, v13}, Lcom/samsung/android/sdk/ssf/file/util/FileLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_9
    const/16 v10, 0x2afa

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p1

    instance-of v13, v0, Lcom/android/volley/TimeoutError;

    if-eqz v13, :cond_b

    const-string/jumbo v13, "Timeout Error"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/sdk/ssf/share/server/ShareFileResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v13, v14}, Lcom/samsung/android/sdk/ssf/file/util/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0x2af9

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p1

    instance-of v13, v0, Lcom/android/volley/ServerError;

    if-eqz v13, :cond_c

    const-string/jumbo v13, "Server Error"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/sdk/ssf/share/server/ShareFileResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v13, v14}, Lcom/samsung/android/sdk/ssf/file/util/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0x2ee0

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p1

    instance-of v13, v0, Lcom/android/volley/NetworkError;

    if-eqz v13, :cond_1

    const-string/jumbo v13, "Network Error"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/sdk/ssf/share/server/ShareFileResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v13, v14}, Lcom/samsung/android/sdk/ssf/file/util/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0x2af8

    goto/16 :goto_1

    :cond_d
    :try_start_1
    iget-wide v14, v6, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    const-wide v16, 0xee6e3938L

    cmp-long v13, v14, v16

    if-nez v13, :cond_e

    const/16 v11, -0x29

    goto/16 :goto_2

    :cond_e
    iget-wide v14, v6, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    const-wide v16, 0xee6e3939L

    cmp-long v13, v14, v16

    if-nez v13, :cond_f

    const/16 v11, -0x2a

    goto/16 :goto_2

    :cond_f
    iget-wide v14, v6, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    const-wide v16, 0xee6e393aL

    cmp-long v13, v14, v16

    if-nez v13, :cond_10

    const/16 v11, -0x2b

    goto/16 :goto_2

    :cond_10
    iget-wide v14, v6, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    const-wide v16, 0xee6e393eL

    cmp-long v13, v14, v16

    if-nez v13, :cond_11

    const/16 v11, -0x2c

    goto/16 :goto_2

    :cond_11
    iget-wide v14, v6, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    const-wide v16, 0xee6e3940L

    cmp-long v13, v14, v16

    if-nez v13, :cond_12

    const/16 v11, -0x2d

    goto/16 :goto_2

    :cond_12
    iget-wide v14, v6, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    const-wide v16, 0xee7142f0L

    cmp-long v13, v14, v16

    if-nez v13, :cond_13

    const/16 v11, -0x2e

    goto/16 :goto_2

    :cond_13
    iget-wide v14, v6, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    const-wide v16, 0xee6e3931L

    cmp-long v13, v14, v16

    if-nez v13, :cond_14

    const/16 v11, -0x2f

    goto/16 :goto_2

    :cond_14
    iget-wide v14, v6, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    const-wide v16, 0xf75f0aa9L

    cmp-long v13, v14, v16

    if-nez v13, :cond_15

    const/16 v11, -0x12

    goto/16 :goto_2

    :cond_15
    iget-wide v14, v6, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    const-wide v16, 0xee6e393dL

    cmp-long v13, v14, v16

    if-nez v13, :cond_16

    const/16 v11, -0x31

    goto/16 :goto_2

    :cond_16
    iget-wide v14, v6, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    const-wide v16, 0xee6e3941L

    cmp-long v13, v14, v16

    if-nez v13, :cond_17

    const/16 v11, -0x32

    goto/16 :goto_2

    :cond_17
    iget-wide v14, v6, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    const-wide v16, 0xee6e3942L

    cmp-long v13, v14, v16

    if-nez v13, :cond_18

    const/16 v11, -0x33

    goto/16 :goto_2

    :cond_18
    iget-wide v14, v6, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    const-wide v16, 0xee6e3947L

    cmp-long v13, v14, v16

    if-nez v13, :cond_19

    const/16 v11, -0x34

    goto/16 :goto_2

    :cond_19
    iget-wide v14, v6, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    const-wide v16, 0xee6e394bL

    cmp-long v13, v14, v16

    if-nez v13, :cond_1a

    const/16 v11, -0x35

    goto/16 :goto_2

    :cond_1a
    iget-wide v14, v6, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    const-wide v16, 0xee6e394eL

    cmp-long v13, v14, v16

    if-nez v13, :cond_1b

    const/16 v11, -0x36

    goto/16 :goto_2

    :cond_1b
    iget-wide v14, v6, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    const-wide v16, 0xee6e392bL

    cmp-long v13, v14, v16

    if-nez v13, :cond_1c

    const/16 v11, -0x37

    goto/16 :goto_2

    :cond_1c
    iget-wide v14, v6, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    const-wide v16, 0xee6e392cL

    cmp-long v13, v14, v16

    if-nez v13, :cond_1d

    const/16 v11, -0x38

    goto/16 :goto_2

    :cond_1d
    iget-wide v14, v6, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    const-wide v16, 0xee6e3930L

    cmp-long v13, v14, v16

    if-nez v13, :cond_1e

    const/16 v11, -0x39

    goto/16 :goto_2

    :cond_1e
    iget-wide v14, v6, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    const-wide v16, 0xee6e393bL

    cmp-long v13, v14, v16

    if-nez v13, :cond_1f

    const/16 v11, -0x3a

    goto/16 :goto_2

    :cond_1f
    iget-wide v14, v6, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    const-wide v16, 0xee6e3936L

    cmp-long v13, v14, v16

    if-nez v13, :cond_20

    const/16 v11, -0x3b

    goto/16 :goto_2

    :cond_20
    iget-wide v14, v6, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    const-wide v16, 0xee6e3944L

    cmp-long v13, v14, v16

    if-nez v13, :cond_21

    const/16 v11, -0x3c

    goto/16 :goto_2

    :cond_21
    iget-wide v14, v6, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    const-wide v16, 0xee6e3949L

    cmp-long v13, v14, v16

    if-nez v13, :cond_22

    const/16 v11, -0x3d

    goto/16 :goto_2

    :cond_22
    iget-wide v14, v6, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    const-wide v16, 0xee6e394aL

    cmp-long v13, v14, v16

    if-nez v13, :cond_23

    const/16 v11, -0x3e

    goto/16 :goto_2

    :cond_23
    iget-wide v14, v6, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    const-wide v16, 0xee6e3929L

    cmp-long v13, v14, v16

    if-nez v13, :cond_24

    const/16 v11, -0x3f

    goto/16 :goto_2

    :cond_24
    iget-wide v14, v6, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    const-wide v16, 0xee6e392aL

    cmp-long v13, v14, v16

    if-nez v13, :cond_25

    const/16 v11, -0x40

    goto/16 :goto_2

    :cond_25
    iget-wide v14, v6, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    const-wide v16, 0xee6e3945L

    cmp-long v13, v14, v16

    if-nez v13, :cond_26

    const/16 v11, -0x41

    goto/16 :goto_2

    :cond_26
    iget-wide v14, v6, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    const-wide v16, 0xee6e3946L

    cmp-long v13, v14, v16

    if-nez v13, :cond_27

    const/16 v11, -0x42

    goto/16 :goto_2

    :cond_27
    iget-wide v14, v6, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J

    const-wide v16, 0xf16929a9L

    cmp-long v13, v14, v16

    if-nez v13, :cond_28

    const/16 v11, -0x43

    goto/16 :goto_2

    :cond_28
    iget-wide v14, v6, Lcom/samsung/android/sdk/ssf/share/io/FileShareServerError;->rcode:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-wide v16, 0xee6e3933L

    cmp-long v13, v14, v16

    if-nez v13, :cond_4

    const/16 v11, -0x44

    goto/16 :goto_2

    :catch_0
    move-exception v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/ssf/share/server/ShareFileResponseListener;->TAG:Ljava/lang/String;

    invoke-static {v5, v13}, Lcom/samsung/android/sdk/ssf/file/util/FileLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public onError(ILcom/android/volley/VolleyError;Ljava/lang/Object;)V
    .locals 6

    new-instance v3, Lcom/samsung/android/sdk/ssf/SsfResult;

    invoke-direct {v3}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    iget v4, p0, Lcom/samsung/android/sdk/ssf/share/server/ShareFileResponseListener;->HTTP_STATUS_CODE_ERROR:I

    iput v4, v3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    iget-object v1, p2, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget-object v4, p0, Lcom/samsung/android/sdk/ssf/share/server/ShareFileResponseListener;->mFuture:Lcom/android/volley/toolbox/RequestFuture;

    if-eqz v4, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/sdk/ssf/share/server/ShareFileResponseListener;->typeArgumentClass:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    invoke-direct {p0, p2, v3}, Lcom/samsung/android/sdk/ssf/share/server/ShareFileResponseListener;->parseError(Lcom/android/volley/VolleyError;Lcom/samsung/android/sdk/ssf/SsfResult;)V

    iget-object v4, p0, Lcom/samsung/android/sdk/ssf/share/server/ShareFileResponseListener;->mFuture:Lcom/android/volley/toolbox/RequestFuture;

    invoke-virtual {v4, v2}, Lcom/android/volley/toolbox/RequestFuture;->onResponse(Ljava/lang/Object;)V

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
    if-eqz v1, :cond_1

    iget v4, v1, Lcom/android/volley/NetworkResponse;->statusCode:I

    iput v4, v3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    :cond_1
    invoke-direct {p0, p2, v3}, Lcom/samsung/android/sdk/ssf/share/server/ShareFileResponseListener;->parseError(Lcom/android/volley/VolleyError;Lcom/samsung/android/sdk/ssf/SsfResult;)V

    iget-object v4, p0, Lcom/samsung/android/sdk/ssf/share/server/ShareFileResponseListener;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5, v3, p3}, Lcom/samsung/android/sdk/ssf/SsfListener;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onProgress(IILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/share/server/ShareFileResponseListener;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/ssf/SsfListener;->onProgress(IILjava/lang/Object;)V

    return-void
.end method

.method public onResponse(ILjava/lang/Object;ILjava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    new-instance v1, Lcom/samsung/android/sdk/ssf/SsfResult;

    invoke-direct {v1}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    iput p3, v1, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/share/server/ShareFileResponseListener;->mFuture:Lcom/android/volley/toolbox/RequestFuture;

    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/share/server/ShareFileResponseListener;->typeArgumentClass:Ljava/lang/Class;

    const-class v3, Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsInfoResponse;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/share/server/ShareFileResponseListener;->mFuture:Lcom/android/volley/toolbox/RequestFuture;

    invoke-virtual {v2, p2}, Lcom/android/volley/toolbox/RequestFuture;->onResponse(Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/share/server/ShareFileResponseListener;->typeArgumentClass:Ljava/lang/Class;

    const-class v3, Lcom/samsung/android/sdk/ssf/share/io/CreateFolderShareItemsResponse;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/share/server/ShareFileResponseListener;->mFuture:Lcom/android/volley/toolbox/RequestFuture;

    invoke-virtual {v2, p2}, Lcom/android/volley/toolbox/RequestFuture;->onResponse(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Lcom/samsung/android/sdk/ssf/SsfResult;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    iput p3, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    const/16 v2, 0x2710

    iput v2, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v2, 0xc8

    if-ne p3, v2, :cond_3

    if-nez p2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/share/server/ShareFileResponseListener;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2, p1, v3, v0, p4}, Lcom/samsung/android/sdk/ssf/SsfListener;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/share/server/ShareFileResponseListener;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-virtual {v2, p1, p2, v0, p4}, Lcom/samsung/android/sdk/ssf/SsfListener;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V

    goto :goto_0
.end method
