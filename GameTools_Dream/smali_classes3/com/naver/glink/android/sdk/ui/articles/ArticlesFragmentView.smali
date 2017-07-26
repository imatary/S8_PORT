.class public Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;
.super Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;
.source "ArticlesFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "com.naver.glink.ARG_TAB_TYPE"

.field private static final b:Ljava/lang/String; = "com.naver.glink.ARG_MENU_ID"


# instance fields
.field private c:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

.field private d:I

.field private g:Lcom/naver/glink/android/sdk/ui/articles/a;

.field private h:Landroid/view/View;

.field private i:Landroid/support/v4/widget/SwipeRefreshLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;I)I
    .locals 0

    iput p1, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->d:I

    return p1
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->h:Landroid/view/View;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;)Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;I)Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;I)Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;
    .locals 3

    new-instance v0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "com.naver.glink.ARG_TAB_TYPE"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string/jumbo v2, "com.naver.glink.ARG_MENU_ID"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 5

    const/4 v0, 0x0

    sget v1, Lcom/naver/glink/android/sdk/R$id;->back:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/articles/b;->a(Landroid/view/View;)V

    sget v1, Lcom/naver/glink/android/sdk/R$id;->article_write:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    sget-object v3, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->NOTICE:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    aput-object v3, v2, v0

    const/4 v3, 0x1

    sget-object v4, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->EVENT:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->c:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v0, 0x8

    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->d:I

    invoke-static {v1, v0}, Lcom/naver/glink/android/sdk/ui/articles/b;->a(Landroid/view/View;I)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->search:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->c()Lcom/naver/glink/android/sdk/configure/d;

    move-result-object v1

    sget v2, Lcom/naver/glink/android/sdk/R$drawable;->gl_btn_flsearch:I

    invoke-virtual {v1, v0, v2}, Lcom/naver/glink/android/sdk/configure/d;->a(Landroid/view/View;I)V

    new-instance v1, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$3;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$3;-><init>(Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private a(Landroid/view/View;Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;)V
    .locals 3

    const/4 v2, 0x0

    sget v0, Lcom/naver/glink/android/sdk/R$id;->menu_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p2, Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;->menu:Lcom/naver/glink/android/sdk/model/Menu;

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/model/Menu;->getMenuName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lcom/naver/glink/android/sdk/a/s;->a(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    sget v1, Lcom/naver/glink/android/sdk/R$drawable;->gl_btn_boardlistmenu:I

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    new-instance v1, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$5;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$5;-><init>(Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;Landroid/view/View;Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->a(Landroid/view/View;Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;)V

    return-void
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->i:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method static synthetic c(Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;)I
    .locals 1

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->d:I

    return v0
.end method

.method static synthetic d(Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;)Lcom/naver/glink/android/sdk/ui/articles/a;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->g:Lcom/naver/glink/android/sdk/ui/articles/a;

    return-object v0
.end method

.method static synthetic e(Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;)Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->c:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3

    sget v0, Lcom/naver/glink/android/sdk/R$layout;->fragment_articles:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    invoke-super {p0}, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;->a()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->g:Lcom/naver/glink/android/sdk/ui/articles/a;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/a;->a(Ljava/lang/Object;)V

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->d:I

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->a(I)V

    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->g:Lcom/naver/glink/android/sdk/ui/articles/a;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/articles/a;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->d:I

    if-ne v0, p1, :cond_1

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->d:I

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->c()V

    goto :goto_1
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "com.naver.glink.ARG_TAB_TYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->c:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "com.naver.glink.ARG_MENU_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->d:I

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;->a(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$layout;->item_articles_header:I

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->h:Landroid/view/View;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    new-instance v0, Lcom/naver/glink/android/sdk/ui/articles/a;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/naver/glink/android/sdk/ui/articles/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->g:Lcom/naver/glink/android/sdk/ui/articles/a;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->g:Lcom/naver/glink/android/sdk/ui/articles/a;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$1;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$1;-><init>(Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;)V

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/articles/a;->a(Lcom/naver/glink/android/sdk/ui/articles/a$a;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->g:Lcom/naver/glink/android/sdk/ui/articles/a;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/articles/a;->a(Landroid/widget/ListView;)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->swipe_refresh_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->i:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->i:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x1

    new-array v1, v1, [I

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->c()Lcom/naver/glink/android/sdk/configure/d;

    move-result-object v2

    iget v2, v2, Lcom/naver/glink/android/sdk/configure/d;->a:I

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->i:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$2;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$2;-><init>(Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->a(Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/naver/glink/android/sdk/ui/articles/a$b;

    if-eqz v0, :cond_0

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/articles/a$b;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/articles/a$b;->b:Lcom/naver/glink/android/sdk/model/Article;

    iget v0, v0, Lcom/naver/glink/android/sdk/model/Article;->articleId:I

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/tabs/b;->a(I)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    invoke-super {p0}, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;->b()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->g:Lcom/naver/glink/android/sdk/ui/articles/a;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/a;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public c()V
    .locals 2

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$4;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$4;-><init>(Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;)V

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/api/requests/CacheRequests;->loadCafeResponse(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    goto :goto_0
.end method
