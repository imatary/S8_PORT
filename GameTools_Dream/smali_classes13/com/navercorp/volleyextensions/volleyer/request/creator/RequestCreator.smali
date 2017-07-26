.class public interface abstract Lcom/navercorp/volleyextensions/volleyer/request/creator/RequestCreator;
.super Ljava/lang/Object;
.source "RequestCreator.java"


# virtual methods
.method public abstract createRequest(Lcom/navercorp/volleyextensions/volleyer/http/HttpContent;Ljava/lang/Class;Lcom/navercorp/volleyextensions/volleyer/response/parser/NetworkResponseParser;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
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
.end method
