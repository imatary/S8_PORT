.class Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton$2;
.super Ljava/lang/Object;
.source "AgifMyButton.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->onkey()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton$2;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0x42

    if-eq p2, v0, :cond_0

    const/16 v0, 0x17

    if-ne p2, v0, :cond_1

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    return v2

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton$2;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->mBtnThumnail:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->access$100(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setPressed(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton$2;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->isAddButton:Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->access$200(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton$2;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->launchAgifAdder()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton$2;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->playPausesubscriber:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$PlayPauseSubscriber;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->access$000(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$PlayPauseSubscriber;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton$2;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->index:I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->access$300(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$PlayPauseSubscriber;->playPauseAgif(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
