.class Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget$ThumbHandler;
.super Landroid/os/Handler;
.source "GLToolThumbWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ThumbHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget$ThumbHandler;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v2, 0x1

    const/4 v5, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget$ThumbHandler;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->MSG_LONG_CLICK:I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget$ThumbHandler;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->access$500(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget$ThumbHandler;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mBgView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget$ThumbHandler;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mState:I
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget$ThumbHandler;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mIsMoving:Z
    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->access$702(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;Z)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget$ThumbHandler;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->touchedView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->access$502(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLBaseView;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget$ThumbHandler;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->MSG_MOVE:I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->access$800(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [I

    move-object v6, v0

    check-cast v6, [I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget$ThumbHandler;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;

    aget v1, v6, v5

    aget v2, v6, v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget$ThumbHandler;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mThumbSize:I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->access$900(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget$ThumbHandler;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mThumbSize:I
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->access$900(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;)I

    move-result v4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->setSize(IIIIZ)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget$ThumbHandler;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->mBgView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToolThumbWidget;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageButton;->createBuffer()V

    goto :goto_0
.end method
