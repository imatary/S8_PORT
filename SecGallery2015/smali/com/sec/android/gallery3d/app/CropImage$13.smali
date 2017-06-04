.class Lcom/sec/android/gallery3d/app/CropImage$13;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Lcom/sec/android/gallery3d/app/MultiWindowModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/app/CropImage;
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


# virtual methods
.method public onMultiWindowModeChanged(Z)V
    .locals 2

    const-string/jumbo v0, "CropImage"

    const-string/jumbo v1, "CropImage onMultiWindowModeChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage$13;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    iget-object v0, v0, Lcom/sec/android/gallery3d/app/CropImage;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setMultiWindow(Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage$13;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    # getter for: Lcom/sec/android/gallery3d/app/CropImage;->mIsActive:Z
    invoke-static {v0}, Lcom/sec/android/gallery3d/app/CropImage;->access$1300(Lcom/sec/android/gallery3d/app/CropImage;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage$13;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    # getter for: Lcom/sec/android/gallery3d/app/CropImage;->mIsActivityReCreated:Z
    invoke-static {v0}, Lcom/sec/android/gallery3d/app/CropImage;->access$3000(Lcom/sec/android/gallery3d/app/CropImage;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage$13;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/CropImage;->onPause()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/CropImage$13;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/CropImage;->onResume()V

    :cond_0
    return-void
.end method
