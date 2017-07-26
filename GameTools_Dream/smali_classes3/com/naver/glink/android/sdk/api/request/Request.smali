.class public Lcom/naver/glink/android/sdk/api/request/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/naver/glink/android/sdk/api/Response;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_RETRY_COUNT:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final builder:Lcom/naver/glink/android/sdk/api/request/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/naver/glink/android/sdk/api/request/RequestBuilder",
            "<TT;>;"
        }
    .end annotation
.end field

.field private pendingRequest:Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest",
            "<TT;>;"
        }
    .end annotation
.end field

.field private retryLoginError:Z

.field private tag:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/naver/glink/android/sdk/api/request/Request;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/naver/glink/android/sdk/api/request/Request;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/naver/glink/android/sdk/api/request/RequestBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/naver/glink/android/sdk/api/request/RequestBuilder",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/naver/glink/android/sdk/api/request/Request;->builder:Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/naver/glink/android/sdk/api/request/Request;->retryLoginError:Z

    return-void
.end method

.method static synthetic access$002(Lcom/naver/glink/android/sdk/api/request/Request;Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;)Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/api/request/Request;->pendingRequest:Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;

    return-object p1
.end method

.method static synthetic access$100(Lcom/naver/glink/android/sdk/api/request/Request;Landroid/content/Context;Lcom/naver/glink/android/sdk/api/GlinkError;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/naver/glink/android/sdk/api/request/Request;->canRetryError(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/GlinkError;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/naver/glink/android/sdk/api/request/Request;Landroid/content/Context;Lcom/naver/glink/android/sdk/api/GlinkError;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/naver/glink/android/sdk/api/request/Request;->executeRetry(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/GlinkError;)V

    return-void
.end method

.method static synthetic access$300(Lcom/naver/glink/android/sdk/api/request/Request;Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/naver/glink/android/sdk/api/request/Request;->afterExecute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method static synthetic access$400(Lcom/naver/glink/android/sdk/api/request/Request;Landroid/content/Context;ILcom/naver/glink/android/sdk/api/request/RequestListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/naver/glink/android/sdk/api/request/Request;->execute(Landroid/content/Context;ILcom/naver/glink/android/sdk/api/request/RequestListener;)V

    return-void
.end method

.method private afterExecute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/naver/glink/android/sdk/api/request/RequestListener",
            "<TT;>;TT;",
            "Lcom/android/volley/VolleyError;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_2

    if-nez p4, :cond_0

    :try_start_0
    invoke-virtual {p3}, Lcom/naver/glink/android/sdk/api/Response;->getError()Lcom/naver/glink/android/sdk/api/GlinkError;

    move-result-object v1

    if-eqz v1, :cond_3

    :cond_0
    invoke-virtual {p2, p3, p4}, Lcom/naver/glink/android/sdk/api/request/RequestListener;->onFailure(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V

    if-eqz p4, :cond_1

    instance-of v1, p4, Lcom/android/volley/AuthFailureError;

    if-eqz v1, :cond_1

    move-object v0, p4

    check-cast v0, Lcom/android/volley/AuthFailureError;

    move-object v1, v0

    invoke-direct {p0, p1, v1}, Lcom/naver/glink/android/sdk/api/request/Request;->handleLoginError(Landroid/content/Context;Lcom/android/volley/AuthFailureError;)V

    :cond_1
    :goto_0
    invoke-virtual {p2, p3, p4}, Lcom/naver/glink/android/sdk/api/request/RequestListener;->onFinally(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/api/request/Request;->builder:Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->showProgress()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/naver/glink/android/sdk/api/request/RequestListener;->uuid:Ljava/lang/String;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/parent/a;->b(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    :try_start_1
    invoke-virtual {p2, p3}, Lcom/naver/glink/android/sdk/api/request/RequestListener;->onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    iget-object v2, p0, Lcom/naver/glink/android/sdk/api/request/Request;->pendingRequest:Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;

    invoke-direct {p0, v2, p3, p4, v1}, Lcom/naver/glink/android/sdk/api/request/Request;->sendToNeloAndLogging(Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/api/request/Request;->builder:Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->showProgress()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/naver/glink/android/sdk/api/request/RequestListener;->uuid:Ljava/lang/String;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/parent/a;->b(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/naver/glink/android/sdk/api/request/Request;->builder:Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    invoke-virtual {v2}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->showProgress()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p2, Lcom/naver/glink/android/sdk/api/request/RequestListener;->uuid:Ljava/lang/String;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/parent/a;->b(Ljava/lang/String;)V

    :cond_4
    throw v1
.end method

.method private beforeExecute(Lcom/naver/glink/android/sdk/api/request/RequestListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/naver/glink/android/sdk/api/request/RequestListener",
            "<TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/request/Request;->builder:Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->showProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/naver/glink/android/sdk/api/request/RequestListener;->uuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/parent/a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private canRetryError(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/GlinkError;)Z
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/naver/glink/android/sdk/api/GlinkError;->isAuthenticationError()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static cancelAllRequests(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/naver/glink/android/sdk/api/request/VolleyQueue;->getInstance(Landroid/content/Context;)Lcom/naver/glink/android/sdk/api/request/VolleyQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/api/request/VolleyQueue;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/api/request/Request$1;

    invoke-direct {v1}, Lcom/naver/glink/android/sdk/api/request/Request$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->cancelAll(Lcom/android/volley/RequestQueue$RequestFilter;)V

    return-void
.end method

.method private execute(Landroid/content/Context;ILcom/naver/glink/android/sdk/api/request/RequestListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/naver/glink/android/sdk/api/request/RequestListener",
            "<TT;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/request/Request;->builder:Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->checkNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/naver/glink/android/sdk/a/i;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/naver/glink/android/sdk/R$string;->internet_not_connected_error:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p3}, Lcom/naver/glink/android/sdk/api/request/Request;->beforeExecute(Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    new-instance v0, Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;-><init>(Lcom/naver/glink/android/sdk/api/request/Request;Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;I)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/api/request/Request;->pendingRequest:Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/request/Request;->pendingRequest:Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/api/request/Request;->builder:Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    invoke-static {p1}, Lcom/naver/glink/android/sdk/api/request/VolleyQueue;->getRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v2

    new-instance v3, Lcom/naver/glink/android/sdk/api/request/Request$2;

    invoke-direct {v3, p0, p2, p1, p3}, Lcom/naver/glink/android/sdk/api/request/Request$2;-><init>(Lcom/naver/glink/android/sdk/api/request/Request;ILandroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    new-instance v4, Lcom/naver/glink/android/sdk/api/request/Request$3;

    invoke-direct {v4, p0, p1, p3}, Lcom/naver/glink/android/sdk/api/request/Request$3;-><init>(Lcom/naver/glink/android/sdk/api/request/Request;Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->buildRequest(Lcom/android/volley/RequestQueue;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    move-result-object v1

    iput-object v1, v0, Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;->volleyRequest:Lcom/android/volley/Request;

    goto :goto_0
.end method

.method private executeRetry(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/GlinkError;)V
    .locals 1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/api/request/Request;->retryLoginError:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/naver/glink/android/sdk/api/GlinkError;->isAuthenticationError()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/naver/glink/android/sdk/api/request/Request;->handleLoginError(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/GlinkError;)V

    goto :goto_0
.end method

.method private handleLoginError(Landroid/content/Context;Lcom/android/volley/AuthFailureError;)V
    .locals 3

    sget-object v0, Lcom/naver/glink/android/sdk/api/request/Request;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/naver/glink/android/sdk/api/request/Request;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "https login and retry count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/naver/glink/android/sdk/api/request/Request;->pendingRequest:Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;

    iget v2, v2, Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;->retryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p2, Lcom/android/volley/AuthFailureError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/String;

    iget-object v1, p2, Lcom/android/volley/AuthFailureError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget-object v1, v1, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v1, "024"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/naver/glink/android/sdk/login/LoginHelper;->a()Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;->logout(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/request/Request;->pendingRequest:Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/api/request/Request;->builder:Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->url()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->a()Lcom/naver/glink/android/sdk/configure/a;

    move-result-object v2

    iget-object v2, v2, Lcom/naver/glink/android/sdk/configure/a;->c:Lcom/naver/glink/android/sdk/configure/b;

    iget-object v2, v2, Lcom/naver/glink/android/sdk/configure/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Lcom/naver/glink/android/sdk/login/LoginHelper;->a(Z)Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;

    move-result-object v1

    new-instance v2, Lcom/naver/glink/android/sdk/api/request/Request$5;

    invoke-direct {v2, p0, v0}, Lcom/naver/glink/android/sdk/api/request/Request$5;-><init>(Lcom/naver/glink/android/sdk/api/request/Request;Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;)V

    invoke-virtual {v1, p1, v2}, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;->login(Landroid/content/Context;Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;)V

    :cond_1
    return-void
.end method

.method private handleLoginError(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/GlinkError;)V
    .locals 3

    sget-object v0, Lcom/naver/glink/android/sdk/api/request/Request;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/naver/glink/android/sdk/api/request/Request;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "login and retry count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/naver/glink/android/sdk/api/request/Request;->pendingRequest:Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;

    iget v2, v2, Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;->retryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p2, Lcom/naver/glink/android/sdk/api/GlinkError;->errorMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "Scope"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/naver/glink/android/sdk/login/LoginHelper;->a()Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;->logout(Landroid/content/Context;)V

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/request/Request;->pendingRequest:Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/api/request/Request;->builder:Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->url()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->a()Lcom/naver/glink/android/sdk/configure/a;

    move-result-object v2

    iget-object v2, v2, Lcom/naver/glink/android/sdk/configure/a;->c:Lcom/naver/glink/android/sdk/configure/b;

    iget-object v2, v2, Lcom/naver/glink/android/sdk/configure/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Lcom/naver/glink/android/sdk/login/LoginHelper;->a(Z)Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;

    move-result-object v1

    new-instance v2, Lcom/naver/glink/android/sdk/api/request/Request$4;

    invoke-direct {v2, p0, v0}, Lcom/naver/glink/android/sdk/api/request/Request$4;-><init>(Lcom/naver/glink/android/sdk/api/request/Request;Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;)V

    invoke-virtual {v1, p1, v2}, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;->login(Landroid/content/Context;Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;)V

    return-void
.end method

.method private sendToNeloAndLogging(Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;Ljava/lang/Exception;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest",
            "<TT;>;TT;",
            "Lcom/android/volley/VolleyError;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p1, Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;->volleyRequest:Lcom/android/volley/Request;

    invoke-virtual {v0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "exception raised during request:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->m()Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string/jumbo v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, p3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "stacktrace: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-object v0, Lcom/naver/glink/android/sdk/api/request/Request;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "exception raised during request"

    invoke-static {v0, v1, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/request/Request;->pendingRequest:Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/request/Request;->pendingRequest:Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;->volleyRequest:Lcom/android/volley/Request;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/request/Request;->pendingRequest:Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;->volleyRequest:Lcom/android/volley/Request;

    invoke-virtual {v0}, Lcom/android/volley/Request;->cancel()V

    :cond_0
    return-void
.end method

.method public checkNetworkConnected(Z)Lcom/naver/glink/android/sdk/api/request/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/request/Request;->builder:Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    invoke-virtual {v0, p1}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->checkNetworkConnected(Z)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    return-object p0
.end method

.method public execute(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/naver/glink/android/sdk/api/request/Request;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    return-void
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

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/naver/glink/android/sdk/api/request/Request;->execute(Landroid/content/Context;ILcom/naver/glink/android/sdk/api/request/RequestListener;)V

    return-void
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
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

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/request/Request;->builder:Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->headers()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/request/Request;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/request/Request;->builder:Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->url()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCanceled()Z
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/request/Request;->pendingRequest:Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/request/Request;->pendingRequest:Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;->volleyRequest:Lcom/android/volley/Request;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/request/Request;->pendingRequest:Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;->volleyRequest:Lcom/android/volley/Request;

    invoke-virtual {v0}, Lcom/android/volley/Request;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRetryLoginError(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/naver/glink/android/sdk/api/request/Request;->retryLoginError:Z

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/api/request/Request;->tag:Ljava/lang/Object;

    return-void
.end method

.method public showProgress(Z)Lcom/naver/glink/android/sdk/api/request/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/request/Request;->builder:Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    invoke-virtual {v0, p1}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->showProgress(Z)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    return-object p0
.end method
