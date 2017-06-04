.class Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$5;
.super Ljava/lang/Object;
.source "SearchFilterView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->initFilterGroupView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$5;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$5;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    # setter for: Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSelectedView:Landroid/view/View;
    invoke-static {v1, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$602(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;Landroid/view/View;)Landroid/view/View;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$5;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSelectedView:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$600(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    const/16 v1, 0x42

    if-eq p2, v1, :cond_0

    const/16 v1, 0x17

    if-ne p2, v1, :cond_3

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$5;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSelectedView:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$600(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/view/View;

    move-result-object v4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$5;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSelectedView:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$600(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$5;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$5;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSelectedView:Landroid/view/View;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$600(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->matchFilterPageIndex(I)I
    invoke-static {v1, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$800(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$5;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterPagerView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$900(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->setCurrentItem(IZ)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$5;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$400(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v1

    sget v3, Lcom/sec/samsung/gallery/lib/factory/AudioManagerWrapper;->SOUND_TOUCH:I

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->playSoundEffect(I)V

    :cond_1
    :goto_1
    return v2

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1
.end method
