.class Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$1;
.super Ljava/lang/Thread;
.source "Adjustment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->onAnimationStart(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$animation:Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$rotate:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$rotation:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget v5, v5, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$hFlip:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget v6, v6, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$vFlip:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget v7, v7, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$width:I

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget v8, v8, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$height:I

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget v9, v9, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$previewWidth:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget v10, v10, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$previewHeight:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget v11, v11, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$centerX:F

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget v12, v12, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$centerY:F

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget v13, v13, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$perType:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget v14, v14, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$perAngle:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v15, v15, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$newBuffer:[I

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->prepareCropImage(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;IFIIFFIIFFIF[I)V
    invoke-static/range {v1 .. v15}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$3100(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;IFIIFFIIFFIF[I)V

    monitor-exit v16

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
