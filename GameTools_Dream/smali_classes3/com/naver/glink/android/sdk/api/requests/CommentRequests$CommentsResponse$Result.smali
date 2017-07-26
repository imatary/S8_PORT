.class public Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Result;
.super Ljava/lang/Object;
.source "CommentRequests.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public commentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;",
            ">;"
        }
    .end annotation
.end field

.field public count:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Count;

.field public pageModel:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Page;

.field public parent:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Count;->nullCount()Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Count;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Result;->count:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Count;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Result;->commentList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getLastCommentNo()I
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Result;->commentList:Ljava/util/List;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Result;->commentList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;

    iget v0, v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->commentNo:I

    return v0
.end method

.method public getReversedComments()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Result;->commentList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-object v0
.end method

.method public isLastRequest()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Result;->pageModel:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Page;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Result;->parent:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Result;->commentList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Result;->pageModel:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Page;

    iget v3, v3, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Page;->pageSize:I

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Result;->pageModel:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Page;

    iget v2, v2, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Page;->prevPage:I

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
