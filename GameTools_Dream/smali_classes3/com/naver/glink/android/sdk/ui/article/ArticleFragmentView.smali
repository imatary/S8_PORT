.class public Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;
.super Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;
.source "ArticleFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;,
        Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$a;,
        Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "ArticleFragmentView"

.field private static final b:Ljava/lang/String; = "com.naver.glink.ARG_ARTICLE_ID"

.field private static final c:Ljava/lang/String; = "com.naver.glink.ARG_IS_LIKEABLE"

.field private static final d:Ljava/lang/String; = "com.naver.glink.ARG_IS_COMMENT_WRITABLE"

.field private static final g:Ljava/lang/String; = "com.naver.glink.ARG_COMMENT_AUTH_DESC"

.field private static final h:Ljava/lang/String; = "com.naver.glink.ARG_CAFE_MEMBER_LEVEL"

.field private static final i:Ljava/lang/String; = "com.naver.glink.ARG_PARENT_COMMENT_JSON"

.field private static final j:Ljava/lang/String; = "com.naver.glink.ARG_SHOW_COMMENT_EDIT"


# instance fields
.field private k:I

.field private l:Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;

.field private m:Z

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:I

.field private q:Z

.field private r:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;

.field private s:Lcom/naver/glink/android/sdk/api/request/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<",
            "Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lcom/naver/glink/android/sdk/ui/article/a;

.field private u:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private v:Landroid/view/View;

.field private w:Landroid/view/View;

.field private x:Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;

.field private y:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$c;

.field private z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;)Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->l:Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;

    return-object p1
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/api/request/Request;)Lcom/naver/glink/android/sdk/api/request/Request;
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->s:Lcom/naver/glink/android/sdk/api/request/Request;

    return-object p1
.end method

.method public static a(Landroid/content/Context;I)Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {p0, p1, v1, v1, v0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->a(Landroid/content/Context;ILcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;Z)Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;ILcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;Z)Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;
    .locals 4

    new-instance v0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "com.naver.glink.ARG_ARTICLE_ID"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p2, :cond_0

    const-string/jumbo v2, "com.naver.glink.ARG_IS_LIKEABLE"

    iget-boolean v3, p2, Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;->isLikeable:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "com.naver.glink.ARG_IS_COMMENT_WRITABLE"

    iget-boolean v3, p2, Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;->isCommentWritable:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "com.naver.glink.ARG_COMMENT_AUTH_DESC"

    iget-object v3, p2, Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;->commentAuthDesc:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "com.naver.glink.ARG_CAFE_MEMBER_LEVEL"

    iget v3, p2, Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;->cafeMemberLevel:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    if-eqz p3, :cond_1

    const-string/jumbo v2, "com.naver.glink.ARG_PARENT_COMMENT_JSON"

    invoke-virtual {p3}, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->toJsonString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v2, "com.naver.glink.ARG_SHOW_COMMENT_EDIT"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->x:Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;

    return-object v0
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->z:Ljava/util/List;

    return-object p1
.end method

.method private a(I)V
    .locals 1

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->k:I

    invoke-static {v0, p1}, Lcom/naver/glink/android/sdk/api/requests/CommentRequests;->commentsRequest(II)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->a(Lcom/naver/glink/android/sdk/api/request/Request;)V

    return-void
.end method

