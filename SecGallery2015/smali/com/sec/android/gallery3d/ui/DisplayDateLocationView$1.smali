.class Lcom/sec/android/gallery3d/ui/DisplayDateLocationView$1;
.super Landroid/os/Handler;
.source "DisplayDateLocationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView$1;->this$0:Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView$1;->this$0:Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;

    const/4 v1, 0x1

    # invokes: Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->hide(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->access$000(Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;Z)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView$1;->this$0:Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    # setter for: Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->locationStrForGL:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->access$102(Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView$1;->this$0:Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView$1;->this$0:Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;

    # getter for: Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->locationStrForGL:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->access$100(Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->setLocationTextResource(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->access$200(Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView$1;->this$0:Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;

    # invokes: Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->setDisplayDateLocationInfoPosition()V
    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->access$300(Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView$1;->this$0:Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/DisplayDateLocationView;->invalidate()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
