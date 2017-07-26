.class public Lcom/naver/glink/android/sdk/ui/tabs/b;
.super Ljava/lang/Object;
.source "TabsHelper.java"


# static fields
.field private static final a:Ljava/lang/String; = "TabsHelper"

.field private static final b:Ljava/lang/String; = "plug.sdk.tabs"

.field private static final c:Ljava/lang/String; = "plug.sdk.child."

.field private static d:Lcom/naver/glink/android/sdk/ui/tabs/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;
    .locals 2

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/tabs/b;->l()Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    move-result-object v0

    const-string/jumbo v1, "plug.sdk.tabs"

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a(Ljava/lang/String;)Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "plug.sdk.child."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->c()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/ui/tabs/Tab;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/naver/glink/android/sdk/ui/tabs/b;->d:Lcom/naver/glink/android/sdk/ui/tabs/a;

    invoke-virtual {v0, p0}, Lcom/naver/glink/android/sdk/ui/tabs/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)V
    .locals 3

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->a(Landroid/content/Context;I)Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "article"

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/tabs/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/tabs/b;->a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;Ljava/lang/String;Z)V

    return-void

    :cond_0
    invoke-static {}, Lcom/naver/glink/android/sdk/c;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->a(Landroid/content/Context;I)Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(ILcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;Z)V
    .locals 3

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->a(Landroid/content/Context;ILcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;Z)Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    move-result-object v0

    const-string/jumbo v1, "replies"

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/tabs/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/tabs/b;->a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;Ljava/lang/String;Z)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;Lcom/naver/glink/android/sdk/StartTo;)V
    .locals 4

    invoke-static {p0, p2}, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/StartTo;)Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;

    move-result-object v0

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a()Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->b()Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    move-result-object v1

    const-string/jumbo v2, "plug.sdk.tabs"

    check-cast p1, Landroid/view/ViewGroup;

    sget v3, Lcom/naver/glink/android/sdk/R$id;->glink:I

    invoke-virtual {v1, v0, v2, p1, v3}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;Ljava/lang/String;Landroid/view/ViewGroup;I)Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->a()V

    return-void
.end method

.method static a(Lcom/naver/glink/android/sdk/model/Menu;)V
    .locals 3

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/model/Menu;)Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;

    move-result-object v0

    const-string/jumbo v1, "allMedia"

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/tabs/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/tabs/b;->a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;Ljava/lang/String;Z)V

    return-void
.end method

.method private static a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;Ljava/lang/String;Z)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/naver/glink/android/sdk/ui/tabs/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {}, Lcom/naver/glink/android/sdk/ui/tabs/b;->l()Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->b()Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    move-result-object v0

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/tabs/b;->a()Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;

    move-result-object v1

    sget v2, Lcom/naver/glink/android/sdk/R$id;->tab_contents:I

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;Ljava/lang/String;Landroid/view/ViewGroup;I)Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->a(Ljava/lang/String;)Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->a()V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/naver/glink/android/sdk/ui/tabs/b;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;)V
    .locals 1

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/tabs/b;->a()Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p0}, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->a(Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;)V

    goto :goto_0
.end method

.method public static a(Lcom/naver/glink/android/sdk/ui/tabs/a;)V
    .locals 0

    sput-object p0, Lcom/naver/glink/android/sdk/ui/tabs/b;->d:Lcom/naver/glink/android/sdk/ui/tabs/a;

    return-void
.end method

.method public static a(Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/naver/glink/android/sdk/ui/tabs/b;->a(Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;ZZ)V

    return-void
.end method

.method public static a(Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;ZZ)V
    .locals 5

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "write"

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/tabs/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->p()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;ZZ)Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    move-result-object v1

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/tabs/b;->l()Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->b()Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    move-result-object v2

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/tabs/b;->a()Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;

    move-result-object v3

    sget v4, Lcom/naver/glink/android/sdk/R$id;->glink_contents:I

    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;Ljava/lang/String;Landroid/view/ViewGroup;I)Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->a(Ljava/lang/String;)Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->a()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;IIIZLjava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->p()Landroid/content/Context;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->a(Landroid/content/Context;Ljava/lang/String;IIIZLjava/lang/String;)Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

    move-result-object v0

    const-string/jumbo v1, "profileArticles"

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/tabs/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/tabs/b;->a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;Ljava/lang/String;Z)V

    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->p()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v2, v1, p0, p1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->a(Landroid/content/Context;ZZLjava/lang/String;Z)Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;

    move-result-object v0

    const-string/jumbo v1, "profile"

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/tabs/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/tabs/b;->a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;Ljava/lang/String;Z)V

    return-void
.end method

.method public static b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/naver/glink/android/sdk/ui/tabs/b;->d:Lcom/naver/glink/android/sdk/ui/tabs/a;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/tabs/a;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static b(I)V
    .locals 3

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->a(Landroid/content/Context;I)Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;

    move-result-object v0

    const-string/jumbo v1, "link.article"

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/tabs/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/tabs/b;->a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;Ljava/lang/String;Z)V

    return-void
.end method

.method public static b(Lcom/naver/glink/android/sdk/model/Menu;)V
    .locals 3

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/model/Menu;)Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;

    move-result-object v0

    const-string/jumbo v1, "search"

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/tabs/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/tabs/b;->a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;Ljava/lang/String;Z)V

    return-void
.end method

.method public static b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/ui/tabs/Tab;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/tabs/b;->a()Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p0}, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "plug.sdk.child."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/ui/tabs/Tab;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/naver/glink/android/sdk/ui/tabs/b;->d:Lcom/naver/glink/android/sdk/ui/tabs/a;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/tabs/a;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static c(I)V
    .locals 3

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->p()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->MENU:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    invoke-static {v0, v1, p0}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;I)Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;

    move-result-object v0

    const-string/jumbo v1, "articles"

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/tabs/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/tabs/b;->a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;Ljava/lang/String;Z)V

    return-void
.end method

.method private static c(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/tabs/b;->l()Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static d()Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;
    .locals 2

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/tabs/b;->l()Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    move-result-object v0

    const-string/jumbo v1, "write"

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/tabs/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a(Ljava/lang/String;)Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    return-object v0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static e()V
    .locals 2

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/tabs/b;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/tabs/b;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static f()V
    .locals 2

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/tabs/b;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/tabs/b;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static g()Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;
    .locals 1

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/tabs/b;->a()Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->getSelectedTabType()Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    move-result-object v0

    goto :goto_0
.end method

.method public static h()V
    .locals 1

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/tabs/b;->a()Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->l()V

    goto :goto_0
.end method

.method public static i()V
    .locals 1

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/tabs/b;->a()Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->m()V

    goto :goto_0
.end method

.method public static j()V
    .locals 1

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/tabs/b;->a()Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->e()V

    goto :goto_0
.end method

.method public static k()V
    .locals 3

    const-string/jumbo v0, "TabsHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getAllChildBackStackNames: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/tabs/b;->m()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static l()Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;
    .locals 1

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a()Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    move-result-object v0

    return-object v0
.end method

.method private static m()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a()Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    move-result-object v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/tabs/b;->a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/tabs/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method
