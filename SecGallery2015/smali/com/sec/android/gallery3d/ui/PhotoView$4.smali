.class Lcom/sec/android/gallery3d/ui/PhotoView$4;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Lcom/sec/android/gallery3d/ui/GLView$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/ui/PhotoView;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/ui/GLRoot;Lcom/sec/android/gallery3d/ui/GestureRecognizer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/PhotoView;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/ui/PhotoView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$4;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$4;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;
    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1800(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "DTVW"

    const-string/jumbo v2, "Device to TV"

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$4;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mListener:Lcom/sec/android/gallery3d/ui/PhotoView$Listener;
    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1700(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/PhotoView$Listener;->onDeviceToTVIconClick()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$4;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mDeviceToTvIconView:Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;
    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1900(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/DeviceToTVIconView;->onGenericMotionCancel()V

    return-void
.end method
