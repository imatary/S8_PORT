.class public Lcom/naver/glink/android/sdk/api/requests/GRequests;
.super Ljava/lang/Object;
.source "GRequests.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static articleRequest(I)Lcom/naver/glink/android/sdk/api/request/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<",
            "Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->PLUG:Lcom/naver/glink/android/sdk/api/request/RequestBuilders;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/articles/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->get(Ljava/lang/String;Ljava/lang/Class;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    return-object v0
.end method

.method public static attachImageRequest(Lcom/naver/glink/android/sdk/api/Responses$AttachAuthResponse;Ljava/io/File;)Lcom/naver/glink/android/sdk/api/request/Request;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/naver/glink/android/sdk/api/Responses$AttachAuthResponse;",
            "Ljava/io/File;",
            ")",
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<",
            "Lcom/naver/glink/android/sdk/api/GResponses$AttachImageResponse;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/api/Responses$AttachAuthResponse;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/simpleUpload/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/naver/glink/android/sdk/api/Responses$AttachAuthResponse;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/naver/glink/android/sdk/api/Responses$AttachAuthResponse;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?extractAnimatedCnt=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "User-Agent"

    invoke-static {}, Lcom/naver/glink/android/sdk/api/request/RequestHelper;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "consumerKey"

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->a()Lcom/naver/glink/android/sdk/configure/a;

    move-result-object v3

    iget-object v3, v3, Lcom/naver/glink/android/sdk/configure/a;->e:Lcom/naver/glink/android/sdk/configure/a$b;

    iget-object v3, v3, Lcom/naver/glink/android/sdk/configure/a$b;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager$NeoIdTokenState;->OK:Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager$NeoIdTokenState;

    invoke-static {}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager;->c()Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager$NeoIdTokenState;

    move-result-object v3

    if-ne v2, v3, :cond_0

    invoke-static {}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "Authorization"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Bearer "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/navercorp/volleyextensions/volleyer/multipart/StringPart;

    const-string/jumbo v4, "serviceName"

    const-string/jumbo v5, "plug"

    invoke-direct {v3, v4, v5}, Lcom/navercorp/volleyextensions/volleyer/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/naver/glink/android/sdk/api/request/RenameFilePart;

    const-string/jumbo v4, "image"

    invoke-static {p1}, Lcom/naver/glink/android/sdk/a/d;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;->createContentType(Ljava/lang/String;)Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

    move-result-object v5

    invoke-direct {v3, v4, p1, v5}, Lcom/naver/glink/android/sdk/api/request/RenameFilePart;-><init>(Ljava/lang/String;Ljava/io/File;Lcom/navercorp/volleyextensions/volleyer/http/ContentType;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    invoke-direct {v3}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->method(I)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    move-result-object v3

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->a()Lcom/naver/glink/android/sdk/configure/a;

    move-result-object v4

    iget-object v4, v4, Lcom/naver/glink/android/sdk/configure/a;->c:Lcom/naver/glink/android/sdk/configure/b;

    iget-object v4, v4, Lcom/naver/glink/android/sdk/configure/b;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->host(Ljava/lang/String;)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->path(Ljava/lang/String;)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->headers(Ljava/util/Map;)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->parts(Ljava/util/List;)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    move-result-object v0

    const-class v1, Lcom/naver/glink/android/sdk/api/GResponses$AttachImageResponse;

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->responseClass(Ljava/lang/Class;)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/api/request/XmlNetworkResponseParser;

    invoke-direct {v1}, Lcom/naver/glink/android/sdk/api/request/XmlNetworkResponseParser;-><init>()V

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->responseParser(Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    move-result-object v0

    const v1, 0xea60

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->timeoutMs(I)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->toRequest()Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    return-object v0
.end method

.method public static cafeRequest(Ljava/lang/String;)Lcom/naver/glink/android/sdk/api/request/Request;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<",
            "Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "cafeLangCode"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v1, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->PLUG:Lcom/naver/glink/android/sdk/api/request/RequestBuilders;

    const-string/jumbo v2, "/cafe"

    const-class v3, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;

    invoke-virtual {v1, v2, v0, v3}, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->builder(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->method(I)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    move-result-object v0

    iget-object v1, v0, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->parameters:Ljava/util/Map;

    const-string/jumbo v2, "channelId"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->toRequest()Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    return-object v0
.end method

.method public static connectionsRequest()Lcom/naver/glink/android/sdk/api/request/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<",
            "Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "serviceId"

    const-string/jumbo v2, "plug"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->PLUG:Lcom/naver/glink/android/sdk/api/request/RequestBuilders;

    const-class v2, Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse;

    invoke-virtual {v1, v0, v2}, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->builder(Ljava/util/Map;Ljava/lang/Class;)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->method(I)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    move-result-object v0

    const-string/jumbo v1, "/gpop/v1/connections.json"

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->path(Ljava/lang/String;)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->toRequest()Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    return-object v0
.end method

.method public static logoutRequest()Lcom/naver/glink/android/sdk/api/request/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<",
            "Lcom/naver/glink/android/sdk/api/Responses$SuccessResponse;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->PLUG:Lcom/naver/glink/android/sdk/api/request/RequestBuilders;

    const-string/jumbo v1, "/logout"

    const-class v2, Lcom/naver/glink/android/sdk/api/Responses$SuccessResponse;

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->get(Ljava/lang/String;Ljava/lang/Class;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    return-object v0
.end method

.method public static memberArticleRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/naver/glink/android/sdk/api/request/Request;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<",
            "Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "articleType"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string/jumbo v1, "count"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->PLUG:Lcom/naver/glink/android/sdk/api/request/RequestBuilders;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/members/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/articles"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse;

    invoke-virtual {v1, v2, v0, v3}, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->get(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    return-object v0
.end method

.method public static memberRequest()Lcom/naver/glink/android/sdk/api/request/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<",
            "Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->PLUG:Lcom/naver/glink/android/sdk/api/request/RequestBuilders;

    const-string/jumbo v1, "/member/"

    const-class v2, Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->get(Ljava/lang/String;Ljava/lang/Class;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    return-object v0
.end method

.method public static otherMemberRequest(Ljava/lang/String;)Lcom/naver/glink/android/sdk/api/request/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<",
            "Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->PLUG:Lcom/naver/glink/android/sdk/api/request/RequestBuilders;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/members/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->get(Ljava/lang/String;Ljava/lang/Class;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    return-object v0
.end method

.method public static photoKeyRequest()Lcom/naver/glink/android/sdk/api/request/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<",
            "Lcom/naver/glink/android/sdk/api/Responses$AttachAuthResponse;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->PLUG:Lcom/naver/glink/android/sdk/api/request/RequestBuilders;

    const-string/jumbo v1, "/uploader/photo/key"

    const-class v2, Lcom/naver/glink/android/sdk/api/Responses$AttachAuthResponse;

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->get(Ljava/lang/String;Ljava/lang/Class;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    return-object v0
.end method

.method public static reportArticleRequest(I)Lcom/naver/glink/android/sdk/api/request/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<",
            "Lcom/naver/glink/android/sdk/api/Responses$SuccessResponse;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->PLUG:Lcom/naver/glink/android/sdk/api/request/RequestBuilders;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/report/articles/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/naver/glink/android/sdk/api/Responses$SuccessResponse;

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->post(Ljava/lang/String;Ljava/lang/Class;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    return-object v0
.end method
