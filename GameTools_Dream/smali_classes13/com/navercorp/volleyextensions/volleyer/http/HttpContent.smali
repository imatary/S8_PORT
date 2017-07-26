.class public Lcom/navercorp/volleyextensions/volleyer/http/HttpContent;
.super Ljava/lang/Object;
.source "HttpContent.java"

# interfaces
.implements Lcom/navercorp/volleyextensions/volleyer/multipart/MultipartContainer;


# instance fields
.field private body:[B

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private method:Lcom/navercorp/volleyextensions/volleyer/http/HttpMethod;

.field private multipart:Lcom/navercorp/volleyextensions/volleyer/multipart/Multipart;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/navercorp/volleyextensions/volleyer/http/HttpMethod;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lcom/navercorp/volleyextensions/volleyer/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "HttpMethod"

    invoke-static {p2, v0}, Lcom/navercorp/volleyextensions/volleyer/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/navercorp/volleyextensions/volleyer/http/HttpContent;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/navercorp/volleyextensions/volleyer/http/HttpContent;->method:Lcom/navercorp/volleyextensions/volleyer/http/HttpMethod;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/http/HttpContent;->headers:Ljava/util/Map;

    new-instance v0, Lcom/navercorp/volleyextensions/volleyer/multipart/Multipart;

    invoke-direct {v0}, Lcom/navercorp/volleyextensions/volleyer/multipart/Multipart;-><init>()V

    iput-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/http/HttpContent;->multipart:Lcom/navercorp/volleyextensions/volleyer/multipart/Multipart;

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "Header key"

    invoke-static {p1, v0}, Lcom/navercorp/volleyextensions/volleyer/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "Header value"

    invoke-static {p2, v0}, Lcom/navercorp/volleyextensions/volleyer/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/http/HttpContent;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addPart(Lcom/navercorp/volleyextensions/volleyer/multipart/Part;)V
    .locals 1

    iget-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/http/HttpContent;->multipart:Lcom/navercorp/volleyextensions/volleyer/multipart/Multipart;

    invoke-virtual {v0, p1}, Lcom/navercorp/volleyextensions/volleyer/multipart/Multipart;->add(Lcom/navercorp/volleyextensions/volleyer/multipart/Part;)Z

    return-void
.end method

.method public getBody()[B
    .locals 1

    iget-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/http/HttpContent;->body:[B

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/http/HttpContent;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

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

    iget-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/http/HttpContent;->headers:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()Lcom/navercorp/volleyextensions/volleyer/http/HttpMethod;
    .locals 1

    iget-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/http/HttpContent;->method:Lcom/navercorp/volleyextensions/volleyer/http/HttpMethod;

    return-object v0
.end method

.method public getMultipart()Lcom/navercorp/volleyextensions/volleyer/multipart/Multipart;
    .locals 1

    iget-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/http/HttpContent;->multipart:Lcom/navercorp/volleyextensions/volleyer/multipart/Multipart;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/http/HttpContent;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hasMultipart()Z
    .locals 1

    iget-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/http/HttpContent;->multipart:Lcom/navercorp/volleyextensions/volleyer/multipart/Multipart;

    invoke-virtual {v0}, Lcom/navercorp/volleyextensions/volleyer/multipart/Multipart;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBody([B)V
    .locals 0

    iput-object p1, p0, Lcom/navercorp/volleyextensions/volleyer/http/HttpContent;->body:[B

    return-void
.end method
