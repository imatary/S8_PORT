.class public final Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;
.super Lcom/samsung/android/sdk/ssf/common/model/ResponseListener;
.source "ContactResponseListener.java"


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


# static fields
.field private static final TAG:Ljava/lang/String;


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
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;->TAG:Ljava/lang/String;

    return-void
.end method

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

    iput-object p2, p0, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;->typeArgumentClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ssf/common/model/ResponseListener;-><init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V

    return-void
.end method

.method private praseServerError(Lcom/android/volley/VolleyError;Lcom/samsung/android/sdk/ssf/SsfResult;)V
    .locals 13

    const/16 v12, 0x2afb

    iget-object v7, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-nez v7, :cond_0

    const/16 v9, 0x2af8

    iput v9, p2, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    :cond_0
    const/4 v5, 0x0

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    const/4 v8, 0x0

    if-eqz v7, :cond_3

    :try_start_0
    iget-object v9, v7, Lcom/android/volley/NetworkResponse;->data:[B

    if-eqz v9, :cond_1

    invoke-static {v7}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->isGZiped(Lcom/android/volley/NetworkResponse;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, v7, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-static {v9}, Lcom/samsung/android/sdk/ssf/common/util/Compressor;->decompress([B)[B

    move-result-object v2

    new-instance v6, Ljava/lang/String;

    iget-object v9, v7, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v9}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v2, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v5, v6

    :cond_1
    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    const-class v9, Lcom/samsung/android/sdk/ssf/contact/io/ContactErrorResponse;

    invoke-virtual {v4, v5, v9}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/samsung/android/sdk/ssf/contact/io/ContactErrorResponse;

    move-object v8, v0

    :cond_2
    iget v9, v7, Lcom/android/volley/NetworkResponse;->statusCode:I

    iput v9, p2, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    :cond_3
    if-eqz v8, :cond_4

    iget v9, p2, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    invoke-virtual {v8, v9}, Lcom/samsung/android/sdk/ssf/contact/io/ContactErrorResponse;->getStatusCode(I)I

    move-result v9

    iput v9, p2, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactErrorResponse;->getRcode()J

    move-result-wide v10

    iput-wide v10, p2, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactErrorResponse;->getRmsg()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p2, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    :cond_4
    :goto_1
    return-void

    :cond_5
    new-instance v6, Ljava/lang/String;

    iget-object v9, v7, Lcom/android/volley/NetworkResponse;->data:[B

    iget-object v10, v7, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v10}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v9, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v5, v6

    goto :goto_0

    :catch_0
    move-exception v3

    iput v12, p2, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    goto :goto_1

    :catch_1
    move-exception v3

    iput v12, p2, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    goto :goto_1

    :catch_2
    move-exception v3

    iput v12, p2, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    goto :goto_1
.end method

.method private updateSsfResult(Lcom/android/volley/VolleyError;Lcom/samsung/android/sdk/ssf/SsfResult;)V
    .locals 2

    const/16 v1, 0x2af8

    if-nez p1, :cond_1

    iput v1, p2, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/samsung/android/sdk/ssf/common/model/CancelError;

    if-eqz v0, :cond_2

    const/16 v0, 0x2716

    iput v0, p2, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/android/volley/ParseError;

    if-eqz v0, :cond_3

    const/16 v0, 0x2afb

    iput v0, p2, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/android/volley/TimeoutError;

    if-eqz v0, :cond_4

    const/16 v0, 0x2af9

    iput v0, p2, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lcom/android/volley/NoConnectionError;

    if-nez v0, :cond_5

    instance-of v0, p1, Lcom/samsung/android/sdk/ssf/common/model/SocketError;

    if-eqz v0, :cond_6

    :cond_5
    const/16 v0, 0x2afa

    iput v0, p2, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    goto :goto_0

    :cond_6
    instance-of v0, p1, Lcom/android/volley/NetworkError;

    if-eqz v0, :cond_7

    iput v1, p2, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;->praseServerError(Lcom/android/volley/VolleyError;Lcom/samsung/android/sdk/ssf/SsfResult;)V

    goto :goto_0

    :cond_7
    instance-of v0, p1, Lcom/android/volley/ServerError;

    if-eqz v0, :cond_0

    const/16 v0, 0x2ee0

    iput v0, p2, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;->praseServerError(Lcom/android/volley/VolleyError;Lcom/samsung/android/sdk/ssf/SsfResult;)V

    goto :goto_0
.end method


# virtual methods
.method public onError(ILcom/android/volley/VolleyError;Ljava/lang/Object;)V
    .locals 5

    iget-object v3, p0, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;->mFuture:Lcom/android/volley/toolbox/RequestFuture;

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;->typeArgumentClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/ssf/SsfResult;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-direct {p0, p2, v2}, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;->updateSsfResult(Lcom/android/volley/VolleyError;Lcom/samsung/android/sdk/ssf/SsfResult;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;->mFuture:Lcom/android/volley/toolbox/RequestFuture;

    invoke-virtual {v3, v2}, Lcom/android/volley/toolbox/RequestFuture;->onResponse(Ljava/lang/Object;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/samsung/android/sdk/ssf/SsfResult;

    invoke-direct {v1}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    invoke-direct {p0, p2, v1}, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;->updateSsfResult(Lcom/android/volley/VolleyError;Lcom/samsung/android/sdk/ssf/SsfResult;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4, v1, p3}, Lcom/samsung/android/sdk/ssf/SsfListener;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
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

    if-nez p2, :cond_0

    const/16 v1, 0xc8

    if-ne p3, v1, :cond_0

    new-instance p2, Lcom/samsung/android/sdk/ssf/SsfResult;

    invoke-direct {p2}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;->mFuture:Lcom/android/volley/toolbox/RequestFuture;

    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    iput v2, p2, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    iput p3, p2, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;->mFuture:Lcom/android/volley/toolbox/RequestFuture;

    invoke-virtual {v1, p2}, Lcom/android/volley/toolbox/RequestFuture;->onResponse(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_2
    new-instance v0, Lcom/samsung/android/sdk/ssf/SsfResult;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    if-eqz p2, :cond_3

    iput v2, p2, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    :cond_3
    iput p3, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-virtual {v1, p1, p2, v0, p4}, Lcom/samsung/android/sdk/ssf/SsfListener;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(ILjava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/samsung/android/sdk/ssf/SsfResult;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;->onResponse(ILcom/samsung/android/sdk/ssf/SsfResult;ILjava/lang/Object;)V

    return-void
.end method
