.class Lcom/navercorp/volleyextensions/volleyer/response/parser/JacksonNetworkResponseParser$ObjectMapperHolder;
.super Ljava/lang/Object;
.source "JacksonNetworkResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/navercorp/volleyextensions/volleyer/response/parser/JacksonNetworkResponseParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ObjectMapperHolder"
.end annotation


# static fields
.field private static final objectMapper:Lorg/codehaus/jackson/map/ObjectMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ObjectMapper;-><init>()V

    sput-object v0, Lcom/navercorp/volleyextensions/volleyer/response/parser/JacksonNetworkResponseParser$ObjectMapperHolder;->objectMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    sget-object v0, Lcom/navercorp/volleyextensions/volleyer/response/parser/JacksonNetworkResponseParser$ObjectMapperHolder;->objectMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    sget-object v1, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->FAIL_ON_UNKNOWN_PROPERTIES:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/map/ObjectMapper;->configure(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;Z)Lorg/codehaus/jackson/map/ObjectMapper;

    sget-object v0, Lcom/navercorp/volleyextensions/volleyer/response/parser/JacksonNetworkResponseParser$ObjectMapperHolder;->objectMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    sget-object v1, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_UNQUOTED_CONTROL_CHARS:Lorg/codehaus/jackson/JsonParser$Feature;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/map/ObjectMapper;->configure(Lorg/codehaus/jackson/JsonParser$Feature;Z)Lorg/codehaus/jackson/map/ObjectMapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lorg/codehaus/jackson/map/ObjectMapper;
    .locals 1

    invoke-static {}, Lcom/navercorp/volleyextensions/volleyer/response/parser/JacksonNetworkResponseParser$ObjectMapperHolder;->defaultObjectMapper()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v0

    return-object v0
.end method

.method private static defaultObjectMapper()Lorg/codehaus/jackson/map/ObjectMapper;
    .locals 1

    sget-object v0, Lcom/navercorp/volleyextensions/volleyer/response/parser/JacksonNetworkResponseParser$ObjectMapperHolder;->objectMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    return-object v0
.end method
