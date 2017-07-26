.class public Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;
.super Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;
.source "HomeFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$b;,
        Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$a;
    }
.end annotation


# instance fields
.field private a:Lcom/naver/glink/android/sdk/api/Responses$HomeResponse;

.field private b:Landroid/view/ViewGroup;

.field private c:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/view/View;Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;)V
    .locals 3

    new-instance v0, Lcom/naver/glink/android/sdk/ui/home/HomeBannerMainView;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/naver/glink/android/sdk/ui/home/HomeBannerMainView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/home/HomeBannerMainView;->a(Landroid/view/LayoutInflater;Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/naver/glink/android/sdk/ui/home/HomeBannerMainView;->a(Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;Landroid/content/Context;)V

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 5

    const/4 v4, 0x0

    sget v0, Lcom/naver/glink/android/sdk/R$id;->pager:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$b;-><init>(Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$1;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    sget v1, Lcom/naver/glink/android/sdk/R$id;->indicator:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/naver/glink/android/sdk/ui/widget/viewpagerindicator/CirclePageIndicator;

    const/high16 v2, 0x41000000    # 8.0f

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {v2, v3}, Lcom/naver/glink/android/sdk/a/s;->a(FF)I

    move-result v2

    invoke-static {v1, v4, v4, v4, v2}, Lcom/naver/glink/android/sdk/a/s;->a(Landroid/view/View;IIII)V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->c()Lcom/naver/glink/android/sdk/configure/d;

    move-result-object v2

    iget v2, v2, Lcom/naver/glink/android/sdk/configure/d;->a:I

    invoke-virtual {v1, v2}, Lcom/naver/glink/android/sdk/ui/widget/viewpagerindicator/CirclePageIndicator;->setFillColor(I)V

    invoke-virtual {v1, v0}, Lcom/naver/glink/android/sdk/ui/widget/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;->mediaType:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :cond_1
    iget-object v3, p1, Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;->mediaType:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    iget v0, p1, Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;->articleId:I

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/tabs/b;->a(I)V

    goto :goto_0

    :sswitch_0
    const-string/jumbo v4, "I"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string/jumbo v4, "A"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string/jumbo v4, "M"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v4, "S"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    :pswitch_2
    invoke-static {p1}, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->from(Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;)Lcom/naver/glink/android/sdk/api/response/ArticleMedia;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v3, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;->BANNER:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;

    new-array v2, v2, [Lcom/naver/glink/android/sdk/api/response/ArticleMedia;

    aput-object v0, v2, v1

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v3, v0, v1}, Lcom/naver/glink/android/sdk/ui/viewer/a;->a(Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;Ljava/util/List;I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p1, Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;->appScheme:Ljava/lang/String;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/b;->a(Ljava/lang/String;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_1
        0x49 -> :sswitch_0
        0x4d -> :sswitch_2
        0x53 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(Lcom/naver/glink/android/sdk/api/Responses$HomeResponse;)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;->a:Lcom/naver/glink/android/sdk/api/Responses$HomeResponse;

    iget v0, p1, Lcom/naver/glink/android/sdk/api/Responses$HomeResponse;->layout:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;->b:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;->a(Landroid/view/ViewGroup;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;->c:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;->b(Landroid/view/ViewGroup;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x65 -> :sswitch_0
        0x66 -> :sswitch_1
        0x67 -> :sswitch_1
    .end sparse-switch
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;)V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;->e()V

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;Lcom/naver/glink/android/sdk/api/Responses$HomeResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;->a(Lcom/naver/glink/android/sdk/api/Responses$HomeResponse;)V

    return-void
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;)Lcom/naver/glink/android/sdk/api/Responses$HomeResponse;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;->a:Lcom/naver/glink/android/sdk/api/Responses$HomeResponse;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;
    .locals 2

    new-instance v0, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private b(Landroid/view/ViewGroup;)V
    .locals 4

    const/4 v3, 0x0

    sget v0, Lcom/naver/glink/android/sdk/R$id;->list_view:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$a;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$a;-><init>(Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->main_banner:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;->a:Lcom/naver/glink/android/sdk/api/Responses$HomeResponse;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/Responses$HomeResponse;->mains:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;

    invoke-direct {p0, v2, v0}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;->a(Landroid/view/View;Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;->a:Lcom/naver/glink/android/sdk/api/Responses$HomeResponse;

    iget-object v2, v2, Lcom/naver/glink/android/sdk/api/Responses$HomeResponse;->banners:Ljava/util/List;

    invoke-virtual {v1, v0, v2}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$a;->a(Ljava/util/List;Ljava/util/List;)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;->a:Lcom/naver/glink/android/sdk/api/Responses$HomeResponse;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/Responses$HomeResponse;->mains:Ljava/util/List;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;->a:Lcom/naver/glink/android/sdk/api/Responses$HomeResponse;

    iget-object v2, v2, Lcom/naver/glink/android/sdk/api/Responses$HomeResponse;->banners:Ljava/util/List;

    invoke-virtual {v1, v0, v2}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$a;->a(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method

.method private e()V
    .locals 4

    sget-object v0, Lcom/naver/glink/android/sdk/api/requests/CacheRequests;->homeRequest:Lcom/naver/glink/android/sdk/api/requests/CacheRequest;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$2;

    invoke-direct {v3, p0}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$2;-><init>(Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/naver/glink/android/sdk/api/requests/CacheRequest;->execute(Landroid/content/Context;ZLcom/naver/glink/android/sdk/api/request/RequestListener;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3

    sget v0, Lcom/naver/glink/android/sdk/R$layout;->fragment_home:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 0

    invoke-super {p0}, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->a()V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;->c()V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->a(Landroid/view/View;Landroid/os/Bundle;)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->full_banners_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;->b:Landroid/view/ViewGroup;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->main_and_banners_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;->c:Landroid/view/ViewGroup;

    return-void
.end method

.method public a(Lcom/naver/glink/android/sdk/ui/home/AbsHomeBanner$a;)V
    .locals 1
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    iget-object v0, p1, Lcom/naver/glink/android/sdk/ui/home/AbsHomeBanner$a;->a:Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;->a(Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;)V

    return-void
.end method

.method public c()V
    .locals 2

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$1;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$1;-><init>(Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;)V

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/api/requests/CacheRequests;->loadCafeResponse(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    return-void
.end method
