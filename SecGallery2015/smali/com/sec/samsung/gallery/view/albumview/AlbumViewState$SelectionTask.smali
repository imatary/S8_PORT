.class Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionTask;
.super Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;
.source "AlbumViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionTask"
.end annotation


# instance fields
.field final mSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

.field private final mType:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;Landroid/content/Context;Lcom/sec/android/gallery3d/data/OnProgressListener;Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;I)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionTask;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-direct {p0, p2, p3, p5}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/OnProgressListener;I)V

    iput-object p4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionTask;->mType:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionTask;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionTask;->mSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionTask;->doInBackground([Lcom/sec/android/gallery3d/data/MediaSet;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/sec/android/gallery3d/data/MediaSet;)Ljava/lang/Void;
    .locals 10

    const-wide/16 v8, 0x1

    const/4 v7, 0x0

    aget-object v1, p1, v7

    sget-object v4, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$31;->$SwitchMap$com$sec$samsung$gallery$view$albumview$AlbumViewState$SelectionType:[I

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionTask;->mType:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    const-string/jumbo v4, "AlbumViewState"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknow type : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionTask;->mType:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 v4, 0x0

    return-object v4

    :pswitch_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionTask;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionTask;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionTask;->mSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    # invokes: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->toggleSelectProcess(Landroid/content/Context;Lcom/sec/android/gallery3d/ui/SelectionManager;Lcom/sec/android/gallery3d/data/MediaSet;)V
    invoke-static {v4, v5, v6, v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$13200(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;Landroid/content/Context;Lcom/sec/android/gallery3d/ui/SelectionManager;Lcom/sec/android/gallery3d/data/MediaSet;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionTask;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v8, v9, v7}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionTask;->increaseProgress(JZ)V

    const/4 v4, 0x1

    invoke-virtual {p0, v8, v9, v4}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionTask;->increaseProgress(JZ)V

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v3

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceAlbumViewGUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isSelectableAlbum(Lcom/sec/android/gallery3d/data/MediaSet;)Z

    move-result v4

    if-nez v4, :cond_1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionTask;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionTask;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionTask;->mSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    # invokes: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->addSelectProcess(Landroid/content/Context;Lcom/sec/android/gallery3d/ui/SelectionManager;Lcom/sec/android/gallery3d/data/MediaSet;)V
    invoke-static {v4, v5, v6, v3}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$13300(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;Landroid/content/Context;Lcom/sec/android/gallery3d/ui/SelectionManager;Lcom/sec/android/gallery3d/data/MediaSet;)V

    goto :goto_2

    :pswitch_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionTask;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionTask;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionTask;->mSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    # invokes: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->addSelectProcess(Landroid/content/Context;Lcom/sec/android/gallery3d/ui/SelectionManager;Lcom/sec/android/gallery3d/data/MediaSet;)V
    invoke-static {v4, v5, v6, v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$13300(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;Landroid/content/Context;Lcom/sec/android/gallery3d/ui/SelectionManager;Lcom/sec/android/gallery3d/data/MediaSet;)V

    goto :goto_0

    :pswitch_3
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionTask;->mSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    # invokes: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->removeSelectProcess(Lcom/sec/android/gallery3d/ui/SelectionManager;Lcom/sec/android/gallery3d/data/MediaSet;)V
    invoke-static {v4, v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$13400(Lcom/sec/android/gallery3d/ui/SelectionManager;Lcom/sec/android/gallery3d/data/MediaSet;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
