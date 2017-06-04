.class Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$11;
.super Ljava/lang/Object;
.source "PhotoSplitViewEventHandle.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnStatusChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$11;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChange(III)V
    .locals 3

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$11;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$1000(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    move-result-object v1

    iput p2, v1, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentLayout:I

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEasyMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$11;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$600(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    const-string/jumbo v2, "photoViewColCnt"

    invoke-static {v1, v2, p2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$11;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$600(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    const-string/jumbo v2, "is_split_view_expanded"

    if-ne p3, v0, :cond_1

    :goto_1
    invoke-static {v1, v2, v0}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$11;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # invokes: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->startAlbumChoiceActivity(I)V
    invoke-static {v0, p2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$1700(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xc -> :sswitch_1
    .end sparse-switch
.end method
