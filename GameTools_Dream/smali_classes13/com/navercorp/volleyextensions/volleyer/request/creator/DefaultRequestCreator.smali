.class public Lcom/navercorp/volleyextensions/volleyer/request/creator/DefaultRequestCreator;
.super Ljava/lang/Object;
.source "DefaultRequestCreator.java"

# interfaces
.implements Lcom/navercorp/volleyextensions/volleyer/request/creator/RequestCreator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createRequest(Lcom/navercorp/volleyextensions/volleyer/http/HttpContent;Ljava/lang/Class;Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/navercorp/volleyextensions/volleyer/http/HttpContent;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;",
            "Lcom/android/volley/Response$Listener",
            "<TT;>;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/navercorp/volleyextensions/volleyer/request/VolleyerRequest;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/navercorp/volleyextensions/volleyer/request/VolleyerRequest;-><init>(Lcom/navercorp/volleyextensions/volleyer/http/HttpContent;Ljava/lang/Class;Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-object v0
.end method
