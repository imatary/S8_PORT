.class public Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;
.super Ljava/lang/Object;
.source "ChangePlayerListDialog.java"

# interfaces
.implements Lcom/sec/android/gallery3d/remote/nearby/OnDeviceChangedListener;


# static fields
.field private static final SCAN_DLNA_DISPLAY_AUTO_SCAN_START:I = 0x5

.field private static final SCAN_DLNA_DISPLAY_FINISH:I = 0x4

.field private static final SCAN_DLNA_DISPLAY_START:I = 0x3

.field private static final SCAN_WIFI_DISPLAY_AUTO_SCAN_TIMEOUT:J = 0x1388L

.field private static final SCAN_WIFI_DISPLAY_FINISH:I = 0x2

.field private static final SCAN_WIFI_DISPLAY_REFRESH_TIMEOUT:J = 0x2710L

.field private static final SCAN_WIFI_DISPLAY_START:I = 0x1

.field private static final SEARCH_DLNA_ALLSHARE_CAST:I = 0x0

.field private static final SEARCH_ONLY_DLNA:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ChangePlayerListDialog"

.field private static final UNALBE_SEARCH_ALLSHARE_CAST:I = 0x2


# instance fields
.field private final mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private final mChangePlayerItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mContext:Landroid/content/Context;

.field private final mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

.field private mDialog:Landroid/app/AlertDialog;

.field private mEmptyListView:Landroid/view/View;

.field private mIsCurrentDevice:Z

.field private mIsWifiDisplaySelected:Z

.field private mListAdapter:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter;

.field private mListView:Landroid/widget/ListView;

.field private final mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field private final mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

.field private mNearbyClient:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

.field private final mPath:Lcom/sec/android/gallery3d/data/Path;

.field private mPrepareMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private final mScanDlnaOnlyDisplayHandler:Landroid/os/Handler;

.field private final mScanWifiDisplayHandler:Landroid/os/Handler;

.field private mSearchMode:I

