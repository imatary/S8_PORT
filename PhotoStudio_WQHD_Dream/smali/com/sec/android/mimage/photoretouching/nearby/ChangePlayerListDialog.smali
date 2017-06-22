.class public Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;
.super Ljava/lang/Object;
.source "ChangePlayerListDialog.java"

# interfaces
.implements Lcom/sec/android/mimage/photoretouching/nearby/OnDeviceChangedListener;


# static fields
.field private static final SCAN_DLNA_DISPLAY_AUTO_SCAN_START:I = 0x5

.field private static final SCAN_DLNA_DISPLAY_FINISH:I = 0x4

.field private static final SCAN_DLNA_DISPLAY_START:I = 0x3

.field private static final SCAN_WIFI_DISPLAY_AUTO_SCAN_TIMEOUT:J = 0x1388L

.field private static final SCAN_WIFI_DISPLAY_REFRESH_TIMEOUT:J = 0x2710L

.field private static final SEARCH_DLNA_ALLSHARE_CAST:I = 0x0

.field private static final SEARCH_ONLY_DLNA:I = 0x1

.field protected static final TAG:Ljava/lang/String; = "PEDIT_ChangePlayerListDialog"

.field private static final UNALBE_SEARCH_ALLSHARE_CAST:I = 0x2


# instance fields
.field private mChangePlayerItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mEmptyListView:Landroid/view/View;

.field private mFilePath:Ljava/lang/String;

.field private mIsCurrentDevice:Z

.field private mListAdapter:Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mNearbyClient:Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mScanDlnaOnlyDisplayHandler:Landroid/os/Handler;

.field private mSearchMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mSearchMode:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mIsCurrentDevice:Z

    new-instance v0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog$1;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog$1;-><init>(Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mScanDlnaOnlyDisplayHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog$2;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog$2;-><init>(Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mChangePlayerItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mFilePath:Ljava/lang/String;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mNearbyClient:Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mNearbyClient:Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;

    invoke-virtual {v0, p0}, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;->setOnDeviceChangedListener(Lcom/sec/android/mimage/photoretouching/nearby/OnDeviceChangedListener;)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->initDialog()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->refreshListAdapter()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;)Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mListAdapter:Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mEmptyListView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mScanDlnaOnlyDisplayHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->handleChangePlayer(Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerItem;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mIsCurrentDevice:Z

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;)Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mNearbyClient:Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;

    return-object v0
.end method

.method private handleChangePlayer(Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerItem;)V
    .locals 5

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerItem;->getDeviceType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mNearbyClient:Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;->disconnectWithPlayDevice()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mNearbyClient:Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mNearbyClient:Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerItem;->getDeviceID()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;->changePlayer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initDialog()V
    .locals 9

    const v8, 0x1030132

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03004d

    invoke-virtual {v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f0e0118

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const v4, 0x7f03003a

    invoke-virtual {v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v4, 0x7f0e00dd

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v4, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListAdapter;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f03004e

    invoke-direct {v4, v5, v6}, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mListAdapter:Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListAdapter;

    const v4, 0x102000a

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mListView:Landroid/widget/ListView;

    const v4, 0x1020004

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mEmptyListView:Landroid/view/View;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mEmptyListView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mChangePlayerItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mListAdapter:Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mSearchMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v5, 0x7f07006d

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f07006e

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    invoke-virtual {v4, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mDialog:Landroid/app/AlertDialog;

    :goto_0
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog;->setCustomTitle(Landroid/view/View;)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog$3;

    invoke-direct {v5, p0}, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog$3;-><init>(Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog$4;

    invoke-direct {v5, p0}, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog$4;-><init>(Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog$5;

    invoke-direct {v5, p0}, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog$5;-><init>(Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void

    :cond_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v5, 0x7f070296

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0700d2

    invoke-virtual {v4, v5, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f070092

    invoke-virtual {v4, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onDeviceChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->refreshListAdapter()V

    return-void
.end method

.method public refreshListAdapter()V
    .locals 7

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mEmptyListView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mEmptyListView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mSearchMode:I

    if-ne v4, v6, :cond_1

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mScanDlnaOnlyDisplayHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mListAdapter:Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListAdapter;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListAdapter;->clear()V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mIsCurrentDevice:Z

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mNearbyClient:Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;->getOnPlayingPlayer()Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerItem;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-boolean v6, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mIsCurrentDevice:Z

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mListAdapter:Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListAdapter;

    invoke-virtual {v4, v0}, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListAdapter;->add(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mListAdapter:Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListAdapter;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListAdapter;->notifyDataSetChanged()V

    :cond_2
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mNearbyClient:Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;->refresh()V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mNearbyClient:Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;->getDisplayDeviceList()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mListAdapter:Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListAdapter;

    invoke-virtual {v4, v3}, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListAdapter;->addAll(Ljava/util/Collection;)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mListAdapter:Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListAdapter;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListAdapter;->notifyDataSetChanged()V

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mListAdapter:Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListAdapter;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListAdapter;->getCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method
