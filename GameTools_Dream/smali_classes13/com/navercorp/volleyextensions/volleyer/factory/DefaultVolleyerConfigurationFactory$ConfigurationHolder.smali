.class Lcom/navercorp/volleyextensions/volleyer/factory/DefaultVolleyerConfigurationFactory$ConfigurationHolder;
.super Ljava/lang/Object;
.source "DefaultVolleyerConfigurationFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/navercorp/volleyextensions/volleyer/factory/DefaultVolleyerConfigurationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfigurationHolder"
.end annotation


# static fields
.field private static final configuration:Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcom/navercorp/volleyextensions/volleyer/factory/DefaultVolleyerConfigurationFactory;->createRequestCreator()Lcom/navercorp/volleyextensions/volleyer/request/creator/RequestCreator;

    move-result-object v2

    invoke-static {}, Lcom/navercorp/volleyextensions/volleyer/factory/DefaultVolleyerConfigurationFactory;->createRequestExecutor()Lcom/navercorp/volleyextensions/volleyer/request/executor/RequestExecutor;

    move-result-object v3

    invoke-static {}, Lcom/navercorp/volleyextensions/volleyer/factory/DefaultVolleyerConfigurationFactory;->createNetworkResponseParser()Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;

    move-result-object v1

    invoke-static {}, Lcom/navercorp/volleyextensions/volleyer/factory/DefaultVolleyerConfigurationFactory;->createErrorListener()Lcom/android/volley/Response$ErrorListener;

    move-result-object v0

    new-instance v4, Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;

    invoke-direct {v4, v2, v3, v1, v0}, Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;-><init>(Lcom/navercorp/volleyextensions/volleyer/request/creator/RequestCreator;Lcom/navercorp/volleyextensions/volleyer/request/executor/RequestExecutor;Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;Lcom/android/volley/Response$ErrorListener;)V

    sput-object v4, Lcom/navercorp/volleyextensions/volleyer/factory/DefaultVolleyerConfigurationFactory$ConfigurationHolder;->configuration:Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;
    .locals 1

    invoke-static {}, Lcom/navercorp/volleyextensions/volleyer/factory/DefaultVolleyerConfigurationFactory$ConfigurationHolder;->getConfiguration()Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;

    move-result-object v0

    return-object v0
.end method

.method private static getConfiguration()Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;
    .locals 1

    sget-object v0, Lcom/navercorp/volleyextensions/volleyer/factory/DefaultVolleyerConfigurationFactory$ConfigurationHolder;->configuration:Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;

    return-object v0
.end method
