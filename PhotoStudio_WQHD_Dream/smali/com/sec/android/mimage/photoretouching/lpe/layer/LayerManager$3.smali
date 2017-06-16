.class Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;
.super Ljava/lang/Object;
.source "LayerManager.java"

# interfaces
.implements Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$OnDecodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->addLayer(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

.field final synthetic val$async:Z

.field final synthetic val$data:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;

.field final synthetic val$filePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Ljava/lang/String;Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->val$filePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;

    iput-boolean p4, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->val$async:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isExited()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mExitApp:Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Z

    move-result v0

    return v0
.end method

.method public onDecodeFailed(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3$4;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3$4;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->runOnUiThread(Ljava/lang/Runnable;)V

    sget-boolean v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->ENABLE_LAYERS:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->invalidInput(I)V
    invoke-static {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$1500(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;I)V

    :cond_0
    return-void
.end method

.method public onDecodeFinished(Landroid/graphics/Bitmap;)V
    .locals 12

    const/high16 v11, 0x20000

    const/16 v10, 0x1000

    const/4 v9, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isFinishing()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mExitApp:Z
    invoke-static {v5, v9}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$602(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    new-instance v6, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3$1;

    invoke-direct {v6, p0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;)V

    invoke-virtual {v5, v6}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v5, -0x1000000

    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    const/4 v5, 0x0

    invoke-virtual {v0, p1, v7, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-result-object v5

    iget-boolean v5, v5, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->initCardView:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-result-object v5

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mHistoryAdapter:Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-result-object v5

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mHistoryAdapter:Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->getCount()I

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mServiceId:I
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)I

    move-result v5

    if-ne v5, v8, :cond_2

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-result-object v5

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mHistoryAdapter:Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v5, p1, v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->updateData(Landroid/graphics/Bitmap;II)V

    :cond_2
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->val$filePath:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getDateTakenFromFilePath(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->val$filePath:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getFavoriteFromFilePath(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getNextLayerId()I

    move-result v2

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;

    invoke-virtual {v5, v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->setId(I)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayers:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Landroid/util/SparseArray;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;

    invoke-virtual {v5, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mBasicUI:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$800(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;

    invoke-virtual {v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBasicUI;->setData(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;)V

    iget-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->val$async:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mCurrLayer:I
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$900(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)I

    move-result v5

    if-ne v5, v8, :cond_5

    :cond_3
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->getLayerId()I

    move-result v6

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mCurrLayer:I
    invoke-static {v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$902(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;I)I

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->getLayerId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->setLayer(I)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mServiceId:I
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)I

    move-result v5

    if-eq v5, v10, :cond_4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mServiceId:I
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)I

    move-result v5

    if-eq v5, v11, :cond_4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->updateMenuUndoRedo()V

    :cond_4
    sget-boolean v5, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->ENABLE_LAYERS:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayerLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$1100(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->getLayerId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->setSelection(I)V

    :cond_5
    sget-boolean v5, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->ENABLE_LAYERS:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayerLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$1100(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;

    invoke-virtual {v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLayerLayout;->addLayer(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;)V

    :cond_6
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayerListener:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$LayerListener;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$1200(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$LayerListener;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayerListener:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$LayerListener;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$1200(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$LayerListener;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->getLayerId()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$LayerListener;->onLayerAdded(I)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->updateActionBar()V

    :cond_7
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mServiceId:I
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)I

    move-result v5

    if-ne v5, v8, :cond_8

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    new-instance v6, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3$2;

    invoke-direct {v6, p0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3$2;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_8
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    invoke-virtual {v5, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->applyDummyBitmap(Landroid/graphics/Bitmap;)V

    iget-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->val$async:Z

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mServiceId:I
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)I

    move-result v5

    if-eq v5, v8, :cond_9

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mServiceId:I
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)I

    move-result v5

    if-ne v5, v10, :cond_a

    :cond_9
    new-instance v5, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3$3;

    invoke-direct {v5, p0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3$3;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;)V

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3$3;->start()V

    :cond_a
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mServiceId:I
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)I

    move-result v5

    if-ne v5, v11, :cond_c

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->openAdjustment()V

    :cond_b
    :goto_1
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mIsImageLoaded:Z
    invoke-static {v5, v9}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$1402(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Z)Z

    goto/16 :goto_0

    :cond_c
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mServiceId:I
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)I

    move-result v5

    const/high16 v6, 0x80000

    if-eq v5, v6, :cond_d

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mServiceId:I
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)I

    move-result v5

    const v6, 0x80009

    if-ne v5, v6, :cond_b

    :cond_d
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->openSuperImpose()V

    goto :goto_1
.end method
