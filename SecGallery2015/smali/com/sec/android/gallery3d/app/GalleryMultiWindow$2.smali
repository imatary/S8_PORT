.class Lcom/sec/android/gallery3d/app/GalleryMultiWindow$2;
.super Ljava/lang/Object;
.source "GalleryMultiWindow.java"

# interfaces
.implements Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowStateChangeInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->setMultiWindowModeChangeListener(Lcom/sec/android/gallery3d/app/MultiWindowModeChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/app/GalleryMultiWindow;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/app/GalleryMultiWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$2;->this$0:Lcom/sec/android/gallery3d/app/GalleryMultiWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModeChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$2;->this$0:Lcom/sec/android/gallery3d/app/GalleryMultiWindow;

    # getter for: Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mMultiWindowModeChangeListener:Lcom/sec/android/gallery3d/app/MultiWindowModeChangeListener;
    invoke-static {v0}, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->access$600(Lcom/sec/android/gallery3d/app/GalleryMultiWindow;)Lcom/sec/android/gallery3d/app/MultiWindowModeChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$2;->this$0:Lcom/sec/android/gallery3d/app/GalleryMultiWindow;

    # getter for: Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mMultiWindowModeChangeListener:Lcom/sec/android/gallery3d/app/MultiWindowModeChangeListener;
    invoke-static {v0}, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->access$600(Lcom/sec/android/gallery3d/app/GalleryMultiWindow;)Lcom/sec/android/gallery3d/app/MultiWindowModeChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/gallery3d/app/MultiWindowModeChangeListener;->onMultiWindowModeChanged(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$2;->this$0:Lcom/sec/android/gallery3d/app/GalleryMultiWindow;

    # invokes: Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->setMultiWindowMode()V
    invoke-static {v0}, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->access$700(Lcom/sec/android/gallery3d/app/GalleryMultiWindow;)V

    return-void
.end method

.method public onSizeChanged(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public onZoneChanged(I)V
    .locals 0

    return-void
.end method
