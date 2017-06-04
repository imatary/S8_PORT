.class Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;
.super Ljava/lang/Object;
.source "AlbumViewEventHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$AlbumViewPersonPick;,
        Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$AlbumViewMultiPick;,
        Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$AlbumViewPick;,
        Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$IAlbumViewMode;
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private final mAlbumViewMultiPick:Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$AlbumViewMultiPick;

.field private final mAlbumViewPersonPick:Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$AlbumViewPersonPick;

.field private final mAlbumViewPick:Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$AlbumViewPick;

.field private final mAlbumViewState:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

.field private mMode:Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$IAlbumViewMode;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;->mAlbumViewState:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    new-instance v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$AlbumViewPick;

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$AlbumViewPick;-><init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$1;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;->mAlbumViewPick:Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$AlbumViewPick;

    new-instance v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$AlbumViewMultiPick;

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$AlbumViewMultiPick;-><init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$1;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;->mAlbumViewMultiPick:Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$AlbumViewMultiPick;

    new-instance v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$AlbumViewPersonPick;

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$AlbumViewPersonPick;-><init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$1;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;->mAlbumViewPersonPick:Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$AlbumViewPersonPick;

    return-void
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;)Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;->mAlbumViewState:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    return-object v0
.end method


# virtual methods
.method initializeView()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;->mMode:Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$IAlbumViewMode;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$IAlbumViewMode;->initializeView()V

    return-void
.end method

.method onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;->mMode:Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$IAlbumViewMode;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$IAlbumViewMode;->onBackPressed()V

    return-void
.end method

.method onHoverClick(Lcom/sec/android/gallery3d/data/MediaObject;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;->mMode:Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$IAlbumViewMode;

    invoke-interface {v0, p1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$IAlbumViewMode;->onHoverClick(Lcom/sec/android/gallery3d/data/MediaObject;)V

    return-void
.end method

.method onItemClick(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;->mMode:Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$IAlbumViewMode;

    invoke-interface {v0, p1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$IAlbumViewMode;->onItemClick(I)V

    return-void
.end method

.method setMode(Lcom/sec/samsung/gallery/core/LaunchModeType;)V
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$1;->$SwitchMap$com$sec$samsung$gallery$core$LaunchModeType:[I

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/core/LaunchModeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;->mAlbumViewPick:Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$AlbumViewPick;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;->mMode:Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$IAlbumViewMode;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;->mAlbumViewMultiPick:Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$AlbumViewMultiPick;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;->mMode:Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$IAlbumViewMode;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;->mAlbumViewPersonPick:Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$AlbumViewPersonPick;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;->mMode:Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle$IAlbumViewMode;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
