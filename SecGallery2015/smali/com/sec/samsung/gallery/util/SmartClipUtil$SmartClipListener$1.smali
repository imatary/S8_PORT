.class Lcom/sec/samsung/gallery/util/SmartClipUtil$SmartClipListener$1;
.super Ljava/lang/Object;
.source "SmartClipUtil.java"

# interfaces
.implements Lcom/sec/samsung/gallery/lib/libinterface/SmartClipDataHelperInterface$onClipDataListenerForDetailView;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/util/SmartClipUtil$SmartClipListener;->getClipDataListener()Lcom/sec/samsung/gallery/lib/libinterface/SmartClipDataHelperInterface$onClipDataListenerForDetailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/util/SmartClipUtil$SmartClipListener;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/util/SmartClipUtil$SmartClipListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/util/SmartClipUtil$SmartClipListener$1;->this$0:Lcom/sec/samsung/gallery/util/SmartClipUtil$SmartClipListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/SmartClipUtil$SmartClipListener$1;->this$0:Lcom/sec/samsung/gallery/util/SmartClipUtil$SmartClipListener;

    invoke-static {v0}, Lcom/sec/samsung/gallery/util/SmartClipUtil$SmartClipListener;->access$100(Lcom/sec/samsung/gallery/util/SmartClipUtil$SmartClipListener;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetaAreaRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/SmartClipUtil$SmartClipListener$1;->this$0:Lcom/sec/samsung/gallery/util/SmartClipUtil$SmartClipListener;

    invoke-static {v0}, Lcom/sec/samsung/gallery/util/SmartClipUtil$SmartClipListener;->access$000(Lcom/sec/samsung/gallery/util/SmartClipUtil$SmartClipListener;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/util/SmartClipUtil$SmartClipListener$1;->this$0:Lcom/sec/samsung/gallery/util/SmartClipUtil$SmartClipListener;

    invoke-static {v1}, Lcom/sec/samsung/gallery/util/SmartClipUtil$SmartClipListener;->access$200(Lcom/sec/samsung/gallery/util/SmartClipUtil$SmartClipListener;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/util/SmartClipUtil$SmartClipListener$1;->this$0:Lcom/sec/samsung/gallery/util/SmartClipUtil$SmartClipListener;

    invoke-static {v2}, Lcom/sec/samsung/gallery/util/SmartClipUtil$SmartClipListener;->access$300(Lcom/sec/samsung/gallery/util/SmartClipUtil$SmartClipListener;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lcom/sec/samsung/gallery/util/SmartClipUtil;->access$400(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/SmartClipUtil$SmartClipListener$1;->this$0:Lcom/sec/samsung/gallery/util/SmartClipUtil$SmartClipListener;

    invoke-static {v0}, Lcom/sec/samsung/gallery/util/SmartClipUtil$SmartClipListener;->access$100(Lcom/sec/samsung/gallery/util/SmartClipUtil$SmartClipListener;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAvailableExtract()Z
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/util/SmartClipUtil$SmartClipListener$1;->this$0:Lcom/sec/samsung/gallery/util/SmartClipUtil$SmartClipListener;

    invoke-static {v1}, Lcom/sec/samsung/gallery/util/SmartClipUtil$SmartClipListener;->access$000(Lcom/sec/samsung/gallery/util/SmartClipUtil$SmartClipListener;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/util/SmartClipUtil$SmartClipListener$1;->this$0:Lcom/sec/samsung/gallery/util/SmartClipUtil$SmartClipListener;

    invoke-static {v1}, Lcom/sec/samsung/gallery/util/SmartClipUtil$SmartClipListener;->access$100(Lcom/sec/samsung/gallery/util/SmartClipUtil$SmartClipListener;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isImage()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/SmartClipUtil$SmartClipListener$1;->this$0:Lcom/sec/samsung/gallery/util/SmartClipUtil$SmartClipListener;

    invoke-static {v0}, Lcom/sec/samsung/gallery/util/SmartClipUtil$SmartClipListener;->access$100(Lcom/sec/samsung/gallery/util/SmartClipUtil$SmartClipListener;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
