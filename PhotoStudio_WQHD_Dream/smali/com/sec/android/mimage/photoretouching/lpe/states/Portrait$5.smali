.class Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$5;
.super Ljava/lang/Object;
.source "Portrait.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->updateTextRedEye()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$5;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$5;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mEffectType:I
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)I

    move-result v2

    const/16 v3, 0x2001

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$5;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getMainState()I

    move-result v2

    const/16 v3, 0x2000

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$5;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mRedEyetextView:Landroid/view/View;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0e03bf

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$5;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getSeekBar()Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getSeekbarColor()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$5;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00aa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$5;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c009a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const v3, 0x3e99999a    # 0.3f

    invoke-static {v0, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setStrokeForText(Landroid/widget/TextView;IF)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$5;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mRedEyetextView:Landroid/view/View;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$5;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00a9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
