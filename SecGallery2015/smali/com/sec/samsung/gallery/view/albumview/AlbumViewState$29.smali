.class Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$29;
.super Ljava/lang/Object;
.source "AlbumViewState.java"

# interfaces
.implements Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$29;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addItemToSelectionManager(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$29;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    return-object v0
.end method

.method public isMaxCountSelectedInPickerMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public varargs onEventHandleItemClick([Ljava/lang/Object;)Z
    .locals 3

    const/4 v1, 0x0

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$29;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->selectAlbum(IZ)Z

    move-result v1

    return v1
.end method

.method public startDetailView(II)V
    .locals 0

    return-void
.end method

.method public startPhotoSplitView(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$29;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$5500(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;I)V

    return-void
.end method