.method private a(Lcom/naver/glink/android/sdk/api/request/Request;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<",
            "Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->s:Lcom/naver/glink/android/sdk/api/request/Request;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->s:Lcom/naver/glink/android/sdk/api/request/Request;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->s:Lcom/naver/glink/android/sdk/api/request/Request;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$18;

    invoke-direct {v2, p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$18;-><init>(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)V

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/api/request/Request;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    goto :goto_0
.end method

.method private a(Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse;)V
    .locals 3

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse;->result:Ljava/lang/Object;

    check-cast v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse$Result;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse$Result;->comment:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->isComment()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse;->result:Ljava/lang/Object;

    check-cast v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse$Result;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse$Result;->comment:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;

    :goto_0
    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->t:Lcom/naver/glink/android/sdk/ui/article/a;

    invoke-virtual {v1, v0}, Lcom/naver/glink/android/sdk/ui/article/a;->b(Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;)V

    new-instance v1, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$b;

    invoke-direct {v1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$b;-><init>()V

    iget v2, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->k:I

    iput v2, v1, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$b;->a:I

    iput-object v0, v1, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$b;->b:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->t:Lcom/naver/glink/android/sdk/ui/article/a;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/article/a;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$b;->c:Ljava/util/List;

    iget-object v0, p1, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse;->result:Ljava/lang/Object;

    check-cast v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse$Result;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse$Result;->count:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Count;

    iput-object v0, v1, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$b;->d:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Count;

    invoke-virtual {p0, v1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->a(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse;->result:Ljava/lang/Object;

    check-cast v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse$Result;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse$Result;->parent:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;

    goto :goto_0
.end method

.method private a(Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;)V
    .locals 5

    iget v0, p1, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->commentNo:I

    iget v1, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->k:I

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getParentCommentNo()I

    move-result v2

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->getMentionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->getMentionNickname()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/naver/glink/android/sdk/model/Comment;->newComment(IIILjava/lang/String;Ljava/lang/String;)Lcom/naver/glink/android/sdk/model/Comment;

    move-result-object v0

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->getContentsForEditing()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/naver/glink/android/sdk/model/Comment;->content:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->a(Lcom/naver/glink/android/sdk/model/Comment;)V

    return-void
.end method

.method private a(Lcom/naver/glink/android/sdk/model/Comment;)V
    .locals 3

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->l:Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/naver/glink/android/sdk/login/LoginHelper;->a()Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;->isLogin(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/naver/glink/android/sdk/login/LoginHelper;->a()Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;->a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/model/Comment;)Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;->builder(Landroid/content/Context;Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;)Lcom/naver/glink/android/sdk/login/a$b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/naver/glink/android/sdk/R$string;->need_login:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/naver/glink/android/sdk/login/a$b;->b(Ljava/lang/String;Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;)Lcom/naver/glink/android/sdk/login/a$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/naver/glink/android/sdk/login/a$b;->a()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->o()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->l:Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;->commentAuthDesc:Ljava/lang/String;

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget v0, Lcom/naver/glink/android/sdk/R$string;->comment_write_permission_error:I

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->c(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->o:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->x:Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getCafeMemberLevel()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->a(Lcom/naver/glink/android/sdk/model/Comment;I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->d(I)V

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->a(Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse;)V

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->a(Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;)V

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/model/Comment;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->a(Lcom/naver/glink/android/sdk/model/Comment;)V

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->b(Z)V

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;ZZZLjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->a(ZZZLjava/lang/Runnable;)V

    return-void
.end method

.method private a(ZZZLjava/lang/Runnable;)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->s:Lcom/naver/glink/android/sdk/api/request/Request;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->s:Lcom/naver/glink/android/sdk/api/request/Request;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/api/request/Request;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->s:Lcom/naver/glink/android/sdk/api/request/Request;

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->t:Lcom/naver/glink/android/sdk/ui/article/a;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->r:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/article/a;->a(Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->r:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->getLastRepliesPage()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->d(I)V

    :goto_0
    if-eqz p4, :cond_1

    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->u:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->l:Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_4

    :cond_3
    iget v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->k:I

    invoke-static {v0}, Lcom/naver/glink/android/sdk/api/requests/GRequests;->articleRequest(I)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/naver/glink/android/sdk/api/request/Request;->showProgress(Z)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$17;

    invoke-direct {v2, p0, p4}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$17;-><init>(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/api/request/Request;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->t:Lcom/naver/glink/android/sdk/ui/article/a;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->l:Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/article/a;->a(Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;)V

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->a(I)V

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->p()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)I
    .locals 1

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->k:I

    return v0
.end method

.method private b(Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;)V
    .locals 3

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->d()V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$string;->delete_confirm_message:I

    invoke-virtual {p0, v1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->c(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$4;

    invoke-direct {v2, p0, p1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$4;-><init>(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;)V

    invoke-static {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->a(Landroid/content/Context;Ljava/lang/String;Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;)V

    return-void
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->b(Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;)V

    return-void
.end method

.method private b(Ljava/lang/String;Z)V
    .locals 3

    invoke-static {}, Lcom/naver/glink/android/sdk/login/LoginHelper;->a()Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;->isLogin(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/naver/glink/android/sdk/login/LoginHelper;->a()Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;->a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Ljava/lang/String;Z)Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;->builder(Landroid/content/Context;Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;)Lcom/naver/glink/android/sdk/login/a$b;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$string;->need_login:I

    invoke-virtual {p0, v1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->c(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/naver/glink/android/sdk/login/a$b;->b(Ljava/lang/String;Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;)Lcom/naver/glink/android/sdk/login/a$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/naver/glink/android/sdk/login/a$b;->a()V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/naver/glink/android/sdk/ui/tabs/b;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private b(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$16;

    invoke-direct {v1, p0, p1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$16;-><init>(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Z)V

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/api/requests/CacheRequests;->loadCafeResponse(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    return-void
.end method

.method static synthetic c(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->v:Landroid/view/View;

    return-object v0
.end method

.method private d(I)V
    .locals 2

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->k:I

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getParentCommentNo()I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/naver/glink/android/sdk/api/requests/CommentRequests;->repliesRequest(III)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->a(Lcom/naver/glink/android/sdk/api/request/Request;)V

    return-void
.end method

.method static synthetic d(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->l()Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->w:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->z:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)Lcom/naver/glink/android/sdk/ui/article/a;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->t:Lcom/naver/glink/android/sdk/ui/article/a;

    return-object v0
.end method

.method private getCafeMemberLevel()I
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->l:Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->p:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->l:Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;

    iget v0, v0, Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;->cafeMemberLevel:I

    goto :goto_0
.end method

.method static synthetic h(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->l:Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;

    return-object v0
.end method

.method static synthetic i(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->q()V

    return-void
.end method

.method private l()Z
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->r:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m()Z
    .locals 1

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->l()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private n()Z
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->l:Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->m:Z

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->l:Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;

    iget-boolean v0, v0, Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;->isLikeable:Z

    goto :goto_0
.end method

.method private o()Z
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->l:Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->n:Z

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->l:Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;

    iget-boolean v0, v0, Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;->isCommentWritable:Z

    goto :goto_0
.end method

.method private p()V
    .locals 3

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->k:I

    invoke-static {v0}, Lcom/naver/glink/android/sdk/api/requests/LikeRequests;->likeCountRequest(I)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$8;

    invoke-direct {v2, p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$8;-><init>(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)V

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/api/request/Request;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    return-void
.end method

.method private q()V
    .locals 3

    invoke-static {}, Lcom/naver/glink/android/sdk/login/LoginHelper;->a()Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;->isLogin(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/naver/glink/android/sdk/login/LoginHelper;->a()Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;->b(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;->builder(Landroid/content/Context;Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;)Lcom/naver/glink/android/sdk/login/a$b;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$string;->need_login:I

    invoke-virtual {p0, v1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->c(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/naver/glink/android/sdk/login/a$b;->b(Ljava/lang/String;Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;)Lcom/naver/glink/android/sdk/login/a$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/naver/glink/android/sdk/login/a$b;->a()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->n()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->l:Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;->likeAuthDesc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/naver/glink/android/sdk/R$string;->no_permissions:I

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->c(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->l:Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;->likeAuthDesc:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->k:I

    invoke-static {v0}, Lcom/naver/glink/android/sdk/api/requests/LikeRequests;->likeCountRequest(I)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$9;

    invoke-direct {v2, p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$9;-><init>(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)V

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/api/request/Request;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    goto :goto_0
.end method

.method private r()V
    .locals 4

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->t:Lcom/naver/glink/android/sdk/ui/article/a;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->t:Lcom/naver/glink/android/sdk/ui/article/a;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/naver/glink/android/sdk/ui/article/a;->a(Landroid/view/ViewGroup;II)V

    goto :goto_0
.end method

.method public static setStaffIconResource(Landroid/widget/ImageView;I)V
    .locals 2

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :sswitch_0
    sget v0, Lcom/naver/glink/android/sdk/R$drawable;->gl_ls_icon_staff_small:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :sswitch_1
    sget v0, Lcom/naver/glink/android/sdk/R$drawable;->gl_ls_icon_master_small:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x63 -> :sswitch_0
        0x3e7 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3

    sget v0, Lcom/naver/glink/android/sdk/R$layout;->fragment_article:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 4

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;->a()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->v:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->w:Landroid/view/View;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a()Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    move-result-object v0

    new-instance v2, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$15;

    invoke-direct {v2, p0, v0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$15;-><init>(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;)V

    iput-object v2, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->y:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$c;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->y:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$c;

    invoke-virtual {v0, v2}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$c;)V

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->q:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->q:Z

    const/4 v0, -0x1

    iget v1, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->k:I

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getParentCommentNo()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/naver/glink/android/sdk/model/Comment;->newComment(IIILjava/lang/String;)Lcom/naver/glink/android/sdk/model/Comment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->a(Lcom/naver/glink/android/sdk/model/Comment;)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method a(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->d()V

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->a(I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->d(I)V

    goto :goto_0
.end method

.method public a(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->t:Lcom/naver/glink/android/sdk/ui/article/a;

    invoke-virtual {v0, p1}, Lcom/naver/glink/android/sdk/ui/article/a;->a(I)Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p2}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->a(Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;Z)V

    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "com.naver.glink.ARG_ARTICLE_ID"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->k:I

    const-string/jumbo v0, "com.naver.glink.ARG_PARENT_COMMENT_JSON"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/google/gson/GsonBuilder;

    invoke-direct {v2}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v2

    const-class v3, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->r:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;

    :cond_0
    const-string/jumbo v0, "com.naver.glink.ARG_IS_LIKEABLE"

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->m:Z

    const-string/jumbo v0, "com.naver.glink.ARG_IS_COMMENT_WRITABLE"

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->n:Z

    const-string/jumbo v0, "com.naver.glink.ARG_COMMENT_AUTH_DESC"

    const-string/jumbo v2, ""

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->o:Ljava/lang/String;

    const-string/jumbo v0, "com.naver.glink.ARG_CAFE_MEMBER_LEVEL"

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->p:I

    const-string/jumbo v0, "com.naver.glink.ARG_SHOW_COMMENT_EDIT"

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->q:Z

    :cond_1
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->d()V

    sget v0, Lcom/naver/glink/android/sdk/R$menu;->article_more_actions:I

    new-instance v1, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$5;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$5;-><init>(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)V

    invoke-static {p1, v0, v1}, Lcom/naver/glink/android/sdk/a/k;->a(Landroid/view/View;ILandroid/widget/PopupMenu$OnMenuItemClickListener;)Landroid/widget/PopupMenu;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->l:Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;

    iget-boolean v1, v1, Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;->isWriter:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$id;->contents_report:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    sget v2, Lcom/naver/glink/android/sdk/R$id;->contents_edit:I

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$id;->contents_delete:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;->a(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/naver/glink/android/sdk/R$color;->white1:I

    :goto_0
    invoke-static {v1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v0, Lcom/naver/glink/android/sdk/ui/article/a;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->m()Z

    move-result v2

    invoke-direct {v0, v1, p0, v2}, Lcom/naver/glink/android/sdk/ui/article/a;-><init>(Landroid/content/Context;Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Z)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->t:Lcom/naver/glink/android/sdk/ui/article/a;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->t:Lcom/naver/glink/android/sdk/ui/article/a;

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$1;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$1;-><init>(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$11;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$11;-><init>(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->swipe_refresh_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->u:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->u:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->c()Lcom/naver/glink/android/sdk/configure/d;

    move-result-object v3

    iget v3, v3, Lcom/naver/glink/android/sdk/configure/d;->a:I

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->u:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$12;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$12;-><init>(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->back:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->v:Landroid/view/View;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->v:Landroid/view/View;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$13;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$13;-><init>(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->comment_write:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->w:Landroid/view/View;

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->c()Lcom/naver/glink/android/sdk/configure/d;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->w:Landroid/view/View;

    sget v2, Lcom/naver/glink/android/sdk/R$drawable;->gl_ls_btn_comment_selector:I

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/configure/d;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->w:Landroid/view/View;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$14;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$14;-><init>(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$From;->ARTICLE:Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$From;

    :goto_1
    invoke-static {v1, v0}, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$From;)Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->x:Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->c()V

    return-void

    :cond_0
    sget v0, Lcom/naver/glink/android/sdk/R$color;->white2:I

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$From;->REPLIES:Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$From;

    goto :goto_1
.end method

.method public a(Landroid/view/View;Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;)V
    .locals 2

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->d()V

    sget v0, Lcom/naver/glink/android/sdk/R$menu;->article_more_actions:I

    new-instance v1, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$2;

    invoke-direct {v1, p0, p2}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$2;-><init>(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;)V

    invoke-static {p1, v0, v1}, Lcom/naver/glink/android/sdk/a/k;->a(Landroid/view/View;ILandroid/widget/PopupMenu$OnMenuItemClickListener;)Landroid/widget/PopupMenu;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$id;->contents_report:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public a(Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;Z)V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, -0x1

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->commentNo:I

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getParentCommentNo()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->k:I

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getParentCommentNo()I

    move-result v1

    invoke-static {v4, v0, v1, v2, v2}, Lcom/naver/glink/android/sdk/model/Comment;->newComment(IIILjava/lang/String;Ljava/lang/String;)Lcom/naver/glink/android/sdk/model/Comment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->a(Lcom/naver/glink/android/sdk/model/Comment;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->k:I

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getParentCommentNo()I

    move-result v1

    iget-object v2, p1, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->userIdNo:Ljava/lang/String;

    iget-object v3, p1, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->userName:Ljava/lang/String;

    invoke-static {v4, v0, v1, v2, v3}, Lcom/naver/glink/android/sdk/model/Comment;->newComment(IIILjava/lang/String;Ljava/lang/String;)Lcom/naver/glink/android/sdk/model/Comment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->a(Lcom/naver/glink/android/sdk/model/Comment;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->o()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/naver/glink/android/sdk/login/LoginHelper;->a()Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;->isLogin(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->l:Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;->commentAuthDesc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/naver/glink/android/sdk/R$string;->comment_write_permission_error:I

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->c(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->l:Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;->commentAuthDesc:Ljava/lang/String;

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->d()V

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->k:I

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->l:Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;

    invoke-static {v0, v1, p1, p2}, Lcom/naver/glink/android/sdk/ui/tabs/b;->a(ILcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;Z)V

    goto :goto_0
.end method

.method public a(Lcom/naver/glink/android/sdk/c$a;)V
    .locals 0
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->d()V

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->r()V

    return-void
.end method

.method public a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$a;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    iget v0, p1, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$a;->a:I

    iget v1, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->k:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->t:Lcom/naver/glink/android/sdk/ui/article/a;

    invoke-virtual {v0, p1}, Lcom/naver/glink/android/sdk/ui/article/a;->a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$a;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$b;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$b;->a:I

    iget v1, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->k:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->t:Lcom/naver/glink/android/sdk/ui/article/a;

    invoke-virtual {v0, p1}, Lcom/naver/glink/android/sdk/ui/article/a;->a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$b;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$b;)V
    .locals 4
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    iget-object v0, p1, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$b;->d:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$b;->b:Lcom/naver/glink/android/sdk/model/Comment;

    iget v0, v0, Lcom/naver/glink/android/sdk/model/Comment;->articleId:I

    iget v1, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->k:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$b;->b:Lcom/naver/glink/android/sdk/model/Comment;

    iget v0, v0, Lcom/naver/glink/android/sdk/model/Comment;->id:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->t:Lcom/naver/glink/android/sdk/ui/article/a;

    iget-object v0, p1, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$b;->d:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse;->result:Ljava/lang/Object;

    check-cast v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse$Result;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse$Result;->comment:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;

    invoke-virtual {v1, v0}, Lcom/naver/glink/android/sdk/ui/article/a;->b(Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$b;->a:Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$From;

    sget-object v1, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$From;->ARTICLE:Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$From;

    if-eq v0, v1, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->l()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$b;->a:Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$From;

    sget-object v1, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$From;->REPLIES:Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$From;

    if-ne v0, v1, :cond_6

    :cond_4
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->t:Lcom/naver/glink/android/sdk/ui/article/a;

    iget-object v1, p1, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$b;->d:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse;

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/article/a;->a(Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$3;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$3;-><init>(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    iget-object v0, p1, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$b;->d:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse;

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->a(Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse;)V

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$a;)V
    .locals 0
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->c()V

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->d()V

    invoke-direct {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method a(Z)V
    .locals 3

    invoke-static {}, Lcom/naver/glink/android/sdk/login/LoginHelper;->a()Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;->isLogin(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/naver/glink/android/sdk/login/LoginHelper;->a()Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;->a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$LoggedInListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;->builder(Landroid/content/Context;Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;)Lcom/naver/glink/android/sdk/login/a$b;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$string;->need_login:I

    invoke-virtual {p0, v1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->c(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/naver/glink/android/sdk/login/a$b;->b(Ljava/lang/String;Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;)Lcom/naver/glink/android/sdk/login/a$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/naver/glink/android/sdk/login/a$b;->a()V

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$string;->article_report_alert_message:I

    invoke-virtual {p0, v1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->c(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$6;

    invoke-direct {v2, p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$6;-><init>(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)V

    invoke-static {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->a(Landroid/content/Context;Ljava/lang/String;Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->k:I

    invoke-static {v0}, Lcom/naver/glink/android/sdk/api/requests/GRequests;->reportArticleRequest(I)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/api/request/Request;->checkNetworkConnected(Z)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$7;

    invoke-direct {v2, p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$7;-><init>(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)V

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/api/request/Request;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    invoke-super {p0}, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;->b()V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->d()V

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a()Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->y:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$c;

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->b(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$c;)V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->b(Z)V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->x:Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->x:Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->c()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->d()V

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->q()V

    return-void
.end method

.method getParentCommentNo()I
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->r:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->r:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;

    iget v0, v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->commentNo:I

    goto :goto_0
.end method
