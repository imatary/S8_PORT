.class public Lcom/naver/glink/android/sdk/api/request/RequestBuilder;
.super Ljava/lang/Object;
.source "RequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/naver/glink/android/sdk/api/Response;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_RESPONSE_PARSER:Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;

.field private static final HMAC_KEY:Ljava/lang/String; = "KBSieWl2uyyEP4pbttFODqkT9oNmZoBbwIsY2q6Tu9DxTOgJnflwBaojawCKTY5k"


# instance fields
.field private checkNetworkConnected:Z

.field private headers:Ljava/util/Map;
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

.field private host:Ljava/lang/String;

.field private method:I

.field public parameters:Ljava/util/Map;
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

.field private parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/navercorp/volleyextensions/volleyer/multipart/AbstractPart;",
            ">;"
        }
    .end annotation
.end field

.field private path:Ljava/lang/String;

.field private responseClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private responseParser:Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;

.field private showProgress:Z

.field private timeoutMs:I

.field private useHmac:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/naver/glink/android/sdk/api/request/GsonNetworkResponseParser;

    invoke-direct {v0}, Lcom/naver/glink/android/sdk/api/request/GsonNetworkResponseParser;-><init>()V

    sput-object v0, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->DEFAULT_RESPONSE_PARSER:Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private _buildRequest(Lcom/android/volley/RequestQueue;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/RequestQueue;",
            "Lcom/android/volley/Response$Listener",
            "<TT;>;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<TT;>;"
        }
    .end annotation

    iget v0, p0, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->method:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\uc9c0\uc6d0\ud558\uc9c0 \uc54a\ub294 method \uc785\ub2c8\ub2e4."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p1}, Lcom/navercorp/volleyextensions/volleyer/Volleyer;->volleyer(Lcom/android/volley/RequestQueue;)Lcom/navercorp/volleyextensions/volleyer/Volleyer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/navercorp/volleyextensions/volleyer/Volleyer;->get(Ljava/lang/String;)Lcom/navercorp/volleyextensions/volleyer/builder/GetBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->headers()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/navercorp/volleyextensions/volleyer/builder/GetBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/navercorp/volleyextensions/volleyer/builder/RequestBuilder;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->responseClass:Ljava/lang/Class;

    invoke-virtual {v2, v0}, Lcom/navercorp/volleyextensions/volleyer/builder/GetBuilder;->withTargetClass(Ljava/lang/Class;)Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->responseParser()Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->withResponseParser(Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;)Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->withListener(Lcom/android/volley/Response$Listener;)Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->withErrorListener(Lcom/android/volley/Response$ErrorListener;)Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->execute()Lcom/android/volley/Request;

    move-result-object v0

    :goto_1
    return-object v0

    :pswitch_1
    invoke-static {p1}, Lcom/navercorp/volleyextensions/volleyer/Volleyer;->volleyer(Lcom/android/volley/RequestQueue;)Lcom/navercorp/volleyextensions/volleyer/Volleyer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/navercorp/volleyextensions/volleyer/Volleyer;->delete(Ljava/lang/String;)Lcom/navercorp/volleyextensions/volleyer/builder/DeleteBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->headers()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/navercorp/volleyextensions/volleyer/builder/DeleteBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/navercorp/volleyextensions/volleyer/builder/RequestBuilder;

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->responseClass:Ljava/lang/Class;

    invoke-virtual {v2, v0}, Lcom/navercorp/volleyextensions/volleyer/builder/DeleteBuilder;->withTargetClass(Ljava/lang/Class;)Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->responseParser()Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->withResponseParser(Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;)Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->withListener(Lcom/android/volley/Response$Listener;)Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->withErrorListener(Lcom/android/volley/Response$ErrorListener;)Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->execute()Lcom/android/volley/Request;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    invoke-static {p1}, Lcom/navercorp/volleyextensions/volleyer/Volleyer;->volleyer(Lcom/android/volley/RequestQueue;)Lcom/navercorp/volleyextensions/volleyer/Volleyer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/navercorp/volleyextensions/volleyer/Volleyer;->post(Ljava/lang/String;)Lcom/navercorp/volleyextensions/volleyer/builder/PostBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->headers()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/navercorp/volleyextensions/volleyer/builder/PostBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/navercorp/volleyextensions/volleyer/builder/RequestBuilder;

    goto :goto_3

    :cond_2
    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->queryString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/navercorp/volleyextensions/volleyer/builder/PostBuilder;->withBody([B)Lcom/navercorp/volleyextensions/volleyer/builder/BodyBuilder;

    :cond_3
    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->parts:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/navercorp/volleyextensions/volleyer/multipart/AbstractPart;

    invoke-virtual {v2, v0}, Lcom/navercorp/volleyextensions/volleyer/builder/PostBuilder;->addPart(Lcom/navercorp/volleyextensions/volleyer/multipart/Part;)Lcom/navercorp/volleyextensions/volleyer/builder/BodyBuilder;

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->responseClass:Ljava/lang/Class;

    invoke-virtual {v2, v0}, Lcom/navercorp/volleyextensions/volleyer/builder/PostBuilder;->withTargetClass(Ljava/lang/Class;)Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->responseParser()Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->withResponseParser(Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;)Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->withListener(Lcom/android/volley/Response$Listener;)Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->withErrorListener(Lcom/android/volley/Response$ErrorListener;)Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->execute()Lcom/android/volley/Request;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_3
    invoke-static {p1}, Lcom/navercorp/volleyextensions/volleyer/Volleyer;->volleyer(Lcom/android/volley/RequestQueue;)Lcom/navercorp/volleyextensions/volleyer/Volleyer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/navercorp/volleyextensions/volleyer/Volleyer;->put(Ljava/lang/String;)Lcom/navercorp/volleyextensions/volleyer/builder/PutBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->headers()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/navercorp/volleyextensions/volleyer/builder/PutBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/navercorp/volleyextensions/volleyer/builder/RequestBuilder;

    goto :goto_5

    :cond_5
    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->queryString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/navercorp/volleyextensions/volleyer/builder/PutBuilder;->withBody([B)Lcom/navercorp/volleyextensions/volleyer/builder/BodyBuilder;

    :cond_6
    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->responseClass:Ljava/lang/Class;

    invoke-virtual {v2, v0}, Lcom/navercorp/volleyextensions/volleyer/builder/PutBuilder;->withTargetClass(Ljava/lang/Class;)Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->responseParser()Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->withResponseParser(Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;)Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->withListener(Lcom/android/volley/Response$Listener;)Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->withErrorListener(Lcom/android/volley/Response$ErrorListener;)Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->execute()Lcom/android/volley/Request;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private makeUrl()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->method:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->method:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->queryString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private queryString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->parameters:Ljava/util/Map;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/api/request/RequestHelper;->makeQueryString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private responseParser()Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->responseParser:Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;

    if-nez v0, :cond_0

    sget-object v0, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->DEFAULT_RESPONSE_PARSER:Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->responseParser:Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;

    goto :goto_0
.end method


# virtual methods
.method buildRequest(Lcom/android/volley/RequestQueue;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/RequestQueue;",
            "Lcom/android/volley/Response$Listener",
            "<TT;>;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<TT;>;"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->_buildRequest(Lcom/android/volley/RequestQueue;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    move-result-object v0

    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    iget v2, p0, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->timeoutMs:I

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    return-object v0
.end method

.method public checkNetworkConnected(Z)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/naver/glink/android/sdk/api/request/RequestBuilder",
            "<TT;>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->checkNetworkConnected:Z

    return-object p0
.end method

.method public checkNetworkConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->checkNetworkConnected:Z

    return v0
.end method

.method public headers(Ljava/util/Map;)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/naver/glink/android/sdk/api/request/RequestBuilder",
            "<TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->headers:Ljava/util/Map;

    return-object p0
.end method

.method public headers()Ljava/util/Map;
    .locals 1
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

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->headers:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->headers:Ljava/util/Map;

    goto :goto_0
.end method

.method public host(Ljava/lang/String;)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/naver/glink/android/sdk/api/request/RequestBuilder",
            "<TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->host:Ljava/lang/String;

    return-object p0
.end method

.method public method(I)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/naver/glink/android/sdk/api/request/RequestBuilder",
            "<TT;>;"
        }
    .end annotation

    iput p1, p0, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->method:I

    return-object p0
.end method

.method public parameters(Ljava/util/Map;)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/naver/glink/android/sdk/api/request/RequestBuilder",
            "<TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->parameters:Ljava/util/Map;

    return-object p0
.end method

.method public parts(Ljava/util/List;)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/navercorp/volleyextensions/volleyer/multipart/AbstractPart;",
            ">;)",
            "Lcom/naver/glink/android/sdk/api/request/RequestBuilder",
            "<TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->parts:Ljava/util/List;

    return-object p0
.end method

.method public path(Ljava/lang/String;)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/naver/glink/android/sdk/api/request/RequestBuilder",
            "<TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->path:Ljava/lang/String;

    return-object p0
.end method

.method public responseClass(Ljava/lang/Class;)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/naver/glink/android/sdk/api/request/RequestBuilder",
            "<TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->responseClass:Ljava/lang/Class;

    return-object p0
.end method

.method public responseParser(Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;",
            ")",
            "Lcom/naver/glink/android/sdk/api/request/RequestBuilder",
            "<TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->responseParser:Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;

    return-object p0
.end method

.method public showProgress(Z)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/naver/glink/android/sdk/api/request/RequestBuilder",
            "<TT;>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->showProgress:Z

    return-object p0
.end method

.method public showProgress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->showProgress:Z

    return v0
.end method

.method public timeoutMs(I)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/naver/glink/android/sdk/api/request/RequestBuilder",
            "<TT;>;"
        }
    .end annotation

    iput p1, p0, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->timeoutMs:I

    return-object p0
.end method

.method public toRequest()Lcom/naver/glink/android/sdk/api/request/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/naver/glink/android/sdk/api/request/Request;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/api/request/Request;-><init>(Lcom/naver/glink/android/sdk/api/request/RequestBuilder;)V

    return-object v0
.end method

.method public url()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->useHmac:Z

    if-eqz v0, :cond_0

    :try_start_0
    const-string/jumbo v0, "KBSieWl2uyyEP4pbttFODqkT9oNmZoBbwIsY2q6Tu9DxTOgJnflwBaojawCKTY5k"

    invoke-static {v0}, Lcom/naver/api/security/HmacUtil;->getMac(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->makeUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/naver/api/security/HmacUtil;->makeEncryptUrl(Ljavax/crypto/Mac;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->makeUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->makeUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method useHmac(Z)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/naver/glink/android/sdk/api/request/RequestBuilder",
            "<TT;>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->useHmac:Z

    return-object p0
.end method
