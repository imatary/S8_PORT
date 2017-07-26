.class Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;
.super Landroid/widget/ArrayAdapter;
.source "ProfileArticlesFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:I = 0x0

.field private static final c:I = 0x1

.field private static final d:I = 0x2

.field private static final e:I = 0x3

.field private static final f:I = 0x4

.field private static final g:I = 0x5

.field private static final h:I = 0x6

.field private static final i:I = 0x7

.field private static final j:Ljava/lang/String; = "lastArticleId"

.field private static final k:Ljava/lang/String; = "page"

.field private static final l:Ljava/lang/String; = "lastLikedItDateTime"

.field private static final m:Ljava/lang/String; = "offset"


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-static {p1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->g(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->n:Ljava/lang/String;

    const-string/jumbo v0, "W"

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "C"

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "L"

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "W"

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->n:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/model/Article;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->getItemViewType(I)I

    move-result v1

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/naver/glink/android/sdk/R$layout;->item_articles_article:I

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->h()Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Lcom/naver/glink/android/sdk/R$id;->right_thumbnail_view_stub:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/naver/glink/android/sdk/ui/articles/a/a;

    if-nez v1, :cond_1

    new-instance v1, Lcom/naver/glink/android/sdk/ui/articles/a/a;

    invoke-direct {v1, p2}, Lcom/naver/glink/android/sdk/ui/articles/a/a;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/naver/glink/android/sdk/ui/articles/a/a;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/model/Article;Ljava/lang/String;)V

    return-object p2

    :cond_2
    sget v2, Lcom/naver/glink/android/sdk/R$id;->left_thumbnail_view_stub:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_0
    sget v1, Lcom/naver/glink/android/sdk/R$id;->infos_view_stub:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :pswitch_1
    sget v1, Lcom/naver/glink/android/sdk/R$id;->two_line_infos_view_stub:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/naver/glink/android/sdk/R$layout;->item_profile_articles_empty:I

    invoke-virtual {v0, v2, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    sget v0, Lcom/naver/glink/android/sdk/R$id;->tv_no_article_error:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    move v1, v2

    :goto_1
    packed-switch v1, :pswitch_data_0

    :goto_2
    return-object p1

    :cond_2
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :sswitch_0
    const-string/jumbo v4, "W"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "C"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v1, "L"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

    sget v2, Lcom/naver/glink/android/sdk/R$string;->error_no_article_wirte:I

    invoke-virtual {v1, v2}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :pswitch_1
    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

    sget v2, Lcom/naver/glink/android/sdk/R$string;->error_no_article_comment:I

    invoke-virtual {v1, v2}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :pswitch_2
    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

    sget v2, Lcom/naver/glink/android/sdk/R$string;->error_no_article_like:I

    invoke-virtual {v1, v2}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_1
        0x4c -> :sswitch_2
        0x57 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->n:Ljava/lang/String;

    return-object p1
.end method

.method private a(ILandroid/view/View;)V
    .locals 4

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/high16 v0, 0x41000000    # 8.0f

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

.method private b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$layout;->item_articles_deleted_article:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method private b(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    const/4 v10, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$layout;->item_profile_articles_header:I

    invoke-virtual {v0, v1, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/naver/glink/android/sdk/R$id;->article_count_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    sget v0, Lcom/naver/glink/android/sdk/R$id;->article_count:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->article_count_txt:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->written_comment_count_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    sget v0, Lcom/naver/glink/android/sdk/R$id;->written_comment_count_txt:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->like_article_count_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    sget v0, Lcom/naver/glink/android/sdk/R$id;->like_article_count_txt:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->total_article_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->c()Lcom/naver/glink/android/sdk/configure/d;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/naver/glink/android/sdk/configure/d;->b(Landroid/view/View;)V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->c()Lcom/naver/glink/android/sdk/configure/d;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/naver/glink/android/sdk/configure/d;->b(Landroid/view/View;)V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->c()Lcom/naver/glink/android/sdk/configure/d;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/naver/glink/android/sdk/configure/d;->b(Landroid/view/View;)V

    new-instance v0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$a;

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$a;-><init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    invoke-interface {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$a;->a()V

    sget v1, Lcom/naver/glink/android/sdk/R$layout;->item_profile_articles_header:I

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    new-instance v1, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$1;

    invoke-direct {v1, p0, v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$1;-><init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$a;)V

    invoke-virtual {v6, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$2;

    invoke-direct {v1, p0, v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$2;-><init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$a;)V

    invoke-virtual {v7, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$3;

    invoke-direct {v1, p0, v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$3;-><init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b$a;)V

    invoke-virtual {v8, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->k(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    sget v0, Lcom/naver/glink/android/sdk/R$layout;->item_profile_articles_header:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$a;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$a;->a()V

    :cond_1
    return-object p1

    :cond_2
    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->n:Ljava/lang/String;

    return-object v0
.end method

.method public a(ZZZ)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->d()V

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->a(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;I)I

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->b(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;I)I

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->l(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->l(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/api/request/Request;->cancel()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->a(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;Lcom/naver/glink/android/sdk/api/request/Request;)Lcom/naver/glink/android/sdk/api/request/Request;

    :cond_1
    if-eqz p3, :cond_2

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/tabs/b;->h()V

    :cond_2
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->c(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;)V

    :cond_3
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public d()V
    .locals 2

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/naver/glink/android/sdk/model/Article;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->remove(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public e()V
    .locals 4

    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-ne v1, v2, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->remove(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public f()V
    .locals 8

    const/4 v3, 0x1

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->getItemViewType(I)I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->getCount()I

    move-result v2

    if-ne v0, v2, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

    invoke-virtual {v2}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

    invoke-virtual {v4}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    if-gt v4, v0, :cond_1

    sget v0, Lcom/naver/glink/android/sdk/R$id;->article_count:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v4, Lcom/naver/glink/android/sdk/R$id;->total_article_layout:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "%,d"

    new-array v6, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

    invoke-static {v7}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->h(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->i()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "L"

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->a()Ljava/lang/String;

    move-result-object v5

    const/4 v2, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_5
    :goto_2
    packed-switch v2, :pswitch_data_0

    move v2, v1

    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "%,d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :sswitch_0
    const-string/jumbo v6, "W"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v2, v1

    goto :goto_2

    :sswitch_1
    const-string/jumbo v6, "C"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v2, v3

    goto :goto_2

    :sswitch_2
    const-string/jumbo v6, "L"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v2, 0x2

    goto :goto_2

    :pswitch_0
    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->h(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;)I

    move-result v2

    goto :goto_3

    :pswitch_1
    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->i(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;)I

    move-result v2

    goto :goto_3

    :pswitch_2
    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->j(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;)I

    move-result v2

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_1
        0x4c -> :sswitch_2
        0x57 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getItemViewType(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/naver/glink/android/sdk/model/Article;

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/model/Article;

    iget-object v1, v0, Lcom/naver/glink/android/sdk/model/Article;->thumbnailImage:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, v0, Lcom/naver/glink/android/sdk/model/Article;->articleId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x7

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/naver/glink/android/sdk/c;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "\uc9c0\uc6d0\ud558\uc9c0 \uc54a\ub294 view type \uc785\ub2c8\ub2e4."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->b(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    :goto_0
    return-object p2

    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p2, p3}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :pswitch_3
    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$layout;->item_profile_pending_message:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1, p2, p3}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method
