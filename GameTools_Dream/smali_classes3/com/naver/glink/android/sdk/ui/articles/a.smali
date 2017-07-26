.class public Lcom/naver/glink/android/sdk/ui/articles/a;
.super Landroid/widget/ArrayAdapter;
.source "ArticlesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/ui/articles/a$b;,
        Lcom/naver/glink/android/sdk/ui/articles/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/naver/glink/android/sdk/ui/articles/a$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:I = 0xa

.field protected static final b:I = 0x14

.field private static final d:I = -0x1

.field private static final e:I = 0x0

.field private static final f:I = 0x1

.field private static final g:I = 0x2

.field private static final h:I = 0x3

.field private static final i:I = 0x4

.field private static final j:I = 0x5


# instance fields
.field protected c:Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Lcom/naver/glink/android/sdk/model/Menu;

.field private n:I

.field private o:Landroid/content/Context;

.field private p:Lcom/naver/glink/android/sdk/api/request/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<",
            "Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/naver/glink/android/sdk/ui/articles/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/articles/a;->o:Landroid/content/Context;

    return-void
.end method

.method private a(Lcom/naver/glink/android/sdk/model/Article;)I
    .locals 1

    iget-object v0, p1, Lcom/naver/glink/android/sdk/model/Article;->thumbnailImage:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/naver/glink/android/sdk/c;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/articles/a;)I
    .locals 1

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a;->n:I

    return v0
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/articles/a;I)I
    .locals 0

    iput p1, p0, Lcom/naver/glink/android/sdk/ui/articles/a;->n:I

    return p1
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/articles/a;Lcom/naver/glink/android/sdk/api/request/Request;)Lcom/naver/glink/android/sdk/api/request/Request;
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/articles/a;->p:Lcom/naver/glink/android/sdk/api/request/Request;

    return-object p1
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/articles/a;Lcom/naver/glink/android/sdk/model/Menu;)Lcom/naver/glink/android/sdk/model/Menu;
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/articles/a;->m:Lcom/naver/glink/android/sdk/model/Menu;

    return-object p1
.end method

