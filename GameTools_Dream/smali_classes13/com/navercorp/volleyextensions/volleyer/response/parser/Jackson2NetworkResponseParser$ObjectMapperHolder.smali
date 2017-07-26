.class Lcom/navercorp/volleyextensions/volleyer/response/parser/Jackson2NetworkResponseParser$ObjectMapperHolder;
.super Ljava/lang/Object;
.source "Jackson2NetworkResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/navercorp/volleyextensions/volleyer/response/parser/Jackson2NetworkResponseParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ObjectMapperHolder"
.end annotation


# static fields
.field private static final objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    sput-object v0, Lcom/navercorp/volleyextensions/volleyer/response/parser/Jackson2NetworkResponseParser$ObjectMapperHolder;->objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    sget-object v0, Lcom/navercorp/volleyextensions/volleyer/response/parser/Jackson2NetworkResponseParser$ObjectMapperHolder;->objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    sget-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_UNKNOWN_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/databind/DeserializationFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    sget-object v0, Lcom/navercorp/volleyextensions/volleyer/response/parser/Jackson2NetworkResponseParser$ObjectMapperHolder;->objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_UNQUOTED_CONTROL_CHARS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/core/JsonParser$Feature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1

    invoke-static {}, Lcom/navercorp/volleyextensions/volleyer/response/parser/Jackson2NetworkResponseParser$ObjectMapperHolder;->getObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    return-object v0
.end method

.method private static getObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1

    sget-object v0, Lcom/navercorp/volleyextensions/volleyer/response/parser/Jackson2NetworkResponseParser$ObjectMapperHolder;->objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-object v0
.end method
