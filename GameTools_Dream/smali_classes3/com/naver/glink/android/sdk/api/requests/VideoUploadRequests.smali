.class public Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests;
.super Ljava/lang/Object;
.source "VideoUploadRequests.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoInfoResponse;,
        Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoThumInfoResponse;,
        Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$CheckCompleteUploadResponse;,
        Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoChunkUploadResponse;,
        Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$UploadInfoResponse;,
        Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$UploadKeyResponse;
    }
.end annotation


# static fields
.field public static final CHUNK_SIZE:I = 0x500000

.field public static final DEFAULT_ATTACHMENT_TIMEOUT_MS:I = 0xea60

.field public static final DEFAULT_SEND_LOGO_TIMEOUT_MS:I = 0x493e0

.field private static final ENCODE_TYPE:Ljava/lang/String; = "normal"

.field public static final MINUTES:I = 0xea60

.field private static final PREFIX_USER_ID:Ljava/lang/String; = "plug"

.field public static final SECONDS:I = 0x3e8

.field static final SERVICE_ID:I = 0x7eb

.field static final SERVICE_ID_DEV:I = 0x560b

.field private static host:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static attachRequest(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/Class;)Lcom/naver/glink/android/sdk/api/request/Request;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/naver/glink/android/sdk/api/Response;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/navercorp/volleyextensions/volleyer/multipart/AbstractPart;",
            ">;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const v5, 0xea60

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests;->request(ILjava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/Class;I)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    return-object v0
.end method

