.class Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager$3;
.super Landroid/os/Handler;
.source "ActionBarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mActionBar:Landroid/app/ActionBar;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;)Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->hide()V

    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager$3;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mActionBar:Landroid/app/ActionBar;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;)Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mTmpState:I
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;)I

    move-result v0

    const/16 v1, 0x100

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mServiceId:I
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->hide()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->mTmpState:I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;)I

    move-result v1

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->updateActionBar(I)V
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->show()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
