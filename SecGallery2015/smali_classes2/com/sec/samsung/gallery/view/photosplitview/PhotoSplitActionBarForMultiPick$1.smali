.class Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick$1;
.super Ljava/lang/Object;
.source "PhotoSplitActionBarForMultiPick.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->setTitle(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;

.field final synthetic val$numberOfItemsSelected:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;

    iput p2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick$1;->val$numberOfItemsSelected:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const v13, 0x7f0a02ee

    const v12, 0x7f0a02ed

    const/4 v11, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;

    iget v10, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick$1;->val$numberOfItemsSelected:I

    iput v10, v9, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mCount:I

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mMenu:Landroid/view/Menu;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->access$000(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;)Landroid/view/Menu;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->access$100(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->invalidateOptionsMenu()V

    :cond_0
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;

    # invokes: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->getMaxCount()I
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->access$200(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;)I

    move-result v1

    iget v9, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick$1;->val$numberOfItemsSelected:I

    if-gtz v9, :cond_1

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->access$300(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a03ab

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mMainActionBar:Landroid/app/ActionBar;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->access$800(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;)Landroid/app/ActionBar;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;

    iget v10, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick$1;->val$numberOfItemsSelected:I

    # invokes: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->setSelectAllButtonTitle(ILjava/lang/String;)V
    invoke-static {v9, v10, v4}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->access$900(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;ILjava/lang/String;)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;

    const/4 v10, 0x0

    # invokes: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->setSelectAllButtonTTS(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->access$1000(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mMenu:Landroid/view/Menu;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->access$000(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;)Landroid/view/Menu;

    move-result-object v9

    const v10, 0x7f12007a

    iget v11, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick$1;->val$numberOfItemsSelected:I

    if-lez v11, :cond_7

    :goto_1
    invoke-static {v9, v10, v7}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mSelectionActionBarView:Landroid/view/View;
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->access$1100(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;)Landroid/view/View;

    move-result-object v7

    const v9, 0x7f120075

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    if-lez v1, :cond_5

    sget-boolean v0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v0, :cond_2

    move v2, v1

    :goto_2
    if-eqz v0, :cond_3

    iget v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick$1;->val$numberOfItemsSelected:I

    :goto_3
    sget-object v9, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v9}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->access$400(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick$1;->val$numberOfItemsSelected:I

    goto :goto_2

    :cond_3
    move v3, v1

    goto :goto_3

    :cond_4
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->access$500(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_5
    sget-object v9, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v9}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->access$600(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    iget v11, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick$1;->val$numberOfItemsSelected:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_6
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick$1;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->access$700(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    iget v11, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick$1;->val$numberOfItemsSelected:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_7
    move v7, v8

    goto/16 :goto_1
.end method
