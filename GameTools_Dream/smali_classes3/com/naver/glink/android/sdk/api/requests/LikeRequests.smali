.class public Lcom/naver/glink/android/sdk/api/requests/LikeRequests;
.super Ljava/lang/Object;
.source "LikeRequests.java"


# static fields
.field public static final LIKE_REACTION_TYPE:Ljava/lang/String; = "like"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static categoryId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/naver/glink/android/sdk/api/requests/CacheRequests;->getChannelId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static contentsId(I)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->a()Lcom/naver/glink/android/sdk/configure/a;

    move-result-object v0

    iget-object v0, v0, Lcom/naver/glink/android/sdk/configure/a;->e:Lcom/naver/glink/android/sdk/configure/a$b;

    iget v0, v0, Lcom/naver/glink/android/sdk/configure/a$b;->a:I

    invoke-static {}, Lcom/naver/glink/android/sdk/api/requests/CacheRequests;->getChannelId()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static contentsPath(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/like_neoid/v1/services/glink/contents/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/naver/glink/android/sdk/api/requests/LikeRequests;->contentsId(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static defaultParameters(Lcom/naver/glink/android/sdk/api/GResponses$LikeCountResponse;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/naver/glink/android/sdk/api/GResponses$LikeCountResponse;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "consumerKey"

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->a()Lcom/naver/glink/android/sdk/configure/a;

    move-result-object v2

    iget-object v2, v2, Lcom/naver/glink/android/sdk/configure/a;->e:Lcom/naver/glink/android/sdk/configure/a$b;

    iget-object v2, v2, Lcom/naver/glink/android/sdk/configure/a$b;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "token"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "snsCode"

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->p()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/naver/glink/android/sdk/login/neoid/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string/jumbo v1, "reactionType"

    const-string/jumbo v2, "like"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "categoryId"

    invoke-static {}, Lcom/naver/glink/android/sdk/api/requests/LikeRequests;->categoryId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p0, :cond_1

    const-string/jumbo v1, "isPostTimeline"

    const-string/jumbo v2, "false"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "guestToken"

    iget-object v2, p0, Lcom/naver/glink/android/sdk/api/GResponses$LikeCountResponse;->guestToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "timestamp"

    iget-object v2, p0, Lcom/naver/glink/android/sdk/api/GResponses$LikeCountResponse;->timestamp:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public static deleteLikeRequest(ILcom/naver/glink/android/sdk/api/GResponses$LikeCountResponse;)Lcom/naver/glink/android/sdk/api/request/Request;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/naver/glink/android/sdk/api/GResponses$LikeCountResponse;",
            ")",
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<",
            "Lcom/naver/glink/android/sdk/api/GResponses$LikeResponse;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/naver/glink/android/sdk/api/requests/LikeRequests;->defaultParameters(Lcom/naver/glink/android/sdk/api/GResponses$LikeCountResponse;)Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "suppress_response_codes"

    const-string/jumbo v2, "true"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "_method"

    const-string/jumbo v2, "DELETE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->LIKE:Lcom/naver/glink/android/sdk/api/request/RequestBuilders;

    invoke-static {p0}, Lcom/naver/glink/android/sdk/api/requests/LikeRequests;->contentsPath(I)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/naver/glink/android/sdk/api/GResponses$LikeResponse;

    invoke-virtual {v1, v2, v0, v3}, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->get(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    return-object v0
.end method

.method public static likeCountRequest(I)Lcom/naver/glink/android/sdk/api/request/Request;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<",
            "Lcom/naver/glink/android/sdk/api/GResponses$LikeCountResponse;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->LIKE:Lcom/naver/glink/android/sdk/api/request/RequestBuilders;

    invoke-static {p0}, Lcom/naver/glink/android/sdk/api/requests/LikeRequests;->contentsPath(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/naver/glink/android/sdk/api/requests/LikeRequests;->defaultParameters(Lcom/naver/glink/android/sdk/api/GResponses$LikeCountResponse;)Ljava/util/Map;

    move-result-object v2

    const-class v3, Lcom/naver/glink/android/sdk/api/GResponses$LikeCountResponse;

    invoke-virtual {v0, v1, v2, v3}, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->get(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    return-object v0
.end method

.method public static likeRequest(ILcom/naver/glink/android/sdk/api/GResponses$LikeCountResponse;)Lcom/naver/glink/android/sdk/api/request/Request;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/naver/glink/android/sdk/api/GResponses$LikeCountResponse;",
            ")",
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<",
            "Lcom/naver/glink/android/sdk/api/GResponses$LikeResponse;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/naver/glink/android/sdk/api/requests/LikeRequests;->defaultParameters(Lcom/naver/glink/android/sdk/api/GResponses$LikeCountResponse;)Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "suppress_response_codes"

    const-string/jumbo v2, "true"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "_method"

    const-string/jumbo v2, "POST"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->LIKE:Lcom/naver/glink/android/sdk/api/request/RequestBuilders;

    invoke-static {p0}, Lcom/naver/glink/android/sdk/api/requests/LikeRequests;->contentsPath(I)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/naver/glink/android/sdk/api/GResponses$LikeResponse;

    invoke-virtual {v1, v2, v0, v3}, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->get(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    return-object v0
.end method
