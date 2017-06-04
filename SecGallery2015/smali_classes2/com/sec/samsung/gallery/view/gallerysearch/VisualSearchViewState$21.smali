.class Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$21;
.super Ljava/lang/Object;
.source "VisualSearchViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->onViewInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$21;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGenericMotionCancel()V
    .locals 3

    const/4 v2, -0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$21;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$13600(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->getGenericMotionTitleFocus()I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$21;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$13700(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateTitleBorder(II)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$21;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$13800(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->setGenericMotionTitleFocus(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$21;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$13900(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->removeBorderFromSearchFaceObj()V

    return-void
.end method

.method public onGenericMotionEnter(I)V
    .locals 11

    const/4 v8, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x1

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$21;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$11900(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->getGenericMotionTitleFocus()I

    move-result v2

    if-ne v2, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$21;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$12000(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v6

    invoke-virtual {v6, v2, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateTitleBorder(II)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$21;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$12200(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$21;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$12100(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->getGenericMotionFocus()I

    move-result v7

    invoke-virtual {v6, v7, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateBorder(II)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$21;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$12300(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->setGenericMotionTitleFocus(I)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$21;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$12400(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->setGenericMotionFocus(I)V

    if-nez p1, :cond_0

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x2

    new-array v0, v6, [I

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$21;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$12500(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->getImageAndVideoCount([I)V

    aget v1, v0, v10

    aget v5, v0, v9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-ne v1, v9, :cond_4

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$21;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$12600(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0391

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    if-ne v5, v9, :cond_5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$21;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$12800(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0396

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$21;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$13400(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$21;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$13500(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a01ed

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    if-le v1, v9, :cond_2

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$21;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$12700(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0392

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    if-le v5, v9, :cond_3

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$21;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$12900(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0397

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_6
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$21;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$13000(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->getCount(I)I

    move-result v6

    if-le v6, v9, :cond_7

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$21;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$13100(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0394

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$21;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    invoke-static {v8}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$13200(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->getCount(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    :cond_7
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$21;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$13300(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0393

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3
.end method
