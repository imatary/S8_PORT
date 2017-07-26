.class final enum Lcom/naver/glink/android/sdk/api/request/RequestBuilders$1;
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


# virtual methods
.method public builder(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;
    .locals 1
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

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/naver/glink/android/sdk/api/request/RequestBuilders$1;->CAFE:Lcom/naver/glink/android/sdk/api/request/RequestBuilders;

    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->builder(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/naver/glink/android/sdk/api/request/RequestBuilders$1;->PLUG:Lcom/naver/glink/android/sdk/api/request/RequestBuilders;

    goto :goto_0
.end method
