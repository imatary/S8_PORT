.class Lcom/sec/samsung/gallery/view/detailview/DetailViewState$32;
.super Ljava/lang/Object;
.source "DetailViewState.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->showDisplayDateLocationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$32;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$32;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$28100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    const-string/jumbo v3, "display_date_and_location"

    invoke-static {v2, v3, v0}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$32;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$32;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v3

    if-eqz v3, :cond_1

    :goto_0
    # setter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mIsDisplayDateLocationView:Z
    invoke-static {v2, v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$28202(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$32;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->createDisplayDateLocationView()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$32;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->updateDisplayDateLocationView()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$28300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$32;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$28400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    const-string/jumbo v1, "DALT"

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLogForStatus(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$32;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$28500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    const-string/jumbo v2, "display_date_and_location"

    invoke-static {v0, v2, v1}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$32;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$28600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    const-string/jumbo v2, "DALT"

    invoke-static {v0, v2, v1}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLogForStatus(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1
.end method
