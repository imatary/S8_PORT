.class public Lcom/navercorp/volleyextensions/volleyer/builder/GetBuilder;
.super Lcom/navercorp/volleyextensions/volleyer/builder/RequestBuilder;
.source "GetBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/navercorp/volleyextensions/volleyer/builder/RequestBuilder",
        "<",
        "Lcom/navercorp/volleyextensions/volleyer/builder/GetBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/volley/RequestQueue;Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/navercorp/volleyextensions/volleyer/http/HttpMethod;->GET:Lcom/navercorp/volleyextensions/volleyer/http/HttpMethod;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/navercorp/volleyextensions/volleyer/builder/RequestBuilder;-><init>(Lcom/android/volley/RequestQueue;Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;Ljava/lang/String;Lcom/navercorp/volleyextensions/volleyer/http/HttpMethod;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic execute()Lcom/android/volley/Request;
    .locals 1

    invoke-super {p0}, Lcom/navercorp/volleyextensions/volleyer/builder/RequestBuilder;->execute()Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withErrorListener(Lcom/android/volley/Response$ErrorListener;)Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;
    .locals 1

    invoke-super {p0, p1}, Lcom/navercorp/volleyextensions/volleyer/builder/RequestBuilder;->withErrorListener(Lcom/android/volley/Response$ErrorListener;)Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withListener(Lcom/android/volley/Response$Listener;)Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;
    .locals 1

    invoke-super {p0, p1}, Lcom/navercorp/volleyextensions/volleyer/builder/RequestBuilder;->withListener(Lcom/android/volley/Response$Listener;)Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withTargetClass(Ljava/lang/Class;)Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;
    .locals 1

    invoke-super {p0, p1}, Lcom/navercorp/volleyextensions/volleyer/builder/RequestBuilder;->withTargetClass(Ljava/lang/Class;)Lcom/navercorp/volleyextensions/volleyer/builder/ResponseBuilder;

    move-result-object v0

    return-object v0
.end method
