.class public Lcom/naver/glink/android/sdk/ui/home/HomeBannerMainView;
.super Lcom/naver/glink/android/sdk/ui/home/AbsHomeBanner;
.source "HomeBannerMainView.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/home/AbsHomeBanner;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/home/AbsHomeBanner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/naver/glink/android/sdk/ui/home/AbsHomeBanner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected b(Landroid/view/LayoutInflater;Landroid/content/Context;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/naver/glink/android/sdk/R$layout;->item_home_main_banner:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/home/HomeBannerMainView;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/home/HomeBannerMainView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v1

    iget v1, v1, Lcom/naver/glink/android/sdk/configure/c;->g:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/home/HomeBannerMainView;->a:Landroid/view/View;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->movie_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/home/HomeBannerMainView;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/home/HomeBannerMainView;->a:Landroid/view/View;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->movie_gradient:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/home/HomeBannerMainView;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/home/HomeBannerMainView;->a:Landroid/view/View;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->main_banner_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/home/HomeBannerMainView;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/home/HomeBannerMainView;->a:Landroid/view/View;

    return-object v0
.end method

.method protected b(Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;Landroid/content/Context;)V
    .locals 7

    const/16 v6, 0x2a

    const/16 v2, 0x8

    const/high16 v5, 0x41900000    # 18.0f

    const/high16 v4, 0x40c00000    # 6.0f

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/home/HomeBannerMainView;->c:Landroid/view/View;

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;->isMovie()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/home/HomeBannerMainView;->c:Landroid/view/View;

    invoke-static {v4, v5}, Lcom/naver/glink/android/sdk/a/s;->a(FF)I

    move-result v3

    invoke-static {v4, v5}, Lcom/naver/glink/android/sdk/a/s;->a(FF)I

    move-result v4

    invoke-static {v0, v1, v1, v3, v4}, Lcom/naver/glink/android/sdk/a/s;->a(Landroid/view/View;IIII)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/home/HomeBannerMainView;->d:Landroid/view/View;

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;->isMovie()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/home/HomeBannerMainView;->c:Landroid/view/View;

    invoke-virtual {v0, v1, v6, v6}, Lcom/naver/glink/android/sdk/configure/c;->a(Landroid/view/View;II)V

    invoke-static {p2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p1, Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/home/HomeBannerMainView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    new-instance v0, Lcom/naver/glink/android/sdk/ui/home/HomeBannerMainView$1;

    invoke-direct {v0, p0, p1}, Lcom/naver/glink/android/sdk/ui/home/HomeBannerMainView$1;-><init>(Lcom/naver/glink/android/sdk/ui/home/HomeBannerMainView;Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;)V

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/home/HomeBannerMainView;->setSmallClickListener(Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView$a;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
