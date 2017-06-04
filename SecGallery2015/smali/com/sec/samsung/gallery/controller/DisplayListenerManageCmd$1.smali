.class Lcom/sec/samsung/gallery/controller/DisplayListenerManageCmd$1;
.super Ljava/lang/Object;
.source "DisplayListenerManageCmd.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/DisplayListenerManageCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/DisplayListenerManageCmd;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/DisplayListenerManageCmd;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/DisplayListenerManageCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/DisplayListenerManageCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/DisplayListenerManageCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/DisplayListenerManageCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/DisplayListenerManageCmd;->mStateManager:Lcom/sec/android/gallery3d/app/StateManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/DisplayListenerManageCmd;->access$000(Lcom/sec/samsung/gallery/controller/DisplayListenerManageCmd;)Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/app/StateManager;->onDisplayAdded(I)V

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/DisplayListenerManageCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/DisplayListenerManageCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/DisplayListenerManageCmd;->mGalleryStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/DisplayListenerManageCmd;->access$200(Lcom/sec/samsung/gallery/controller/DisplayListenerManageCmd;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/DisplayListenerManageCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/DisplayListenerManageCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/DisplayListenerManageCmd;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/DisplayListenerManageCmd;->access$100(Lcom/sec/samsung/gallery/controller/DisplayListenerManageCmd;)Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setDisplayRotation(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/DisplayListenerManageCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/DisplayListenerManageCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/DisplayListenerManageCmd;->mStateManager:Lcom/sec/android/gallery3d/app/StateManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/DisplayListenerManageCmd;->access$000(Lcom/sec/samsung/gallery/controller/DisplayListenerManageCmd;)Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/app/StateManager;->onDisplayChanged(I)V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/DisplayListenerManageCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/DisplayListenerManageCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/DisplayListenerManageCmd;->mStateManager:Lcom/sec/android/gallery3d/app/StateManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/DisplayListenerManageCmd;->access$000(Lcom/sec/samsung/gallery/controller/DisplayListenerManageCmd;)Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/app/StateManager;->onDisplayRemoved(I)V

    return-void
.end method
