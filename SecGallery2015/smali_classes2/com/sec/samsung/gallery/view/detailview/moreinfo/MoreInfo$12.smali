.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$12;
.super Ljava/lang/Object;
.source "MoreInfo.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$12;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 9

    :try_start_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$12;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    invoke-static {v6}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->access$400(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    check-cast v6, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getScreenSize(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)Landroid/graphics/Point;

    move-result-object v3

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$12;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    invoke-static {v6}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->access$400(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$12;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    invoke-static {v6}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->access$400(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    check-cast v6, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-eq v6, v7, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$12;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    invoke-static {v6}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->access$400(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    check-cast v6, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isScaleWindow(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$12;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->access$902(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;I)I

    :goto_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$12;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    invoke-static {v6}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->access$900(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)I

    move-result v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$12;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    invoke-static {v7}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->access$800(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)I

    move-result v7

    if-eq v6, v7, :cond_3

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$12;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    invoke-static {v6}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->access$2300(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$12;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    invoke-static {v6}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->access$2300(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$12;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    invoke-static {v6}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->access$2300(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$12;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    invoke-static {v6}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->access$2300(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    :goto_1
    return-void

    :cond_4
    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget v6, v3, Landroid/graphics/Point;->y:I

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$12;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    invoke-static {v7}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->access$400(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b019d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    if-ge v6, v7, :cond_5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$12;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->access$902(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v6, "MoreInfo"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    :try_start_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$12;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->access$902(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
