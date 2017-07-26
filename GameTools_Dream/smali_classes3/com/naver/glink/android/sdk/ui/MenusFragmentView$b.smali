.class Lcom/naver/glink/android/sdk/ui/MenusFragmentView$b;
.super Landroid/widget/BaseAdapter;
.source "MenusFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/MenusFragmentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# static fields
.field private static final b:I = 0x0

.field private static final c:I = 0x1


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/MenusFragmentView;

.field private d:Landroid/content/Context;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/MenusFragmentView;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$b;->a:Lcom/naver/glink/android/sdk/ui/MenusFragmentView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$b;->e:Ljava/util/List;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$b;->d:Landroid/content/Context;

    return-void
.end method

.method private a(ILandroid/view/View;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/high16 v0, 0x41000000    # 8.0f

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/a/s;->a(FF)I

    move-result v1

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$b;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_1

    :goto_1
    invoke-static {p2, v4, v0, v4, v1}, Lcom/naver/glink/android/sdk/a/s;->a(Landroid/view/View;IIII)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$b;->notifyDataSetChanged()V

    return-void
.end method

.method a(Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;)V
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$b;->e:Ljava/util/List;

    new-instance v1, Landroid/support/v4/util/Pair;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method a(Lcom/naver/glink/android/sdk/api/Responses$MenusResponse;)V
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$b;->e:Ljava/util/List;

    iget-object v1, p1, Lcom/naver/glink/android/sdk/api/Responses$MenusResponse;->metadata:Lcom/naver/glink/android/sdk/api/Responses$MenusResponse$MetaData;

    iget-object v1, v1, Lcom/naver/glink/android/sdk/api/Responses$MenusResponse$MetaData;->allPosts:Ljava/lang/String;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/model/Menu;->allArticles(Ljava/lang/String;)Lcom/naver/glink/android/sdk/model/Menu;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$b;->a(Ljava/util/List;Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/naver/glink/android/sdk/api/Responses$MenusResponse;->metadata:Lcom/naver/glink/android/sdk/api/Responses$MenusResponse$MetaData;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/Responses$MenusResponse$MetaData;->allVideos:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$b;->e:Ljava/util/List;

    iget-object v1, p1, Lcom/naver/glink/android/sdk/api/Responses$MenusResponse;->metadata:Lcom/naver/glink/android/sdk/api/Responses$MenusResponse$MetaData;

    iget-object v1, v1, Lcom/naver/glink/android/sdk/api/Responses$MenusResponse$MetaData;->allVideos:Ljava/lang/String;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/model/Menu;->allVideos(Ljava/lang/String;)Lcom/naver/glink/android/sdk/model/Menu;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$b;->a(Ljava/util/List;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p1, Lcom/naver/glink/android/sdk/api/Responses$MenusResponse;->metadata:Lcom/naver/glink/android/sdk/api/Responses$MenusResponse$MetaData;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/Responses$MenusResponse$MetaData;->allPhotos:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$b;->e:Ljava/util/List;

    iget-object v1, p1, Lcom/naver/glink/android/sdk/api/Responses$MenusResponse;->metadata:Lcom/naver/glink/android/sdk/api/Responses$MenusResponse$MetaData;

    iget-object v1, v1, Lcom/naver/glink/android/sdk/api/Responses$MenusResponse$MetaData;->allPhotos:Ljava/lang/String;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/model/Menu;->allImages(Ljava/lang/String;)Lcom/naver/glink/android/sdk/model/Menu;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$b;->a(Ljava/util/List;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p1, Lcom/naver/glink/android/sdk/api/Responses$MenusResponse;->menus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/model/Menu;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$b;->e:Ljava/util/List;

    invoke-virtual {p0, v2, v0}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$b;->a(Ljava/util/List;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$b;->notifyDataSetChanged()V

    return-void
.end method

.method a(Ljava/util/List;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/support/v4/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/support/v4/util/Pair;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/Pair;

    iget-object v0, v0, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/Pair;

    iget-object v0, v0, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/16 v6, 0xb

    const/4 v3, 0x1

    const/high16 v5, 0x42700000    # 60.0f

    const/high16 v2, 0x41900000    # 18.0f

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$b;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ": \uc9c0\uc6d0\ud558\uc9c0 \uc54a\ub294 type \uc785\ub2c8\ub2e4."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$b;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$layout;->item_menus_cafe_infos:I

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$b;->a:Lcom/naver/glink/android/sdk/ui/MenusFragmentView;

    invoke-static {v1, p2, v0}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->a(Lcom/naver/glink/android/sdk/ui/MenusFragmentView;Landroid/view/View;Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;)V

    :goto_0
    return-object p2

    :pswitch_1
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$b;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$layout;->item_menus_menu:I

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0, v2}, Lcom/naver/glink/android/sdk/a/s;->a(FF)I

    move-result v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1, v2}, Lcom/naver/glink/android/sdk/a/s;->a(FF)I

    move-result v1

    invoke-virtual {p2, v0, v4, v1, v4}, Landroid/view/View;->setPadding(IIII)V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->c()Lcom/naver/glink/android/sdk/configure/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/naver/glink/android/sdk/configure/d;->c(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$c;

    if-nez v0, :cond_5

    new-instance v1, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$c;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$c;-><init>(Lcom/naver/glink/android/sdk/ui/MenusFragmentView$1;)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$c;->a:Landroid/widget/TextView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->new_image:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$c;->b:Landroid/widget/ImageView;

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v0

    iget-object v2, v1, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$c;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v6, v6}, Lcom/naver/glink/android/sdk/configure/c;->a(Landroid/view/View;II)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-static {v5}, Lcom/naver/glink/android/sdk/a/s;->a(F)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_2

    iget-object v0, v1, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$c;->a:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-static {v5}, Lcom/naver/glink/android/sdk/a/s;->a(F)I

    move-result v5

    sub-int/2addr v2, v5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/model/Menu;

    invoke-direct {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$b;->a(ILandroid/view/View;)V

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/model/Menu;->getMenuId()I

    move-result v2

    iget-object v5, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$b;->a:Lcom/naver/glink/android/sdk/ui/MenusFragmentView;

    invoke-static {v5}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->e(Lcom/naver/glink/android/sdk/ui/MenusFragmentView;)I

    move-result v5

    if-ne v2, v5, :cond_3

    move v2, v3

    :goto_2
    invoke-virtual {p2, v2}, Landroid/view/View;->setActivated(Z)V

    iget-object v2, v1, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$c;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/model/Menu;->getMenuName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$c;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    iget-object v1, v1, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$c;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/model/Menu;->isHasNewArticle()Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_3
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_3
    move v2, v4

    goto :goto_2

    :cond_4
    const/16 v4, 0x8

    goto :goto_3

    :cond_5
    move-object v1, v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
