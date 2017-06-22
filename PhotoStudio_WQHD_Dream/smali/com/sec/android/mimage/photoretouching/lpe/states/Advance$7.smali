.class Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;
.super Ljava/lang/Object;
.source "Advance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->applyAdvancePreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

.field final synthetic val$blc:I

.field final synthetic val$info:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;

.field final synthetic val$stateId:I


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;ILcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->val$stateId:I

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->val$info:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;

    iput p4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->val$blc:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v25

    if-nez v25, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v2

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v3

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v12

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v13

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v14

    mul-int v2, v13, v14

    new-array v15, v2, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    array-length v5, v12

    invoke-static {v12, v2, v15, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->val$stateId:I

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->val$stateId:I

    and-int/lit8 v2, v2, -0x10

    const v3, 0x90010

    if-ne v2, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->updateCurveColorDependOnImage([III)V
    invoke-static {v2, v15, v13, v14}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$2400(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;[III)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->tmpOutputBuffer:[I
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)[I

    move-result-object v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    array-length v3, v15

    invoke-static {v15, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->tmpOutputBuffer:[I
    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$302(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;[I)[I

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$2500(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->isLongClicked()Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$2500(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->tmpOutputBuffer:[I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)[I

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getCurrLayer()I

    move-result v5

    invoke-virtual {v2, v3, v13, v14, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->setImageData([IIII)V

    :cond_3
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v13, v14}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;II)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurveView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$1600(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->getParametricBound()[I

    move-result-object v4

    const/16 v2, 0xc

    new-array v7, v2, [F

    const/16 v2, 0x14

    new-array v9, v2, [F

    const/16 v2, 0x100

    new-array v10, v2, [I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->val$stateId:I

    const v3, 0x90011

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->val$info:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->getCurveInfoAsIntArray()[I

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    iget-object v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v6

    const/4 v8, 0x6

    invoke-static/range {v2 .. v10}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->getCurveParameters(I[I[III[FI[F[I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mListOfCurveObjects:[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$1900(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mListOfCurveObjects:[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$1900(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->val$stateId:I

    const v5, 0x90011

    sub-int/2addr v3, v5

    aget-object v2, v2, v3

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v10}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;->update(I[I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mListOfCurveObjects:[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$1900(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->val$stateId:I

    const v5, 0x90011

    sub-int/2addr v3, v5

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->val$info:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->isModified()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;->updateModifiedState(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurveView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$1600(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->setFittingPoints([F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurveView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$1600(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->setCurveParameters([F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mListOfCurveObjects:[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$1900(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;

    move-result-object v16

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->applyToneCurve([III[I[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;)V
    invoke-static/range {v11 .. v16}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$2100(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;[III[I[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;)V

    goto/16 :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mListOfCurveObjects:[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$1900(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->val$stateId:I

    const v5, 0x90011

    sub-int/2addr v3, v5

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;->getNumberOfFittingPoints()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mListOfCurveObjects:[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$1900(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->val$stateId:I

    const v5, 0x90011

    sub-int/2addr v3, v5

    aget-object v2, v2, v3

    check-cast v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PointCurveObject;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PointCurveObject;->getHandlerPos()[F

    move-result-object v26

    if-lez v22, :cond_1

    if-eqz v26, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurveView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$1600(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;

    move-result-object v2

    move/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->getNormalizedHandlerPos(I[F)[F

    move-result-object v7

    const/16 v2, 0x14

    new-array v9, v2, [F

    const/16 v2, 0x100

    new-array v10, v2, [I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->val$stateId:I

    const v3, 0x90011

    sub-int v16, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->val$info:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->getCurveInfoAsIntArray()[I

    move-result-object v17

    const/4 v2, 0x4

    new-array v0, v2, [I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v20

    move-object/from16 v21, v7

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    invoke-static/range {v16 .. v24}, Lcom/sec/android/mimage/photoretouching/jni/Engine;->getCurveParameters(I[I[III[FI[F[I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mListOfCurveObjects:[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$1900(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->val$stateId:I

    const v5, 0x90011

    sub-int/2addr v3, v5

    aget-object v2, v2, v3

    move/from16 v0, v22

    invoke-virtual {v2, v0, v10}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;->update(I[I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurveView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$1600(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->setFittingPoints([F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurveView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$1600(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->setCurveParameters([F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurveView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$1600(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;

    move-result-object v2

    move/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->updateHandlerBuffer(I[F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mListOfCurveObjects:[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$1900(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;

    move-result-object v16

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->applyToneCurve([III[I[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;)V
    invoke-static/range {v11 .. v16}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$2100(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;[III[I[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;)V

    goto/16 :goto_1

    :pswitch_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->val$blc:I

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->val$blc:I

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-static {v12, v15, v13, v14, v2}, Lcom/samsung/android/saiv/imageprocessing/PhotoEnhance;->Blc([I[IIIF)I

    goto/16 :goto_1

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mIsApplyBW:Z
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$2200(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)Z

    move-result v17

    move-object/from16 v18, v12

    move-object/from16 v19, v15

    move/from16 v20, v13

    move/from16 v21, v14

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->applyColorTuning(Z[I[III)V
    invoke-static/range {v16 .. v21}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$2300(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;Z[I[III)V

    goto/16 :goto_1

    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->tmpOutputBuffer:[I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)[I

    move-result-object v3

    const/4 v5, 0x0

    array-length v6, v15

    invoke-static {v15, v2, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x90011
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
