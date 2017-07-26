.class Lcom/naver/glink/android/sdk/ui/article/a$a;
.super Ljava/lang/Object;
.source "ArticleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/article/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final a:I

.field final b:Ljava/lang/Object;


# direct methods
.method constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/naver/glink/android/sdk/ui/article/a$a;->a:I

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/article/a$a;->b:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->isReply()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    :goto_0
    iput v0, p0, Lcom/naver/glink/android/sdk/ui/article/a$a;->a:I

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/article/a$a;->b:Ljava/lang/Object;

    return-void

    :cond_0
    const/4 v0, 0x6

    goto :goto_0
.end method
