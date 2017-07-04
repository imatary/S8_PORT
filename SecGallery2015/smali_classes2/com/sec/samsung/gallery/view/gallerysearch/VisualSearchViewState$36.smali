.class Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$36;
.super Ljava/lang/Object;
.source "VisualSearchViewState.java"

# interfaces
.implements Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$36;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

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

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$36;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$19500(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    move-result-object v0

    return-object v0
.end method

.method public isMaxCountSelectedInPickerMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public varargs onEventHandleItemClick([Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    aget-object v0, p1, v2

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    aget-object v2, p1, v3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$36;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    invoke-static {v2, v0, v1, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$19600(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;Lcom/sec/android/gallery3d/data/MediaItem;IZ)V

    return v3
.end method

.method public startDetailView(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$36;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    invoke-static {v0, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$19700(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;I)V

    return-void
.end method

.method public startPhotoSplitView(I)V
    .locals 0

    return-void
.end method