.method public static checkCompleteUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/naver/glink/android/sdk/api/request/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<",
            "Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$CheckCompleteUploadResponse;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests;->defaultParameters()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "key"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "fn"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "userId"

    const-string/jumbo v2, "plug"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "chunkList"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "completeUploadFile.nhn"

    const-class v2, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$CheckCompleteUploadResponse;

    invoke-static {v1, v0, v2}, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests;->get(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    return-object v0
.end method

.method private static defaultParameters()Ljava/util/Map;
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

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "sid"

    invoke-static {}, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests;->getServiceId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static get(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;)Lcom/naver/glink/android/sdk/api/request/Request;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/naver/glink/android/sdk/api/Response;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/16 v5, 0x2710

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests;->request(ILjava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/Class;I)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    return-object v0
.end method

.method private static getServiceId()I
    .locals 1

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x560b

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x7eb

    goto :goto_0
.end method

.method public static getUploadInfo(Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$UploadKeyResponse;ILjava/lang/String;)Lcom/naver/glink/android/sdk/api/request/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$UploadKeyResponse;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<",
            "Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$UploadInfoResponse;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests;->defaultParameters()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "key"

    iget-object v2, p0, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$UploadKeyResponse;->key:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "fs"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "fn"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "userId"

    const-string/jumbo v2, "plug"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "getUploadInfo.nhn"

    const-class v2, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$UploadInfoResponse;

    invoke-static {v1, v0, v2}, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests;->get(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    return-object v0
.end method

.method public static getUploadKey(JLjava/lang/String;)Lcom/naver/glink/android/sdk/api/request/Request;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<",
            "Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$UploadKeyResponse;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests;->defaultParameters()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "cs"

    const/high16 v2, 0x500000

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "fs"

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "fn"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "userId"

    const-string/jumbo v2, "plug"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "getUploadKey.nhn"

    const-class v2, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$UploadKeyResponse;

    invoke-static {v1, v0, v2}, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests;->get(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    return-object v0
.end method

.method public static getUploadedVideoInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/naver/glink/android/sdk/api/request/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<",
            "Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoThumInfoResponse;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests;->defaultParameters()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "key"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "fn"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "encodeType"

    const-string/jumbo v2, "normal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "userId"

    const-string/jumbo v2, "plug"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "getVideoInfo.nhn"

    const-class v2, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoThumInfoResponse;

    invoke-static {v1, v0, v2}, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests;->get(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    return-object v0
.end method

.method private static headers()Ljava/util/Map;
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

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "User-Agent"

    invoke-static {}, Lcom/naver/glink/android/sdk/api/request/RequestHelper;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "Connection"

    const-string/jumbo v2, "close"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static isNullHost()Z
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests;->host:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static request(ILjava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/Class;I)Lcom/naver/glink/android/sdk/api/request/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/naver/glink/android/sdk/api/Response;",
            ">(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/navercorp/volleyextensions/volleyer/multipart/AbstractPart;",
            ">;",
            "Ljava/lang/Class",
            "<TT;>;I)",
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    invoke-direct {v0}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->method(I)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->host(Ljava/lang/String;)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/upload/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->path(Ljava/lang/String;)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    move-result-object v0

    invoke-static {}, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests;->headers()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->headers(Ljava/util/Map;)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->parameters(Ljava/util/Map;)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->parts(Ljava/util/List;)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->responseClass(Ljava/lang/Class;)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->timeoutMs(I)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->toRequest()Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    return-object v0
.end method

.method private static sendLogoGetRequest(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;)Lcom/naver/glink/android/sdk/api/request/Request;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/naver/glink/android/sdk/api/Response;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v3, 0x0

    const v5, 0x493e0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests;->request(ILjava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/Class;I)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    return-object v0
.end method

.method public static sendLogoImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/naver/glink/android/sdk/api/request/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<",
            "Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoInfoResponse;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests;->defaultParameters()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "key"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "fn"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "logoImage"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "userId"

    const-string/jumbo v2, "plug"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "sendLogoImage.nhn"

    const-class v2, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoInfoResponse;

    invoke-static {v1, v0, v2}, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests;->sendLogoGetRequest(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    return-object v0
.end method

.method public static setHost(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests;->host:Ljava/lang/String;

    return-void
.end method

.method public static uploadMovieRequest(IJLjava/lang/String;Ljava/io/File;I)Lcom/naver/glink/android/sdk/api/request/Request;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "I)",
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<",
            "Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoChunkUploadResponse;",
            ">;"
        }
    .end annotation

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/navercorp/volleyextensions/volleyer/multipart/StringPart;

    const-string/jumbo v1, "key"

    invoke-direct {v0, v1, p3}, Lcom/navercorp/volleyextensions/volleyer/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/navercorp/volleyextensions/volleyer/multipart/StringPart;

    const-string/jumbo v1, "sid"

    invoke-static {}, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests;->getServiceId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/navercorp/volleyextensions/volleyer/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/navercorp/volleyextensions/volleyer/multipart/StringPart;

    const-string/jumbo v1, "fs"

    invoke-virtual {p4}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/navercorp/volleyextensions/volleyer/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/navercorp/volleyextensions/volleyer/multipart/StringPart;

    const-string/jumbo v1, "fn"

    invoke-virtual {p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/navercorp/volleyextensions/volleyer/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/navercorp/volleyextensions/volleyer/multipart/StringPart;

    const-string/jumbo v1, "cn"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/navercorp/volleyextensions/volleyer/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/navercorp/volleyextensions/volleyer/multipart/StringPart;

    const-string/jumbo v1, "cs"

    const/high16 v2, 0x500000

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/navercorp/volleyextensions/volleyer/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/navercorp/volleyextensions/volleyer/multipart/StringPart;

    const-string/jumbo v1, "ccs"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/navercorp/volleyextensions/volleyer/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/navercorp/volleyextensions/volleyer/multipart/StringPart;

    const-string/jumbo v1, "userId"

    const-string/jumbo v2, "plug"

    invoke-direct {v0, v1, v2}, Lcom/navercorp/volleyextensions/volleyer/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/naver/glink/android/sdk/api/request/BytePart;

    const-string/jumbo v1, "file"

    invoke-static {p4}, Lcom/naver/glink/android/sdk/a/d;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;->createContentType(Ljava/lang/String;)Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

    move-result-object v2

    long-to-int v5, p1

    move-object v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/naver/glink/android/sdk/api/request/BytePart;-><init>(Ljava/lang/String;Lcom/navercorp/volleyextensions/volleyer/http/ContentType;Ljava/io/File;II)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "multipartChunk.nhn"

    const/4 v1, 0x0

    const-class v2, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoChunkUploadResponse;

    invoke-static {v0, v1, v6, v2}, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests;->attachRequest(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/Class;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    return-object v0
.end method

.method public static uploadSingleMovieRequest(IJLjava/lang/String;Ljava/io/File;)Lcom/naver/glink/android/sdk/api/request/Request;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ")",
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<",
            "Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoChunkUploadResponse;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/navercorp/volleyextensions/volleyer/multipart/StringPart;

    const-string/jumbo v2, "key"

    invoke-direct {v1, v2, p3}, Lcom/navercorp/volleyextensions/volleyer/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/navercorp/volleyextensions/volleyer/multipart/StringPart;

    const-string/jumbo v2, "sid"

    invoke-static {}, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests;->getServiceId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/navercorp/volleyextensions/volleyer/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/navercorp/volleyextensions/volleyer/multipart/StringPart;

    const-string/jumbo v2, "fs"

    invoke-virtual {p4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/navercorp/volleyextensions/volleyer/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/navercorp/volleyextensions/volleyer/multipart/StringPart;

    const-string/jumbo v2, "fn"

    invoke-virtual {p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/navercorp/volleyextensions/volleyer/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/navercorp/volleyextensions/volleyer/multipart/StringPart;

    const-string/jumbo v2, "cn"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/navercorp/volleyextensions/volleyer/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/navercorp/volleyextensions/volleyer/multipart/StringPart;

    const-string/jumbo v2, "cs"

    const/high16 v3, 0x500000

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/navercorp/volleyextensions/volleyer/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/navercorp/volleyextensions/volleyer/multipart/StringPart;

    const-string/jumbo v2, "ccs"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/navercorp/volleyextensions/volleyer/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/navercorp/volleyextensions/volleyer/multipart/StringPart;

    const-string/jumbo v2, "userId"

    const-string/jumbo v3, "plug"

    invoke-direct {v1, v2, v3}, Lcom/navercorp/volleyextensions/volleyer/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/navercorp/volleyextensions/volleyer/multipart/FilePart;

    const-string/jumbo v2, "file"

    invoke-static {p4}, Lcom/naver/glink/android/sdk/a/d;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;->createContentType(Ljava/lang/String;)Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

    move-result-object v3

    invoke-direct {v1, v2, p4, v3}, Lcom/navercorp/volleyextensions/volleyer/multipart/FilePart;-><init>(Ljava/lang/String;Ljava/io/File;Lcom/navercorp/volleyextensions/volleyer/http/ContentType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "multipartChunk.nhn"

    const/4 v2, 0x0

    const-class v3, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoChunkUploadResponse;

    invoke-static {v1, v2, v0, v3}, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests;->attachRequest(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/Class;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    return-object v0
.end method
