.class public Lcom/navercorp/volleyextensions/volleyer/factory/DefaultVolleyerConfigurationFactory;
.super Ljava/lang/Object;
.source "DefaultVolleyerConfigurationFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/navercorp/volleyextensions/volleyer/factory/DefaultVolleyerConfigurationFactory$ConfigurationHolder;
    }
.end annotation


# static fields
.field private static defaultErrorListener:Lcom/android/volley/Response$ErrorListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/navercorp/volleyextensions/volleyer/factory/DefaultVolleyerConfigurationFactory$1;

    invoke-direct {v0}, Lcom/navercorp/volleyextensions/volleyer/factory/DefaultVolleyerConfigurationFactory$1;-><init>()V

    sput-object v0, Lcom/navercorp/volleyextensions/volleyer/factory/DefaultVolleyerConfigurationFactory;->defaultErrorListener:Lcom/android/volley/Response$ErrorListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;
    .locals 1

    invoke-static {}, Lcom/navercorp/volleyextensions/volleyer/factory/DefaultVolleyerConfigurationFactory$ConfigurationHolder;->access$000()Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public static createErrorListener()Lcom/android/volley/Response$ErrorListener;
    .locals 1

    sget-object v0, Lcom/navercorp/volleyextensions/volleyer/factory/DefaultVolleyerConfigurationFactory;->defaultErrorListener:Lcom/android/volley/Response$ErrorListener;

    return-object v0
.end method

.method public static createNetworkResponseParser()Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;
    .locals 1

    invoke-static {}, Lcom/navercorp/volleyextensions/volleyer/factory/DefaultNetworkResponseParserFactory;->create()Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;

    move-result-object v0

    return-object v0
.end method

.method public static createRequestCreator()Lcom/navercorp/volleyextensions/volleyer/request/creator/RequestCreator;
    .locals 1

    new-instance v0, Lcom/navercorp/volleyextensions/volleyer/request/creator/DefaultRequestCreator;

    invoke-direct {v0}, Lcom/navercorp/volleyextensions/volleyer/request/creator/DefaultRequestCreator;-><init>()V

    return-object v0
.end method

.method public static createRequestExecutor()Lcom/navercorp/volleyextensions/volleyer/request/executor/RequestExecutor;
    .locals 1

    new-instance v0, Lcom/navercorp/volleyextensions/volleyer/request/executor/DefaultRequestExecutor;

    invoke-direct {v0}, Lcom/navercorp/volleyextensions/volleyer/request/executor/DefaultRequestExecutor;-><init>()V

    return-object v0
.end method
