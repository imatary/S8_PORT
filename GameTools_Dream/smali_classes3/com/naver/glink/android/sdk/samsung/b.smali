.class public Lcom/naver/glink/android/sdk/samsung/b;
.super Ljava/lang/Object;
.source "SRequests.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(II)Lcom/naver/glink/android/sdk/api/request/Request;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<",
            "Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, -0x1

    if-le p0, v1, :cond_0

    const-string/jumbo v1, "lastArticleId"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string/jumbo v1, "count"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->COMMON:Lcom/naver/glink/android/sdk/api/request/RequestBuilders;

    const-string/jumbo v2, "/home"

    const-class v3, Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;

    invoke-virtual {v1, v2, v0, v3}, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->get(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    return-object v0
.end method
