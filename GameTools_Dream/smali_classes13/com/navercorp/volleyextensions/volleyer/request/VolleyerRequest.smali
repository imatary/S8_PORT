.class public Lcom/navercorp/volleyextensions/volleyer/request/VolleyerRequest;
.super Lcom/android/volley/Request;
.source "VolleyerRequest.java"

# interfaces
.implements Lcom/navercorp/volleyextensions/volleyer/multipart/MultipartContainer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/volley/Request",
        "<TT;>;",
        "Lcom/navercorp/volleyextensions/volleyer/multipart/MultipartContainer;"
    }
.end annotation


# instance fields
.field private clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private httpContent:Lcom/navercorp/volleyextensions/volleyer/http/HttpContent;

.field private listener:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private responseParser:Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;


# direct methods
.method public constructor <init>(Lcom/navercorp/volleyextensions/volleyer/http/HttpContent;Ljava/lang/Class;Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/navercorp/volleyextensions/volleyer/http/HttpContent;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;",
            "Lcom/android/volley/Response$Listener",
            "<TT;>;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/navercorp/volleyextensions/volleyer/http/HttpContent;->getMethod()Lcom/navercorp/volleyextensions/volleyer/http/HttpMethod;

    move-result-object v0

    invoke-virtual {v0}, Lcom/navercorp/volleyextensions/volleyer/http/HttpMethod;->getMethodCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/navercorp/volleyextensions/volleyer/http/HttpContent;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p5}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    const-string/jumbo v0, "Target class token"

    invoke-static {p2, v0}, Lcom/navercorp/volleyextensions/volleyer/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "NetworkResponseParser"

    invoke-static {p3, v0}, Lcom/navercorp/volleyextensions/volleyer/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "listener"

    invoke-static {p4, v0}, Lcom/navercorp/volleyextensions/volleyer/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/navercorp/volleyextensions/volleyer/request/VolleyerRequest;->httpContent:Lcom/navercorp/volleyextensions/volleyer/http/HttpContent;

    iput-object p3, p0, Lcom/navercorp/volleyextensions/volleyer/request/VolleyerRequest;->responseParser:Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;

    iput-object p4, p0, Lcom/navercorp/volleyextensions/volleyer/request/VolleyerRequest;->listener:Lcom/android/volley/Response$Listener;

    iput-object p2, p0, Lcom/navercorp/volleyextensions/volleyer/request/VolleyerRequest;->clazz:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method protected deliverResponse(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/request/VolleyerRequest;->listener:Lcom/android/volley/Response$Listener;

    invoke-interface {v0, p1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method public getBody()[B
    .locals 1

    iget-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/request/VolleyerRequest;->httpContent:Lcom/navercorp/volleyextensions/volleyer/http/HttpContent;

    invoke-virtual {v0}, Lcom/navercorp/volleyextensions/volleyer/http/HttpContent;->getBody()[B

    move-result-object v0

    return-object v0
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    iget-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/request/VolleyerRequest;->httpContent:Lcom/navercorp/volleyextensions/volleyer/http/HttpContent;

    invoke-virtual {v0}, Lcom/navercorp/volleyextensions/volleyer/http/HttpContent;->getHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMultipart()Lcom/navercorp/volleyextensions/volleyer/multipart/Multipart;
    .locals 1

    iget-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/request/VolleyerRequest;->httpContent:Lcom/navercorp/volleyextensions/volleyer/http/HttpContent;

    invoke-virtual {v0}, Lcom/navercorp/volleyextensions/volleyer/http/HttpContent;->getMultipart()Lcom/navercorp/volleyextensions/volleyer/multipart/Multipart;

    move-result-object v0

    return-object v0
.end method

.method protected getTargetClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/request/VolleyerRequest;->clazz:Ljava/lang/Class;

    return-object v0
.end method

.method public hasMultipart()Z
    .locals 1

    iget-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/request/VolleyerRequest;->httpContent:Lcom/navercorp/volleyextensions/volleyer/http/HttpContent;

    invoke-virtual {v0}, Lcom/navercorp/volleyextensions/volleyer/http/HttpContent;->hasMultipart()Z

    move-result v0

    return v0
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/request/VolleyerRequest;->responseParser:Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;

    iget-object v1, p0, Lcom/navercorp/volleyextensions/volleyer/request/VolleyerRequest;->clazz:Ljava/lang/Class;

    invoke-interface {v0, p1, v1}, Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;->parseNetworkResponse(Lcom/android/volley/NetworkResponse;Ljava/lang/Class;)Lcom/android/volley/Response;

    move-result-object v0

    return-object v0
.end method
