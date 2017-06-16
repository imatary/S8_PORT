.class Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$20;
.super Ljava/lang/Object;
.source "StateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->cleanUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$20;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$20;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mAdjustment:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$1502(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$20;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mEffectState:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$1602(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$20;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mToneState:Lcom/sec/android/mimage/photoretouching/lpe/states/AppState;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$1702(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Lcom/sec/android/mimage/photoretouching/lpe/states/AppState;)Lcom/sec/android/mimage/photoretouching/lpe/states/AppState;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$20;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mAdvanceState:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$1802(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$20;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mDrawingState:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$1902(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$20;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mSuperImposeState:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$902(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$20;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mRootView:Landroid/widget/RelativeLayout;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$2002(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$20;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mSeekBarParent:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$2102(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$20;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mSeekBar:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$502(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;)Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$20;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mPortraitState:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$2202(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$20;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mParametricBottomButtonsParent:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$2302(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$20;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mSideButtonsParent:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$2402(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$20;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mParametricRangeSeekBarParent:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$2502(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$20;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mWhiteBalanceParent:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$2602(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$20;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mWhiteBalanceSeekBarParent:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$2702(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$20;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mWhiteBalanceTemperatureValueParent:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$402(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$20;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mWhiteBalanceModeName:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$302(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$20;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mTemperatureSeekBar:Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$2802(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;)Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;

    return-void
.end method
