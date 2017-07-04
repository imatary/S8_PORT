.class Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$9;
.super Ljava/lang/Object;
.source "SearchFilterView.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()Z
    .locals 9

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$600(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$700(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$600(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setPressed(Z)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$600(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/view/View;

    move-result-object v8

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$600(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->isSelected()Z

    move-result v5

    if-nez v5, :cond_5

    move v5, v6

    :goto_0
    invoke-virtual {v8, v5}, Landroid/view/View;->setSelected(Z)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v8}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$600(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    invoke-static {v5, v8}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$800(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;I)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$900(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;

    move-result-object v5

    invoke-virtual {v5, v3, v7}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->setCurrentItem(IZ)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$400(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v5

    sget v8, Lcom/sec/samsung/gallery/lib/factory/AudioManagerWrapper;->SOUND_TOUCH:I

    invoke-virtual {v5, v8}, Landroid/media/AudioManager;->playSoundEffect(I)V

    :cond_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v5, v7}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$702(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;Z)Z

    :cond_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$1800(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$400(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v5

    sget v8, Lcom/sec/samsung/gallery/lib/factory/AudioManagerWrapper;->SOUND_TOUCH:I

    invoke-virtual {v5, v8}, Landroid/media/AudioManager;->playSoundEffect(I)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$000(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;

    move-result-object v5

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v8}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->onClick(Landroid/view/View;)V

    :cond_2
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$1500(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$1500(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setPressed(Z)V

    :try_start_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$1500(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$1000(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->deleteAllItems()V

    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$400(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v5

    sget v7, Lcom/sec/samsung/gallery/lib/factory/AudioManagerWrapper;->SOUND_TOUCH:I

    invoke-virtual {v5, v7}, Landroid/media/AudioManager;->playSoundEffect(I)V

    :cond_4
    :goto_2
    return v6

    :cond_5
    move v5, v7

    goto/16 :goto_0

    :cond_6
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$1500(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$1900(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getAction()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v1

    instance-of v5, v1, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchActionBar;

    if-eqz v5, :cond_3

    check-cast v1, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchActionBar;

    invoke-virtual {v1, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchActionBar;->setHistoryQuery(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string/jumbo v5, "SearchFilterView"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onGenericMotionTouch(II)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onLongClick(II)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onMouseWheelScale(ZII)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onMove(II)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$1700(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/common/SearchViewMoveListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$1700(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/common/SearchViewMoveListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/common/SearchViewMoveListener;->onMove(II)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onMultiSelectEnter(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onMultiSelectMove(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onMultiSelectRelease(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPress(IIII)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$600(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$700(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$600(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$1500(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$1500(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$1700(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/common/SearchViewMoveListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$1700(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/common/SearchViewMoveListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/common/SearchViewMoveListener;->onPress(II)Z

    :cond_2
    return v1
.end method

.method public onRelease(IIII)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$600(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$700(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$600(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$702(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$102(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;Landroid/view/View;)Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$1500(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$1500(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$1502(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;Landroid/view/View;)Landroid/view/View;

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$1700(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/common/SearchViewMoveListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$1700(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/common/SearchViewMoveListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/common/SearchViewMoveListener;->onRelease(IIII)Z

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public onScroll(IIII)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onSecondaryClick(IIII)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
