.class Lcom/naver/glink/android/sdk/samsung/a;
.super Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;
.source "SHomeFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/samsung/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/naver/glink/android/sdk/samsung/a$a;

.field private c:Landroid/support/v4/widget/SwipeRefreshLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/samsung/a;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/samsung/a;->c:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method private a(Landroid/view/View;Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;)V
    .locals 12

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/naver/glink/android/sdk/R$id;->cafe_background_img:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->cafe_background_img_dimmed:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->thumbnail_image:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    sget v1, Lcom/naver/glink/android/sdk/R$id;->cafe_icon_img:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget v2, Lcom/naver/glink/android/sdk/R$id;->cafe_icon_img_stroke:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sget v3, Lcom/naver/glink/android/sdk/R$id;->cafe_name:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v4, Lcom/naver/glink/android/sdk/R$id;->cafe_member_count:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sget v5, Lcom/naver/glink/android/sdk/R$id;->cafe_info_layout:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    sget v6, Lcom/naver/glink/android/sdk/R$id;->shome_gradation:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, 0x0

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->g()Z

    move-result v6

    if-eqz v6, :cond_1

    const/high16 v6, 0x42680000    # 58.0f

    :goto_1
    invoke-static {v6}, Lcom/naver/glink/android/sdk/a/s;->a(F)I

    move-result v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v5, v9, v6, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6}, Lcom/naver/glink/android/sdk/a/s;->a(F)I

    move-result v6

    const/4 v9, 0x0

    const/high16 v10, 0x41000000    # 8.0f

    invoke-static {v10}, Lcom/naver/glink/android/sdk/a/s;->a(F)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v5, v6, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6}, Lcom/naver/glink/android/sdk/a/s;->a(F)I

    move-result v6

    const/high16 v9, 0x40800000    # 4.0f

    invoke-static {v9}, Lcom/naver/glink/android/sdk/a/s;->a(F)I

    move-result v9

    const/high16 v10, 0x41000000    # 8.0f

    invoke-static {v10}, Lcom/naver/glink/android/sdk/a/s;->a(F)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v5, v6, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v6

    const/4 v9, -0x1

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->g()Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x84

    :goto_2
    invoke-virtual {v6, p1, v9, v5}, Lcom/naver/glink/android/sdk/configure/c;->a(Landroid/view/View;II)V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v5

    const/4 v6, -0x1

    const/16 v9, 0x41

    invoke-virtual {v5, v8, v6, v9}, Lcom/naver/glink/android/sdk/configure/c;->a(Landroid/view/View;II)V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v5

    const/16 v6, 0x40

    const/16 v8, 0x40

    invoke-virtual {v5, v7, v6, v8}, Lcom/naver/glink/android/sdk/configure/c;->a(Landroid/view/View;II)V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v5

    const/16 v6, 0x3e

    const/16 v7, 0x3e

    invoke-virtual {v5, v1, v6, v7}, Lcom/naver/glink/android/sdk/configure/c;->a(Landroid/view/View;II)V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v5

    const/16 v6, 0x40

    const/16 v7, 0x40

    invoke-virtual {v5, v2, v6, v7}, Lcom/naver/glink/android/sdk/configure/c;->a(Landroid/view/View;II)V

    new-instance v2, Lcom/naver/glink/android/sdk/samsung/a$4;

    invoke-direct {v2, p0, v1}, Lcom/naver/glink/android/sdk/samsung/a$4;-><init>(Lcom/naver/glink/android/sdk/samsung/a;Landroid/widget/ImageView;)V

    iget-object v1, p2, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;->iconImageUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/samsung/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    sget v5, Lcom/naver/glink/android/sdk/R$drawable;->gl_img_cafeprofile_none:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/BitmapTypeRequest;->fitCenter()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/BitmapRequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    :goto_3
    iget-object v1, p2, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;->topCoverImageUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/samsung/a;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/naver/glink/android/sdk/R$color;->white1:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    :goto_4
    iget-object v0, p2, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;->cafeName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/naver/glink/android/sdk/R$string;->member_count_format:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p2, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;->memberCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/naver/glink/android/sdk/samsung/a;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1
    const/high16 v6, 0x428c0000    # 70.0f

    goto/16 :goto_1

    :cond_2
    const/16 v5, 0x96

    goto/16 :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/samsung/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v5, p2, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;->iconImageUrl:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/BitmapTypeRequest;->fitCenter()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/BitmapRequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/samsung/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v2, p2, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;->topCoverImageUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/BitmapTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_4
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/samsung/a;Landroid/view/View;Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/naver/glink/android/sdk/samsung/a;->a(Landroid/view/View;Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;)V

    return-void