.field private final mWifiDisplayUtils:Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mSearchMode:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mWifiDisplayUtils:Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mIsCurrentDevice:Z

    new-instance v1, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$1;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$1;-><init>(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mScanWifiDisplayHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$2;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$2;-><init>(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mScanDlnaOnlyDisplayHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$6;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$6;-><init>(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mChangePlayerItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    iput-object p3, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iput-object p2, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mPath:Lcom/sec/android/gallery3d/data/Path;

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    const-string/jumbo v2, "nearby"

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/data/DataManager;->getSource(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSource;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/remote/nearby/NearbySource;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/remote/nearby/NearbySource;->getNearbyContext()Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;->getNearbyClient()Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mNearbyClient:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mNearbyClient:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    invoke-virtual {v1, p0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->setOnDeviceChangedListener(Lcom/sec/android/gallery3d/remote/nearby/OnDeviceChangedListener;)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->initDialog()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->refreshListAdapter()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mWifiDisplayUtils:Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->refreshListAdapter()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mIsWifiDisplaySelected:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->handleChangePlayer(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerItem;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mScanWifiDisplayHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mListAdapter:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mEmptyListView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mScanDlnaOnlyDisplayHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mSearchMode:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mIsCurrentDevice:Z

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mNearbyClient:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    return-object v0
.end method

.method private handleChangePlayer(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerItem;)V
    .locals 7

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerItem;->getDeviceType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v3, "ChangePlayerListDialog"

    const-string/jumbo v4, "clicked : my device"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mNearbyClient:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->disconnectWithPlayDevice()V

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mWifiDisplayUtils:Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mWifiDisplayUtils:Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;->disconnectWifiDisplay()V

    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mSearchMode:I

    goto :goto_0

    :pswitch_1
    const-string/jumbo v3, "ChangePlayerListDialog"

    const-string/jumbo v4, "clicked : nearby device"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mWifiDisplayUtils:Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mWifiDisplayUtils:Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;->disconnectWifiDisplay()V

    :cond_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mNearbyClient:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryId()I

    move-result v4

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerItem;->getDeviceID()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v3, v4, v5, v0, v6}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->changePlayer(ILjava/lang/String;Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/android/gallery3d/data/MediaSet;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mPrepareMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mPrepareMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    goto :goto_0

    :pswitch_2
    const-string/jumbo v3, "ChangePlayerListDialog"

    const-string/jumbo v4, "clicked : wfd device"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mSearchMode:I

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mWifiDisplayUtils:Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mNearbyClient:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->isConnectedPlayer()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mNearbyClient:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->disconnectWithPlayDevice()V

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerItem;->getDevice()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mWifiDisplayUtils:Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;->disconnectWifiDisplay()V

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mIsWifiDisplaySelected:Z

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerItem;->getDevice()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/lib/libinterface/WifiDisplayInterface;

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mWifiDisplayUtils:Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;

    invoke-virtual {v3, v2}, Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;->connectWifiDisplay(Lcom/sec/samsung/gallery/lib/libinterface/WifiDisplayInterface;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private initDialog()V
    .locals 9

    const/4 v8, 0x1

    const/4 v5, 0x0

    const-string/jumbo v4, "ChangePlayerListDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "search mode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mSearchMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mSearchMode:I

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mScanWifiDisplayHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v6, 0x7f040037

    move-object v4, v5

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v3, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f120097

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const v6, 0x7f040035

    move-object v4, v5

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v3, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v4, 0x7f120096

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v4, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter;

    iget-object v6, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mContext:Landroid/content/Context;

    const v7, 0x7f040038

    invoke-direct {v4, v6, v7}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mListAdapter:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter;

    const v4, 0x102000a

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mListView:Landroid/widget/ListView;

    const v4, 0x1020004

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mEmptyListView:Landroid/view/View;

    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mEmptyListView:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mChangePlayerItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mListAdapter:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter;

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget v4, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mSearchMode:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_1

    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0a0048

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v6, 0x7f0a0049

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v6, 0x104000a

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mDialog:Landroid/app/AlertDialog;

    :goto_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog;->setCustomTitle(Landroid/view/View;)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$3;

    invoke-direct {v5, p0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$3;-><init>(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$4;

    invoke-direct {v5, p0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$4;-><init>(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$5;

    invoke-direct {v5, p0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog$5;-><init>(Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void

    :cond_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0a03a9

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v6, 0x7f0a011a

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v6, 0x7f0a0080

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private refreshDialogBtn()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v1, "ChangePlayerListDialog"

    const-string/jumbo v2, "mDialog is null or not showing, fail to refreshDailgBtn "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mIsCurrentDevice:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private refreshListAdapter()V
    .locals 17

    const-string/jumbo v1, "ChangePlayerListDialog"

    const-string/jumbo v2, "refresh list adapter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mEmptyListView:Landroid/view/View;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mEmptyListView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mSearchMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mScanDlnaOnlyDisplayHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mListAdapter:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter;->clear()V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mIsCurrentDevice:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mNearbyClient:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->getOnPlayingPlayer()Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerItem;

    move-result-object v8

    if-eqz v8, :cond_2

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mIsCurrentDevice:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mListAdapter:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter;

    invoke-virtual {v1, v8}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter;->add(Ljava/lang/Object;)V

    :cond_2
    const-string/jumbo v1, "ChangePlayerListDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "current player : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyUtils;->isNearbyPlayable(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    instance-of v1, v1, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    check-cast v1, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->getDeviceNic()Ljava/lang/String;

    move-result-object v12

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mNearbyClient:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->refresh()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mNearbyClient:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    invoke-virtual {v1, v12}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->getDisplayDeviceList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mListAdapter:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter;

    invoke-virtual {v1, v11}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter;->addAll(Ljava/util/Collection;)V

    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mSearchMode:I

    if-nez v1, :cond_6

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mWifiDisplayUtils:Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mWifiDisplayUtils:Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;->isWifiDisplayConnected()Z

    move-result v1

    if-nez v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mWifiDisplayUtils:Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;->getWifiDisplayAvailable()[Lcom/sec/samsung/gallery/lib/libinterface/WifiDisplayInterface;

    move-result-object v14

    array-length v0, v14

    move/from16 v16, v0

    const/4 v1, 0x0

    move v15, v1

    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_5

    aget-object v6, v14, v15

    new-instance v1, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerItem;

    const/4 v2, 0x0

    invoke-interface {v6}, Lcom/sec/samsung/gallery/lib/libinterface/WifiDisplayInterface;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerItem;-><init>(Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v15, 0x1

    move v15, v1

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mListAdapter:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter;

    invoke-virtual {v1, v13}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter;->addAll(Ljava/util/Collection;)V

    :cond_6
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mListAdapter:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter;->getCount()I

    move-result v10

    :goto_1
    if-ge v9, v10, :cond_7

    const-string/jumbo v2, "ChangePlayerListDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "device : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mListAdapter:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter;

    invoke-virtual {v1, v9}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerItem;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerItem;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_7
    const-string/jumbo v1, "ChangePlayerListDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "device count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mListAdapter:Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onDeviceChanged()V
    .locals 2

    const-string/jumbo v0, "ChangePlayerListDialog"

    const-string/jumbo v1, "onDeviceChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->refreshListAdapter()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->refreshDialogBtn()V

    return-void
.end method

.method public show()V
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "ChangePlayerListDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "BadTokenException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v2, "ChangePlayerListDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
