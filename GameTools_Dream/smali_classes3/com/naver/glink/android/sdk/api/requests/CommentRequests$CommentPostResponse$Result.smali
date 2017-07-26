.class public Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse$Result;
.super Ljava/lang/Object;
.source "CommentRequests.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public comment:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;

.field public count:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Count;

.field public parent:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Count;->nullCount()Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Count;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse$Result;->count:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Count;

    return-void
.end method
