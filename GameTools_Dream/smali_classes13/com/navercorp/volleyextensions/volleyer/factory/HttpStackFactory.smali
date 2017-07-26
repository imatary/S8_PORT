.class public Lcom/navercorp/volleyextensions/volleyer/factory/HttpStackFactory;
.super Ljava/lang/Object;
.source "HttpStackFactory.java"


# static fields
.field private static final DEFAULT_USER_AGENT:Ljava/lang/String; = "volleyer"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createAndroidHttpClient(Ljava/lang/String;)Lorg/apache/http/client/HttpClient;
    .locals 1

    invoke-static {p0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static createDefaultHttpStack()Lcom/android/volley/toolbox/HttpStack;
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x9

    if-lt v4, v5, :cond_0

    invoke-static {}, Lcom/navercorp/volleyextensions/volleyer/factory/HttpStackFactory;->createHurlStack()Lcom/android/volley/toolbox/HurlStack;

    move-result-object v2

    :goto_0
    new-instance v3, Lcom/navercorp/volleyextensions/volleyer/multipart/stack/DefaultMultipartHttpStack;

    invoke-direct {v3, v1}, Lcom/navercorp/volleyextensions/volleyer/multipart/stack/DefaultMultipartHttpStack;-><init>(Lorg/apache/http/client/HttpClient;)V

    new-instance v0, Lcom/navercorp/volleyextensions/volleyer/multipart/stack/MultipartHttpStackWrapper;

    invoke-direct {v0, v2, v3}, Lcom/navercorp/volleyextensions/volleyer/multipart/stack/MultipartHttpStackWrapper;-><init>(Lcom/android/volley/toolbox/HttpStack;Lcom/navercorp/volleyextensions/volleyer/multipart/stack/MultipartHttpStack;)V

    return-object v0

    :cond_0
    const-string/jumbo v4, "volleyer"

    invoke-static {v4}, Lcom/navercorp/volleyextensions/volleyer/factory/HttpStackFactory;->createAndroidHttpClient(Ljava/lang/String;)Lorg/apache/http/client/HttpClient;

    move-result-object v1

    invoke-static {v1}, Lcom/navercorp/volleyextensions/volleyer/factory/HttpStackFactory;->createHttpClientStack(Lorg/apache/http/client/HttpClient;)Lcom/android/volley/toolbox/HttpClientStack;

    move-result-object v2

    goto :goto_0
.end method

.method public static createHttpClientStack(Lorg/apache/http/client/HttpClient;)Lcom/android/volley/toolbox/HttpClientStack;
    .locals 1

    new-instance v0, Lcom/android/volley/toolbox/HttpClientStack;

    invoke-direct {v0, p0}, Lcom/android/volley/toolbox/HttpClientStack;-><init>(Lorg/apache/http/client/HttpClient;)V

    return-object v0
.end method

.method public static createHurlStack()Lcom/android/volley/toolbox/HurlStack;
    .locals 1

    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    return-object v0
.end method
