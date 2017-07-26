.class Lcom/naver/glink/android/sdk/api/requests/CacheRequests$CafeCacheRequest;
.super Lcom/naver/glink/android/sdk/api/requests/CacheRequest;
.source "CacheRequests.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/api/requests/CacheRequests;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CafeCacheRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/naver/glink/android/sdk/api/requests/CacheRequest",
        "<",
        "Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private channelCode:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/requests/CacheRequest;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/naver/glink/android/sdk/api/requests/CacheRequests$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/requests/CacheRequests$CafeCacheRequest;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/naver/glink/android/sdk/api/requests/CacheRequests$CafeCacheRequest;Landroid/content/Context;Ljava/lang/String;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/naver/glink/android/sdk/api/requests/CacheRequests$CafeCacheRequest;->executeByChannelCode(Landroid/content/Context;Ljava/lang/String;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    return-void
.end method

.method private executeByChannelCode(Landroid/content/Context;Ljava/lang/String;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/naver/glink/android/sdk/api/request/RequestListener",
            "<",
            "Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;",
            ">;)V"
        }
    .end annotation

    iput-object p2, p0, Lcom/naver/glink/android/sdk/api/requests/CacheRequests$CafeCacheRequest;->channelCode:Ljava/lang/String;

    const/4 v0, 0x1

    new-instance v1, Lcom/naver/glink/android/sdk/api/requests/CacheRequests$CafeCacheRequest$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/naver/glink/android/sdk/api/requests/CacheRequests$CafeCacheRequest$1;-><init>(Lcom/naver/glink/android/sdk/api/requests/CacheRequests$CafeCacheRequest;Landroid/content/Context;Ljava/lang/String;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/naver/glink/android/sdk/api/requests/CacheRequests$CafeCacheRequest;->execute(Landroid/content/Context;ZLcom/naver/glink/android/sdk/api/request/RequestListener;)V

    return-void
.end method


# virtual methods
.method public createRequest()Lcom/naver/glink/android/sdk/api/request/Request;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<",
            "Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->a()Lcom/naver/glink/android/sdk/configure/a;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/api/requests/CacheRequests$CafeCacheRequest;->channelCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/configure/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/naver/glink/android/sdk/api/requests/Requests;->cafeRequest()Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/requests/CacheRequests$CafeCacheRequest;->channelCode:Ljava/lang/String;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/api/requests/GRequests;->cafeRequest(Ljava/lang/String;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    goto :goto_0
.end method

.method protected getCacheKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/requests/CacheRequests$CafeCacheRequest;->channelCode:Ljava/lang/String;

    return-object v0
.end method
