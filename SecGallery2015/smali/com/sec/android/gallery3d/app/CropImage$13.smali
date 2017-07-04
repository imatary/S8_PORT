.class Lcom/sec/android/gallery3d/app/CropImage$13;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/LibGLRootView$UpdateBackscreenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/app/CropImage;->createUpdateBackScreenListener()Lcom/sec/android/gallery3d/glcore/LibGLRootView$UpdateBackscreenListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/app/CropImage;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/app/CropImage;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/CropImage$13;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getTimeDelay()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage$13;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/CropImage;->getMultiWindow()Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;->getMultiWindowActivity()Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;->isMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x190

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public updateInPauseState()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage$13;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-static {v0}, Lcom/sec/android/gallery3d/app/CropImage;->access$2800(Lcom/sec/android/gallery3d/app/CropImage;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/CropImage$13;->getTimeDelay()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
