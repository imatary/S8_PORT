.class Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter$1;
.super Ljava/lang/Object;
.source "PagersAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->getItem(I)Landroid/app/Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->galleryPickerFragment:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;)Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->galleryPickerFragment:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;)Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isUtraPowerSavingMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->setColorForDoneText(I)V

    :cond_0
    return-void
.end method
