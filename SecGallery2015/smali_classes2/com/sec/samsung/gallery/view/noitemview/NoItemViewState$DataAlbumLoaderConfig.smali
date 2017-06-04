.class Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$DataAlbumLoaderConfig;
.super Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;
.source "NoItemViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataAlbumLoaderConfig"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$DataAlbumLoaderConfig;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$DataAlbumLoaderConfig;->mScanFirstOnly:Z

    const-string/jumbo v0, "NoItemViewState-Album"

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$DataAlbumLoaderConfig;->mCurrentViewStateName:Ljava/lang/String;

    return-void
.end method
