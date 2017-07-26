.class public Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;
.super Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;
.source "AllMediaFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "com.naver.glink.ARG_MENU"


# instance fields
.field private b:Lcom/naver/glink/android/sdk/model/Menu;

.field private c:I

.field private d:Lcom/naver/glink/android/sdk/ui/media/b;

.field private g:Landroid/view/View;

.field private h:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private i:Lcom/naver/glink/android/sdk/ui/media/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView$1;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView$1;-><init>(Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->i:Lcom/naver/glink/android/sdk/ui/media/b$a;

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->h:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/naver/glink/android/sdk/model/Menu;)Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;
    .locals 3

    new-instance v0, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "com.naver.glink.ARG_MENU"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    sget v0, Lcom/naver/glink/android/sdk/R$id;->back:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/articles/b;->a(Landroid/view/View;)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->article_write:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/articles/b;->a(Landroid/view/View;I)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->search:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->c()Lcom/naver/glink/android/sdk/configure/d;

    move-result-object v1

    sget v2, Lcom/naver/glink/android/sdk/R$drawable;->gl_btn_flsearch:I

    invoke-virtual {v1, v0, v2}, Lcom/naver/glink/android/sdk/configure/d;->a(Landroid/view/View;I)V

    new-instance v1, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView$3;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView$3;-><init>(Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private a(Landroid/view/View;Lcom/naver/glink/android/sdk/model/Menu;)V
    .locals 2

    sget v0, Lcom/naver/glink/android/sdk/R$id;->menu_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/naver/glink/android/sdk/model/Menu;->getMenuName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->header_divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private a(Lcom/naver/glink/android/sdk/model/Menu;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->g:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->a(Landroid/view/View;Lcom/naver/glink/android/sdk/model/Menu;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$id;->empty_header_for_portrait:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->a(Landroid/view/View;Lcom/naver/glink/android/sdk/model/Menu;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;Lcom/naver/glink/android/sdk/model/Menu;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->a(Lcom/naver/glink/android/sdk/model/Menu;)V

    return-void
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;)Lcom/naver/glink/android/sdk/ui/media/b;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->d:Lcom/naver/glink/android/sdk/ui/media/b;

    return-object v0
.end method

.method static synthetic c(Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;)Lcom/naver/glink/android/sdk/model/Menu;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->b:Lcom/naver/glink/android/sdk/model/Menu;

    return-object v0
.end method

.method private setSelectedItem(Lcom/naver/glink/android/sdk/api/response/ArticleMedia;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->getListAdapter()Lcom/naver/glink/android/sdk/ui/media/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/media/a;->a()Lcom/naver/glink/android/sdk/api/response/ArticleMedia;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->getListAdapter()Lcom/naver/glink/android/sdk/ui/media/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/naver/glink/android/sdk/ui/media/a;->a(Lcom/naver/glink/android/sdk/api/response/ArticleMedia;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->d:Lcom/naver/glink/android/sdk/ui/media/b;

    invoke-virtual {v0, p1}, Lcom/naver/glink/android/sdk/ui/media/b;->a(Lcom/naver/glink/android/sdk/api/response/ArticleMedia;)I

    move-result v0

    iget v1, p0, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->c:I

    div-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3

    sget v0, Lcom/naver/glink/android/sdk/R$layout;->fragment_all_media:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 2

    invoke-super {p0}, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;->a()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->d:Lcom/naver/glink/android/sdk/ui/media/b;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->i:Lcom/naver/glink/android/sdk/ui/media/b$a;

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/media/b;->a(Lcom/naver/glink/android/sdk/ui/media/b$a;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->d:Lcom/naver/glink/android/sdk/ui/media/b;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/media/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->c()V

    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "com.naver.glink.ARG_MENU"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/model/Menu;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->b:Lcom/naver/glink/android/sdk/model/Menu;

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;->a(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$layout;->item_articles_header:I

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->g:Landroid/view/View;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->b:Lcom/naver/glink/android/sdk/model/Menu;

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->a(Lcom/naver/glink/android/sdk/model/Menu;)V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    iput v0, p0, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->c:I

    new-instance v0, Lcom/naver/glink/android/sdk/ui/media/b;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->b:Lcom/naver/glink/android/sdk/model/Menu;

    invoke-virtual {v2}, Lcom/naver/glink/android/sdk/model/Menu;->getType()Lcom/naver/glink/android/sdk/model/Menu$Type;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/media/b;-><init>(Landroid/content/Context;Lcom/naver/glink/android/sdk/model/Menu$Type;)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->d:Lcom/naver/glink/android/sdk/ui/media/b;

    new-instance v0, Lcom/naver/glink/android/sdk/ui/media/a;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->c:I

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->d:Lcom/naver/glink/android/sdk/ui/media/b;

    invoke-direct {v0, v1, v2, v3}, Lcom/naver/glink/android/sdk/ui/media/a;-><init>(Landroid/content/Context;ILcom/naver/glink/android/sdk/ui/media/b;)V

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->setListAdapter(Landroid/widget/ListAdapter;)V

    sget v0, Lcom/naver/glink/android/sdk/R$drawable;->gl_ls_icon_warningbic:I

    sget v1, Lcom/naver/glink/android/sdk/R$string;->article_empty:I

    invoke-virtual {p0, v0, v1}, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->b(II)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->swipe_refresh_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->h:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->h:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x1

    new-array v1, v1, [I

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->c()Lcom/naver/glink/android/sdk/configure/d;

    move-result-object v2

    iget v2, v2, Lcom/naver/glink/android/sdk/configure/d;->a:I

    aput v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->h:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView$2;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView$2;-><init>(Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->a(Landroid/view/View;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public a(Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView$a;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->d:Lcom/naver/glink/android/sdk/ui/media/b;

    iget-object v1, p1, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView$a;->a:Lcom/naver/glink/android/sdk/api/response/ArticleMedia;

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/media/b;->b(Lcom/naver/glink/android/sdk/api/response/ArticleMedia;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView$a;->a:Lcom/naver/glink/android/sdk/api/response/ArticleMedia;

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->setSelectedItem(Lcom/naver/glink/android/sdk/api/response/ArticleMedia;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/naver/glink/android/sdk/ui/media/a$b;)V
    .locals 4
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->d:Lcom/naver/glink/android/sdk/ui/media/b;

    iget-object v1, p1, Lcom/naver/glink/android/sdk/ui/media/a$b;->a:Lcom/naver/glink/android/sdk/api/response/ArticleMedia;

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/media/b;->b(Lcom/naver/glink/android/sdk/api/response/ArticleMedia;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/naver/glink/android/sdk/ui/media/a$b;->a:Lcom/naver/glink/android/sdk/api/response/ArticleMedia;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->hasError()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->d:Lcom/naver/glink/android/sdk/ui/media/b;

    iget-object v1, p1, Lcom/naver/glink/android/sdk/ui/media/a$b;->a:Lcom/naver/glink/android/sdk/api/response/ArticleMedia;

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/media/b;->a(Lcom/naver/glink/android/sdk/api/response/ArticleMedia;)I

    move-result v0

    new-instance v1, Lcom/naver/glink/android/sdk/ui/viewer/a/a;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->d:Lcom/naver/glink/android/sdk/ui/media/b;

    invoke-direct {v1, v2}, Lcom/naver/glink/android/sdk/ui/viewer/a/a;-><init>(Lcom/naver/glink/android/sdk/ui/media/b;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;->ALL_MEDIA:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;

    invoke-static {v2, v3, v1, v0}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;Lcom/naver/glink/android/sdk/ui/viewer/a/c;I)Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/viewer/a;->a(Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/naver/glink/android/sdk/ui/media/a$c;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->d:Lcom/naver/glink/android/sdk/ui/media/b;

    iget-object v1, p1, Lcom/naver/glink/android/sdk/ui/media/a$c;->a:Lcom/naver/glink/android/sdk/api/response/ArticleMedia;

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/media/b;->b(Lcom/naver/glink/android/sdk/api/response/ArticleMedia;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/naver/glink/android/sdk/ui/media/a$c;->a:Lcom/naver/glink/android/sdk/api/response/ArticleMedia;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->hasError()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/naver/glink/android/sdk/ui/media/a$c;->a:Lcom/naver/glink/android/sdk/api/response/ArticleMedia;

    iget v0, v0, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->articleId:I

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/tabs/b;->a(I)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    invoke-super {p0}, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;->b()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->d:Lcom/naver/glink/android/sdk/ui/media/b;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->i:Lcom/naver/glink/android/sdk/ui/media/b$a;

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/media/b;->b(Lcom/naver/glink/android/sdk/ui/media/b$a;)V

    return-void
.end method

.method public c()V
    .locals 3

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView$4;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView$4;-><init>(Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;)V

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/api/requests/CacheRequests;->loadCafeResponse(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->b:Lcom/naver/glink/android/sdk/model/Menu;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/model/Menu;->getMenuName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/naver/glink/android/sdk/api/requests/CacheRequests;->menusRequest:Lcom/naver/glink/android/sdk/api/requests/CacheRequest;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView$5;

    invoke-direct {v2, p0}, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView$5;-><init>(Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;)V

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/api/requests/CacheRequest;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView;->getListAdapter()Lcom/naver/glink/android/sdk/ui/media/a;

    move-result-object v0

    return-object v0
.end method

.method public getListAdapter()Lcom/naver/glink/android/sdk/ui/media/a;
    .locals 1

    invoke-super {p0}, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/media/a;

    return-object v0
.end method
