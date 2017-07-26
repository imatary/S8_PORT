.class public Lcom/navercorp/volleyextensions/volleyer/multipart/stack/DefaultMultipartHttpStack;
.super Ljava/lang/Object;
.source "DefaultMultipartHttpStack.java"

# interfaces
.implements Lcom/navercorp/volleyextensions/volleyer/multipart/stack/MultipartHttpStack;


# static fields
.field private static final DEFAULT_USER_AGENT:Ljava/lang/String; = "volleyer-multipart"


# instance fields
.field private stack:Lcom/navercorp/volleyextensions/volleyer/multipart/stack/MultipartHttpStack;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "volleyer-multipart"

    invoke-direct {p0, v0}, Lcom/navercorp/volleyextensions/volleyer/multipart/stack/DefaultMultipartHttpStack;->determineMultipartStack(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/navercorp/volleyextensions/volleyer/multipart/stack/DefaultMultipartHttpStack;->determineMultipartStack(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/client/HttpClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/navercorp/volleyextensions/volleyer/multipart/stack/DefaultMultipartHttpStack;->determineMultipartStack(Lorg/apache/http/client/HttpClient;)V

    return-void
.end method

.method private createHttpClientIfNull(Lorg/apache/http/client/HttpClient;)Lorg/apache/http/client/HttpClient;
    .locals 1

    if-eqz p1, :cond_0

    :goto_0
    return-object p1

    :cond_0
    const-string/jumbo v0, "volleyer-multipart"

    invoke-static {v0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object p1

    goto :goto_0
.end method

.method private determineMultipartStack(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/navercorp/volleyextensions/volleyer/multipart/stack/DefaultMultipartHttpStack;->determineMultipartStack(Lorg/apache/http/client/HttpClient;)V

    return-void
.end method

.method private determineMultipartStack(Lorg/apache/http/client/HttpClient;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/navercorp/volleyextensions/volleyer/multipart/stack/MultipartHurlStack;

    invoke-direct {v0}, Lcom/navercorp/volleyextensions/volleyer/multipart/stack/MultipartHurlStack;-><init>()V

    iput-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/multipart/stack/DefaultMultipartHttpStack;->stack:Lcom/navercorp/volleyextensions/volleyer/multipart/stack/MultipartHttpStack;

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/navercorp/volleyextensions/volleyer/multipart/stack/DefaultMultipartHttpStack;->createHttpClientIfNull(Lorg/apache/http/client/HttpClient;)Lorg/apache/http/client/HttpClient;

    move-result-object p1

    new-instance v0, Lcom/navercorp/volleyextensions/volleyer/multipart/stack/MultipartHttpClientStack;

    invoke-direct {v0, p1}, Lcom/navercorp/volleyextensions/volleyer/multipart/stack/MultipartHttpClientStack;-><init>(Lorg/apache/http/client/HttpClient;)V

    iput-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/multipart/stack/DefaultMultipartHttpStack;->stack:Lcom/navercorp/volleyextensions/volleyer/multipart/stack/MultipartHttpStack;

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

    iget-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/multipart/stack/DefaultMultipartHttpStack;->stack:Lcom/navercorp/volleyextensions/volleyer/multipart/stack/MultipartHttpStack;

    invoke-interface {v0, p1, p2}, Lcom/navercorp/volleyextensions/volleyer/multipart/stack/MultipartHttpStack;->performRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method
