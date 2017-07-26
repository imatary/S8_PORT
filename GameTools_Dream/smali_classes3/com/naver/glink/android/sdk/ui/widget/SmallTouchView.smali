.class public abstract Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView;
.super Landroid/widget/LinearLayout;
.source "SmallTouchView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView$a;
    }
.end annotation


# static fields
.field private static a:I


# instance fields
.field private b:F

.field private c:F

.field private d:Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1e

    sput v0, Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p0}, Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView;->setOnHomeBannerTouchEvent(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p0}, Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView;->setOnHomeBannerTouchEvent(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, p0}, Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView;->setOnHomeBannerTouchEvent(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView;)F
    .locals 1

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView;->b:F

    return v0
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView;F)F
    .locals 0

    iput p1, p0, Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView;->b:F

    return p1
.end method

.method static synthetic a()I
    .locals 1

    sget v0, Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView;->a:I

    return v0
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView;)F
    .locals 1

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView;->c:F

    return v0
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView;F)F
    .locals 0

    iput p1, p0, Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView;->c:F

    return p1
.end method

.method static synthetic c(Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView;)Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView$a;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView;->d:Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView$a;

    return-object v0
.end method


# virtual methods
.method public setOnHomeBannerTouchEvent(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView$1;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView$1;-><init>(Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView$2;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView$2;-><init>(Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setSmallClickListener(Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView;->d:Lcom/naver/glink/android/sdk/ui/widget/SmallTouchView$a;

    return-void
.end method
