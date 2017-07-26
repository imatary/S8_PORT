.class public Lcom/naver/glink/android/sdk/api/requests/CacheRequests;
.super Ljava/lang/Object;
.source "CacheRequests.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/api/requests/CacheRequests$CafeCacheRequest;
    }
.end annotation


# static fields
.field private static final cafeRequest:Lcom/naver/glink/android/sdk/api/requests/CacheRequests$CafeCacheRequest;

.field public static final connectionsRequest:Lcom/naver/glink/android/sdk/api/requests/CacheRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/naver/glink/android/sdk/api/requests/CacheRequest",
            "<",
            "Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final forChannelsRequest:Lcom/naver/glink/android/sdk/api/requests/CacheRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/naver/glink/android/sdk/api/requests/CacheRequest",
            "<",
            "Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final homeRequest:Lcom/naver/glink/android/sdk/api/requests/CacheRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/naver/glink/android/sdk/api/requests/CacheRequest",
            "<",
            "Lcom/naver/glink/android/sdk/api/Responses$HomeResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final menusRequest:Lcom/naver/glink/android/sdk/api/requests/CacheRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/naver/glink/android/sdk/api/requests/CacheRequest",
            "<",
            "Lcom/naver/glink/android/sdk/api/Responses$MenusResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/naver/glink/android/sdk/api/requests/CacheRequests$CafeCacheRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/naver/glink/android/sdk/api/requests/CacheRequests$CafeCacheRequest;-><init>(Lcom/naver/glink/android/sdk/api/requests/CacheRequests$1;)V

    sput-object v0, Lcom/naver/glink/android/sdk/api/requests/CacheRequests;->cafeRequest:Lcom/naver/glink/android/sdk/api/requests/CacheRequests$CafeCacheRequest;

    new-instance v0, Lcom/naver/glink/android/sdk/api/requests/CacheRequests$1;

    invoke-direct {v0}, Lcom/naver/glink/android/sdk/api/requests/CacheRequests$1;-><init>()V

    sput-object v0, Lcom/naver/glink/android/sdk/api/requests/CacheRequests;->forChannelsRequest:Lcom/naver/glink/android/sdk/api/requests/CacheRequest;

    new-instance v0, Lcom/naver/glink/android/sdk/api/requests/CacheRequests$2;

    invoke-direct {v0}, Lcom/naver/glink/android/sdk/api/requests/CacheRequests$2;-><init>()V

    sput-object v0, Lcom/naver/glink/android/sdk/api/requests/CacheRequests;->connectionsRequest:Lcom/naver/glink/android/sdk/api/requests/CacheRequest;

    new-instance v0, Lcom/naver/glink/android/sdk/api/requests/CacheRequests$3;

    invoke-direct {v0}, Lcom/naver/glink/android/sdk/api/requests/CacheRequests$3;-><init>()V

    sput-object v0, Lcom/naver/glink/android/sdk/api/requests/CacheRequests;->homeRequest:Lcom/naver/glink/android/sdk/api/requests/CacheRequest;

    new-instance v0, Lcom/naver/glink/android/sdk/api/requests/CacheRequests$4;

    invoke-direct {v0}, Lcom/naver/glink/android/sdk/api/requests/CacheRequests$4;-><init>()V

    sput-object v0, Lcom/naver/glink/android/sdk/api/requests/CacheRequests;->menusRequest:Lcom/naver/glink/android/sdk/api/requests/CacheRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAllCaches()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/naver/glink/android/sdk/api/requests/CacheRequests;->cafeRequest:Lcom/naver/glink/android/sdk/api/requests/CacheRequests$CafeCacheRequest;

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/api/requests/CacheRequests$CafeCacheRequest;->setCachedResponse(Lcom/naver/glink/android/sdk/api/Response;)V

    sget-object v0, Lcom/naver/glink/android/sdk/api/requests/CacheRequests;->forChannelsRequest:Lcom/naver/glink/android/sdk/api/requests/CacheRequest;

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/api/requests/CacheRequest;->setCachedResponse(Lcom/naver/glink/android/sdk/api/Response;)V

    sget-object v0, Lcom/naver/glink/android/sdk/api/requests/CacheRequests;->connectionsRequest:Lcom/naver/glink/android/sdk/api/requests/CacheRequest;

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/api/requests/CacheRequest;->setCachedResponse(Lcom/naver/glink/android/sdk/api/Response;)V

    sget-object v0, Lcom/naver/glink/android/sdk/api/requests/CacheRequests;->homeRequest:Lcom/naver/glink/android/sdk/api/requests/CacheRequest;

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/api/requests/CacheRequest;->setCachedResponse(Lcom/naver/glink/android/sdk/api/Response;)V

    sget-object v0, Lcom/naver/glink/android/sdk/api/requests/CacheRequests;->menusRequest:Lcom/naver/glink/android/sdk/api/requests/CacheRequest;

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/api/requests/CacheRequest;->setCachedResponse(Lcom/naver/glink/android/sdk/api/Response;)V

    return-void
.end method

.method public static getCafeResponse()Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/api/requests/CacheRequests;->cafeRequest:Lcom/naver/glink/android/sdk/api/requests/CacheRequests$CafeCacheRequest;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/api/requests/CacheRequests$CafeCacheRequest;->getCachedResponse()Lcom/naver/glink/android/sdk/api/Response;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;

    return-object v0
.end method

.method public static getChannelId()I
    .locals 1

    invoke-static {}, Lcom/naver/glink/android/sdk/api/requests/CacheRequests;->getCafeResponse()Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/naver/glink/android/sdk/api/requests/CacheRequests;->getCafeResponse()Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;

    move-result-object v0

    iget v0, v0, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;->channelId:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static loadCafeResponse(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/naver/glink/android/sdk/api/request/RequestListener",
            "<",
            "Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->a()Lcom/naver/glink/android/sdk/configure/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/configure/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/naver/glink/android/sdk/api/requests/CacheRequests;->loadCafeResponse(Landroid/content/Context;Ljava/lang/String;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    return-void
.end method

.method public static loadCafeResponse(Landroid/content/Context;Ljava/lang/String;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V
    .locals 1
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

    sget-object v0, Lcom/naver/glink/android/sdk/api/requests/CacheRequests;->cafeRequest:Lcom/naver/glink/android/sdk/api/requests/CacheRequests$CafeCacheRequest;

    invoke-static {v0, p0, p1, p2}, Lcom/naver/glink/android/sdk/api/requests/CacheRequests$CafeCacheRequest;->access$100(Lcom/naver/glink/android/sdk/api/requests/CacheRequests$CafeCacheRequest;Landroid/content/Context;Ljava/lang/String;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    return-void
.end method
