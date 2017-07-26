.class Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/api/request/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/naver/glink/android/sdk/api/Response;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final listener:Lcom/naver/glink/android/sdk/api/request/RequestListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/naver/glink/android/sdk/api/request/RequestListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field final request:Lcom/naver/glink/android/sdk/api/request/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<TT;>;"
        }
    .end annotation
.end field

.field final retryCount:I

.field volleyRequest:Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Request",
            "<TT;>;"
        }
    .end annotation
.end field

.field final weakContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/api/request/Request;Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<TT;>;",
            "Landroid/content/Context;",
            "Lcom/naver/glink/android/sdk/api/request/RequestListener",
            "<TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;->request:Lcom/naver/glink/android/sdk/api/request/Request;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;->weakContext:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;->listener:Lcom/naver/glink/android/sdk/api/request/RequestListener;

    iput p4, p0, Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;->retryCount:I

    return-void
.end method


# virtual methods
.method cancel()V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;->volleyRequest:Lcom/android/volley/Request;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;->volleyRequest:Lcom/android/volley/Request;

    new-instance v1, Lcom/android/volley/VolleyError;

    invoke-direct {v1}, Lcom/android/volley/VolleyError;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->deliverError(Lcom/android/volley/VolleyError;)V

    :cond_0
    return-void
.end method

.method retry()V
    .locals 4

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;->weakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;->request:Lcom/naver/glink/android/sdk/api/request/Request;

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;->request:Lcom/naver/glink/android/sdk/api/request/Request;

    iget v2, p0, Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;->retryCount:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;->listener:Lcom/naver/glink/android/sdk/api/request/RequestListener;

    invoke-static {v1, v0, v2, v3}, Lcom/naver/glink/android/sdk/api/request/Request;->access$400(Lcom/naver/glink/android/sdk/api/request/Request;Landroid/content/Context;ILcom/naver/glink/android/sdk/api/request/RequestListener;)V

    goto :goto_0
.end method
