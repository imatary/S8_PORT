.class Lcom/sec/android/gallery3d/ui/CropView$1;
.super Lcom/sec/android/gallery3d/ui/SynchronizedHandler;
.source "CropView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/ui/CropView;-><init>(Lcom/sec/android/gallery3d/app/CropImage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/CropView;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/ui/CropView;Lcom/sec/android/gallery3d/ui/GLRoot;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/CropView$1;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/sec/android/gallery3d/ui/GLRoot;)V

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
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/gallery3d/ui/CropView$DetectFaceTask;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/CropView$DetectFaceTask;->updateFaces()V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView$1;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    # invokes: Lcom/sec/android/gallery3d/ui/CropView;->updateZoomButtonStatus()V
    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/CropView;->access$100(Lcom/sec/android/gallery3d/ui/CropView;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView$1;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    # getter for: Lcom/sec/android/gallery3d/ui/CropView;->mActivity:Lcom/sec/android/gallery3d/app/CropImage;
    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/CropView;->access$200(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/app/CropImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/CropImage;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v0}, Lcom/sec/samsung/gallery/util/BoostHelper;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/samsung/gallery/util/BoostHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/BoostHelper;->acquireAGIFBoost()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView$1;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    # getter for: Lcom/sec/android/gallery3d/ui/CropView;->mActivity:Lcom/sec/android/gallery3d/app/CropImage;
    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/CropView;->access$200(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/app/CropImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/CropImage;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v0}, Lcom/sec/samsung/gallery/util/BoostHelper;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/samsung/gallery/util/BoostHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/BoostHelper;->releaseAGIFBoost()V

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
