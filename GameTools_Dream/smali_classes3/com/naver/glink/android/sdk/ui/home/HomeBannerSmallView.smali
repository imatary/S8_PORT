.class public Lcom/naver/glink/android/sdk/ui/home/HomeBannerSmallView;
.super Lcom/naver/glink/android/sdk/ui/home/AbsHomeBanner;
.source "HomeBannerSmallView.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/ImageView;


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
    .locals 6

    sget v0, Lcom/naver/glink/android/sdk/R$layout;->item_home_banner:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/home/HomeBannerSmallView;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/home/HomeBannerSmallView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v1

    iget v1, v1, Lcom/naver/glink/android/sdk/configure/c;->g:I

    int-to-double v2, v1

    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/home/HomeBannerSmallView;->a:Landroid/view/View;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/home/HomeBannerSmallView;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/home/HomeBannerSmallView;->a:Landroid/view/View;

    return-object v0
.end method

.method protected b(Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;Landroid/content/Context;)V
    .locals 2

    invoke-static {p2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p1, Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->fitCenter()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/home/HomeBannerSmallView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    new-instance v0, Lcom/naver/glink/android/sdk/ui/home/HomeBannerSmallView$1;

    invoke-direct {v0, p0, p1}, Lcom/naver/glink/android/sdk/ui/home/HomeBannerSmallView$1;-><init>(Lcom/naver/glink/android/sdk/ui/home/HomeBannerSmallView;Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;)V

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/home/HomeBannerSmallView;->setSmallClickListener(Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView$a;)V

    return-void
.end method
