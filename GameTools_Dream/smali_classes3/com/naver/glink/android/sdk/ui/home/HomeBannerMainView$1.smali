.class Lcom/naver/glink/android/sdk/ui/home/HomeBannerMainView$1;
.super Ljava/lang/Object;
.source "HomeBannerMainView.java"

# interfaces
.implements Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/home/HomeBannerMainView;->b(Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;

.field final synthetic b:Lcom/naver/glink/android/sdk/ui/home/HomeBannerMainView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/home/HomeBannerMainView;Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/home/HomeBannerMainView$1;->b:Lcom/naver/glink/android/sdk/ui/home/HomeBannerMainView;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/home/HomeBannerMainView$1;->a:Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    new-instance v0, Lcom/naver/glink/android/sdk/ui/home/AbsHomeBanner$a;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/home/HomeBannerMainView$1;->a:Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;

    invoke-direct {v0, v1}, Lcom/naver/glink/android/sdk/ui/home/AbsHomeBanner$a;-><init>(Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;)V

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/a;->c(Ljava/lang/Object;)V

    return-void
.end method
