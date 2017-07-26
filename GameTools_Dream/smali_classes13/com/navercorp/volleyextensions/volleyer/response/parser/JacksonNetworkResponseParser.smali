.class public Lcom/navercorp/volleyextensions/volleyer/response/parser/JacksonNetworkResponseParser;
.super Ljava/lang/Object;
.source "JacksonNetworkResponseParser.java"

# interfaces
.implements Lcom/navercorp/volleyextensions/volleyer/response/parser/TypedNetworkResponseParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/navercorp/volleyextensions/volleyer/response/parser/JacksonNetworkResponseParser$ObjectMapperHolder;
    }
.end annotation


# instance fields
.field private final objectMapper:Lorg/codehaus/jackson/map/ObjectMapper;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/navercorp/volleyextensions/volleyer/response/parser/JacksonNetworkResponseParser$ObjectMapperHolder;->access$000()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/navercorp/volleyextensions/volleyer/response/parser/JacksonNetworkResponseParser;-><init>(Lorg/codehaus/jackson/map/ObjectMapper;)V

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/map/ObjectMapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "ObjectMapper"

    invoke-static {p1, v0}, Lcom/navercorp/volleyextensions/volleyer/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/navercorp/volleyextensions/volleyer/response/parser/JacksonNetworkResponseParser;->objectMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    return-void
.end method


# virtual methods
.method protected final getBodyString(Lcom/android/volley/NetworkResponse;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/android/volley/NetworkResponse;->data:[B

    iget-object v2, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v2}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public getContentTypes()Lcom/navercorp/volleyextensions/volleyer/http/ContentTypes;
    .locals 4

    new-instance v0, Lcom/navercorp/volleyextensions/volleyer/http/ContentTypes;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

    const/4 v2, 0x0

    sget-object v3, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;->CONTENT_TYPE_APPLICATION_JSON:Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;->CONTENT_TYPE_TEXT_JSON:Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/navercorp/volleyextensions/volleyer/http/ContentTypes;-><init>([Lcom/navercorp/volleyextensions/volleyer/http/ContentType;)V

    return-object v0
.end method

.method public parseNetworkResponse(Lcom/android/volley/NetworkResponse;Ljava/lang/Class;)Lcom/android/volley/Response;
    .locals 4
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

    const-string/jumbo v2, "Response"

    invoke-static {p1, v2}, Lcom/navercorp/volleyextensions/volleyer/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "Class token"

    invoke-static {p2, v2}, Lcom/navercorp/volleyextensions/volleyer/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/navercorp/volleyextensions/volleyer/response/parser/JacksonNetworkResponseParser;->objectMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {p0, p1}, Lcom/navercorp/volleyextensions/volleyer/response/parser/JacksonNetworkResponseParser;->getBodyString(Lcom/android/volley/NetworkResponse;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;
    :try_end_0
    .catch Lorg/codehaus/jackson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/codehaus/jackson/map/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Lcom/android/volley/ParseError;

    invoke-direct {v2, v0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v2}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v2

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v2, Lcom/android/volley/ParseError;

    invoke-direct {v2, v0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v2}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v2

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v2, Lcom/android/volley/ParseError;

    invoke-direct {v2, v0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v2}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v2

    goto :goto_0

    :catch_3
    move-exception v0

    new-instance v2, Lcom/android/volley/VolleyError;

    invoke-direct {v2, v0}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v2}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v2

    goto :goto_0

    :catch_4
    move-exception v0

    new-instance v2, Lcom/android/volley/VolleyError;

    invoke-direct {v2, v0}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v2}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v2

    goto :goto_0
.end method
