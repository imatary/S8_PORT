.class public Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;
.super Ljava/lang/Object;
.source "ResponseBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
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

.field private configuration:Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;

.field private errorListener:Lcom/android/volley/Response$ErrorListener;

.field private httpContent:Lcom/navercorp/volleyextensions/volleyer/http/HttpContent;

.field private isDoneToBuild:Z

.field private listener:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private requestQueue:Lcom/android/volley/RequestQueue;

.field private responseParser:Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;


# direct methods
.method constructor <init>(Lcom/android/volley/RequestQueue;Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;Lcom/navercorp/volleyextensions/volleyer/http/HttpContent;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/RequestQueue;",
            "Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;",
            "Lcom/navercorp/volleyextensions/volleyer/http/HttpContent;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->isDoneToBuild:Z

    const-string/jumbo v0, "RequestQueue"

    invoke-static {p1, v0}, Lcom/navercorp/volleyextensions/volleyer/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "VolleyerConfiguration"

    invoke-static {p2, v0}, Lcom/navercorp/volleyextensions/volleyer/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "HttpContent"

    invoke-static {p3, v0}, Lcom/navercorp/volleyextensions/volleyer/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "Target class token"

    invoke-static {p4, v0}, Lcom/navercorp/volleyextensions/volleyer/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->requestQueue:Lcom/android/volley/RequestQueue;

    iput-object p2, p0, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->configuration:Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;

    iput-object p3, p0, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->httpContent:Lcom/navercorp/volleyextensions/volleyer/http/HttpContent;

    iput-object p4, p0, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->clazz:Ljava/lang/Class;

    return-void
.end method

.method private assertFinishState()V
    .locals 2

    iget-boolean v0, p0, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->isDoneToBuild:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ResponseBuilder should not be used any more. Because execute() has been called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private buildRequest()Lcom/android/volley/Request;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/volley/Request",
            "<TT;>;"
        }
    .end annotation

    iget-object v1, p0, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->configuration:Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;

    invoke-virtual {v1}, Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;->getRequestCreator()Lcom/navercorp/volleyextensions/volleyer/request/creator/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->httpContent:Lcom/navercorp/volleyextensions/volleyer/http/HttpContent;

    iget-object v2, p0, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->clazz:Ljava/lang/Class;

    iget-object v3, p0, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->responseParser:Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;

    iget-object v4, p0, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->listener:Lcom/android/volley/Response$Listener;

    iget-object v5, p0, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->errorListener:Lcom/android/volley/Response$ErrorListener;

    invoke-interface/range {v0 .. v5}, Lcom/navercorp/volleyextensions/volleyer/request/creator/RequestCreator;->createRequest(Lcom/navercorp/volleyextensions/volleyer/http/HttpContent;Ljava/lang/Class;Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    move-result-object v1

    return-object v1
.end method

.method private createEmptyListener()Lcom/android/volley/Response$Listener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/volley/Response$Listener",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder$1;

    invoke-direct {v0, p0}, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder$1;-><init>(Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;)V

    return-object v0
.end method

.method private executeRequest(Lcom/android/volley/Request;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->configuration:Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;

    invoke-virtual {v1}, Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;->getRequestExecutor()Lcom/navercorp/volleyextensions/volleyer/request/executor/RequestExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->requestQueue:Lcom/android/volley/RequestQueue;

    invoke-interface {v0, v1, p1}, Lcom/navercorp/volleyextensions/volleyer/request/executor/RequestExecutor;->executeRequest(Lcom/android/volley/RequestQueue;Lcom/android/volley/Request;)V

    return-void
.end method

.method private setFallbackErrorListenerIfNull()V
    .locals 1

    iget-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->errorListener:Lcom/android/volley/Response$ErrorListener;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->configuration:Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;

    invoke-virtual {v0}, Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;->getFallbackErrorListener()Lcom/android/volley/Response$ErrorListener;

    move-result-object v0

    iput-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->errorListener:Lcom/android/volley/Response$ErrorListener;

    goto :goto_0
.end method

.method private setFallbackListenerIfNull()V
    .locals 1

    iget-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->listener:Lcom/android/volley/Response$Listener;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->createEmptyListener()Lcom/android/volley/Response$Listener;

    move-result-object v0

    iput-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->listener:Lcom/android/volley/Response$Listener;

    goto :goto_0
.end method

.method private setFallbackResponseParserIfNull()V
    .locals 1

    iget-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->responseParser:Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->configuration:Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;

    invoke-virtual {v0}, Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;->getFallbackNetworkResponseParser()Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;

    move-result-object v0

    iput-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->responseParser:Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;

    goto :goto_0
.end method


# virtual methods
.method public execute()Lcom/android/volley/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/volley/Request",
            "<TT;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->setFallbackListenerIfNull()V

    invoke-direct {p0}, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->setFallbackErrorListenerIfNull()V

    invoke-direct {p0}, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->setFallbackResponseParserIfNull()V

    invoke-direct {p0}, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->buildRequest()Lcom/android/volley/Request;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->executeRequest(Lcom/android/volley/Request;)V

    invoke-virtual {p0}, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->markFinishState()V

    goto :goto_0
.end method

.method protected final markFinishState()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->isDoneToBuild:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->requestQueue:Lcom/android/volley/RequestQueue;

    return-void
.end method

.method public withErrorListener(Lcom/android/volley/Response$ErrorListener;)Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder",
            "<TT;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->assertFinishState()V

    iput-object p1, p0, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->errorListener:Lcom/android/volley/Response$ErrorListener;

    return-object p0
.end method

.method public withListener(Lcom/android/volley/Response$Listener;)Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener",
            "<TT;>;)",
            "Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder",
            "<TT;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->assertFinishState()V

    iput-object p1, p0, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->listener:Lcom/android/volley/Response$Listener;

    return-object p0
.end method

.method public withResponseParser(Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;)Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;",
            ")",
            "Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder",
            "<TT;>;"
        }
    .end annotation

    const-string/jumbo v0, "Response Parser"

    invoke-static {p1, v0}, Lcom/navercorp/volleyextensions/volleyer/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->assertFinishState()V

    iput-object p1, p0, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->responseParser:Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;

    return-object p0
.end method
