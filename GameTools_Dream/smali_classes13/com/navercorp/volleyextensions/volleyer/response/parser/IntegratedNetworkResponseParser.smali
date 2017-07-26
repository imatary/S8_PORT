.class public Lcom/navercorp/volleyextensions/volleyer/response/parser/IntegratedNetworkResponseParser;
.super Ljava/lang/Object;
.source "IntegratedNetworkResponseParser.java"

# interfaces
.implements Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/navercorp/volleyextensions/volleyer/response/parser/IntegratedNetworkResponseParser$Builder;
    }
.end annotation


# static fields
.field private static final CONTENT_TYPE_HEADER_KEY:Ljava/lang/String; = "Content-Type"

.field private static final STRING_NETWORK_RESPONSE_PARSER:Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;


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
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/navercorp/volleyextensions/volleyer/response/parser/StringNetworkResponseParser;

    invoke-direct {v0}, Lcom/navercorp/volleyextensions/volleyer/response/parser/StringNetworkResponseParser;-><init>()V

    sput-object v0, Lcom/navercorp/volleyextensions/volleyer/response/parser/IntegratedNetworkResponseParser;->STRING_NETWORK_RESPONSE_PARSER:Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;

    return-void
.end method

.method constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/navercorp/volleyextensions/volleyer/http/ContentType;",
            "Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/response/parser/IntegratedNetworkResponseParser;->parsers:Ljava/util/Map;

    iget-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/response/parser/IntegratedNetworkResponseParser;->parsers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected getResponseHeader(Lcom/android/volley/NetworkResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

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

    const/4 v5, 0x0

    const-string/jumbo v4, "NetworkResponse"

    invoke-static {p1, v4}, Lcom/navercorp/volleyextensions/volleyer/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "Target class token"

    invoke-static {p2, v4}, Lcom/navercorp/volleyextensions/volleyer/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v4, Ljava/lang/Void;

    if-ne p2, v4, :cond_0

    invoke-static {v5, v5}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    const-class v4, Ljava/lang/String;

    if-ne p2, v4, :cond_1

    sget-object v4, Lcom/navercorp/volleyextensions/volleyer/response/parser/IntegratedNetworkResponseParser;->STRING_NETWORK_RESPONSE_PARSER:Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;

    invoke-interface {v4, p1, p2}, Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;->parseNetworkResponse(Lcom/android/volley/NetworkResponse;Ljava/lang/Class;)Lcom/android/volley/Response;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-class v4, Lcom/android/volley/NetworkResponse;

    if-ne p2, v4, :cond_2

    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v3

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "Content-Type"

    invoke-virtual {p0, p1, v4}, Lcom/navercorp/volleyextensions/volleyer/response/parser/IntegratedNetworkResponseParser;->getResponseHeader(Lcom/android/volley/NetworkResponse;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v4, Lcom/android/volley/ParseError;

    new-instance v5, Lcom/navercorp/volleyextensions/volleyer/exception/UnsupportedContentTypeException;

    const-string/jumbo v6, "It cannot find any response parser, because the response content type is null."

    invoke-direct {v5, v6}, Lcom/navercorp/volleyextensions/volleyer/exception/UnsupportedContentTypeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v4}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v3

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;->createContentType(Ljava/lang/String;)Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

    move-result-object v0

    iget-object v4, p0, Lcom/navercorp/volleyextensions/volleyer/response/parser/IntegratedNetworkResponseParser;->parsers:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;

    if-nez v2, :cond_4

    new-instance v4, Lcom/android/volley/ParseError;

    new-instance v5, Lcom/navercorp/volleyextensions/volleyer/exception/UnsupportedContentTypeException;

    const-string/jumbo v6, "It cannot find any response parser for the response content type."

    invoke-direct {v5, v6}, Lcom/navercorp/volleyextensions/volleyer/exception/UnsupportedContentTypeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v4}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v3

    goto :goto_0

    :cond_4
    invoke-interface {v2, p1, p2}, Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;->parseNetworkResponse(Lcom/android/volley/NetworkResponse;Ljava/lang/Class;)Lcom/android/volley/Response;

    move-result-object v3

    goto :goto_0
.end method
