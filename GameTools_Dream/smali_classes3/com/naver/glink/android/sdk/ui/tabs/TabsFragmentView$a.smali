.class Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView$a;
.super Ljava/lang/Object;
.source "TabsFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

.field final b:Landroid/view/View;

.field final c:Landroid/widget/ImageView;

.field final d:Landroid/widget/ImageView;

.field final synthetic e:Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;Landroid/view/View;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/high16 v6, 0x40e00000    # 7.0f

    const/16 v5, 0xb

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView$a;->e:Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView$a;->a:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    iput-object p3, p0, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView$a;->b:Landroid/view/View;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->image_view:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView$a;->c:Landroid/widget/ImageView;

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView$a;->c:Landroid/widget/ImageView;

    const/16 v2, 0x13

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Lcom/naver/glink/android/sdk/configure/c;->a(Landroid/view/View;II)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->new_icon:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView$a;->d:Landroid/widget/ImageView;

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView$a;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v5, v5}, Lcom/naver/glink/android/sdk/configure/c;->a(Landroid/view/View;II)V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView$a;->d:Landroid/widget/ImageView;

    new-array v1, v8, [Ljava/lang/Integer;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/a/s;->a(Landroid/view/View;Ljava/util/List;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView$a;->d:Landroid/widget/ImageView;

    invoke-static {v6}, Lcom/naver/glink/android/sdk/a/s;->a(F)I

    move-result v1

    invoke-static {v6}, Lcom/naver/glink/android/sdk/a/s;->a(F)I

    move-result v2

    invoke-static {v0, v4, v1, v2, v4}, Lcom/naver/glink/android/sdk/a/s;->a(Landroid/view/View;IIII)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView$a;->d:Landroid/widget/ImageView;

    new-array v1, v8, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/a/s;->a(Landroid/view/View;Ljava/util/List;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView$a;->d:Landroid/widget/ImageView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lcom/naver/glink/android/sdk/a/s;->a(F)I

    move-result v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lcom/naver/glink/android/sdk/a/s;->a(F)I

    move-result v2

    invoke-static {v0, v4, v4, v1, v2}, Lcom/naver/glink/android/sdk/a/s;->a(Landroid/view/View;IIII)V

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/naver/glink/android/sdk/ui/tabs/Tab;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/naver/glink/android/sdk/ui/tabs/Tab;->a:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView$a;->a:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    if-eq v0, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/naver/glink/android/sdk/ui/tabs/Tab;->a:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    sget-object v2, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->NONE:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView$a;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView$a;->a:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView$a;->e:Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;

    invoke-static {v3}, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;->b(Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView;)Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    move-result-object v3

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setActivated(Z)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView$a;->b:Landroid/view/View;

    new-instance v2, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView$a$1;

    invoke-direct {v2, p0, p1}, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView$a$1;-><init>(Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView$a;Lcom/naver/glink/android/sdk/ui/tabs/Tab;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView$a;->c:Landroid/widget/ImageView;

    iget v2, p1, Lcom/naver/glink/android/sdk/ui/tabs/Tab;->b:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/tabs/TabsFragmentView$a;->d:Landroid/widget/ImageView;

    iget-boolean v2, p1, Lcom/naver/glink/android/sdk/ui/tabs/Tab;->d:Z

    if-eqz v2, :cond_3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    const/16 v1, 0x8

    goto :goto_2
.end method
