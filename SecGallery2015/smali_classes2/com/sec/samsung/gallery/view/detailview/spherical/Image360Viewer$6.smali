.class Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$6;
.super Ljava/lang/Object;
.source "Image360Viewer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->setHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$6;->this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v2, 0x0

    return v2

    :pswitch_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$6;->this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->access$1600(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;Z)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$6;->this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->access$1700(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$6;->this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->access$1800(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;)Landroid/widget/LinearLayout;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$6;->this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->access$1800(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setNextFocusRightId(I)V

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$6;->this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->access$800(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$6;->this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->access$1900(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$6;->this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "CaptureImage"

    sget-object v4, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$6;->this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "CaptureImage"

    sget-object v4, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
