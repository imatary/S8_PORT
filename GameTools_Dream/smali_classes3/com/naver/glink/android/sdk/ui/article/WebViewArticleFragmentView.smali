.class public Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;
.super Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;
.source "WebViewArticleFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$c;,
        Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$b;,
        Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$a;,
        Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "WebViewArticle"

.field private static final b:Ljava/lang/String; = "com.naver.glink.ARG_ARTICLE_ID"

.field private static final c:J = 0x64L


# instance fields
.field private d:I

.field private g:Lcom/naver/glink/android/sdk/api/Responses$ArticleMetaDataResponse;

.field private h:Landroid/webkit/WebView;

.field private i:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;

.field private m:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$a;

.field private n:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$c;

.field private o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$a;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$a;-><init>(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->m:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$a;

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;Lcom/naver/glink/android/sdk/api/Responses$ArticleMetaDataResponse;)Lcom/naver/glink/android/sdk/api/Responses$ArticleMetaDataResponse;
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->g:Lcom/naver/glink/android/sdk/api/Responses$ArticleMetaDataResponse;

    return-object p1
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;)Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->l:Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;

    return-object v0
.end method

.method public static a(Landroid/content/Context;I)Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;
    .locals 3

    new-instance v0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "com.naver.glink.ARG_ARTICLE_ID"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private a(I)V
    .locals 3

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->d:I

    invoke-static {v0, p1}, Lcom/naver/glink/android/sdk/api/requests/Requests;->commentsRequest(II)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$3;

    invoke-direct {v2, p0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$3;-><init>(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;)V

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/api/request/Request;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    return-void
.end method

.method private a(Landroid/net/Uri;)V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    new-array v5, v0, [Ljava/lang/String;

    const-string/jumbo v6, "createComment"

    aput-object v6, v5, v2

    const-string/jumbo v6, "updateComment"

    aput-object v6, v5, v3

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-direct {p0, v3}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->a(Z)V

    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_3
    move v0, v1

    :goto_1
    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "WebViewArticle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\uc5d0 \ub300\ud55c \ucc98\ub9ac\uac00 \uc5c6\uc2b5\ub2c8\ub2e4."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "likeIt"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "updateArticle"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_1

    :sswitch_2
    const-string/jumbo v5, "deleteArticle"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :sswitch_3
    const-string/jumbo v0, "readComments"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v0, "createComment"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v0, "updateComment"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string/jumbo v0, "deleteComment"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_7
    const-string/jumbo v0, "back"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_8
    const-string/jumbo v0, "joinCafe"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_9
    const-string/jumbo v0, "login"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_a
    const-string/jumbo v0, "showArticlePhotoList"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_b
    const-string/jumbo v0, "goProfile"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string/jumbo v0, "voteSuccess"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xc

    goto/16 :goto_1

    :pswitch_0
    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->l()V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->d:I

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/article/b;->a(Landroid/content/Context;I)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->d:I

    invoke-static {v0, p0, v1, v2}, Lcom/naver/glink/android/sdk/ui/article/b;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;IZ)V

    goto/16 :goto_0

    :pswitch_3
    const-string/jumbo v0, "page"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->a(I)V

    goto/16 :goto_0

    :pswitch_4
    const-string/jumbo v0, "refCommentId"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "refCommentId"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_2
    const/4 v2, 0x0

    const-string/jumbo v4, "targetMemberId"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v2, "targetMemberId"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_4
    iget v4, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->d:I

    invoke-static {v1, v4, v0, v2}, Lcom/naver/glink/android/sdk/model/Comment;->newComment(IIILjava/lang/String;)Lcom/naver/glink/android/sdk/model/Comment;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->a(Lcom/naver/glink/android/sdk/model/Comment;Z)V

    goto/16 :goto_0

    :pswitch_5
    const-string/jumbo v0, "commentId"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string/jumbo v1, "content"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->d:I

    invoke-static {v0, v2}, Lcom/naver/glink/android/sdk/model/Comment;->newComment(II)Lcom/naver/glink/android/sdk/model/Comment;

    move-result-object v0

    iput-object v1, v0, Lcom/naver/glink/android/sdk/model/Comment;->content:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->a(Lcom/naver/glink/android/sdk/model/Comment;Z)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$string;->delete_confirm_message:I

    invoke-virtual {p0, v1}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->c(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$13;

    invoke-direct {v2, p0, p1}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$13;-><init>(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;Landroid/net/Uri;)V

    invoke-static {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->a(Landroid/content/Context;Ljava/lang/String;Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;)V

    goto/16 :goto_0

    :pswitch_7
    invoke-static {}, Lcom/naver/glink/android/sdk/ui/tabs/b;->f()V

    goto/16 :goto_0

    :pswitch_8
    sget-object v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->PROFILE:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/tabs/b;->a(Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;)V

    goto/16 :goto_0

    :pswitch_9
    invoke-static {}, Lcom/naver/glink/android/sdk/login/LoginHelper;->a()Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener;->a(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;)Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;->login(Landroid/content/Context;Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;)V

    goto/16 :goto_0

    :pswitch_a
    invoke-direct {p0, v2}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->a(Z)V

    const-string/jumbo v0, "index"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;->ARTICLE:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;

    const-string/jumbo v2, "imgUrl"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->from(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/naver/glink/android/sdk/ui/viewer/a;->a(Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;Ljava/util/List;I)V

    goto/16 :goto_0

    :pswitch_b
    const-string/jumbo v0, "userId"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "isWriter"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->a(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :pswitch_c
    iget v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->d:I

    invoke-static {v0}, Lcom/naver/glink/android/sdk/b;->b(I)V

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7a285a56 -> :sswitch_3
        -0x53f6b647 -> :sswitch_c
        -0x5394da19 -> :sswitch_8
        -0x41bad0de -> :sswitch_0
        -0x4172ee3d -> :sswitch_4
        -0x37dbc735 -> :sswitch_2
        -0x208476aa -> :sswitch_5
        0x2e04e7 -> :sswitch_7
        0x2f23fa1 -> :sswitch_b
        0x625ef69 -> :sswitch_9
        0x2c715a34 -> :sswitch_6
        0x3b2906b7 -> :sswitch_a
        0x7b2e67ed -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private a(Lcom/naver/glink/android/sdk/model/Comment;)V
    .locals 3

    invoke-static {p1}, Lcom/naver/glink/android/sdk/api/requests/Requests;->deleteCommentRequest(Lcom/naver/glink/android/sdk/model/Comment;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/api/request/Request;->showProgress(Z)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$4;

    invoke-direct {v2, p0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$4;-><init>(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;)V

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/api/request/Request;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    return-void
.end method

.method private a(Lcom/naver/glink/android/sdk/model/Comment;Z)V
    .locals 4

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->m:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$a;

    invoke-virtual {v0, v2}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$a;->removeMessages(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->m:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$a;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->m:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$a;

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/naver/glink/android/sdk/login/LoginHelper;->a()Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;->isLogin(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/naver/glink/android/sdk/login/LoginHelper;->a()Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener;->a(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;Lcom/naver/glink/android/sdk/model/Comment;)Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;->builder(Landroid/content/Context;Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;)Lcom/naver/glink/android/sdk/login/a$b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/naver/glink/android/sdk/R$string;->require_login_message:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/naver/glink/android/sdk/login/a$b;->b(Ljava/lang/String;Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;)Lcom/naver/glink/android/sdk/login/a$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/naver/glink/android/sdk/login/a$b;->a()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$10;

    invoke-direct {v0, p0, p1}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$10;-><init>(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;Lcom/naver/glink/android/sdk/model/Comment;)V

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->a(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;Lcom/naver/glink/android/sdk/model/Comment;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->a(Lcom/naver/glink/android/sdk/model/Comment;)V

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;Lcom/naver/glink/android/sdk/model/Comment;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->a(Lcom/naver/glink/android/sdk/model/Comment;Z)V

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 3

    invoke-static {}, Lcom/naver/glink/android/sdk/login/LoginHelper;->a()Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;->isLogin(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/naver/glink/android/sdk/login/LoginHelper;->a()Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener;->a(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;Ljava/lang/String;Z)Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;->builder(Landroid/content/Context;Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;)Lcom/naver/glink/android/sdk/login/a$b;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$string;->require_login_message:I

    invoke-virtual {p0, v1}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->c(I)Ljava/lang/String;

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

.method private a(Z)V
    .locals 4

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->m:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$a;

    invoke-virtual {v0, v2}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$a;->removeMessages(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->m:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$a;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->m:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$a;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->l:Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->c()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;)I
    .locals 1

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->d:I

    return v0
.end method

.method private b(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->g:Lcom/naver/glink/android/sdk/api/Responses$ArticleMetaDataResponse;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->d:I

    invoke-static {v0}, Lcom/naver/glink/android/sdk/api/requests/Requests;->articleMetaDataRequest(I)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/api/request/Request;->showProgress(Z)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$11;

    invoke-direct {v2, p0, p1}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$11;-><init>(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/api/request/Request;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->g:Lcom/naver/glink/android/sdk/api/Responses$ArticleMetaDataResponse;

    iget-boolean v0, v0, Lcom/naver/glink/android/sdk/api/Responses$ArticleMetaDataResponse;->isCafeMember:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$string;->require_join_message:I

    invoke-virtual {p0, v1}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->c(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$12;

    invoke-direct {v2, p0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$12;-><init>(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;)V

    invoke-static {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->a(Landroid/content/Context;Ljava/lang/String;Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->o:Z

    return p1
.end method

.method static synthetic c(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->k:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->j:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;)Lcom/naver/glink/android/sdk/api/Responses$ArticleMetaDataResponse;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->g:Lcom/naver/glink/android/sdk/api/Responses$ArticleMetaDataResponse;

    return-object v0
.end method

.method private e()Lcom/naver/glink/android/sdk/api/request/Request;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<",
            "Lcom/naver/glink/android/sdk/api/Response;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->d:I

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->h()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/api/requests/Requests;->articleRequest(IZ)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->h:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic g(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;)V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->l()V

    return-void
.end method

.method static synthetic h(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->o:Z

    return v0
.end method

.method static synthetic i(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->i:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method private l()V
    .locals 3

    invoke-static {}, Lcom/naver/glink/android/sdk/login/LoginHelper;->a()Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;->isLogin(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/naver/glink/android/sdk/login/LoginHelper;->a()Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener;->b(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;)Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;->builder(Landroid/content/Context;Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;)Lcom/naver/glink/android/sdk/login/a$b;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$string;->require_login_message:I

    invoke-virtual {p0, v1}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->c(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/naver/glink/android/sdk/login/a$b;->b(Ljava/lang/String;Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;)Lcom/naver/glink/android/sdk/login/a$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/naver/glink/android/sdk/login/a$b;->a()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$2;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$2;-><init>(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;)V

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3

    sget v0, Lcom/naver/glink/android/sdk/R$layout;->fragment_web_view_article:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a()Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$9;

    invoke-direct {v1, p0, v0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$9;-><init>(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;)V

    iput-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->n:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$c;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->n:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$c;

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$c;)V

    invoke-super {p0}, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->a()V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "com.naver.glink.ARG_ARTICLE_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->d:I

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->a(Landroid/view/View;Landroid/os/Bundle;)V

    iput-boolean v4, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->o:Z

    sget v0, Lcom/naver/glink/android/sdk/R$id;->web_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->h:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->h:Landroid/webkit/WebView;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$b;

    invoke-direct {v1, p0, v2}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$b;-><init>(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->h:Landroid/webkit/WebView;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$c;

    invoke-direct {v1, p0, v2}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$c;-><init>(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-static {}, Lcom/naver/glink/android/sdk/api/request/RequestHelper;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->h:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->h:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->h:Landroid/webkit/WebView;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$1;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$1;-><init>(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->swipe_refresh_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->i:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->i:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-array v1, v4, [I

    const/4 v2, 0x0

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->c()Lcom/naver/glink/android/sdk/configure/d;

    move-result-object v3

    iget v3, v3, Lcom/naver/glink/android/sdk/configure/d;->a:I

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->i:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$6;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$6;-><init>(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->back:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->k:Landroid/view/View;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->k:Landroid/view/View;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$7;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$7;-><init>(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->comment_write:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->j:Landroid/view/View;

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->c()Lcom/naver/glink/android/sdk/configure/d;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->j:Landroid/view/View;

    sget v2, Lcom/naver/glink/android/sdk/R$drawable;->gl_ls_btn_comment_selector:I

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/configure/d;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->j:Landroid/view/View;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$8;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$8;-><init>(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$From;->ARTICLE:Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$From;

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$From;)Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->l:Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->c()V

    return-void
.end method

.method public a(Lcom/naver/glink/android/sdk/c$a;)V
    .locals 1
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->a(Z)V

    return-void
.end method

.method public a(Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$b;)V
    .locals 5
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-object v0, p1, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$b;->c:Lcom/naver/glink/android/sdk/api/Responses$CommentSaveResponse;

    iget-boolean v0, v0, Lcom/naver/glink/android/sdk/api/Responses$CommentSaveResponse;->success:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$b;->b:Lcom/naver/glink/android/sdk/model/Comment;

    iget v0, v0, Lcom/naver/glink/android/sdk/model/Comment;->id:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->h:Landroid/webkit/WebView;

    const-string/jumbo v1, "javascript:addComment(%s)"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$b;->c:Lcom/naver/glink/android/sdk/api/Responses$CommentSaveResponse;

    iget-object v3, v3, Lcom/naver/glink/android/sdk/api/Responses$CommentSaveResponse;->returnValue:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->h:Landroid/webkit/WebView;

    const-string/jumbo v1, "javascript:modifyComment(%s)"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$b;->c:Lcom/naver/glink/android/sdk/api/Responses$CommentSaveResponse;

    iget-object v3, v3, Lcom/naver/glink/android/sdk/api/Responses$CommentSaveResponse;->returnValue:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$a;)V
    .locals 0
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->c()V

    return-void
.end method

.method public b()V
    .locals 2

    invoke-super {p0}, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->b()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->a(Z)V

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/main/b;->d()V

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a()Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->n:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$c;

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->b(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$c;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    return-void
.end method

.method public c()V
    .locals 3

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/i;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/naver/glink/android/sdk/R$string;->network_error:I

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->b(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/naver/glink/android/sdk/login/LoginHelper;->a()Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;->isNeedRefreshToken(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/naver/glink/android/sdk/login/LoginHelper;->a()Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener;->a(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;)Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;->login(Landroid/content/Context;Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->e()Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/api/request/Request;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/api/request/Request;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public d_()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->h:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_0
    invoke-super {p0}, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->d_()V

    return-void
.end method
