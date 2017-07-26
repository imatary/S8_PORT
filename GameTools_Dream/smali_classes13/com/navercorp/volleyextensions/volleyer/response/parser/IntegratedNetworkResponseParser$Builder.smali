.class public Lcom/navercorp/volleyextensions/volleyer/response/parser/IntegratedNetworkResponseParser$Builder;
.super Ljava/lang/Object;
.source "IntegratedNetworkResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/navercorp/volleyextensions/volleyer/response/parser/IntegratedNetworkResponseParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final parsers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/navercorp/volleyextensions/volleyer/http/ContentType;",
            "Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/response/parser/IntegratedNetworkResponseParser$Builder;->parsers:Ljava/util/Map;

    return-void
.end method

.method private addParserForContentTypes(Lcom/navercorp/volleyextensions/volleyer/response/parser/TypedNetworkResponseParser;Lcom/navercorp/volleyextensions/volleyer/http/ContentTypes;)V
    .locals 4

    invoke-virtual {p2}, Lcom/navercorp/volleyextensions/volleyer/http/ContentTypes;->getListOfContentTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

    invoke-virtual {p0, v0, p1}, Lcom/navercorp/volleyextensions/volleyer/response/parser/IntegratedNetworkResponseParser$Builder;->addParser(Lcom/navercorp/volleyextensions/volleyer/http/ContentType;Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;)Lcom/navercorp/volleyextensions/volleyer/response/parser/IntegratedNetworkResponseParser$Builder;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addParser(Lcom/navercorp/volleyextensions/volleyer/http/ContentType;Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;)Lcom/navercorp/volleyextensions/volleyer/response/parser/IntegratedNetworkResponseParser$Builder;
    .locals 1

    const-string/jumbo v0, "ContentType"

    invoke-static {p1, v0}, Lcom/navercorp/volleyextensions/volleyer/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "NetworkResponseParser"

    invoke-static {p2, v0}, Lcom/navercorp/volleyextensions/volleyer/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/response/parser/IntegratedNetworkResponseParser$Builder;->parsers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addParser(Lcom/navercorp/volleyextensions/volleyer/response/parser/TypedNetworkResponseParser;)Lcom/navercorp/volleyextensions/volleyer/response/parser/IntegratedNetworkResponseParser$Builder;
    .locals 2

    const-string/jumbo v1, "TypedNetworkResponseParser"

    invoke-static {p1, v1}, Lcom/navercorp/volleyextensions/volleyer/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/navercorp/volleyextensions/volleyer/response/parser/TypedNetworkResponseParser;->getContentTypes()Lcom/navercorp/volleyextensions/volleyer/http/ContentTypes;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/navercorp/volleyextensions/volleyer/response/parser/IntegratedNetworkResponseParser$Builder;->addParserForContentTypes(Lcom/navercorp/volleyextensions/volleyer/response/parser/TypedNetworkResponseParser;Lcom/navercorp/volleyextensions/volleyer/http/ContentTypes;)V

    return-object p0
.end method

.method public build()Lcom/navercorp/volleyextensions/volleyer/response/parser/IntegratedNetworkResponseParser;
    .locals 2

    new-instance v0, Lcom/navercorp/volleyextensions/volleyer/response/parser/IntegratedNetworkResponseParser;

    iget-object v1, p0, Lcom/navercorp/volleyextensions/volleyer/response/parser/IntegratedNetworkResponseParser$Builder;->parsers:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/navercorp/volleyextensions/volleyer/response/parser/IntegratedNetworkResponseParser;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
