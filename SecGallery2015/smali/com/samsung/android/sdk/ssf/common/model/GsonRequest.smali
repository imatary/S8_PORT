.class public Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;
.super Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;
.source "GsonRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/samsung/android/sdk/ssf/common/model/CommonRequest",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBodyBytes:[B

.field private final mGson:Lcom/google/gson/Gson;

.field private final mHeaderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProtocolContentType:Ljava/lang/String;

.field private final mResponseClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mUseRequestGZip:Z

.field private mUseResponseGZip:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SSF "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Class;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;I",
            "Lcom/samsung/android/sdk/ssf/common/model/ResponseListener",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;-><init>(ILjava/lang/String;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->mHeaderMap:Ljava/util/Map;

    const-string/jumbo v0, "application/json"

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->mProtocolContentType:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->mUseRequestGZip:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->mUseResponseGZip:Z

    iput-object p3, p0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->mResponseClass:Ljava/lang/Class;

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setShouldCache(Z)Lcom/android/volley/Request;

    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;

    const/16 v1, 0x1388

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Class;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;I",
            "Lcom/samsung/android/sdk/ssf/common/model/ResponseListener",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;-><init>(ILjava/lang/String;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;Ljava/lang/Object;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->mHeaderMap:Ljava/util/Map;

    const-string/jumbo v0, "application/json"

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->mProtocolContentType:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->mUseRequestGZip:Z

    iput-boolean v6, p0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->mUseResponseGZip:Z

    iput-object p3, p0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->mResponseClass:Ljava/lang/Class;

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {p0, v6}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setShouldCache(Z)Lcom/android/volley/Request;

    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;

    const/16 v1, 0x1388

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Class;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;Ljava/lang/Object;IIF)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;I",
            "Lcom/samsung/android/sdk/ssf/common/model/ResponseListener",
            "<TT;>;",
            "Ljava/lang/Object;",
            "IIF)V"
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;-><init>(ILjava/lang/String;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;Ljava/lang/Object;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->mHeaderMap:Ljava/util/Map;

    const-string/jumbo v0, "application/json"

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->mProtocolContentType:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->mUseRequestGZip:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->mUseResponseGZip:Z

    iput-object p3, p0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->mResponseClass:Ljava/lang/Class;

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->mGson:Lcom/google/gson/Gson;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setShouldCache(Z)Lcom/android/volley/Request;

    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;

    invoke-direct {v0, p7, p8, p9}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    return-void
.end method

.method public static isGZiped(Lcom/android/volley/NetworkResponse;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "Content-Encoding"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Content-Encoding"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "gzip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/sdk/ssf/common/model/GsonRequest",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->mHeaderMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public deliverError(Lcom/android/volley/VolleyError;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->mResponseListener:Lcom/samsung/android/sdk/ssf/common/model/ResponseListener;

    iget v1, p0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->mReqWhat:I

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->mUserData:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/android/sdk/ssf/common/model/ResponseListener;->onError(ILcom/android/volley/VolleyError;Ljava/lang/Object;)V

    return-void
.end method

.method protected deliverResponse(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->mResponseListener:Lcom/samsung/android/sdk/ssf/common/model/ResponseListener;

    iget v1, p0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->mReqWhat:I

    iget v2, p0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->mHttpStatusCode:I

    iget-object v3, p0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->mUserData:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/samsung/android/sdk/ssf/common/model/ResponseListener;->onResponse(ILjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public getBody()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->mBodyBytes:[B

    if-nez v1, :cond_0

    invoke-super {p0}, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->getBody()[B

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->getUseRequestGZip()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->getMethod()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->mBodyBytes:[B

    invoke-static {v1}, Lcom/samsung/android/sdk/ssf/common/util/Compressor;->compress([B)[B

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->mBodyBytes:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->mBodyBytes:[B

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/volley/AuthFailureError;

    invoke-direct {v1}, Lcom/android/volley/AuthFailureError;-><init>()V

    throw v1
.end method

.method public getBodyContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->mProtocolContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->mHeaderMap:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->getUseResponseGZip()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->mHeaderMap:Ljava/util/Map;

    const-string/jumbo v1, "Accept-Encoding"

    const-string/jumbo v2, "gzip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->getUseRequestGZip()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->getMethod()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->mHeaderMap:Ljava/util/Map;

    const-string/jumbo v1, "Content-Encoding"

    const-string/jumbo v2, "gzip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->mHeaderMap:Ljava/util/Map;

    return-object v0
.end method

.method public getUseRequestGZip()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->mUseRequestGZip:Z

    return v0
.end method

.method public getUseResponseGZip()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->mUseResponseGZip:Z

    return v0
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<TT;>;"
        }
    .end annotation

    :try_start_0
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/volley/NetworkResponse;->statusCode:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->mHttpStatusCode:I

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->getUseResponseGZip()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->isGZiped(Lcom/android/volley/NetworkResponse;)Z

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-static {v14}, Lcom/samsung/android/sdk/ssf/common/util/Compressor;->decompress([B)[B

    move-result-object v1

    new-instance v4, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v14}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v4, v1, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->mResponseClass:Ljava/lang/Class;

    const-class v15, Landroid/os/Bundle;

    if-ne v14, v15, :cond_2

    new-instance v7, Lcom/google/gson/JsonParser;

    invoke-direct {v7}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v7, v4}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v9

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/gson/JsonElement;

    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v8, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v14, Lcom/android/volley/ParseError;

    invoke-direct {v14, v2}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v14}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v14

    :goto_2
    return-object v14

    :cond_0
    :try_start_1
    new-instance v4, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/volley/NetworkResponse;->data:[B

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v15}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v4, v14, v15}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Response = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->TAG:Ljava/lang/String;

    invoke-static {v14, v15}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v12, v11

    invoke-static/range {p1 .. p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v14

    invoke-static {v11, v14}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v14

    goto :goto_2

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->mGson:Lcom/google/gson/Gson;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->mResponseClass:Ljava/lang/Class;

    invoke-virtual {v14, v4, v15}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Response = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->TAG:Ljava/lang/String;

    invoke-static {v14, v15}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v14

    goto :goto_2

    :cond_3
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v14

    goto :goto_2

    :catch_1
    move-exception v2

    new-instance v14, Lcom/android/volley/ParseError;

    invoke-direct {v14, v2}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v14}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v14

    goto :goto_2

    :catch_2
    move-exception v2

    new-instance v14, Lcom/android/volley/ParseError;

    invoke-direct {v14, v2}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v14}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v14

    goto :goto_2
.end method

.method public setBody(Ljava/lang/Object;)V
    .locals 4

    new-instance v2, Lcom/google/gson/GsonBuilder;

    invoke-direct {v2}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "body = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->mBodyBytes:[B

    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "body = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->mBodyBytes:[B

    return-void
.end method

.method public setBodyContentType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->mProtocolContentType:Ljava/lang/String;

    return-void
.end method

.method public setTimeout(IIF)V
    .locals 1

    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    return-void
.end method

.method public setUseGZip(Z)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/samsung/android/sdk/ssf/common/model/GsonRequest",
            "<TT;>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->mUseRequestGZip:Z

    iput-boolean p1, p0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->mUseResponseGZip:Z

    return-object p0
.end method
