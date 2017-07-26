.class public Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse;
.super Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentResponse;
.source "CommentRequests.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/api/requests/CommentRequests;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommentPostResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentResponse",
        "<",
        "Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse$Result;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentResponse;-><init>()V

    return-void
.end method
