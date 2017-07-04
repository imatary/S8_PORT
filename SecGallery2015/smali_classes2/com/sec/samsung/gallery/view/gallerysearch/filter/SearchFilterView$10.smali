.class Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$10;
.super Ljava/lang/Object;
.source "SearchFilterView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$10;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$10;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v11}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$400(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$10;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-virtual {v11}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->getTagFilterHeight()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$10;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v11}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$400(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDimensionUtil()Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getActionBarHeightPixel()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$10;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v11}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$400(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getScreenSize(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)Landroid/graphics/Point;

    move-result-object v8

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$10;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-virtual {v11}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->isHistoryViewVisible()Z

    move-result v11

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$10;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v11}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$1000(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->getHistoryViewHeight()I

    move-result v11

    add-int/2addr v7, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$10;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v11}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$400(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b016f

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    add-int/2addr v7, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$10;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v11}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$400(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b016c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    add-int/2addr v7, v11

    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$10;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v11}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$2000(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout$LayoutParams;

    add-int v11, v10, v2

    add-int/2addr v11, v7

    iget v12, v8, Landroid/graphics/Point;->y:I

    if-le v11, v12, :cond_3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    add-int v14, v10, v2

    add-int/2addr v14, v7

    iget v15, v8, Landroid/graphics/Point;->y:I

    sub-int/2addr v14, v15

    neg-int v14, v14

    invoke-virtual {v9, v11, v12, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$10;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v11}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$2000(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move/from16 v0, p5

    move/from16 v1, p9

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$10;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-virtual {v11}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->isHistoryViewVisible()Z

    move-result v11

    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$10;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v11}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$1300(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_1
    :goto_0
    instance-of v11, v3, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    if-eqz v11, :cond_2

    move/from16 v0, p5

    move/from16 v1, p9

    if-eq v0, v1, :cond_2

    new-instance v6, Ljava/util/Observable;

    invoke-direct {v6}, Ljava/util/Observable;-><init>()V

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v11

    sget v12, Lcom/sec/samsung/gallery/core/Event;->EVENT_UPDATE_SEARCH_VIEW_MARGIN:I

    invoke-virtual {v11, v12}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v11

    invoke-virtual {v3, v6, v11}, Lcom/sec/android/gallery3d/app/ActivityState;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$10;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v11}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$400(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v11

    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$10;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v11}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$400(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isLandscapeOrientation(Landroid/app/Activity;)Z

    move-result v11

    if-eqz v11, :cond_4

    sget-object v11, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v11}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v11

    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$10;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v11}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$1600(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/view/ViewGroup;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$10;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v11}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$400(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b03ec

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v5, v11

    neg-int v11, v5

    const/4 v12, 0x0

    neg-int v13, v5

    const/4 v14, 0x0

    invoke-virtual {v4, v11, v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$10;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v11}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$1600(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/view/ViewGroup;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v9, v11, v12, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$10;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-static {v11}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$2000(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method
