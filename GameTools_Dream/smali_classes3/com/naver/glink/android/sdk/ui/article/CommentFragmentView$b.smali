.class public Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$b;
.super Ljava/lang/Object;
.source "CommentFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$From;

.field public final b:Lcom/naver/glink/android/sdk/model/Comment;

.field public final c:Lcom/naver/glink/android/sdk/api/Responses$CommentSaveResponse;

.field public final d:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$From;Lcom/naver/glink/android/sdk/model/Comment;Lcom/naver/glink/android/sdk/api/Responses$CommentSaveResponse;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$b;->a:Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$From;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$b;->b:Lcom/naver/glink/android/sdk/model/Comment;

    iput-object p3, p0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$b;->c:Lcom/naver/glink/android/sdk/api/Responses$CommentSaveResponse;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$b;->d:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse;

    return-void
.end method

.method constructor <init>(Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$From;Lcom/naver/glink/android/sdk/model/Comment;Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$b;->a:Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$From;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$b;->b:Lcom/naver/glink/android/sdk/model/Comment;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$b;->c:Lcom/naver/glink/android/sdk/api/Responses$CommentSaveResponse;

    iput-object p3, p0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$b;->d:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse;

    return-void
.end method
