.class public Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;
.super Ljava/lang/Object;
.source "VolleyerConfiguration.java"


# instance fields
.field private errorListener:Lcom/android/volley/Response$ErrorListener;

.field private networkResponseParser:Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;

.field private requestCreator:Lcom/navercorp/volleyextensions/volleyer/request/creator/RequestCreator;

.field private requestExecutor:Lcom/navercorp/volleyextensions/volleyer/request/executor/RequestExecutor;


# direct methods
.method public constructor <init>(Lcom/navercorp/volleyextensions/volleyer/request/creator/RequestCreator;Lcom/navercorp/volleyextensions/volleyer/request/executor/RequestExecutor;Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;Lcom/android/volley/Response$ErrorListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;->requestCreator:Lcom/navercorp/volleyextensions/volleyer/request/creator/RequestCreator;

    iput-object p2, p0, Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;->requestExecutor:Lcom/navercorp/volleyextensions/volleyer/request/executor/RequestExecutor;

    iput-object p3, p0, Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;->networkResponseParser:Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;

    iput-object p4, p0, Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;->errorListener:Lcom/android/volley/Response$ErrorListener;

    return-void
.end method


# virtual methods
.method public getFallbackErrorListener()Lcom/android/volley/Response$ErrorListener;
    .locals 1

    iget-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;->errorListener:Lcom/android/volley/Response$ErrorListener;

    return-object v0
.end method

.method public getFallbackNetworkResponseParser()Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;
    .locals 1

    iget-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;->networkResponseParser:Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;

    return-object v0
.end method

.method public getRequestCreator()Lcom/navercorp/volleyextensions/volleyer/request/creator/RequestCreator;
    .locals 1

    iget-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;->requestCreator:Lcom/navercorp/volleyextensions/volleyer/request/creator/RequestCreator;

    return-object v0
.end method

.method public getRequestExecutor()Lcom/navercorp/volleyextensions/volleyer/request/executor/RequestExecutor;
    .locals 1

    iget-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;->requestExecutor:Lcom/navercorp/volleyextensions/volleyer/request/executor/RequestExecutor;

    return-object v0
.end method
