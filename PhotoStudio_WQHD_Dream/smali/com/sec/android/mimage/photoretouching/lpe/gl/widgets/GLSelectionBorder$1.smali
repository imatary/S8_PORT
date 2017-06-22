.class Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder$1;
.super Landroid/os/Handler;
.source "GLSelectionBorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_6

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineAnim:Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mSelectionInProgress:Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mSelectionMode:I
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;)I

    move-result v0

    const v1, 0x10004

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mSelectionMode:I
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;)I

    move-result v0

    const v1, 0x10003

    if-ne v0, v1, :cond_7

    :cond_0
    const-wide/16 v0, 0xa

    :goto_0
    invoke-virtual {p0, v3, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder$1;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mSelectionInProgress:Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineOffset:I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;)I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mLineOffset:I
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->access$302(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;I)I

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mSelectionMode:I
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;)I

    move-result v0

    const v1, 0x10005

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mSelectionMode:I
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;)I

    move-result v0

    const v1, 0x10008

    if-ne v0, v1, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->mSelectionInProgress:Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->updateLines()V
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;)V

    :cond_5
    monitor-exit v2

    :cond_6
    return-void

    :cond_7
    const-wide/16 v0, 0x32

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
