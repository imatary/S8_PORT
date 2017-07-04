.class Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick$3$1;
.super Ljava/lang/Object;
.source "PhotoSplitActionBarForMultiPick.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick$3;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick$3;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick$3$1;->this$1:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick$3$1;->this$1:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick$3;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick$3;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->access$1400(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    const-string/jumbo v1, "private_move_do_not_show"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick$3$1;->this$1:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick$3;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick$3;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->access$1500(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "MULTIPLE_PICKER_SELECTION_COMPLETED"

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick$3$1;->this$1:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick$3;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick$3;->val$params:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
