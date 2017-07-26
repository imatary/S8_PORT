.class final Lcom/naver/glink/android/sdk/api/requests/CacheRequests$2;
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
        "Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse;",
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
            "Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/naver/glink/android/sdk/api/requests/GRequests;->connectionsRequest()Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    return-object v0
.end method
