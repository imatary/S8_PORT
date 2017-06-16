.class Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$7;
.super Ljava/lang/Object;
.source "Adjustment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->startInitialAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mMode:I
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$1400(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    const/4 v1, -0x1

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->setMode(I)V
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$1500(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    const/high16 v1, 0x20000

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->sendResponseToExecutor(ILcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mInitialized:Z
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$1302(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;Z)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void
.end method
