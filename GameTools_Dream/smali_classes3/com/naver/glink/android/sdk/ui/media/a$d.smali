.class Lcom/naver/glink/android/sdk/ui/media/a$d;
.super Ljava/lang/Object;
.source "AllMediaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/media/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/media/a;

.field private b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/media/a;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;I)V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, -0x1

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/media/a$d;->a:Lcom/naver/glink/android/sdk/ui/media/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lcom/naver/glink/android/sdk/ui/media/a$d;->b:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/a$d;->c:Ljava/util/List;

    move v0, v1

    :goto_0
    if-ge v0, p4, :cond_1

    sget v2, Lcom/naver/glink/android/sdk/R$layout;->item_all_media_item:I

    invoke-virtual {p3, v2, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/naver/glink/android/sdk/ui/media/a$a;

    invoke-direct {v3, p1, v2}, Lcom/naver/glink/android/sdk/ui/media/a$a;-><init>(Lcom/naver/glink/android/sdk/ui/media/a;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    sget v3, Lcom/naver/glink/android/sdk/R$id;->thumbnail_layout:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-static {p1}, Lcom/naver/glink/android/sdk/ui/media/a;->a(Lcom/naver/glink/android/sdk/ui/media/a;)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-lez v0, :cond_0

    invoke-static {p1}, Lcom/naver/glink/android/sdk/ui/media/a;->b(Lcom/naver/glink/android/sdk/ui/media/a;)I

    move-result v3

    invoke-static {v2, v3, v6, v6, v6}, Lcom/naver/glink/android/sdk/a/s;->a(Landroid/view/View;IIII)V

    :cond_0
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/media/a$d;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/api/response/ArticleMedia;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    move v2, v3

    :goto_0
    iget v0, p0, Lcom/naver/glink/android/sdk/ui/media/a$d;->b:I

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/a$d;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;

    :goto_1
    if-nez v1, :cond_1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/naver/glink/android/sdk/ui/media/a$d;->a:Lcom/naver/glink/android/sdk/ui/media/a;

    invoke-static {v4}, Lcom/naver/glink/android/sdk/ui/media/a;->c(Lcom/naver/glink/android/sdk/ui/media/a;)Lcom/naver/glink/android/sdk/ui/media/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/naver/glink/android/sdk/ui/media/b;->a()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Lcom/naver/glink/android/sdk/ui/media/a$d$1;

    invoke-direct {v4, p0, v1}, Lcom/naver/glink/android/sdk/ui/media/a$d$1;-><init>(Lcom/naver/glink/android/sdk/ui/media/a$d;Lcom/naver/glink/android/sdk/api/response/ArticleMedia;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/media/a$a;

    invoke-virtual {v0, p1, v1}, Lcom/naver/glink/android/sdk/ui/media/a$a;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/response/ArticleMedia;)V

    goto :goto_2

    :cond_3
    return-void
.end method
