.class public Lcom/naver/glink/android/sdk/ui/articles/a/b;
.super Ljava/lang/Object;
.source "NoticeViewHolder.java"


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/articles/a/b;->a:Landroid/view/View;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->notice_type:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a/b;->b:Landroid/widget/TextView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->notice_date:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a/b;->c:Landroid/widget/TextView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->notice_subject:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a/b;->d:Landroid/widget/TextView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->header_notice_close:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a/b;->e:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/naver/glink/android/sdk/model/Article;)V
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a/b;->a:Landroid/view/View;

    const-string/jumbo v1, "#f8f8f8"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a/b;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/naver/glink/android/sdk/R$string;->pin_to_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a/b;->c:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/naver/glink/android/sdk/model/Article;->getFormattedWriteDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a/b;->d:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/naver/glink/android/sdk/model/Article;->subject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a/b;->e:Landroid/view/View;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/articles/a/b$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/naver/glink/android/sdk/ui/articles/a/b$1;-><init>(Lcom/naver/glink/android/sdk/ui/articles/a/b;Lcom/naver/glink/android/sdk/model/Article;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a/b;->a:Landroid/view/View;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/articles/a/b$2;

    invoke-direct {v1, p0, p2}, Lcom/naver/glink/android/sdk/ui/articles/a/b$2;-><init>(Lcom/naver/glink/android/sdk/ui/articles/a/b;Lcom/naver/glink/android/sdk/model/Article;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
