.class public Lcom/navercorp/volleyextensions/volleyer/multipart/stack/MultipartHttpStackWrapper;
.super Ljava/lang/Object;
.source "MultipartHttpStackWrapper.java"

# interfaces
.implements Lcom/android/volley/toolbox/HttpStack;


# instance fields
.field private multipartStack:Lcom/navercorp/volleyextensions/volleyer/multipart/stack/MultipartHttpStack;

.field private final stack:Lcom/android/volley/toolbox/HttpStack;


# direct methods
.method public constructor <init>(Lcom/android/volley/toolbox/HttpStack;)V
    .locals 1

    new-instance v0, Lcom/navercorp/volleyextensions/volleyer/multipart/stack/DefaultMultipartHttpStack;

    invoke-direct {v0}, Lcom/navercorp/volleyextensions/volleyer/multipart/stack/DefaultMultipartHttpStack;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/navercorp/volleyextensions/volleyer/multipart/stack/MultipartHttpStackWrapper;-><init>(Lcom/android/volley/toolbox/HttpStack;Lcom/navercorp/volleyextensions/volleyer/multipart/stack/MultipartHttpStack;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/HttpStack;Lcom/navercorp/volleyextensions/volleyer/multipart/stack/MultipartHttpStack;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "HttpStack"

    invoke-static {p1, v0}, Lcom/navercorp/volleyextensions/volleyer/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "MultipartHttpStack"

    invoke-static {p2, v0}, Lcom/navercorp/volleyextensions/volleyer/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/navercorp/volleyextensions/volleyer/multipart/stack/MultipartHttpStackWrapper;->stack:Lcom/android/volley/toolbox/HttpStack;

    iput-object p2, p0, Lcom/navercorp/volleyextensions/volleyer/multipart/stack/MultipartHttpStackWrapper;->multipartStack:Lcom/navercorp/volleyextensions/volleyer/multipart/stack/MultipartHttpStack;

    return-void
.end method

.method private hasMultipart(Lcom/android/volley/Request;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    instance-of v3, p1, Lcom/navercorp/volleyextensions/volleyer/multipart/MultipartContainer;

    if-nez v3, :cond_0

    move v2, v1

    :goto_0
    return v2

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/navercorp/volleyextensions/volleyer/multipart/MultipartContainer;

    invoke-interface {v0}, Lcom/navercorp/volleyextensions/volleyer/multipart/MultipartContainer;->hasMultipart()Z

    move-result v3

    if-nez v3, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    move v2, v1

    goto :goto_0
.end method


# virtual methods
.method public performRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/navercorp/volleyextensions/volleyer/multipart/stack/MultipartHttpStackWrapper;->hasMultipart(Lcom/android/volley/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/multipart/stack/MultipartHttpStackWrapper;->multipartStack:Lcom/navercorp/volleyextensions/volleyer/multipart/stack/MultipartHttpStack;

    invoke-interface {v0, p1, p2}, Lcom/navercorp/volleyextensions/volleyer/multipart/stack/MultipartHttpStack;->performRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/multipart/stack/MultipartHttpStackWrapper;->stack:Lcom/android/volley/toolbox/HttpStack;

    invoke-interface {v0, p1, p2}, Lcom/android/volley/toolbox/HttpStack;->performRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    goto :goto_0
.end method
