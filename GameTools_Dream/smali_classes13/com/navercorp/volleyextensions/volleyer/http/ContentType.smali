.class public final Lcom/navercorp/volleyextensions/volleyer/http/ContentType;
.super Ljava/lang/Object;
.source "ContentType.java"


# static fields
.field public static final CONTENT_TYPE_APPLICATION_JSON:Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

.field public static final CONTENT_TYPE_APPLICATION_XML:Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

.field public static final CONTENT_TYPE_TEXT_JSON:Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

.field public static final CONTENT_TYPE_TEXT_PLAIN:Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

.field public static final CONTENT_TYPE_TEXT_XML:Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

.field private static final DEFAULT_CONTENT_TYPES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/navercorp/volleyextensions/volleyer/http/ContentType;",
            ">;"
        }
    .end annotation
.end field

.field private static final SEPERATOR_CHARACTER_OF_CONTENT_TYPE_HEADER:C = ';'


# instance fields
.field private contentTypeString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

    const-string/jumbo v1, "application/json"

    invoke-direct {v0, v1}, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;->CONTENT_TYPE_APPLICATION_JSON:Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

    new-instance v0, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

    const-string/jumbo v1, "application/xml"

    invoke-direct {v0, v1}, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;->CONTENT_TYPE_APPLICATION_XML:Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

    new-instance v0, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

    const-string/jumbo v1, "text/json"

    invoke-direct {v0, v1}, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;->CONTENT_TYPE_TEXT_JSON:Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

    new-instance v0, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

    const-string/jumbo v1, "text/xml"

    invoke-direct {v0, v1}, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;->CONTENT_TYPE_TEXT_XML:Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

    new-instance v0, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

    const-string/jumbo v1, "text/plain"

    invoke-direct {v0, v1}, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;->CONTENT_TYPE_TEXT_PLAIN:Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;->DEFAULT_CONTENT_TYPES:Ljava/util/Map;

    sget-object v0, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;->DEFAULT_CONTENT_TYPES:Ljava/util/Map;

    sget-object v1, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;->CONTENT_TYPE_APPLICATION_JSON:Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

    iget-object v1, v1, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;->contentTypeString:Ljava/lang/String;

    sget-object v2, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;->CONTENT_TYPE_APPLICATION_JSON:Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;->DEFAULT_CONTENT_TYPES:Ljava/util/Map;

    sget-object v1, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;->CONTENT_TYPE_TEXT_JSON:Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

    iget-object v1, v1, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;->contentTypeString:Ljava/lang/String;

    sget-object v2, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;->CONTENT_TYPE_TEXT_JSON:Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;->DEFAULT_CONTENT_TYPES:Ljava/util/Map;

    sget-object v1, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;->CONTENT_TYPE_APPLICATION_XML:Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

    iget-object v1, v1, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;->contentTypeString:Ljava/lang/String;

    sget-object v2, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;->CONTENT_TYPE_APPLICATION_XML:Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;->DEFAULT_CONTENT_TYPES:Ljava/util/Map;

    sget-object v1, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;->CONTENT_TYPE_TEXT_XML:Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

    iget-object v1, v1, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;->contentTypeString:Ljava/lang/String;

    sget-object v2, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;->CONTENT_TYPE_TEXT_XML:Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;->DEFAULT_CONTENT_TYPES:Ljava/util/Map;

    sget-object v1, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;->CONTENT_TYPE_TEXT_PLAIN:Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

    iget-object v1, v1, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;->contentTypeString:Ljava/lang/String;

    sget-object v2, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;->CONTENT_TYPE_TEXT_PLAIN:Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "Content type"

    invoke-static {p1, v0}, Lcom/navercorp/volleyextensions/volleyer/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;->assertContentTypeString(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;->filterContentTypeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;->contentTypeString:Ljava/lang/String;

    return-void
.end method

.method private assertContentTypeString(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/navercorp/volleyextensions/volleyer/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Content type must not be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static createContentType(Ljava/lang/String;)Lcom/navercorp/volleyextensions/volleyer/http/ContentType;
    .locals 1

    invoke-static {p0}, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;->getDefaultContentType(Ljava/lang/String;)Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

    invoke-direct {v0, p0}, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static deleteCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v1, 0x3b

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static deleteSpaces(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, " "

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static filterContentTypeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;->deleteCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;->deleteSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDefaultContentType(Ljava/lang/String;)Lcom/navercorp/volleyextensions/volleyer/http/ContentType;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;->filterContentTypeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;->DEFAULT_CONTENT_TYPES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    instance-of v3, p1, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

    if-ne p0, v0, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;->contentTypeString:Ljava/lang/String;

    iget-object v4, v0, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;->contentTypeString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;->contentTypeString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;->contentTypeString:Ljava/lang/String;

    return-object v0
.end method
