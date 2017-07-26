.class final enum Lcom/naver/glink/android/sdk/api/request/RequestBuilders$4;
.super Lcom/naver/glink/android/sdk/api/request/RequestBuilders;
.source "RequestBuilders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/api/request/RequestBuilders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;-><init>(Ljava/lang/String;ILcom/naver/glink/android/sdk/api/request/RequestBuilders$1;)V

    return-void
.end method

.method private headers()Ljava/util/Map;
    .locals 5
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

    const-string/jumbo v1, "consumerKey"

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->a()Lcom/naver/glink/android/sdk/configure/a;

    move-result-object v2

    iget-object v2, v2, Lcom/naver/glink/android/sdk/configure/a;->e:Lcom/naver/glink/android/sdk/configure/a$b;

    iget-object v2, v2, Lcom/naver/glink/android/sdk/configure/a$b;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager$NeoIdTokenState;->OK:Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager$NeoIdTokenState;

    invoke-static {}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager;->c()Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager$NeoIdTokenState;

    move-result-object v2

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "Authorization"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bearer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public builder(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;
    .locals 3
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
            "Lcom/naver/glink/android/sdk/api/request/RequestBuilder",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    invoke-direct {v0}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;-><init>()V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->a()Lcom/naver/glink/android/sdk/configure/a;

    move-result-object v1

    iget-object v1, v1, Lcom/naver/glink/android/sdk/configure/a;->c:Lcom/naver/glink/android/sdk/configure/b;

    iget-object v1, v1, Lcom/naver/glink/android/sdk/configure/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->host(Ljava/lang/String;)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/plug"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->path(Ljava/lang/String;)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestBuilders$4;->headers()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->headers(Ljava/util/Map;)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->parameters(Ljava/util/Map;)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->responseClass(Ljava/lang/Class;)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->useHmac(Z)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->timeoutMs(I)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    move-result-object v0

    return-object v0
.end method
