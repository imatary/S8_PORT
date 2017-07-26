.class public Lcom/naver/glink/android/sdk/api/request/XmlNetworkResponseParser;
.super Ljava/lang/Object;
.source "XmlNetworkResponseParser.java"

# interfaces
.implements Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/naver/glink/android/sdk/api/request/XmlNetworkResponseParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/naver/glink/android/sdk/api/request/XmlNetworkResponseParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getInt(Lorg/w3c/dom/Element;Ljava/lang/String;)I
    .locals 1

    invoke-static {p0, p1}, Lcom/naver/glink/android/sdk/api/request/XmlNetworkResponseParser;->getString(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method static getString(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static parseBodyString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    const-class v0, Lcom/naver/glink/android/sdk/api/GResponses$AttachImageResponse;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/naver/glink/android/sdk/api/GResponses$AttachImageResponse;

    invoke-direct {v0}, Lcom/naver/glink/android/sdk/api/GResponses$AttachImageResponse;-><init>()V

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    const-string/jumbo v3, "utf-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    const-string/jumbo v2, "index"

    invoke-static {v1, v2}, Lcom/naver/glink/android/sdk/api/request/XmlNetworkResponseParser;->getInt(Lorg/w3c/dom/Element;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/naver/glink/android/sdk/api/GResponses$AttachImageResponse;->index:I

    const-string/jumbo v2, "url"

    invoke-static {v1, v2}, Lcom/naver/glink/android/sdk/api/request/XmlNetworkResponseParser;->getString(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/naver/glink/android/sdk/api/GResponses$AttachImageResponse;->url:Ljava/lang/String;

    const-string/jumbo v2, "path"

    invoke-static {v1, v2}, Lcom/naver/glink/android/sdk/api/request/XmlNetworkResponseParser;->getString(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/naver/glink/android/sdk/api/GResponses$AttachImageResponse;->path:Ljava/lang/String;

    const-string/jumbo v2, "fileName"

    invoke-static {v1, v2}, Lcom/naver/glink/android/sdk/api/request/XmlNetworkResponseParser;->getString(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/naver/glink/android/sdk/api/GResponses$AttachImageResponse;->fileName:Ljava/lang/String;

    const-string/jumbo v2, "width"

    invoke-static {v1, v2}, Lcom/naver/glink/android/sdk/api/request/XmlNetworkResponseParser;->getInt(Lorg/w3c/dom/Element;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/naver/glink/android/sdk/api/GResponses$AttachImageResponse;->width:I

    const-string/jumbo v2, "height"

    invoke-static {v1, v2}, Lcom/naver/glink/android/sdk/api/request/XmlNetworkResponseParser;->getInt(Lorg/w3c/dom/Element;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/naver/glink/android/sdk/api/GResponses$AttachImageResponse;->height:I

    const-string/jumbo v2, "colorSpace"

    invoke-static {v1, v2}, Lcom/naver/glink/android/sdk/api/request/XmlNetworkResponseParser;->getString(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/naver/glink/android/sdk/api/GResponses$AttachImageResponse;->colorSpace:Ljava/lang/String;

    const-string/jumbo v2, "fileSize"

    invoke-static {v1, v2}, Lcom/naver/glink/android/sdk/api/request/XmlNetworkResponseParser;->getInt(Lorg/w3c/dom/Element;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/naver/glink/android/sdk/api/GResponses$AttachImageResponse;->fileSize:I

    const-string/jumbo v2, "thumbnail"

    invoke-static {v1, v2}, Lcom/naver/glink/android/sdk/api/request/XmlNetworkResponseParser;->getString(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/naver/glink/android/sdk/api/GResponses$AttachImageResponse;->thumbnail:Ljava/lang/String;

    const-string/jumbo v2, "animatedCnt"

    invoke-static {v1, v2}, Lcom/naver/glink/android/sdk/api/request/XmlNetworkResponseParser;->getInt(Lorg/w3c/dom/Element;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/naver/glink/android/sdk/api/GResponses$AttachImageResponse;->animatedCnt:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/naver/glink/android/sdk/api/request/XmlNetworkResponseParser;->TAG:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final getBodyString(Lcom/android/volley/NetworkResponse;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/android/volley/NetworkResponse;->data:[B

    iget-object v2, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v2}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public parseNetworkResponse(Lcom/android/volley/NetworkResponse;Ljava/lang/Class;)Lcom/android/volley/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/NetworkResponse;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/android/volley/Response",
            "<TT;>;"
        }
    .end annotation

    const-string/jumbo v0, "The response"

    invoke-static {p1, v0}, Lcom/navercorp/volleyextensions/volleyer/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "The class token"

    invoke-static {p2, v0}, Lcom/navercorp/volleyextensions/volleyer/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/api/request/XmlNetworkResponseParser;->getBodyString(Lcom/android/volley/NetworkResponse;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/naver/glink/android/sdk/api/request/XmlNetworkResponseParser;->parseBodyString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/volley/ParseError;

    invoke-direct {v1, v0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v0

    goto :goto_0
.end method
