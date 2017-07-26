.class final Lcom/naver/glink/android/sdk/api/requests/CacheRequests$3;
.super Lcom/naver/glink/android/sdk/api/requests/CacheRequest;
.source "CacheRequests.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/api/requests/CacheRequests;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/naver/glink/android/sdk/api/requests/CacheRequest",
        "<",
        "Lcom/naver/glink/android/sdk/api/Responses$HomeResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/requests/CacheRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public createRequest()Lcom/naver/glink/android/sdk/api/request/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<",
            "Lcom/naver/glink/android/sdk/api/Responses$HomeResponse;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/naver/glink/android/sdk/api/requests/Requests;->homeRequest()Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    return-object v0
.end method

.method protected getCacheKey()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/naver/glink/android/sdk/api/requests/CacheRequests;->getChannelId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
