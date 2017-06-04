.class Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$2;
.super Ljava/lang/Object;
.source "FilterGroupViewPager.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->setVisibilityByCurrentItem(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;

.field final synthetic val$page:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$2;->val$page:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$2;->val$page:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->isDisplaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
