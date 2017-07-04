.class Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;
.super Ljava/lang/Object;
.source "DetailViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/detailview/FastOptionView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public delayHideBarsTime()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    const/16 v1, 0x1194

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$10800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;I)V

    return-void
.end method

.method public enableFastOptionTimeout(Z)V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$3500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$3500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$3500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$3500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x1194

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method public onItemSelected(I)Z
    .locals 19

    sget-object v13, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v13}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$11000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)I

    move-result v13

    const/4 v14, -0x1

    if-le v13, v14, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$11100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v13

    invoke-static {v13}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$11000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)I

    move-result v13

    invoke-virtual {v9, v13}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->getStateAndRunningStateWithId(I)Lcom/sec/android/gallery3d/eventshare/EventShareData;

    move-result-object v3

    if-eqz v3, :cond_1

    iget v13, v3, Lcom/sec/android/gallery3d/eventshare/EventShareData;->requestState:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_1

    iget v13, v3, Lcom/sec/android/gallery3d/eventshare/EventShareData;->runningType:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    sget-object v13, Lcom/sec/samsung/gallery/features/FeatureNames;->IsChn:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v13}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$11200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v13

    const v14, 0x7f0a007e

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;II)V

    :goto_0
    const/4 v13, 0x0

    :goto_1
    return v13

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$11300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v13

    const v14, 0x7f0a007d

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v13

    if-nez v13, :cond_2

    const-string/jumbo v13, "DetailViewState"

    const-string/jumbo v14, "onItemSelected() mCurrentPhoto is null"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    goto :goto_1

    :cond_2
    const/4 v13, 0x2

    move/from16 v0, p1

    if-eq v0, v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$11400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_a

    const/4 v13, 0x1

    move/from16 v0, p1

    if-eq v0, v13, :cond_3

    const/4 v13, 0x3

    move/from16 v0, p1

    if-ne v0, v13, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move/from16 v0, p1

    invoke-static {v13, v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$11402(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;I)I

    :cond_4
    invoke-static {}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$11500()Z

    move-result v13

    if-nez v13, :cond_6

    const/16 v13, 0xa

    move/from16 v0, p1

    if-eq v0, v13, :cond_5

    const/16 v13, 0xb

    move/from16 v0, p1

    if-ne v0, v13, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$11702(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Z)Z

    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$11700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v13

    if-nez v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    move-result-object v13

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->hideFastEditContainerView()V

    :cond_7
    const-string/jumbo v13, "DetailViewState"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "onItemSelected() id: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :cond_8
    :goto_2
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v13

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$11700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v13

    if-nez v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/glcore/GlRootView;->requestFocus()Z

    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    const/16 v14, 0x1194

    invoke-static {v13, v14}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$10800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;I)V

    const/4 v13, 0x0

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$11400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$11400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)I

    move-result v13

    const/4 v14, 0x3

    if-ne v13, v14, :cond_4

    :cond_b
    const-string/jumbo v13, "DetailViewState"

    const-string/jumbo v14, "onItemSelected() mSelectedFastOptionViewItem is not -1"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->isFastOptionViewShowing()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-static {}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$11500()Z

    move-result v13

    if-nez v13, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v14}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->createFastEditContainerView(Lcom/sec/android/gallery3d/data/MediaItem;)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    const/16 v14, 0x1194

    invoke-static {v13, v14}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$10800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;I)V

    sget-object v13, Lcom/sec/samsung/gallery/features/FeatureNames;->UseShareTagImage:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v13}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v13

    if-eqz v13, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v13

    const-wide/32 v14, 0x400000

    invoke-virtual {v13, v14, v15}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v13

    if-eqz v13, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v14}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-virtual/range {v13 .. v16}, Lcom/sec/android/gallery3d/ui/PhotoView;->updateEnvironmentTagView(Lcom/sec/android/gallery3d/data/MediaItem;ZZ)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$11600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v13

    const-string/jumbo v14, "display_date_and_location"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v14}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-virtual/range {v13 .. v16}, Lcom/sec/android/gallery3d/ui/PhotoView;->updateDisplayDateLocationView(Lcom/sec/android/gallery3d/data/MediaItem;ZZ)V

    :cond_f
    const/4 v13, 0x0

    goto/16 :goto_1

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v14}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$11800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Lcom/sec/android/gallery3d/data/MediaItem;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$11900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v13

    const-string/jumbo v14, "DTVW"

    const-string/jumbo v15, "Favorite"

    invoke-static {v13, v14, v15}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$12000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    goto/16 :goto_2

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v13

    if-eqz v13, :cond_10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/ui/PhotoView;->getPositionController()Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/ui/PositionController;->existAnimationListener()Z

    move-result v13

    if-nez v13, :cond_11

    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$12100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v13

    if-eqz v13, :cond_12

    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$12102(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Z)Z

    goto/16 :goto_2

    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/Model;

    move-result-object v13

    instance-of v13, v13, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    if-eqz v13, :cond_13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/Model;

    move-result-object v13

    check-cast v13, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->isLoading()Z

    move-result v13

    if-nez v13, :cond_8

    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v13

    if-nez v13, :cond_14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$9002(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Z)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$12200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Z)V

    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$702(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Z)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v13

    if-eqz v13, :cond_15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/gallery3d/ui/FilmStripView;->setLockTouchEvent(Z)V

    :cond_15
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$3300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setReloadRequiredOnResume(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v13

    instance-of v13, v13, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    if-eqz v13, :cond_16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$7100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-result-object v13

    const/4 v14, 0x1

    sget v15, Lcom/sec/samsung/gallery/core/Event;->EVENT_REMOVE_FROM_EVENTVIEW:I

    const/16 v16, 0x1

    invoke-virtual/range {v13 .. v16}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showDeleteDialog(ZIZ)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "4012"

    invoke-static {v13, v14}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_16
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$7100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showDeleteDialog(Z)V

    goto :goto_3

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$12300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v13

    if-eqz v13, :cond_17

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$12400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;

    move-result-object v13

    if-nez v13, :cond_17

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$3500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x7d

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_17

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$3500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/os/Handler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v14}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$3500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/os/Handler;

    move-result-object v14

    const/16 v15, 0x7d

    invoke-virtual {v14, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$12500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v13

    const-string/jumbo v14, "DTVW"

    const-string/jumbo v15, "Auto adjust"

    invoke-static {v13, v14, v15}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_17
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$12600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    move-result-object v13

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v14}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->isAutoAdjustOn(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$12700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v14

    if-eqz v5, :cond_18

    const-string/jumbo v13, "AutoAdjustOff"

    :goto_4
    sget-object v15, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v14, v13, v15}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    goto/16 :goto_2

    :cond_18
    const-string/jumbo v13, "AutoAdjustOn"

    goto :goto_4

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$12800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    move-result-object v13

    if-eqz v13, :cond_19

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$12800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->isAnimating()Z

    move-result v13

    if-nez v13, :cond_8

    :cond_19
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    const/16 v14, 0x5a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v15}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$12900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;ILcom/sec/android/gallery3d/data/MediaItem;)V

    goto/16 :goto_2

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v13

    if-nez v13, :cond_1a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$12200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Z)V

    :cond_1a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    const/4 v14, -0x1

    invoke-static {v13, v14}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$13002(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v13

    if-eqz v13, :cond_1b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v13

    invoke-static {v13}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isTooSmallForCrop(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v13

    if-nez v13, :cond_1b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v14}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$13100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Lcom/sec/android/gallery3d/data/MediaItem;)V

    goto/16 :goto_2

    :cond_1b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$13200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v13

    const v14, 0x7f0a020d

    invoke-static {v13, v14}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto/16 :goto_2

    :pswitch_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$12200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v13

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$13002(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v14}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$13300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Lcom/sec/android/gallery3d/data/MediaItem;)V

    goto/16 :goto_2

    :pswitch_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v13

    if-nez v13, :cond_1c

    invoke-static {}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8400()Z

    move-result v13

    if-nez v13, :cond_1c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$12200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Z)V

    :cond_1c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v13

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    const/4 v14, -0x1

    invoke-static {v13, v14}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$13002(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$3300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPhotoEditorLaunchRequestStatus(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$13400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_1d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v14

    const-wide/16 v16, 0x200

    and-long v14, v14, v16

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-nez v13, :cond_1d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$13500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    goto/16 :goto_2

    :cond_1d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v13

    instance-of v13, v13, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;

    if-eqz v13, :cond_1e

    const v13, 0x7f120299

    invoke-static {v13}, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->isModalDownloadNeeded(I)Z

    move-result v13

    if-eqz v13, :cond_1e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$13600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v13

    invoke-static {v13}, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->getInstance(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Lcom/sec/android/gallery3d/remote/slink/SLinkManager;

    move-result-object v13

    const v14, 0x7f120299

    invoke-virtual {v13, v14}, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->enqueueMenuItemAfterModalDownload(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$13800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v13

    invoke-static {v13}, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->getInstance(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Lcom/sec/android/gallery3d/remote/slink/SLinkManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v14}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$13700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v15}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$4700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaItemArrayList()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->getModalDownloadIntent(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v4

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$13900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v13

    const/16 v14, 0x30b

    invoke-virtual {v13, v4, v14}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v2

    const-string/jumbo v13, "DetailViewState"

    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_1e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/data/MediaItem;->getSefFileType()I

    move-result v10

    invoke-static {}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$14000()Z

    move-result v13

    if-eqz v13, :cond_1f

    const/16 v13, 0xa50

    if-ne v10, v13, :cond_1f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$7100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v14}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$14100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v15}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->checkCloud360Content(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "4011"

    invoke-static {v13, v14}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1f
    invoke-static {}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$14200()Z

    move-result v13

    if-eqz v13, :cond_20

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$14300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;

    move-result-object v13

    if-eqz v13, :cond_20

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$14300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v15}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v15

    const-wide/32 v16, 0x8000000

    invoke-virtual/range {v15 .. v17}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v15

    invoke-virtual {v13, v14, v15}, Lcom/sec/samsung/gallery/view/detailview/PhotoEditorFinishManager;->sendMessageForBind(IZ)V

    :cond_20
    sget-object v13, Lcom/sec/samsung/gallery/features/FeatureNames;->UseBlurImageToPhotoEditor:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v13}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v13

    if-eqz v13, :cond_21

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v14}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/Model;

    move-result-object v14

    invoke-interface {v14}, Lcom/sec/samsung/gallery/view/detailview/Model;->getCurrentBitmap()Landroid/graphics/Bitmap;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v15}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/sec/android/gallery3d/ui/PhotoView;->drawBlurImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    :cond_21
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$7100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->imageEdit()V

    goto :goto_5

    :pswitch_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v13

    if-nez v13, :cond_22

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$12200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Z)V

    :cond_22
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v13

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$14400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_24

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v13

    const/4 v14, 0x4

    if-ne v13, v14, :cond_23

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    move-result-object v13

    if-eqz v13, :cond_24

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    move-result-object v13

    const v14, 0x7f02017d

    invoke-virtual {v13, v14}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->isExistMenu(I)Z

    move-result v13

    if-nez v13, :cond_24

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    move-result-object v13

    const v14, 0x7f0200b0

    invoke-virtual {v13, v14}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->isExistMenu(I)Z

    move-result v13

    if-nez v13, :cond_24

    :cond_23
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$14500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    goto/16 :goto_2

    :cond_24
    sget-object v13, Lcom/sec/samsung/gallery/features/FeatureNames;->UseVideoAutoPlay:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v13}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v13

    if-eqz v13, :cond_25

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/Model;

    move-result-object v13

    if-eqz v13, :cond_25

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/Model;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v14}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$14600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/sec/samsung/gallery/view/detailview/Model;->getScreenNail(Lcom/sec/android/gallery3d/ui/GLRoot;)Lcom/sec/android/gallery3d/ui/ScreenNail;

    move-result-object v13

    if-eqz v13, :cond_25

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/Model;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v14}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$14700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/sec/samsung/gallery/view/detailview/Model;->getScreenNail(Lcom/sec/android/gallery3d/ui/GLRoot;)Lcom/sec/android/gallery3d/ui/ScreenNail;

    move-result-object v13

    invoke-interface {v13}, Lcom/sec/android/gallery3d/ui/ScreenNail;->isAnimatable()Z

    move-result v13

    if-eqz v13, :cond_25

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/Model;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v14}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$14800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/sec/samsung/gallery/view/detailview/Model;->getScreenNail(Lcom/sec/android/gallery3d/ui/GLRoot;)Lcom/sec/android/gallery3d/ui/ScreenNail;

    move-result-object v13

    invoke-interface {v13}, Lcom/sec/android/gallery3d/ui/ScreenNail;->stopAnimation()V

    :cond_25
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$14900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v14}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sec/samsung/gallery/controller/StartVideoEditor;->start(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$15000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v13

    const-string/jumbo v14, "DTVW"

    const-string/jumbo v15, "Video Editor"

    invoke-static {v13, v14, v15}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "4011"

    invoke-static {v13, v14}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$15100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v14}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sec/samsung/gallery/controller/VideoTrim;->start(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v13

    if-nez v13, :cond_26

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$12200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Z)V

    :cond_26
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v13

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$13002(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v13

    instance-of v13, v13, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;

    if-eqz v13, :cond_27

    const v13, 0x7f120296

    invoke-static {v13}, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->isModalDownloadNeeded(I)Z

    move-result v13

    if-eqz v13, :cond_27

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$15200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v13

    invoke-static {v13}, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->getInstance(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Lcom/sec/android/gallery3d/remote/slink/SLinkManager;

    move-result-object v13

    const v14, 0x7f120296

    invoke-virtual {v13, v14}, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->enqueueMenuItemAfterModalDownload(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$15400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v13

    invoke-static {v13}, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->getInstance(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Lcom/sec/android/gallery3d/remote/slink/SLinkManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v14}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$15300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v15}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$4700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaItemArrayList()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->getModalDownloadIntent(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v4

    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$15500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v13

    const/16 v14, 0x30b

    invoke-virtual {v13, v4, v14}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v2

    const-string/jumbo v13, "DetailViewState"

    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_27
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$15700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v13

    const-string/jumbo v14, "START_COLLAGE_APP"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$15600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    sget-object v17, Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;->START_COLLAGE_MAKER_FOR_DETAILVIEW:Lcom/sec/samsung/gallery/controller/StartCollageCmd$CollageCmdType;

    aput-object v17, v15, v16

    const/16 v16, 0x2

    aput-object v12, v15, v16

    invoke-virtual {v13, v14, v15}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v13

    if-nez v13, :cond_28

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$12200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Z)V

    :cond_28
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v13

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$13002(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$15800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v13

    const-string/jumbo v14, "GECA"

    invoke-static {v13, v14}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v14}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$15900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Lcom/sec/android/gallery3d/data/MediaItem;)V

    goto/16 :goto_2

    :pswitch_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v13

    if-nez v13, :cond_29

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$12200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Z)V

    :cond_29
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v13

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$16000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v13

    invoke-static {v13}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "5039"

    invoke-static {v13, v14}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x4

    new-array v8, v13, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v14}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$16100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v14

    aput-object v14, v8, v13

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v8, v13

    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v8, v13

    const/4 v13, 0x3

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v8, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$16200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v13

    invoke-static {v13}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v13

    const-string/jumbo v14, "SCLOUD_RECYCLEBIN_FILE_PROCESSING"

    invoke-virtual {v13, v14, v8}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v13

    if-nez v13, :cond_2a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$12200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Z)V

    :cond_2a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v13

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$16300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v13

    invoke-static {v13}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "5036"

    invoke-static {v13, v14}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$7100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-result-object v13

    const/4 v14, 0x1

    sget v15, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_DELETE_DIALOG_IN_DETAILVIEW_FROM_RECYCLEBIN:I

    invoke-virtual {v13, v14, v15}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showDeleteDialog(ZI)V

    goto/16 :goto_2

    :pswitch_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$16400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "4013"

    invoke-static {v13, v14}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$12400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/AutoAdjust;

    move-result-object v13

    if-nez v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$3500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x7d

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$16500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;

    move-result-object v13

    if-eqz v13, :cond_2b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$16500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;->show(Z)V

    :cond_2b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$16600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v13

    invoke-static {v13}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isMobileKeyboardCovered(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_2c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$16700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v14}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$16800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a04fb

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$16900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0a04da

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v13, 0x0

    goto/16 :goto_1

    :cond_2c
    const/4 v13, 0x6

    new-array v8, v13, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v14}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$17000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v14

    aput-object v14, v8, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v14}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v14

    aput-object v14, v8, v13

    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v8, v13

    const/4 v13, 0x3

    const/4 v14, 0x0

    aput-object v14, v8, v13

    const/4 v13, 0x4

    const/4 v14, 0x0

    aput-object v14, v8, v13

    const/4 v13, 0x5

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v8, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$17100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v13

    invoke-static {v13}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v13

    const-string/jumbo v14, "START_VISION_INTELLIGENCE"

    invoke-virtual {v13, v14, v8}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$17200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v13

    invoke-static {v13}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_2d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$17400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v13

    invoke-static {v13}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v14}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$17300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v15}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/Model;

    move-result-object v15

    invoke-interface {v15}, Lcom/sec/samsung/gallery/view/detailview/Model;->getCurrentMediaItem()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->downloadOriginalFile(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;ZZ)V

    goto/16 :goto_2

    :cond_2d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$17500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a00cc

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$17600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a0095

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v13, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v14}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$17700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f0a02f4

    new-instance v15, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16$1;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;)V

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_9
        :pswitch_a
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_b
        :pswitch_c
        :pswitch_7
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_11
    .end packed-switch
.end method

.method public onShowFilmStripViewWithAlpha()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/BackgroundView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/BackgroundView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/BackgroundView;->showWithAlpha()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/BackgroundView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/BackgroundView;->requestLayout()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->showWithAlpha()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$16;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->requestLayout()V

    :cond_1
    return-void
.end method
