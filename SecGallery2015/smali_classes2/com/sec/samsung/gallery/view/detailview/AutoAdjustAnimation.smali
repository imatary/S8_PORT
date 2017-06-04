.class Lcom/sec/samsung/gallery/view/detailview/AutoAdjustAnimation;
.super Ljava/lang/Object;
.source "AutoAdjustAnimation.java"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAutoAdjustEffectCircle:Landroid/widget/ImageView;

.field private mAutoAdjustEffectView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjustAnimation;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/detailview/AutoAdjustAnimation;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjustAnimation;->mAutoAdjustEffectCircle:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public initAutoAdjustEffectView()V
    .locals 7

    const/16 v6, 0x64

    const/4 v5, -0x2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjustAnimation;->mActivity:Landroid/app/Activity;

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v3, 0x7f040053

    const/4 v2, 0x0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjustAnimation;->mAutoAdjustEffectView:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjustAnimation;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjustAnimation;->mAutoAdjustEffectView:Landroid/view/View;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjustAnimation;->mAutoAdjustEffectView:Landroid/view/View;

    const v3, 0x7f1200c5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjustAnimation;->mAutoAdjustEffectCircle:Landroid/widget/ImageView;

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjustAnimation;->mAutoAdjustEffectCircle:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjustAnimation;->mAutoAdjustEffectCircle:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public removeAutoAdjustEffectView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjustAnimation;->mAutoAdjustEffectView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjustAnimation;->mAutoAdjustEffectView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjustAnimation;->mAutoAdjustEffectView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public startAutoAdjustAnimation()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjustAnimation;->mActivity:Landroid/app/Activity;

    const v2, 0x7f05000a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/sec/samsung/gallery/view/detailview/AutoAdjustAnimation$1;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/detailview/AutoAdjustAnimation$1;-><init>(Lcom/sec/samsung/gallery/view/detailview/AutoAdjustAnimation;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const/16 v1, 0xf

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/PathInterpolatorUtils;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/AutoAdjustAnimation;->mAutoAdjustEffectCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
