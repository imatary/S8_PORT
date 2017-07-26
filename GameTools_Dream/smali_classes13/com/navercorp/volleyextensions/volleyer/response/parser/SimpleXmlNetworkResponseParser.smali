.class public Lcom/navercorp/volleyextensions/volleyer/response/parser/SimpleXmlNetworkResponseParser;
.super Ljava/lang/Object;
.source "SimpleXmlNetworkResponseParser.java"

# interfaces
.implements Lcom/navercorp/volleyextensions/volleyer/response/parser/TypedNetworkResponseParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/navercorp/volleyextensions/volleyer/response/parser/SimpleXmlNetworkResponseParser$PersisterHolder;
    }
.end annotation


# instance fields
.field private persister:Lorg/simpleframework/xml/core/Persister;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/navercorp/volleyextensions/volleyer/response/parser/SimpleXmlNetworkResponseParser$PersisterHolder;->access$000()Lorg/simpleframework/xml/core/Persister;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/navercorp/volleyextensions/volleyer/response/parser/SimpleXmlNetworkResponseParser;-><init>(Lorg/simpleframework/xml/core/Persister;)V

    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/core/Persister;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "Persister"

    invoke-static {p1, v0}, Lcom/navercorp/volleyextensions/volleyer/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/navercorp/volleyextensions/volleyer/response/parser/SimpleXmlNetworkResponseParser;->persister:Lorg/simpleframework/xml/core/Persister;

    return-void
.end method


# virtual methods
.method public getContentTypes()Lcom/navercorp/volleyextensions/volleyer/http/ContentTypes;
    .locals 4

    new-instance v0, Lcom/navercorp/volleyextensions/volleyer/http/ContentTypes;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

    const/4 v2, 0x0

    sget-object v3, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;->CONTENT_TYPE_APPLICATION_XML:Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;->CONTENT_TYPE_TEXT_XML:Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/navercorp/volleyextensions/volleyer/http/ContentTypes;-><init>([Lcom/navercorp/volleyextensions/volleyer/http/ContentType;)V

    return-object v0
.end method

.method public parseNetworkResponse(Lcom/android/volley/NetworkResponse;Ljava/lang/Class;)Lcom/android/volley/Response;
    .locals 7
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

    iget-object v5, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v5}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v6, p1, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v5, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/simpleframework/xml/core/ElementException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v5, p0, Lcom/navercorp/volleyextensions/volleyer/response/parser/SimpleXmlNetworkResponseParser;->persister:Lorg/simpleframework/xml/core/Persister;

    invoke-virtual {v5, p2, v3}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Class;Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/simpleframework/xml/core/ElementException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    invoke-static {v3}, Lcom/navercorp/volleyextensions/volleyer/util/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v2, v3

    :goto_0
    return-object v5

    :catch_0
    move-exception v1

    :goto_1
    :try_start_2
    new-instance v5, Lcom/android/volley/ParseError;

    invoke-direct {v5, v1}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v5}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    invoke-static {v2}, Lcom/navercorp/volleyextensions/volleyer/util/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_2
    :try_start_3
    new-instance v5, Lcom/android/volley/ParseError;

    invoke-direct {v5, v1}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v5}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    invoke-static {v2}, Lcom/navercorp/volleyextensions/volleyer/util/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    :catch_2
    move-exception v1

    :goto_3
    :try_start_4
    new-instance v5, Lcom/android/volley/ParseError;

    invoke-direct {v5, v1}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v5}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v5

    invoke-static {v2}, Lcom/navercorp/volleyextensions/volleyer/util/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    :catch_3
    move-exception v1

    :goto_4
    :try_start_5
    new-instance v5, Lcom/android/volley/VolleyError;

    invoke-direct {v5, v1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v5}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v5

    invoke-static {v2}, Lcom/navercorp/volleyextensions/volleyer/util/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v5

    :goto_5
    invoke-static {v2}, Lcom/navercorp/volleyextensions/volleyer/util/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v5

    :catchall_1
    move-exception v5

    move-object v2, v3

    goto :goto_5

    :catch_4
    move-exception v1

    move-object v2, v3

    goto :goto_4

    :catch_5
    move-exception v1

    move-object v2, v3

    goto :goto_3

    :catch_6
    move-exception v1

    move-object v2, v3

    goto :goto_2

    :catch_7
    move-exception v1

    move-object v2, v3

    goto :goto_1
.end method
