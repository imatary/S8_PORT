.class public Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Count;
.super Ljava/lang/Object;
.source "CommentRequests.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Count"
.end annotation


# instance fields
.field public comment:I

.field public exposeCount:I

.field public reply:I

.field public total:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static nullCount()Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Count;
    .locals 1

    new-instance v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Count;

    invoke-direct {v0}, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Count;-><init>()V

    return-object v0
.end method
