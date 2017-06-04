.class Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForPick$1;
.super Ljava/lang/Object;
.source "PhotoSplitActionBarForPick.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForPick;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForPick;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForPick;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForPick$1;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForPick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForPick$1;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForPick;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForPick;->access$000(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForPick;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04001d

    const/4 v2, 0x0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForPick$1;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForPick;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForPick;->mMainActionBar:Landroid/app/ActionBar;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForPick;->access$100(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForPick;)Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    :cond_0
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForPick$1;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForPick;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForPick;->mMainActionBar:Landroid/app/ActionBar;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForPick;->access$200(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForPick;)Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    return-void
.end method
