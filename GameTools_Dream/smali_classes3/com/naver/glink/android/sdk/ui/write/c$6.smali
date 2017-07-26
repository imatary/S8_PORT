.class final Lcom/naver/glink/android/sdk/ui/write/c$6;
.super Lcom/naver/glink/android/sdk/api/request/RequestListener;
.source "VideoUploadHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/write/c;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/naver/glink/android/sdk/api/request/RequestListener",
        "<",
        "Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse;)V
    .locals 4

    iget-object v0, p1, Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse;->optional:Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse$Optional;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse$Optional;->apis:Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse$Apis;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse$Apis;->video:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse;->optional:Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse$Optional;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse$Optional;->apis:Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse$Apis;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse$Apis;->video:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    iget-object v2, p1, Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse;->optional:Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse$Optional;

    iget-object v2, v2, Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse$Optional;->apis:Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse$Apis;

    iget-object v2, v2, Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse$Apis;->video:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iget-object v1, p1, Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse;->optional:Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse$Optional;

    iget-object v1, v1, Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse$Optional;->apis:Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse$Apis;

    iget-object v1, v1, Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse$Apis;->video:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests;->setHost(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public synthetic onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/write/c$6;->a(Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse;)V

    return-void
.end method
