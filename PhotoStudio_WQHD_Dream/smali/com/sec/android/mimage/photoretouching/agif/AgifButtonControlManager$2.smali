.class Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$2;
.super Ljava/lang/Object;
.source "AgifButtonControlManager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->init(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$2;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v4

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$2;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->isTouchDown:Z
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$402(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;Z)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$2;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->isScrolling:Z
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$302(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;Z)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$2;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->isTouchDown:Z
    invoke-static {v0, v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$402(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;Z)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$2;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->isScrolling:Z
    invoke-static {v0, v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$302(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;Z)Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$2$1;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$2$1;-><init>(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$2;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
