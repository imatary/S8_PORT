.class public Lcom/naver/glink/android/sdk/ui/home/HomeBannerFullView;
.super Lcom/naver/glink/android/sdk/ui/home/AbsHomeBanner;
.source "HomeBannerFullView.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/ImageView;


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
    .locals 5

    const/high16 v4, 0x41800000    # 16.0f

    const/4 v3, 0x0

    sget v0, Lcom/naver/glink/android/sdk/R$layout;->fragment_main_banner:I

    invoke-virtual {p1, v0, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/home/HomeBannerFullView;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/home/HomeBannerFullView;->a:Landroid/view/View;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->image_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/home/HomeBannerFullView;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/home/HomeBannerFullView;->a:Landroid/view/View;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->movie_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/home/HomeBannerFullView;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/home/HomeBannerFullView;->c:Landroid/view/View;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v4, v1}, Lcom/naver/glink/android/sdk/a/s;->a(FF)I

    move-result v1

    const/high16 v2, 0x42300000    # 44.0f

    invoke-static {v4, v2}, Lcom/naver/glink/android/sdk/a/s;->a(FF)I

    move-result v2

    invoke-static {v0, v3, v3, v1, v2}, Lcom/naver/glink/android/sdk/a/s;->a(Landroid/view/View;IIII)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/home/HomeBannerFullView;->a:Landroid/view/View;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->movie_gradient:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/home/HomeBannerFullView;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/home/HomeBannerFullView;->a:Landroid/view/View;

    return-object v0
.end method

.method protected b(Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;Landroid/content/Context;)V
    .locals 5

    const/16 v4, 0x2a

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-static {p2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v3, p1, Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;->imageUrl:Ljava/lang/String;

    invoke-static {v3}, Lcom/naver/glink/android/sdk/a/t;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/home/HomeBannerFullView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/home/HomeBannerFullView;->c:Landroid/view/View;

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;->isMovie()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/home/HomeBannerFullView;->d:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;->isMovie()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/home/HomeBannerFullView;->c:Landroid/view/View;

    invoke-virtual {v0, v1, v4, v4}, Lcom/naver/glink/android/sdk/configure/c;->a(Landroid/view/View;II)V

    new-instance v0, Lcom/naver/glink/android/sdk/ui/home/HomeBannerFullView$1;

    invoke-direct {v0, p0, p1}, Lcom/naver/glink/android/sdk/ui/home/HomeBannerFullView$1;-><init>(Lcom/naver/glink/android/sdk/ui/home/HomeBannerFullView;Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;)V

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/home/HomeBannerFullView;->setSmallClickListener(Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView$a;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
