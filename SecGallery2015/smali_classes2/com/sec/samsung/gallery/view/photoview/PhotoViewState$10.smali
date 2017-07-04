.class Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$10;
.super Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;
.source "PhotoViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->handleFilterPhotos()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

.field final synthetic val$mediaFilterType:Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

.field final synthetic val$mediaSet:Lcom/sec/android/gallery3d/data/MediaSet;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;Landroid/content/Context;Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$10;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iput-object p3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$10;->val$mediaFilterType:Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    iput-object p4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$10;->val$mediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMediaNotEmpty()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$10;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$10;->val$mediaFilterType:Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$10;->val$mediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$4400(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;Lcom/sec/android/gallery3d/data/MediaSet;)V

    return-void
.end method
