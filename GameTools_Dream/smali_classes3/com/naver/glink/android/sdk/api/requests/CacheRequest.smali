.class public abstract Lcom/naver/glink/android/sdk/api/requests/CacheRequest;
.super Ljava/lang/Object;
.source "CacheRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/naver/glink/android/sdk/api/Response;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private cachedResponse:Lcom/naver/glink/android/sdk/api/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final pendingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/api/request/RequestListener",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private pendingRequest:Lcom/naver/glink/android/sdk/api/request/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/api/requests/CacheRequest;->pendingListeners:Ljava/util/List;

    return-void
.end method

.method static synthetic access$002(Lcom/naver/glink/android/sdk/api/requests/CacheRequest;Lcom/naver/glink/android/sdk/api/Response;)Lcom/naver/glink/android/sdk/api/Response;
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/api/requests/CacheRequest;->cachedResponse:Lcom/naver/glink/android/sdk/api/Response;

    return-object p1
.end method

.method static synthetic access$100(Lcom/naver/glink/android/sdk/api/requests/CacheRequest;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/requests/CacheRequest;->pendingListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lcom/naver/glink/android/sdk/api/requests/CacheRequest;Lcom/naver/glink/android/sdk/api/request/Request;)Lcom/naver/glink/android/sdk/api/request/Request;
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/api/requests/CacheRequest;->pendingRequest:Lcom/naver/glink/android/sdk/api/request/Request;

    return-object p1
.end method

.method private isTarget(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p2, Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract createRequest()Lcom/naver/glink/android/sdk/api/request/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<TT;>;"
        }
    .end annotation
.end method

.method public execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/naver/glink/android/sdk/api/request/RequestListener",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/naver/glink/android/sdk/api/requests/CacheRequest;->execute(Landroid/content/Context;ZLcom/naver/glink/android/sdk/api/request/RequestListener;)V

    return-void
.end method

.method public execute(Landroid/content/Context;ZLcom/naver/glink/android/sdk/api/request/RequestListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Lcom/naver/glink/android/sdk/api/request/RequestListener",
            "<TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/api/requests/CacheRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/api/requests/CacheRequest;->cachedResponse:Lcom/naver/glink/android/sdk/api/Response;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/api/requests/CacheRequest;->cachedResponse:Lcom/naver/glink/android/sdk/api/Response;

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/api/Response;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/naver/glink/android/sdk/api/requests/CacheRequest;->isTarget(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/requests/CacheRequest;->cachedResponse:Lcom/naver/glink/android/sdk/api/Response;

    invoke-virtual {p3, v0}, Lcom/naver/glink/android/sdk/api/request/RequestListener;->onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/naver/glink/android/sdk/api/requests/CacheRequest;->pendingRequest:Lcom/naver/glink/android/sdk/api/request/Request;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/naver/glink/android/sdk/api/requests/CacheRequest;->pendingRequest:Lcom/naver/glink/android/sdk/api/request/Request;

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/api/request/Request;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/naver/glink/android/sdk/api/requests/CacheRequest;->isTarget(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/naver/glink/android/sdk/api/requests/CacheRequest;->pendingRequest:Lcom/naver/glink/android/sdk/api/request/Request;

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/api/request/Request;->cancel()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/naver/glink/android/sdk/api/requests/CacheRequest;->pendingRequest:Lcom/naver/glink/android/sdk/api/request/Request;

    :cond_1
    iget-object v1, p0, Lcom/naver/glink/android/sdk/api/requests/CacheRequest;->pendingRequest:Lcom/naver/glink/android/sdk/api/request/Request;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/naver/glink/android/sdk/api/requests/CacheRequest;->pendingRequest:Lcom/naver/glink/android/sdk/api/request/Request;

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/api/request/Request;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/naver/glink/android/sdk/api/requests/CacheRequest;->pendingListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/api/requests/CacheRequest;->pendingListeners:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/api/requests/CacheRequest;->createRequest()Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v1

    iput-object v1, p0, Lcom/naver/glink/android/sdk/api/requests/CacheRequest;->pendingRequest:Lcom/naver/glink/android/sdk/api/request/Request;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/api/requests/CacheRequest;->pendingRequest:Lcom/naver/glink/android/sdk/api/request/Request;

    invoke-virtual {v1, v0}, Lcom/naver/glink/android/sdk/api/request/Request;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/api/requests/CacheRequest;->pendingRequest:Lcom/naver/glink/android/sdk/api/request/Request;

    invoke-virtual {v1, p2}, Lcom/naver/glink/android/sdk/api/request/Request;->showProgress(Z)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v1

    new-instance v2, Lcom/naver/glink/android/sdk/api/requests/CacheRequest$1;

    invoke-direct {v2, p0, v0, p3}, Lcom/naver/glink/android/sdk/api/requests/CacheRequest$1;-><init>(Lcom/naver/glink/android/sdk/api/requests/CacheRequest;Ljava/lang/String;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    invoke-virtual {v1, p1, v2}, Lcom/naver/glink/android/sdk/api/request/Request;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/requests/CacheRequest;->pendingListeners:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected getCacheKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method getCachedResponse()Lcom/naver/glink/android/sdk/api/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/requests/CacheRequest;->cachedResponse:Lcom/naver/glink/android/sdk/api/Response;

    return-object v0
.end method

.method setCachedResponse(Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/requests/CacheRequest;->pendingRequest:Lcom/naver/glink/android/sdk/api/request/Request;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/requests/CacheRequest;->pendingRequest:Lcom/naver/glink/android/sdk/api/request/Request;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/api/request/Request;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/api/requests/CacheRequest;->pendingRequest:Lcom/naver/glink/android/sdk/api/request/Request;

    :cond_0
    iput-object p1, p0, Lcom/naver/glink/android/sdk/api/requests/CacheRequest;->cachedResponse:Lcom/naver/glink/android/sdk/api/Response;

    return-void
.end method
