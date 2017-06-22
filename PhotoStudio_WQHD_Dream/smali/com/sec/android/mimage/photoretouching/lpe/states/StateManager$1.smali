.class Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$1;
.super Landroid/os/Handler;
.source "StateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const v7, 0x7f0c00a9

    const v3, 0x7f0c009e

    const v6, 0x7f0c009d

    const/4 v5, 0x2

    const/4 v4, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->MSG_UPDATE_SEEKBAR_TEXT_COLOR:I
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$000()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mState:I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)I

    move-result v1

    and-int/lit8 v1, v1, -0x10

    const/16 v2, 0x820

    if-ne v1, v2, :cond_2

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mWhiteBalanceModeName:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mWhiteBalanceTemperatureValueParent:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mWhiteBalanceModeName:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->setStrokeColor(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mWhiteBalanceTemperatureValueParent:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->setStrokeColor(I)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mWhiteBalanceModeName:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    invoke-virtual {v1, v5}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->setStrokeWidth(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mWhiteBalanceTemperatureValueParent:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    invoke-virtual {v1, v5}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->setStrokeWidth(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mState:I
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)I

    move-result v2

    add-int/lit16 v2, v2, -0x821

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setWBTextForSubMode(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mState:I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)I

    move-result v1

    const/16 v2, 0x826

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v1, v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setWBSeekBarVisibility(Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mWhiteBalanceModeName:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00aa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mWhiteBalanceTemperatureValueParent:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00aa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mWhiteBalanceModeName:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->setStrokeColor(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mWhiteBalanceTemperatureValueParent:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->setStrokeColor(I)V

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mSeekBar:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$500(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mSeekBar:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$500(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->updateSeekbarColor(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getMainState()I

    move-result v1

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mPortraitState:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mPortraitState:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->updateTextRedEye()V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mState:I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)I

    move-result v1

    and-int/lit16 v1, v1, -0x100

    const/16 v2, 0x800

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mState:I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)I

    move-result v1

    const/16 v2, 0x806

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v1, v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekVisibility(Z)V

    goto/16 :goto_1
.end method
