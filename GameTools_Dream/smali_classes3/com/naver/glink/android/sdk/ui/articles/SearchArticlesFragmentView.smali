.class public Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;
.super Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;
.source "SearchArticlesFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "SearchArticles"

.field private static final b:Ljava/lang/String; = "com.naver.glink.ARG_MENU"

.field private static final c:I = 0x64


# instance fields
.field private d:Lcom/naver/glink/android/sdk/model/Menu;

.field private g:Ljava/lang/String;

.field private h:Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;

.field private i:Lcom/naver/glink/android/sdk/ui/articles/a;

.field private j:Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$a;

.field private k:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;)Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->h:Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;

    return-object v0
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;)Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->h:Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;

    return-object p1
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;Lcom/naver/glink/android/sdk/model/Menu;)Lcom/naver/glink/android/sdk/model/Menu;
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->d:Lcom/naver/glink/android/sdk/model/Menu;

    return-object p1
.end method

.method public static a(Landroid/content/Context;Lcom/naver/glink/android/sdk/model/Menu;)Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;
    .locals 3

    new-instance v0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "com.naver.glink.ARG_MENU"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private a(Landroid/view/View;Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;Z)V
    .locals 11

    const/16 v4, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget v0, Lcom/naver/glink/android/sdk/R$id;->menu_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->query_string:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    sget v2, Lcom/naver/glink/android/sdk/R$id;->show_histories_button:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->e()Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    sget v3, Lcom/naver/glink/android/sdk/R$id;->query_string_deletion:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    sget v3, Lcom/naver/glink/android/sdk/R$id;->search:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz p3, :cond_0

    new-instance v3, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$7;

    invoke-direct {v3, p0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$7;-><init>(Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->g:Ljava/lang/String;

    invoke-static {v3}, Lcom/naver/glink/android/sdk/a/q;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    move v3, v6

    :goto_1
    invoke-virtual {v8, v3}, Landroid/view/View;->setEnabled(Z)V

    new-instance v3, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$8;

    invoke-direct {v3, p0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$8;-><init>(Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;)V

    invoke-virtual {v8, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$9;

    invoke-direct {v3, p0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$9;-><init>(Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;)V

    invoke-virtual {v7, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-array v3, v6, [Landroid/text/InputFilter;

    new-instance v9, Lcom/naver/glink/android/sdk/a/b;

    const/16 v10, 0x64

    invoke-direct {v9, v10}, Lcom/naver/glink/android/sdk/a/b;-><init>(I)V

    aput-object v9, v3, v5

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    new-instance v3, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$10;

    invoke-direct {v3, p0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$10;-><init>(Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v3, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$11;

    invoke-direct {v3, p0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$11;-><init>(Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    new-instance v3, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$2;

    invoke-direct {v3, p0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$2;-><init>(Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->d:Lcom/naver/glink/android/sdk/model/Menu;

    invoke-virtual {v3}, Lcom/naver/glink/android/sdk/model/Menu;->getMenuName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->d:Lcom/naver/glink/android/sdk/model/Menu;

    invoke-virtual {v2}, Lcom/naver/glink/android/sdk/model/Menu;->getMenuName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->g:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->g:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_2
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v6

    :goto_2
    invoke-virtual {v8, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    :goto_3
    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->searched_info_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->e()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p2, :cond_3

    iget-object v1, p2, Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;->articles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_3
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_4
    return-void

    :cond_4
    move v3, v5

    goto/16 :goto_0

    :cond_5
    move v3, v5

    goto/16 :goto_1

    :cond_6
    move v0, v5

    goto :goto_2

    :cond_7
    move v0, v5

    goto :goto_3

    :cond_8
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->searched_count:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/naver/glink/android/sdk/a/p;

    invoke-direct {v1}, Lcom/naver/glink/android/sdk/a/p;-><init>()V

    sget v2, Lcom/naver/glink/android/sdk/R$string;->search_result_count:I

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p2, Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;->metadata:Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse$MetaData;

    iget v4, v4, Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse$MetaData;->totalCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->c()Lcom/naver/glink/android/sdk/configure/d;

    move-result-object v3

    iget v3, v3, Lcom/naver/glink/android/sdk/configure/d;->a:I

    invoke-virtual {v1, v2, v3}, Lcom/naver/glink/android/sdk/a/p;->a(Ljava/lang/String;I)Lcom/naver/glink/android/sdk/a/p;

    sget v2, Lcom/naver/glink/android/sdk/R$string;->search_result_text:I

    invoke-virtual {p0, v2}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/naver/glink/android/sdk/R$color;->black2:I

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/naver/glink/android/sdk/a/p;->a(Ljava/lang/String;I)Lcom/naver/glink/android/sdk/a/p;

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/a/p;->a()Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method private a(Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;Z)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->k:Landroid/view/View;

    invoke-direct {p0, v0, p1, p2}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->a(Landroid/view/View;Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;Z)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->a(Landroid/view/View;Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;Z)V

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->a(Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;Z)V

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "#f8f8f8"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->j:Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$a;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$a;->clear()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->j:Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$a;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/naver/glink/android/sdk/a/l;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$a;->addAll(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->j:Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$a;

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$color;->white2:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$5;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$5;-><init>(Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->a(Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;Z)V

    sget v0, Lcom/naver/glink/android/sdk/R$drawable;->gl_img_search:I

    sget v1, Lcom/naver/glink/android/sdk/R$string;->empty_recently_search_message:I

    invoke-virtual {p0, v0, v1}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->b(II)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->getEmptyContentsLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->getQueryEdit()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    new-instance v1, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$6;

    invoke-direct {v1, p0, v0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$6;-><init>(Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;Landroid/widget/EditText;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;)Lcom/naver/glink/android/sdk/ui/articles/a;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->i:Lcom/naver/glink/android/sdk/ui/articles/a;

    return-object v0
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->setQueryString(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->getEmptyContentsLayout()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->e(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;)Landroid/widget/EditText;
    .locals 1

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->getQueryEdit()Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/naver/glink/android/sdk/a/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/i;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$string;->internet_not_connected_error:I

    invoke-virtual {p0, v1}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->setBackgroundColor(I)V

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->getQueryEdit()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->a(Landroid/widget/EditText;)V

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->setQueryString(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->h:Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->i:Lcom/naver/glink/android/sdk/ui/articles/a;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/articles/a;->a(Landroid/widget/ListView;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->i:Lcom/naver/glink/android/sdk/ui/articles/a;

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->i:Lcom/naver/glink/android/sdk/ui/articles/a;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->d:Lcom/naver/glink/android/sdk/model/Menu;

    invoke-virtual {v0, v1, p1}, Lcom/naver/glink/android/sdk/ui/articles/a;->a(Lcom/naver/glink/android/sdk/model/Menu;Ljava/lang/String;)V

    sget v0, Lcom/naver/glink/android/sdk/R$drawable;->gl_img_search:I

    sget v1, Lcom/naver/glink/android/sdk/R$string;->empty_search_articles_message:I

    invoke-virtual {p0, v0, v1}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->b(II)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->getEmptyContentsLayout()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/naver/glink/android/sdk/a/l;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->c()Lcom/naver/glink/android/sdk/configure/d;

    move-result-object v0

    iget v0, v0, Lcom/naver/glink/android/sdk/configure/d;->a:I

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->g:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/naver/glink/android/sdk/ui/articles/b;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;)V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->l()V

    return-void
.end method

.method private e()Z
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->j:Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->j:Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$a;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->e()Z

    move-result v0

    return v0
.end method

.method private getQueryEdit()Landroid/widget/EditText;
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->j:Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$a;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$a;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$id;->query_string:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->k:Landroid/view/View;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->query_string:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    goto :goto_0
.end method

.method static synthetic h(Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;)Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$a;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->j:Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$a;

    return-object v0
.end method

.method static synthetic i(Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;)Lcom/naver/glink/android/sdk/model/Menu;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->d:Lcom/naver/glink/android/sdk/model/Menu;

    return-object v0
.end method

.method private l()V
    .locals 3

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->getQueryEdit()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->a(Landroid/widget/EditText;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->d:Lcom/naver/glink/android/sdk/model/Menu;

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/model/Menu;->getMenuId()I

    move-result v1

    new-instance v2, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$3;

    invoke-direct {v2, p0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$3;-><init>(Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;)V

    invoke-static {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/articles/c;->a(Landroid/content/Context;ILcom/naver/glink/android/sdk/ui/articles/c$a;)V

    return-void
.end method

.method private setQueryString(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->g:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "(\r\n|\n)"

    const-string/jumbo v1, " "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->h:Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->a(Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;Z)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3

    sget v0, Lcom/naver/glink/android/sdk/R$layout;->fragment_search_articles:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    invoke-super {p0}, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;->a()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->i:Lcom/naver/glink/android/sdk/ui/articles/a;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "com.naver.glink.ARG_MENU"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/model/Menu;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->d:Lcom/naver/glink/android/sdk/model/Menu;

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;->a(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$layout;->item_articles_search_header:I

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->k:Landroid/view/View;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->a(Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;Z)V

    new-instance v0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$a;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$a;-><init>(Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->j:Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$a;

    new-instance v0, Lcom/naver/glink/android/sdk/ui/articles/a;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/naver/glink/android/sdk/ui/articles/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->i:Lcom/naver/glink/android/sdk/ui/articles/a;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->i:Lcom/naver/glink/android/sdk/ui/articles/a;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$1;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$1;-><init>(Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;)V

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/articles/a;->a(Lcom/naver/glink/android/sdk/ui/articles/a$a;)V

    invoke-direct {p0, v3}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->a(Z)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->back:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$4;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$4;-><init>(Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

.method public a(Lcom/naver/glink/android/sdk/c$a;)V
    .locals 1
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->getQueryEdit()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->a(Landroid/widget/EditText;)V

    return-void
.end method

.method public b()V
    .locals 1

    invoke-super {p0}, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;->b()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->i:Lcom/naver/glink/android/sdk/ui/articles/a;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/a;->b(Ljava/lang/Object;)V

    return-void
.end method
