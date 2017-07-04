.class Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;
.super Ljava/lang/Object;
.source "MapMarkerThumbnailListAdapter.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->setThumbImageViewListener(Landroid/view/View;Lcom/sec/android/gallery3d/data/MediaItem;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

.field final synthetic val$currentItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;Lcom/sec/android/gallery3d/data/MediaItem;ILandroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    iput-object p2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->val$currentItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iput p3, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->val$position:I

    iput-object p4, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 32

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const/16 v27, 0x0

    :goto_1
    return v27

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    move-object/from16 v27, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    invoke-static/range {v27 .. v29}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$702(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;J)J

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->isTalkBackEnabled()Z

    move-result v27

    if-eqz v27, :cond_1

    const/16 v27, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$600(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Z

    move-result v27

    if-nez v27, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$700(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)J

    move-result-wide v30

    sub-long v28, v28, v30

    const-wide/16 v30, 0x190

    cmp-long v27, v28, v30

    if-ltz v27, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$800(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/sec/samsung/gallery/util/SettingsUtil;->getPenHovering(Landroid/content/Context;)Z

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$800(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/sec/samsung/gallery/util/SettingsUtil;->getFingerAirView(Landroid/content/Context;)Z

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$800(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/sec/samsung/gallery/util/SettingsUtil;->getMouseHovering(Landroid/content/Context;)Z

    move-result v19

    if-nez v20, :cond_2

    if-nez v15, :cond_2

    if-eqz v19, :cond_5

    :cond_2
    const/16 v17, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$800(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/sec/samsung/gallery/util/SettingsUtil;->getFingerAirViewInformationPreview(Landroid/content/Context;)Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$800(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/sec/samsung/gallery/util/SettingsUtil;->getMouseHoveringInformationPreview(Landroid/content/Context;)Z

    move-result v18

    if-nez v14, :cond_3

    if-eqz v18, :cond_6

    :cond_3
    const/16 v16, 0x1

    :goto_3
    if-eqz v17, :cond_4

    if-nez v16, :cond_7

    :cond_4
    const/16 v27, 0x0

    goto/16 :goto_1

    :cond_5
    const/16 v17, 0x0

    goto :goto_2

    :cond_6
    const/16 v16, 0x0

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$900(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Z

    move-result v27

    if-eqz v27, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-static/range {v27 .. v28}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$1002(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;Z)Z

    const/16 v27, 0x0

    goto/16 :goto_1

    :cond_8
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$800(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/content/Context;

    move-result-object v27

    const/16 v28, 0x2

    sget v29, Lcom/sec/samsung/gallery/lib/factory/PointerIconWrapper;->POINTER_ICON_HOVER_POINTER_MORE:I

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-static {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/lib/factory/PointerIconWrapper;->setIcon(Landroid/content/Context;Landroid/view/View;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$1100(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/widget/ImageView;

    move-result-object v27

    if-eqz v27, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$1200(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v27

    check-cast v27, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$1100(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/widget/ImageView;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$1102(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    move-object/from16 v27, v0

    new-instance v28, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$800(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/content/Context;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static/range {v27 .. v28}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$1102(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->val$currentItem:Lcom/sec/android/gallery3d/data/MediaItem;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v27

    const/16 v28, 0x4

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->val$currentItem:Lcom/sec/android/gallery3d/data/MediaItem;

    move-object/from16 v27, v0

    const-wide/16 v28, 0x200

    invoke-virtual/range {v27 .. v29}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v27

    if-eqz v27, :cond_13

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->val$currentItem:Lcom/sec/android/gallery3d/data/MediaItem;

    move-object/from16 v27, v0

    const-wide/16 v28, 0x200

    invoke-virtual/range {v27 .. v29}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v27

    if-eqz v27, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->val$currentItem:Lcom/sec/android/gallery3d/data/MediaItem;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$1300(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v26

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->val$currentItem:Lcom/sec/android/gallery3d/data/MediaItem;

    move-object/from16 v28, v0

    invoke-static/range {v27 .. v28}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$1400(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;Lcom/sec/android/gallery3d/data/MediaItem;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v25

    const v27, 0x3f3851ec    # 0.72f

    const/16 v28, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->val$currentItem:Lcom/sec/android/gallery3d/data/MediaItem;

    move-object/from16 v27, v0

    const-wide/16 v28, 0x200

    invoke-virtual/range {v27 .. v29}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v27

    if-eqz v27, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$1500(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v12

    :cond_b
    :goto_6
    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$1100(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/widget/ImageView;

    move-result-object v27

    new-instance v28, Landroid/widget/AbsListView$LayoutParams;

    const/16 v29, 0x190

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v30, v30, v31

    const/high16 v31, 0x43c80000    # 400.0f

    mul-float v30, v30, v31

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    invoke-direct/range {v28 .. v30}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual/range {v27 .. v28}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$1100(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/widget/ImageView;

    move-result-object v27

    const v28, 0x7f02021f

    invoke-virtual/range {v27 .. v28}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$1100(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/widget/ImageView;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v23, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v27, -0x2

    const/16 v28, -0x2

    move-object/from16 v0, v23

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v27, 0x800003

    move/from16 v0, v27

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$1200(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v27

    check-cast v27, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$1100(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/widget/ImageView;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$1100(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/widget/ImageView;

    move-result-object v27

    new-instance v28, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$1;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$1;-><init>(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;)V

    invoke-virtual/range {v27 .. v28}, Landroid/widget/ImageView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$1100(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/widget/ImageView;

    move-result-object v27

    new-instance v28, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$2;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7$2;-><init>(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;)V

    invoke-virtual/range {v27 .. v28}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v22, Landroid/graphics/Rect;

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v21, v0

    fill-array-data v21, :array_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->val$imageView:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->getLocationInWindow([I)V

    const/16 v27, 0x0

    aget v27, v21, v27

    const/16 v28, 0x1

    aget v28, v21, v28

    const/16 v29, 0x0

    aget v29, v21, v29

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v30

    add-int v29, v29, v30

    const/16 v30, 0x1

    aget v30, v21, v30

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v31

    add-int v30, v30, v31

    move-object/from16 v0, v22

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$800(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getActionBarSize(Landroid/content/Context;)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$800(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/content/Context;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0b0196

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$800(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/content/Context;

    move-result-object v27

    check-cast v27, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getScreenSize(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)Landroid/graphics/Point;

    move-result-object v24

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v13, :cond_16

    move-object/from16 v0, v22

    iput v13, v0, Landroid/graphics/Rect;->left:I

    :cond_c
    :goto_7
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    add-int v28, v13, v7

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_17

    add-int v27, v13, v7

    move/from16 v0, v27

    move-object/from16 v1, v22

    iput v0, v1, Landroid/graphics/Rect;->top:I

    :cond_d
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$1100(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/widget/ImageView;

    move-result-object v27

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/ImageView;->setX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$1100(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/widget/ImageView;

    move-result-object v27

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/ImageView;->setY(F)V

    goto/16 :goto_0

    :catch_0
    move-exception v11

    const-string/jumbo v27, "MapMarkerThmListAdapter"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "RemoteException : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v11}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->val$currentItem:Lcom/sec/android/gallery3d/data/MediaItem;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/gallery3d/data/MediaItem;->requestImage(I)Lcom/sec/android/gallery3d/util/ThreadPool$Job;

    move-result-object v27

    sget-object v28, Lcom/sec/android/gallery3d/util/ThreadPool;->JOB_CONTEXT_STUB:Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;

    invoke-interface/range {v27 .. v28}, Lcom/sec/android/gallery3d/util/ThreadPool$Job;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/graphics/Bitmap;

    goto/16 :goto_5

    :cond_f
    if-eqz v26, :cond_12

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/16 v27, 0x190

    move/from16 v0, v27

    if-ge v9, v0, :cond_10

    const/16 v9, 0x190

    :cond_10
    const/16 v27, 0x258

    move/from16 v0, v27

    if-ge v8, v0, :cond_11

    const/16 v8, 0x258

    :cond_11
    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v0, v9, v8, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v26

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$1600(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v12

    goto/16 :goto_6

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->val$currentItem:Lcom/sec/android/gallery3d/data/MediaItem;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$1300(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v12

    if-eqz v12, :cond_b

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/16 v27, 0x190

    move/from16 v0, v27

    if-ge v9, v0, :cond_14

    const/16 v9, 0x190

    :cond_14
    const/16 v27, 0x258

    move/from16 v0, v27

    if-ge v8, v0, :cond_15

    const/16 v8, 0x258

    :cond_15
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-static {v12, v9, v8, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v12

    goto/16 :goto_6

    :cond_16
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v27, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v28, v0

    sub-int v28, v28, v13

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_c

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v27, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->width()I

    move-result v28

    sub-int v27, v27, v28

    sub-int v27, v27, v13

    move/from16 v0, v27

    move-object/from16 v1, v22

    iput v0, v1, Landroid/graphics/Rect;->left:I

    goto/16 :goto_7

    :cond_17
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v28, v0

    sub-int v28, v28, v13

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_d

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v27, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v28

    sub-int v27, v27, v28

    sub-int v27, v27, v13

    move/from16 v0, v27

    move-object/from16 v1, v22

    iput v0, v1, Landroid/graphics/Rect;->top:I

    goto/16 :goto_8

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$1002(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$900(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Z

    move-result v27

    if-nez v27, :cond_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$800(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/content/Context;

    move-result-object v27

    const/16 v28, 0x2

    sget v29, Lcom/sec/samsung/gallery/lib/factory/PointerIconWrapper;->POINTER_ICON_HOVER_POINTER_DEFAULT:I

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-static {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/lib/factory/PointerIconWrapper;->setIcon(Landroid/content/Context;Landroid/view/View;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$1100(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/widget/ImageView;

    move-result-object v27

    if-eqz v27, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$1200(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v27

    check-cast v27, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$1100(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/widget/ImageView;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$1102(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    goto/16 :goto_0

    :catch_1
    move-exception v11

    const-string/jumbo v27, "MapMarkerThmListAdapter"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "RemoteException : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v11}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
