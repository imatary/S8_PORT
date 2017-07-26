.class abstract Lcom/navercorp/volleyextensions/volleyer/builder/BodyBuilder;
.super Lcom/navercorp/volleyextensions/volleyer/builder/RequestBuilder;
.source "BodyBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/navercorp/volleyextensions/volleyer/builder/BodyBuilder",
        "<TB;>;>",
        "Lcom/navercorp/volleyextensions/volleyer/builder/RequestBuilder",
        "<TB;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/volley/RequestQueue;Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;Ljava/lang/String;Lcom/navercorp/volleyextensions/volleyer/http/HttpMethod;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/navercorp/volleyextensions/volleyer/builder/RequestBuilder;-><init>(Lcom/android/volley/RequestQueue;Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;Ljava/lang/String;Lcom/navercorp/volleyextensions/volleyer/http/HttpMethod;)V

    return-void
.end method

.method private isBodyNull(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v1, "You have to set the body which is not null."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/navercorp/volleyextensions/volleyer/util/VolleyerLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public addFilePart(Ljava/io/File;)Lcom/navercorp/volleyextensions/volleyer/builder/BodyBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")TB;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/navercorp/volleyextensions/volleyer/builder/BodyBuilder;->addFilePart(Ljava/lang/String;Ljava/io/File;)Lcom/navercorp/volleyextensions/volleyer/builder/BodyBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addFilePart(Ljava/lang/String;Ljava/io/File;)Lcom/navercorp/volleyextensions/volleyer/builder/BodyBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ")TB;"
        }
    .end annotation

    iget-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/builder/BodyBuilder;->httpContent:Lcom/navercorp/volleyextensions/volleyer/http/HttpContent;

    new-instance v1, Lcom/navercorp/volleyextensions/volleyer/multipart/FilePart;

    invoke-direct {v1, p1, p2}, Lcom/navercorp/volleyextensions/volleyer/multipart/FilePart;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Lcom/navercorp/volleyextensions/volleyer/http/HttpContent;->addPart(Lcom/navercorp/volleyextensions/volleyer/multipart/Part;)V

    return-object p0
.end method

.method public addPart(Lcom/navercorp/volleyextensions/volleyer/multipart/Part;)Lcom/navercorp/volleyextensions/volleyer/builder/BodyBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/navercorp/volleyextensions/volleyer/multipart/Part;",
            ")TB;"
        }
    .end annotation

    iget-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/builder/BodyBuilder;->httpContent:Lcom/navercorp/volleyextensions/volleyer/http/HttpContent;

    invoke-virtual {v0, p1}, Lcom/navercorp/volleyextensions/volleyer/http/HttpContent;->addPart(Lcom/navercorp/volleyextensions/volleyer/multipart/Part;)V

    return-object p0
.end method

.method public addStringPart(Ljava/lang/String;Ljava/lang/String;)Lcom/navercorp/volleyextensions/volleyer/builder/BodyBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    iget-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/builder/BodyBuilder;->httpContent:Lcom/navercorp/volleyextensions/volleyer/http/HttpContent;

    new-instance v1, Lcom/navercorp/volleyextensions/volleyer/multipart/StringPart;

    invoke-direct {v1, p1, p2}, Lcom/navercorp/volleyextensions/volleyer/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/navercorp/volleyextensions/volleyer/http/HttpContent;->addPart(Lcom/navercorp/volleyextensions/volleyer/multipart/Part;)V

    return-object p0
.end method

.method public withBody(Ljava/lang/String;)Lcom/navercorp/volleyextensions/volleyer/builder/BodyBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/navercorp/volleyextensions/volleyer/builder/BodyBuilder;->isBodyNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/navercorp/volleyextensions/volleyer/builder/BodyBuilder;->withBody([B)Lcom/navercorp/volleyextensions/volleyer/builder/BodyBuilder;

    move-result-object p0

    goto :goto_0
.end method

.method public withBody([B)Lcom/navercorp/volleyextensions/volleyer/builder/BodyBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TB;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/navercorp/volleyextensions/volleyer/builder/BodyBuilder;->isBodyNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/builder/BodyBuilder;->httpContent:Lcom/navercorp/volleyextensions/volleyer/http/HttpContent;

    invoke-virtual {v0, p1}, Lcom/navercorp/volleyextensions/volleyer/http/HttpContent;->setBody([B)V

    goto :goto_0
.end method
