.class public Lcom/naver/glink/android/sdk/ui/article/a/c;
.super Ljava/lang/Object;
.source "HeaderViewHolder.java"


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/view/View;

.field private final c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->menu_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/c;->a:Landroid/widget/TextView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->more_actions:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/c;->b:Landroid/view/View;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->subject:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/c;->c:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/c;->a:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;->menuName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/c;->a:Landroid/widget/TextView;

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->c()Lcom/naver/glink/android/sdk/configure/d;

    move-result-object v1

    iget v1, v1, Lcom/naver/glink/android/sdk/configure/d;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/c;->c:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;->subject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/c;->b:Landroid/view/View;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/article/a/c$1;

    invoke-direct {v1, p0, p1}, Lcom/naver/glink/android/sdk/ui/article/a/c$1;-><init>(Lcom/naver/glink/android/sdk/ui/article/a/c;Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
