.class public Lcom/navercorp/volleyextensions/volleyer/factory/DefaultNetworkResponseParserFactory;
.super Ljava/lang/Object;
.source "DefaultNetworkResponseParserFactory.java"


# static fields
.field private static final JACKSON_1_X_CLASS_NAME:Ljava/lang/String; = "org.codehaus.jackson.map.ObjectMapper"

.field private static final JACKSON_2_X_CLASS_NAME:Ljava/lang/String; = "com.fasterxml.jackson.databind.ObjectMapper"

.field private static final SIMPLE_XML_CLASS_NAME:Ljava/lang/String; = "org.simpleframework.xml.core.Persister"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addJacksonParserIfPresent(Lcom/navercorp/volleyextensions/volleyer/response/parser/IntegratedNetworkResponseParser$Builder;)V
    .locals 1

    const-string/jumbo v0, "com.fasterxml.jackson.databind.ObjectMapper"

    invoke-static {v0}, Lcom/navercorp/volleyextensions/volleyer/util/ClassUtils;->isPresent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/navercorp/volleyextensions/volleyer/response/parser/Jackson2NetworkResponseParser;

    invoke-direct {v0}, Lcom/navercorp/volleyextensions/volleyer/response/parser/Jackson2NetworkResponseParser;-><init>()V

    invoke-virtual {p0, v0}, Lcom/navercorp/volleyextensions/volleyer/response/parser/IntegratedNetworkResponseParser$Builder;->addParser(Lcom/navercorp/volleyextensions/volleyer/response/parser/TypedNetworkResponseParser;)Lcom/navercorp/volleyextensions/volleyer/response/parser/IntegratedNetworkResponseParser$Builder;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "org.codehaus.jackson.map.ObjectMapper"

    invoke-static {v0}, Lcom/navercorp/volleyextensions/volleyer/util/ClassUtils;->isPresent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/navercorp/volleyextensions/volleyer/response/parser/JacksonNetworkResponseParser;

    invoke-direct {v0}, Lcom/navercorp/volleyextensions/volleyer/response/parser/JacksonNetworkResponseParser;-><init>()V

    invoke-virtual {p0, v0}, Lcom/navercorp/volleyextensions/volleyer/response/parser/IntegratedNetworkResponseParser$Builder;->addParser(Lcom/navercorp/volleyextensions/volleyer/response/parser/TypedNetworkResponseParser;)Lcom/navercorp/volleyextensions/volleyer/response/parser/IntegratedNetworkResponseParser$Builder;

    goto :goto_0
.end method

.method public static addSimpleXmlParserIfPresent(Lcom/navercorp/volleyextensions/volleyer/response/parser/IntegratedNetworkResponseParser$Builder;)V
    .locals 1

    const-string/jumbo v0, "org.simpleframework.xml.core.Persister"

    invoke-static {v0}, Lcom/navercorp/volleyextensions/volleyer/util/ClassUtils;->isPresent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/navercorp/volleyextensions/volleyer/response/parser/SimpleXmlNetworkResponseParser;

    invoke-direct {v0}, Lcom/navercorp/volleyextensions/volleyer/response/parser/SimpleXmlNetworkResponseParser;-><init>()V

    invoke-virtual {p0, v0}, Lcom/navercorp/volleyextensions/volleyer/response/parser/IntegratedNetworkResponseParser$Builder;->addParser(Lcom/navercorp/volleyextensions/volleyer/response/parser/TypedNetworkResponseParser;)Lcom/navercorp/volleyextensions/volleyer/response/parser/IntegratedNetworkResponseParser$Builder;

    :cond_0
    return-void
.end method

.method public static create()Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;
    .locals 2

    new-instance v0, Lcom/navercorp/volleyextensions/volleyer/response/parser/IntegratedNetworkResponseParser$Builder;

    invoke-direct {v0}, Lcom/navercorp/volleyextensions/volleyer/response/parser/IntegratedNetworkResponseParser$Builder;-><init>()V

    invoke-static {v0}, Lcom/navercorp/volleyextensions/volleyer/factory/DefaultNetworkResponseParserFactory;->addJacksonParserIfPresent(Lcom/navercorp/volleyextensions/volleyer/response/parser/IntegratedNetworkResponseParser$Builder;)V

    invoke-static {v0}, Lcom/navercorp/volleyextensions/volleyer/factory/DefaultNetworkResponseParserFactory;->addSimpleXmlParserIfPresent(Lcom/navercorp/volleyextensions/volleyer/response/parser/IntegratedNetworkResponseParser$Builder;)V

    invoke-virtual {v0}, Lcom/navercorp/volleyextensions/volleyer/response/parser/IntegratedNetworkResponseParser$Builder;->build()Lcom/navercorp/volleyextensions/volleyer/response/parser/IntegratedNetworkResponseParser;

    move-result-object v1

    return-object v1
.end method
