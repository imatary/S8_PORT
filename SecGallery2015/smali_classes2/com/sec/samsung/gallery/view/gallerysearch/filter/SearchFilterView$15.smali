.class Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$15;
.super Ljava/lang/Object;
.source "SearchFilterView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->startHideAnimation(Landroid/animation/Animator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

.field final synthetic val$diff:F

.field final synthetic val$startY:F


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;FF)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$15;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    iput p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$15;->val$startY:F

    iput p3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$15;->val$diff:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$15;->val$startY:F

    sub-float v2, v1, v2

    iget v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$15;->val$diff:F

    div-float v0, v2, v3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$15;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSearchTagFilterView:Landroid/view/View;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$2000(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/view/View;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$15;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-virtual {v2, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->moveSearchFilter(F)V

    return-void
.end method
