.class Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$b;
.super Landroid/support/v4/view/PagerAdapter;
.source "HomeFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;


# direct methods
.method private constructor <init>(Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$b;->a:Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$b;-><init>(Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$b;->a:Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;->b(Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;)Lcom/naver/glink/android/sdk/api/Responses$HomeResponse;

    move-result-object v0

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/Responses$HomeResponse;->mains:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    new-instance v1, Lcom/naver/glink/android/sdk/ui/home/HomeBannerFullView;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$b;->a:Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/naver/glink/android/sdk/ui/home/HomeBannerFullView;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$b;->a:Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$b;->a:Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;

    invoke-virtual {v2}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/naver/glink/android/sdk/ui/home/HomeBannerFullView;->a(Landroid/view/LayoutInflater;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$b;->a:Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;->b(Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;)Lcom/naver/glink/android/sdk/api/Responses$HomeResponse;

    move-result-object v0

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/Responses$HomeResponse;->mains:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$b;->a:Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;

    invoke-virtual {v2}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/naver/glink/android/sdk/ui/home/HomeBannerFullView;->a(Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
