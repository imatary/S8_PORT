.class Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$a;
.super Landroid/widget/ArrayAdapter;
.source "HomeFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$a$a;",
        ">;"
    }
.end annotation


# static fields
.field static final a:I = 0x0

.field static final b:I = 0x1


# instance fields
.field final synthetic c:Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;


# direct methods
.method public constructor <init>(Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$a;->c:Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method

.method private a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    new-instance v1, Lcom/naver/glink/android/sdk/ui/home/HomeBannerMainView;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/naver/glink/android/sdk/ui/home/HomeBannerMainView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/naver/glink/android/sdk/ui/home/HomeBannerMainView;->a(Landroid/view/LayoutInflater;Landroid/content/Context;)V

    :goto_0
    move-object v0, v1

    check-cast v0, Lcom/naver/glink/android/sdk/ui/home/HomeBannerMainView;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$a;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$a$a;

    iget-object v2, v2, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$a$a;->b:Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$a;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/naver/glink/android/sdk/ui/home/HomeBannerMainView;->a(Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;Landroid/content/Context;)V

    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method

.method private b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    new-instance v1, Lcom/naver/glink/android/sdk/ui/home/HomeBannerSmallView;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/naver/glink/android/sdk/ui/home/HomeBannerSmallView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/naver/glink/android/sdk/ui/home/HomeBannerSmallView;->a(Landroid/view/LayoutInflater;Landroid/content/Context;)V

    :goto_0
    move-object v0, v1

    check-cast v0, Lcom/naver/glink/android/sdk/ui/home/HomeBannerSmallView;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$a;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$a$a;

    iget-object v2, v2, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$a$a;->b:Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$a;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/naver/glink/android/sdk/ui/home/HomeBannerSmallView;->a(Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;Landroid/content/Context;)V

    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;

    new-instance v3, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$a$a;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4, v0}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$a$a;-><init>(Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$a;ILcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;

    new-instance v3, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$a$a;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4, v0}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$a$a;-><init>(Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$a;ILcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$a;->clear()V

    invoke-virtual {p0, v1}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$a;->addAll(Ljava/util/Collection;)V

    return-void
.end method

.method public getItemViewType(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$a$a;

    iget v0, v0, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$a$a;->a:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$a;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "\uc9c0\uc6d0\ud558\uc9c0 \uc54a\ub294 viewType \uc785\ub2c8\ub2e4."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$a;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$a;->b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

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
