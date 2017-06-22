.class Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7$1;
.super Ljava/lang/Object;
.source "Advance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;II)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7$1;->val$width:I

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7$1;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->tmpOutputBuffer:[I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)[I

    move-result-object v1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7$1;->val$width:I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7$1;->val$height:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->updateSeekbarColor([III)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mSeekBarHue:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$2600(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->invalidate()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mSeekBarSaturation:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$2700(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->invalidate()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mSeekBarLuminance:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$2800(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->invalidate()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$7;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    iget v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mCurrState:I

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->updateColorTurningSeekBar(I)V

    return-void
.end method
