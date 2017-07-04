.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;
.super Lcom/sec/android/gallery3d/glcore/GlHandler;
.source "GlComposeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onCreate(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Lcom/sec/android/gallery3d/glcore/GlRootView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/glcore/GlHandler;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;)V

    return-void
.end method


# virtual methods
.method public onMessage(ILjava/lang/Object;III)V
    .locals 15

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onMessageExtra(III)V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateSize(I)V

    goto :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    goto :goto_0

    :pswitch_3
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v4, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->update(II)Z

    goto :goto_0

    :pswitch_4
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->updateCheckBox(I)V

    goto :goto_0

    :pswitch_5
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setCheckBoxVisibility()V

    goto :goto_0

    :pswitch_6
    const/4 v12, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v12, v4, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    :cond_1
    if-eqz v12, :cond_0

    iget-object v4, v12, Lcom/sec/android/gallery3d/glcore/GlObject;->mMatrixValEx:[F

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v4, v12, Lcom/sec/android/gallery3d/glcore/GlObject;->mMatrixValEx:[F

    const/4 v5, 0x0

    const v6, -0x3f79999a    # -4.2f

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)F

    move-result v7

    mul-float/2addr v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    goto :goto_0

    :pswitch_7
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v4, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setFocusBorderVisible(II)V

    goto :goto_0

    :pswitch_8
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move/from16 v0, p3

    invoke-static {v4, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;I)V

    goto :goto_0

    :pswitch_9
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move/from16 v0, p3

    invoke-static {v4, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;I)V

    goto :goto_0

    :pswitch_a
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v4, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setAlbumFocusBorderVisible(II)V

    goto :goto_0

    :pswitch_b
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    goto/16 :goto_0

    :pswitch_c
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->resetLayout()V

    goto/16 :goto_0

    :pswitch_d
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v4, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setTitleFocusBorderVisible(II)V

    goto/16 :goto_0

    :pswitch_e
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    goto/16 :goto_0

    :pswitch_f
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$900()I

    move-result v5

    invoke-static {v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$802(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;I)I

    goto/16 :goto_0

    :pswitch_10
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v4, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setLocationFocusBorderVisible(II)V

    goto/16 :goto_0

    :pswitch_11
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v4, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setFocusBorderVisibleTitleButton1(II)V

    goto/16 :goto_0

    :pswitch_12
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v4, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setFocusBorderVisibleTitleButton2(II)V

    goto/16 :goto_0

    :pswitch_13
    if-eqz p5, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$1000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$1000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->resume()V

    goto/16 :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnPenSelectionListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnPenSelectionListener;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnPenSelectionListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnPenSelectionListener;

    const/4 v5, 0x0

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-interface {v4, v0, v1, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnPenSelectionListener;->onPenSelection(IIZ)Z

    goto/16 :goto_0

    :pswitch_14
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$1100()I

    move-result v5

    move/from16 v0, p3

    invoke-virtual {v4, v5, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setDualScreenFocusVisibility(II)V

    invoke-static/range {p3 .. p3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$1102(I)I

    goto/16 :goto_0

    :pswitch_15
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$1200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    goto/16 :goto_0

    :pswitch_16
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/16 v5, 0x19

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/glcore/GlHandler;->hasMessage(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/16 v5, 0x19

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/glcore/GlHandler;->removeMessage(I)V

    :cond_3
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v5, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/16 v6, 0x19

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x1f4

    invoke-virtual/range {v5 .. v11}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessageDelayed(IIIIJ)V

    goto/16 :goto_0

    :pswitch_17
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$1300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    goto/16 :goto_0

    :pswitch_18
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$1400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    goto/16 :goto_0

    :pswitch_19
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-virtual {v4, v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->updateShareIcon(III)V

    goto/16 :goto_0

    :pswitch_1a
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->updateEventTitle(I)V

    goto/16 :goto_0

    :pswitch_1b
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v4, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->updateHLVideoIcon(II)V

    goto/16 :goto_0

    :pswitch_1c
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDeleteAnim:Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;

    if-eqz v4, :cond_4

    const-string/jumbo v4, "GlComposeView"

    const-string/jumbo v5, "cancelDeleteAnimation"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDeleteAnim:Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->cancelAnimation()V

    :cond_4
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$1502(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Z)Z

    goto/16 :goto_0

    :pswitch_1d
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->startEnlargeAnimation()V

    goto/16 :goto_0

    :pswitch_1e
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-boolean v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAlbumTitleVisible:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setAlbumTitleVisibility(Z)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setReorderIconVisibility(Z)V

    goto/16 :goto_0

    :pswitch_1f
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$1600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    goto/16 :goto_0

    :pswitch_20
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$1700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    invoke-virtual {v4, v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->processGoToTopButton(Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;F)V

    goto/16 :goto_0

    :pswitch_21
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getTopObject()Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    move-result-object v14

    if-eqz v14, :cond_5

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v5, v14, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getScrollForIndex(I)F

    move-result v4

    :goto_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    sub-float v13, v4, v5

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v4, v14, v13}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->applyPreviousScroll(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;F)V

    goto/16 :goto_0

    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    :pswitch_22
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->processGoToBottom(Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_14
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_1b
        :pswitch_0
        :pswitch_22
    .end packed-switch
.end method