.end method

.method public static a_(Landroid/content/Context;)Lcom/naver/glink/android/sdk/samsung/a;
    .locals 2

    new-instance v0, Lcom/naver/glink/android/sdk/samsung/a;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/samsung/a;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/samsung/a;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/samsung/a;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/samsung/a;->a:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/naver/glink/android/sdk/samsung/a;)Lcom/naver/glink/android/sdk/samsung/a$a;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/samsung/a;->b:Lcom/naver/glink/android/sdk/samsung/a$a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3

    sget v0, Lcom/naver/glink/android/sdk/R$layout;->fragment_shome:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    invoke-super {p0}, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;->a()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/samsung/a;->b:Lcom/naver/glink/android/sdk/samsung/a$a;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/a;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/samsung/a;->c()V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;->a(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/samsung/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$layout;->item_shome_cafe_infos:I

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/samsung/a;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/samsung/a;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/samsung/a;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/samsung/a;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    new-instance v0, Lcom/naver/glink/android/sdk/samsung/a$a;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/samsung/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/naver/glink/android/sdk/samsung/a$a;-><init>(Lcom/naver/glink/android/sdk/samsung/a;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/samsung/a;->b:Lcom/naver/glink/android/sdk/samsung/a$a;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/samsung/a;->b:Lcom/naver/glink/android/sdk/samsung/a$a;

    new-instance v1, Lcom/naver/glink/android/sdk/samsung/a$1;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/samsung/a$1;-><init>(Lcom/naver/glink/android/sdk/samsung/a;)V

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/samsung/a$a;->a(Lcom/naver/glink/android/sdk/ui/articles/a$a;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/samsung/a;->b:Lcom/naver/glink/android/sdk/samsung/a$a;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/samsung/a;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/samsung/a$a;->a(Landroid/widget/ListView;)V

    sget v0, Lcom/naver/glink/android/sdk/R$drawable;->gl_ls_icon_warningbic:I

    sget v1, Lcom/naver/glink/android/sdk/R$string;->article_empty:I

    invoke-virtual {p0, v0, v1}, Lcom/naver/glink/android/sdk/samsung/a;->b(II)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/samsung/a;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->swipe_refresh_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/samsung/a;->c:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/samsung/a;->c:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x1

    new-array v1, v1, [I

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->c()Lcom/naver/glink/android/sdk/configure/d;

    move-result-object v2

    iget v2, v2, Lcom/naver/glink/android/sdk/configure/d;->a:I

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/samsung/a;->c:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/naver/glink/android/sdk/samsung/a$2;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/samsung/a$2;-><init>(Lcom/naver/glink/android/sdk/samsung/a;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

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

    iget-object v0, p0, Lcom/naver/glink/android/sdk/samsung/a;->b:Lcom/naver/glink/android/sdk/samsung/a$a;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/a;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public c()V
    .locals 2

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/samsung/a;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/samsung/a;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/samsung/a$3;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/samsung/a$3;-><init>(Lcom/naver/glink/android/sdk/samsung/a;)V

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/api/requests/CacheRequests;->loadCafeResponse(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    goto :goto_0
.end method
