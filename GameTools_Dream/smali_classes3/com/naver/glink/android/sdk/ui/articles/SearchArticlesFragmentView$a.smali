.class Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$a;
.super Landroid/widget/ArrayAdapter;
.source "SearchArticlesFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$a;->a:Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$layout;->item_articles_search_history:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->history:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$a;->a:Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;

    invoke-static {v2, v0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->c(Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$a$1;

    invoke-direct {v2, p0, v0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$a$1;-><init>(Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$a;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/naver/glink/android/sdk/R$id;->delete_history:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$a$2;

    invoke-direct {v2, p0, v0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$a$2;-><init>(Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$a;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$a;->a(ILandroid/view/View;)V

    return-object p2
.end method

.method private a(ILandroid/view/View;)V
    .locals 4

    if-nez p1, :cond_0

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/s;->a(F)I

    move-result v0

    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p2, v1, v0, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$a;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