.method private a(Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/ui/articles/a$b;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/l;->i(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    iget-object v0, p1, Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;->notices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/model/Article;

    iget v4, v0, Lcom/naver/glink/android/sdk/model/Article;->articleId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lcom/naver/glink/android/sdk/ui/articles/a$b;

    const/4 v5, 0x4

    invoke-direct {v4, v5, v0}, Lcom/naver/glink/android/sdk/ui/articles/a$b;-><init>(ILcom/naver/glink/android/sdk/model/Article;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;->articles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/naver/glink/android/sdk/ui/articles/a$b;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/naver/glink/android/sdk/ui/articles/a$b;-><init>(ILcom/naver/glink/android/sdk/model/Article;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v1

    :cond_3
    iget-object v0, p1, Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;->articles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/model/Article;

    new-instance v3, Lcom/naver/glink/android/sdk/ui/articles/a$b;

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/articles/a;->a(Lcom/naver/glink/android/sdk/model/Article;)I

    move-result v4

    invoke-direct {v3, v4, v0}, Lcom/naver/glink/android/sdk/ui/articles/a$b;-><init>(ILcom/naver/glink/android/sdk/model/Article;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/articles/a;Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/articles/a;->a(Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(ILandroid/view/View;)V
    .locals 4

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/articles/a;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/s;->a(F)I

    move-result v0

    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p2, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Z)V
    .locals 4

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a;->k:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->f()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a;->n:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/articles/a;->a(I)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v1

    iput-object v1, p0, Lcom/naver/glink/android/sdk/ui/articles/a;->p:Lcom/naver/glink/android/sdk/api/request/Request;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/articles/a;->p:Lcom/naver/glink/android/sdk/api/request/Request;

    invoke-virtual {v1, p1}, Lcom/naver/glink/android/sdk/api/request/Request;->showProgress(Z)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v1

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/articles/a;->o:Landroid/content/Context;

    new-instance v3, Lcom/naver/glink/android/sdk/ui/articles/a$2;

    invoke-direct {v3, p0, v0}, Lcom/naver/glink/android/sdk/ui/articles/a$2;-><init>(Lcom/naver/glink/android/sdk/ui/articles/a;I)V

    invoke-virtual {v1, v2, v3}, Lcom/naver/glink/android/sdk/api/request/Request;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    goto :goto_0
.end method

.method private b(I)Lcom/naver/glink/android/sdk/ui/articles/a$b;
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/articles/a;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/naver/glink/android/sdk/ui/articles/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/articles/a$b;

    iget-object v2, v0, Lcom/naver/glink/android/sdk/ui/articles/a$b;->b:Lcom/naver/glink/android/sdk/model/Article;

    if-nez v2, :cond_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/naver/glink/android/sdk/ui/articles/a$b;->b:Lcom/naver/glink/android/sdk/model/Article;

    iget v2, v2, Lcom/naver/glink/android/sdk/model/Article;->articleId:I

    if-ne v2, p1, :cond_0

    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a;->p:Lcom/naver/glink/android/sdk/api/request/Request;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a;->n:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/articles/a;->a(Z)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/articles/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/articles/a;->b()V

    return-void
.end method

.method private b(Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;)Z
    .locals 1

    iget-object v0, p1, Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;->articles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/articles/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;->metadata:Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse$MetaData;

    iget-boolean v0, v0, Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse$MetaData;->isLastPage:Z

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;->metadata:Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse$MetaData;

    iget-boolean v0, v0, Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse$MetaData;->isLast:Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/articles/a;Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/articles/a;->b(Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/naver/glink/android/sdk/ui/articles/a;)Lcom/naver/glink/android/sdk/model/Menu;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a;->m:Lcom/naver/glink/android/sdk/model/Menu;

    return-object v0
.end method

.method private c()Z
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/naver/glink/android/sdk/ui/articles/a;)Lcom/naver/glink/android/sdk/ui/articles/a$a;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a;->q:Lcom/naver/glink/android/sdk/ui/articles/a$a;

    return-object v0
.end method


# virtual methods
.method protected a(I)Lcom/naver/glink/android/sdk/api/request/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<",
            "Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;",
            ">;"
        }
    .end annotation

    const/16 v2, 0x14

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/articles/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a;->k:I

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/articles/a;->l:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2}, Lcom/naver/glink/android/sdk/api/requests/Requests;->searchRequest(ILjava/lang/String;II)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a;->c:Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    :goto_1
    iget v1, p0, Lcom/naver/glink/android/sdk/ui/articles/a;->k:I

    invoke-static {v1, v0, v2}, Lcom/naver/glink/android/sdk/api/requests/Requests;->articlesRequest(III)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a;->c:Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;->metadata:Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse$MetaData;

    iget v0, v0, Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse$MetaData;->lastArticleId:I

    goto :goto_1
.end method

.method public a()Lcom/naver/glink/android/sdk/model/Menu;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a;->m:Lcom/naver/glink/android/sdk/model/Menu;

    return-object v0
.end method

.method public a(IZ)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a;->p:Lcom/naver/glink/android/sdk/api/request/Request;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a;->p:Lcom/naver/glink/android/sdk/api/request/Request;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/api/request/Request;->cancel()V

    iput-object v1, p0, Lcom/naver/glink/android/sdk/ui/articles/a;->p:Lcom/naver/glink/android/sdk/api/request/Request;

    :cond_0
    iput p1, p0, Lcom/naver/glink/android/sdk/ui/articles/a;->k:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a;->n:I

    iput-object v1, p0, Lcom/naver/glink/android/sdk/ui/articles/a;->m:Lcom/naver/glink/android/sdk/model/Menu;

    iput-object v1, p0, Lcom/naver/glink/android/sdk/ui/articles/a;->c:Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;

    invoke-direct {p0, p2}, Lcom/naver/glink/android/sdk/ui/articles/a;->a(Z)V

    return-void
.end method

.method public a(Landroid/widget/ListView;)V
    .locals 1

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lcom/naver/glink/android/sdk/ui/articles/a$1;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/articles/a$1;-><init>(Lcom/naver/glink/android/sdk/ui/articles/a;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method a(Lcom/naver/glink/android/sdk/model/Menu;Ljava/lang/String;)V
    .locals 2

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/articles/a;->l:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/articles/a;->clear()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/model/Menu;->getMenuId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/naver/glink/android/sdk/ui/articles/a;->a(IZ)V

    :cond_0
    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/articles/a;->m:Lcom/naver/glink/android/sdk/model/Menu;

    return-void
.end method

.method public a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$a;)V
    .locals 3
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    iget v0, p1, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$a;->a:I

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/articles/a;->b(I)Lcom/naver/glink/android/sdk/ui/articles/a$b;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, v0, Lcom/naver/glink/android/sdk/ui/articles/a$b;->b:Lcom/naver/glink/android/sdk/model/Article;

    iget v2, p1, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$a;->b:I

    iput v2, v1, Lcom/naver/glink/android/sdk/model/Article;->likeCount:I

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/articles/a$b;->b:Lcom/naver/glink/android/sdk/model/Article;

    iget-boolean v1, p1, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$a;->c:Z

    iput-boolean v1, v0, Lcom/naver/glink/android/sdk/model/Article;->likeIt:Z

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/articles/a;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public a(Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$a;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    iget-object v0, p1, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$a;->b:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$a;->b:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse;

    iget-boolean v0, v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse;->success:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$a;->a:I

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/articles/a;->b(I)Lcom/naver/glink/android/sdk/ui/articles/a$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/naver/glink/android/sdk/ui/articles/a$b;->b:Lcom/naver/glink/android/sdk/model/Article;

    iget-object v0, p1, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$a;->b:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse;->result:Ljava/lang/Object;

    check-cast v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse$Result;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse$Result;->count:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Count;

    iget v0, v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Count;->total:I

    iput v0, v1, Lcom/naver/glink/android/sdk/model/Article;->commentCount:I

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/articles/a;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public a(Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$b;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    iget-object v0, p1, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$b;->d:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$b;->d:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse;

    iget-boolean v0, v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse;->success:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$b;->b:Lcom/naver/glink/android/sdk/model/Comment;

    iget v0, v0, Lcom/naver/glink/android/sdk/model/Comment;->articleId:I

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/articles/a;->b(I)Lcom/naver/glink/android/sdk/ui/articles/a$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/naver/glink/android/sdk/ui/articles/a$b;->b:Lcom/naver/glink/android/sdk/model/Article;

    iget-object v0, p1, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$b;->d:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse;->result:Ljava/lang/Object;

    check-cast v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse$Result;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse$Result;->count:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Count;

    iget v0, v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Count;->total:I

    iput v0, v1, Lcom/naver/glink/android/sdk/model/Article;->commentCount:I

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/articles/a;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public a(Lcom/naver/glink/android/sdk/ui/article/b$a;)V
    .locals 1
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    iget v0, p1, Lcom/naver/glink/android/sdk/ui/article/b$a;->a:I

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/articles/a;->b(I)Lcom/naver/glink/android/sdk/ui/articles/a$b;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/articles/a;->remove(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/articles/a;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public a(Lcom/naver/glink/android/sdk/ui/articles/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/articles/a;->q:Lcom/naver/glink/android/sdk/ui/articles/a$a;

    return-void
.end method

.method public a(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$a;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a;->k:I

    iget-object v1, p1, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$a;->a:Lcom/naver/glink/android/sdk/api/Responses$SaveArticleResponse;

    iget v1, v1, Lcom/naver/glink/android/sdk/api/Responses$SaveArticleResponse;->menuId:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a;->k:I

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a;->k:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/naver/glink/android/sdk/ui/articles/a;->a(IZ)V

    :cond_1
    return-void
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/articles/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/articles/a$b;

    iget v0, v0, Lcom/naver/glink/android/sdk/ui/articles/a$b;->a:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/articles/a;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "\uc9c0\uc6d0\ud558\uc9c0 \uc54a\ub294 view type \uc785\ub2c8\ub2e4."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/articles/a;->o:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/naver/glink/android/sdk/R$layout;->item_articles_article:I

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/naver/glink/android/sdk/R$id;->right_thumbnail_view_stub:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    packed-switch v0, :pswitch_data_1

    :cond_0
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/articles/a/a;

    if-nez v0, :cond_6

    new-instance v0, Lcom/naver/glink/android/sdk/ui/articles/a/a;

    invoke-direct {v0, p2}, Lcom/naver/glink/android/sdk/ui/articles/a/a;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_2
    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/articles/a;->o:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/articles/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/articles/a$b;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/articles/a$b;->b:Lcom/naver/glink/android/sdk/model/Article;

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/articles/a;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Lcom/naver/glink/android/sdk/ui/articles/a/a;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/model/Article;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/articles/a;->a(ILandroid/view/View;)V

    :goto_3
    return-object p2

    :cond_1
    sget v1, Lcom/naver/glink/android/sdk/R$id;->left_thumbnail_view_stub:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/naver/glink/android/sdk/R$id;->infos_view_stub:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :pswitch_2
    sget v0, Lcom/naver/glink/android/sdk/R$id;->two_line_infos_view_stub:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :pswitch_3
    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a;->o:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$layout;->item_articles_notice:I

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/articles/a/b;

    if-nez v0, :cond_5

    new-instance v0, Lcom/naver/glink/android/sdk/ui/articles/a/b;

    invoke-direct {v0, p2}, Lcom/naver/glink/android/sdk/ui/articles/a/b;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_4
    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/articles/a;->o:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/articles/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/articles/a$b;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/articles/a$b;->b:Lcom/naver/glink/android/sdk/model/Article;

    invoke-virtual {v1, v2, v0}, Lcom/naver/glink/android/sdk/ui/articles/a/b;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/model/Article;)V

    goto :goto_3

    :pswitch_4
    if-nez p2, :cond_3

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/articles/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$layout;->item_profile_articles_empty:I

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    const/high16 v0, 0x42a00000    # 80.0f

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/s;->a(F)I

    move-result v0

    :goto_5
    invoke-virtual {p2, v3, v0, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    sget v0, Lcom/naver/glink/android/sdk/R$id;->tv_no_article_error:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/naver/glink/android/sdk/R$string;->article_empty:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :cond_4
    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/s;->a(F)I

    move-result v0

    goto :goto_5

    :cond_5
    move-object v1, v0

    goto :goto_4

    :cond_6
    move-object v1, v0

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method
