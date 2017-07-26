.class abstract Lcom/navercorp/volleyextensions/volleyer/builder/RequestBuilder;
.super Ljava/lang/Object;
.source "RequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/navercorp/volleyextensions/volleyer/builder/RequestBuilder",
        "<TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final configuration:Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;

.field protected final httpContent:Lcom/navercorp/volleyextensions/volleyer/http/HttpContent;

.field protected isDoneToBuild:Z

.field private requestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method public constructor <init>(Lcom/android/volley/RequestQueue;Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;Ljava/lang/String;Lcom/navercorp/volleyextensions/volleyer/http/HttpMethod;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/navercorp/volleyextensions/volleyer/builder/RequestBuilder;->isDoneToBuild:Z

    const-string/jumbo v0, "RequestQueue"

    invoke-static {p1, v0}, Lcom/navercorp/volleyextensions/volleyer/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "VolleyerConfiguration"

    invoke-static {p2, v0}, Lcom/navercorp/volleyextensions/volleyer/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/navercorp/volleyextensions/volleyer/builder/RequestBuilder;->requestQueue:Lcom/android/volley/RequestQueue;

    iput-object p2, p0, Lcom/navercorp/volleyextensions/volleyer/builder/RequestBuilder;->configuration:Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;

    new-instance v0, Lcom/navercorp/volleyextensions/volleyer/http/HttpContent;

    invoke-direct {v0, p3, p4}, Lcom/navercorp/volleyextensions/volleyer/http/HttpContent;-><init>(Ljava/lang/String;Lcom/navercorp/volleyextensions/volleyer/http/HttpMethod;)V

    iput-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/builder/RequestBuilder;->httpContent:Lcom/navercorp/volleyextensions/volleyer/http/HttpContent;

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/navercorp/volleyextensions/volleyer/builder/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/navercorp/volleyextensions/volleyer/builder/RequestBuilder;->assertFinishState()V

    iget-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/builder/RequestBuilder;->httpContent:Lcom/navercorp/volleyextensions/volleyer/http/HttpContent;

    invoke-virtual {v0, p1, p2}, Lcom/navercorp/volleyextensions/volleyer/http/HttpContent;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method protected final assertFinishState()V
    .locals 2

    iget-boolean v0, p0, Lcom/navercorp/volleyextensions/volleyer/builder/RequestBuilder;->isDoneToBuild:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "RequestBuilder should not be used any more. Because afterRequest() has been called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public execute()Lcom/android/volley/Request;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/volley/Request",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/navercorp/volleyextensions/volleyer/builder/RequestBuilder;->assertFinishState()V

    const-class v1, Ljava/lang/Void;

    invoke-virtual {p0, v1}, Lcom/navercorp/volleyextensions/volleyer/builder/RequestBuilder;->withTargetClass(Ljava/lang/Class;)Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->execute()Lcom/android/volley/Request;

    move-result-object v1

    return-object v1
.end method

.method protected final markFinishState()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/navercorp/volleyextensions/volleyer/builder/RequestBuilder;->isDoneToBuild:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/builder/RequestBuilder;->requestQueue:Lcom/android/volley/RequestQueue;

    return-void
.end method

.method public withErrorListener(Lcom/android/volley/Response$ErrorListener;)Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/navercorp/volleyextensions/volleyer/builder/RequestBuilder;->assertFinishState()V

    const-class v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/navercorp/volleyextensions/volleyer/builder/RequestBuilder;->withTargetClass(Ljava/lang/Class;)Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->withErrorListener(Lcom/android/volley/Response$ErrorListener;)Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;

    return-object v0
.end method

.method public withListener(Lcom/android/volley/Response$Listener;)Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/navercorp/volleyextensions/volleyer/builder/RequestBuilder;->assertFinishState()V

    const-class v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/navercorp/volleyextensions/volleyer/builder/RequestBuilder;->withTargetClass(Ljava/lang/Class;)Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;->withListener(Lcom/android/volley/Response$Listener;)Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;

    return-object v0
.end method

.method public withTargetClass(Ljava/lang/Class;)Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder",
            "<TT;>;"
        }
    .end annotation

    const-string/jumbo v1, "Target Class token"

    invoke-static {p1, v1}, Lcom/navercorp/volleyextensions/volleyer/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/navercorp/volleyextensions/volleyer/builder/RequestBuilder;->assertFinishState()V

    new-instance v0, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;

    iget-object v1, p0, Lcom/navercorp/volleyextensions/volleyer/builder/RequestBuilder;->requestQueue:Lcom/android/volley/RequestQueue;

    iget-object v2, p0, Lcom/navercorp/volleyextensions/volleyer/builder/RequestBuilder;->configuration:Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;

    iget-object v3, p0, Lcom/navercorp/volleyextensions/volleyer/builder/RequestBuilder;->httpContent:Lcom/navercorp/volleyextensions/volleyer/http/HttpContent;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;-><init>(Lcom/android/volley/RequestQueue;Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;Lcom/navercorp/volleyextensions/volleyer/http/HttpContent;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/navercorp/volleyextensions/volleyer/builder/RequestBuilder;->markFinishState()V

    return-object v0
.end method
