.class public abstract Lcom/naver/glink/android/sdk/ui/home/AbsHomeBanner;
.super Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView;
.source "AbsHomeBanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/ui/home/AbsHomeBanner$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/home/AbsHomeBanner;->b(Landroid/view/LayoutInflater;Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/home/AbsHomeBanner;->addView(Landroid/view/View;)V

    return-void
.end method

.method public a(Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/home/AbsHomeBanner;->b(Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;Landroid/content/Context;)V

    return-void
.end method

.method protected abstract b(Landroid/view/LayoutInflater;Landroid/content/Context;)Landroid/view/View;
.end method

.method protected abstract b(Lcom/naver/glink/android/sdk/api/Responses$HomeResponse$HomeBanner;Landroid/content/Context;)V
.end method
