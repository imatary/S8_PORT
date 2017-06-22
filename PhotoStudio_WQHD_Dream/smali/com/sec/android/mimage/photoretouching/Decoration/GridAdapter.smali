.class public Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;
.super Landroid/widget/BaseAdapter;
.source "GridAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$ImageHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PE_Gridadapter"

.field private static final TAG_DB:Ljava/lang/String; = "PE_Gridadapter_DB"


# instance fields
.field private FCL:Landroid/view/View$OnFocusChangeListener;

.field inflater:Landroid/view/LayoutInflater;

.field isAlreadyFocused:Z

.field private keylistener:Landroid/view/View$OnKeyListener;

.field mAvailableHeight:I

.field private mContext:Landroid/content/Context;

.field private mCurrentRes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

.field private mGridView:Landroid/widget/GridView;

.field private mIsBlackTheme:Z

.field private mItemHeight:I

.field private mNumThumbCount:I

.field public mPageInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mParent:Landroid/view/ViewGroup;

.field mPreviousView:Landroid/view/View;

.field private mResourceDispatcher:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;

.field private final mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/GridView;ILjava/util/ArrayList;Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader;Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;)V
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/GridView;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;",
            ">;",
            "Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;",
            "Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader;",
            "Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mNumThumbCount:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mCurrentRes:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mParent:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mGridView:Landroid/widget/GridView;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mAvailableHeight:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->inflater:Landroid/view/LayoutInflater;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->isAlreadyFocused:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mPreviousView:Landroid/view/View;

    new-instance v4, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$1;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->FCL:Landroid/view/View$OnFocusChangeListener;

    new-instance v4, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$3;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->keylistener:Landroid/view/View$OnKeyListener;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mResourceDispatcher:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mGridView:Landroid/widget/GridView;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mCurrentRes:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mGridView:Landroid/widget/GridView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setFocusable(Z)V

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mType:I

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mPageInfo:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mIsBlackTheme:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowHeight(Landroid/content/Context;)I

    move-result v30

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mItemHeight:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08057c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v26

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const-wide v4, 0x3fe8f5c28f5c28f6L    # 0.78

    move/from16 v0, v30

    int-to-double v6, v0

    mul-double/2addr v4, v6

    double-to-int v13, v4

    sub-int v14, v13, v26

    const-wide v4, 0x3f989374bc6a7efaL    # 0.024

    int-to-double v6, v14

    mul-double/2addr v4, v6

    double-to-int v0, v4

    move/from16 v27, v0

    const-wide v4, 0x3f70624dd2f1a9fcL    # 0.004

    int-to-double v6, v14

    mul-double/2addr v4, v6

    double-to-int v0, v4

    move/from16 v29, v0

    sub-int v4, v14, v27

    mul-int/lit8 v5, v29, 0x2

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mAvailableHeight:I

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mPageInfo:Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;->getInitIndex()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    const/16 v21, 0x0

    const/16 v25, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mPageInfo:Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v21

    const-string v5, "~Rakesh"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " --------->>> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mPageInfo:Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mPageInfo:Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->getDownloadPagesBackgroundColor(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mGridView:Landroid/widget/GridView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setBackgroundColor(I)V

    const-string v5, "sticker_list"

    const-string v6, "xml"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mPageInfo:Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v24

    if-eqz v24, :cond_c

    invoke-static/range {v24 .. v24}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->processXMLData(Landroid/content/res/XmlResourceParser;)Ljava/util/ArrayList;

    move-result-object v25

    const/16 v16, 0x2

    :goto_1
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v16

    if-ge v0, v4, :cond_d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mCurrentRes:Ljava/util/ArrayList;

    new-instance v6, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mPageInfo:Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;->getInitIndex()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mPageInfo:Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;->getItemRes()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;->isGif()Z

    move-result v4

    invoke-direct {v6, v7, v8, v10, v4}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    :cond_0
    const-wide v4, 0x3fdc28f5c28f5c29L    # 0.44

    move/from16 v0, v30

    int-to-double v6, v0

    mul-double/2addr v4, v6

    double-to-int v13, v4

    sub-int v14, v13, v26

    const-wide v4, 0x3f9eb851eb851eb8L    # 0.03

    int-to-double v6, v14

    mul-double/2addr v4, v6

    double-to-int v0, v4

    move/from16 v27, v0

    const-wide v4, 0x3f80624dd2f1a9fcL    # 0.008

    int-to-double v6, v14

    mul-double/2addr v4, v6

    double-to-int v0, v4

    move/from16 v29, v0

    sub-int v4, v14, v27

    mul-int/lit8 v5, v29, 0x3

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mAvailableHeight:I

    goto/16 :goto_0

    :sswitch_0
    const/4 v12, 0x0

    :try_start_1
    const-string v9, "_id DESC"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sec/android/mimage/photoretouching/Decoration/db/DBColumns$StickerRecentTableColumns;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->getRecentProjection()[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_3

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_6

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_1
    const-string v4, "item_package_name"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    const-string v4, "item_res_name"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    const-string v4, "is_gif"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-lez v4, :cond_5

    const/16 v18, 0x1

    :goto_2
    new-instance v19, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;

    const/4 v4, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v20

    move/from16 v3, v18

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mCurrentRes:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_2
    :goto_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mGridView:Landroid/widget/GridView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0081

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setBackgroundColor(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mAvailableHeight:I

    div-int/lit8 v4, v4, 0x3

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mItemHeight:I

    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mCurrentRes:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mCurrentRes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mNumThumbCount:I

    :cond_4
    return-void

    :cond_5
    const/16 v18, 0x0

    goto :goto_2

    :cond_6
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Landroid/widget/GridView;->getParent()Landroid/view/ViewParent;

    move-result-object v28

    check-cast v28, Landroid/view/View;

    if-eqz v28, :cond_2

    const/16 v4, 0x8

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setVisibility(I)V

    const v4, 0x7f0e0269

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v15

    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    const-string v4, "PE_Gridadapter_DB"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " fetching recent items failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mAvailableHeight:I

    div-int/lit8 v4, v4, 0x4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mItemHeight:I

    goto :goto_5

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mGridView:Landroid/widget/GridView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setFocusable(Z)V

    sget-object v4, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mEmotionThumbRes:[I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->updateCurrentRes([II)V

    goto :goto_5

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mGridView:Landroid/widget/GridView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setFocusable(Z)V

    sget-object v4, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mAnimalThumbRes:[I

    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->updateCurrentRes([II)V

    goto/16 :goto_5

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mGridView:Landroid/widget/GridView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setFocusable(Z)V

    sget-object v4, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mFoodThumbRes:[I

    const/4 v5, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->updateCurrentRes([II)V

    goto/16 :goto_5

    :sswitch_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mGridView:Landroid/widget/GridView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setFocusable(Z)V

    sget-object v4, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mHandThumbRes:[I

    const/4 v5, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->updateCurrentRes([II)V

    goto/16 :goto_5

    :sswitch_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mGridView:Landroid/widget/GridView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setFocusable(Z)V

    sget-object v4, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mObjectThumbRes:[I

    const/4 v5, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->updateCurrentRes([II)V

    goto/16 :goto_5

    :sswitch_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mGridView:Landroid/widget/GridView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setFocusable(Z)V

    sget-object v4, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mTransportationThumbRes:[I

    const/4 v5, 0x6

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->updateCurrentRes([II)V

    goto/16 :goto_5

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mGridView:Landroid/widget/GridView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setFocusable(Z)V

    sget-object v4, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mWeatherThumbRes:[I

    const/4 v5, 0x7

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->updateCurrentRes([II)V

    goto/16 :goto_5

    :sswitch_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mGridView:Landroid/widget/GridView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setFocusable(Z)V

    sget-object v4, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mFaceThumbRes:[I

    const/16 v5, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->updateCurrentRes([II)V

    goto/16 :goto_5

    :sswitch_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mGridView:Landroid/widget/GridView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setFocusable(Z)V

    sget-object v4, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mFlowerThumbRes:[I

    const/16 v5, 0x9

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->updateCurrentRes([II)V

    goto/16 :goto_5

    :sswitch_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mGridView:Landroid/widget/GridView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setFocusable(Z)V

    sget-object v4, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mMonsterThumbRes:[I

    const/16 v5, 0xa

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->updateCurrentRes([II)V

    goto/16 :goto_5

    :sswitch_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mGridView:Landroid/widget/GridView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setFocusable(Z)V

    sget-object v4, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mNatureThumbRes:[I

    const/16 v5, 0xb

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->updateCurrentRes([II)V

    goto/16 :goto_5

    :sswitch_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mGridView:Landroid/widget/GridView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mGridView:Landroid/widget/GridView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c006b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setBackgroundColor(I)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mIsBlackTheme:Z

    sget-object v4, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mNeonThumbRes:[I

    const/16 v5, 0xc

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->updateCurrentRes([II)V

    goto/16 :goto_5

    :sswitch_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mGridView:Landroid/widget/GridView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mGridView:Landroid/widget/GridView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c006b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setBackgroundColor(I)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mIsBlackTheme:Z

    sget-object v4, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mStampThumbRes:[I

    const/16 v5, 0xd

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->updateCurrentRes([II)V

    goto/16 :goto_5

    :sswitch_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    const/4 v5, 0x2

    if-ne v4, v5, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mGridView:Landroid/widget/GridView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setFocusable(Z)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    const/4 v5, 0x2

    if-ne v4, v5, :cond_9

    const-wide v4, 0x3fe199999999999aL    # 0.55

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowHeight(Landroid/content/Context;)I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-int v14, v4

    const-wide v4, 0x3f989374bc6a7efaL    # 0.024

    int-to-double v6, v14

    mul-double/2addr v4, v6

    double-to-int v0, v4

    move/from16 v27, v0

    const-wide v4, 0x3f70624dd2f1a9fcL    # 0.004

    int-to-double v6, v14

    mul-double/2addr v4, v6

    double-to-int v0, v4

    move/from16 v29, v0

    sub-int v4, v14, v27

    mul-int/lit8 v5, v29, 0x2

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mAvailableHeight:I

    :goto_6
    sget-object v4, Lcom/sec/android/mimage/photoretouching/Decoration/LabelConstants;->mLabelDreamRes:[I

    const/16 v5, 0x64

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->updateCurrentRes([II)V

    goto/16 :goto_5

    :cond_9
    const-wide v4, 0x3fdc28f5c28f5c29L    # 0.44

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowHeight(Landroid/content/Context;)I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-int v14, v4

    const-wide v4, 0x3f9eb851eb851eb8L    # 0.03

    int-to-double v6, v14

    mul-double/2addr v4, v6

    double-to-int v0, v4

    move/from16 v27, v0

    const-wide v4, 0x3f80624dd2f1a9fcL    # 0.008

    int-to-double v6, v14

    mul-double/2addr v4, v6

    double-to-int v0, v4

    move/from16 v29, v0

    sub-int v4, v14, v27

    mul-int/lit8 v5, v29, 0x3

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mAvailableHeight:I

    goto :goto_6

    :sswitch_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    const/4 v5, 0x2

    if-ne v4, v5, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mGridView:Landroid/widget/GridView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setFocusable(Z)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    const/4 v5, 0x2

    if-ne v4, v5, :cond_b

    const-wide v4, 0x3fe199999999999aL    # 0.55

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowHeight(Landroid/content/Context;)I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-int v14, v4

    const-wide v4, 0x3f989374bc6a7efaL    # 0.024

    int-to-double v6, v14

    mul-double/2addr v4, v6

    double-to-int v0, v4

    move/from16 v27, v0

    const-wide v4, 0x3f70624dd2f1a9fcL    # 0.004

    int-to-double v6, v14

    mul-double/2addr v4, v6

    double-to-int v0, v4

    move/from16 v29, v0

    sub-int v4, v14, v27

    mul-int/lit8 v5, v29, 0x2

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mAvailableHeight:I

    :goto_7
    sget-object v4, Lcom/sec/android/mimage/photoretouching/Decoration/CoverConstants;->mCoverRes:[I

    const/16 v5, 0xc8

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->updateCurrentRes([II)V

    goto/16 :goto_5

    :cond_b
    const-wide v4, 0x3fdc28f5c28f5c29L    # 0.44

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowHeight(Landroid/content/Context;)I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-int v14, v4

    const-wide v4, 0x3f9eb851eb851eb8L    # 0.03

    int-to-double v6, v14

    mul-double/2addr v4, v6

    double-to-int v0, v4

    move/from16 v27, v0

    const-wide v4, 0x3f80624dd2f1a9fcL    # 0.008

    int-to-double v6, v14

    mul-double/2addr v4, v6

    double-to-int v0, v4

    move/from16 v29, v0

    sub-int v4, v14, v27

    mul-int/lit8 v5, v29, 0x3

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mAvailableHeight:I

    goto :goto_7

    :cond_c
    :try_start_3
    const-string v4, "PE_Gridadapter"

    const-string v5, "Read XML error"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_d
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    const/4 v5, 0x2

    if-ne v4, v5, :cond_e

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mAvailableHeight:I

    div-int/lit8 v4, v4, 0x3

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mItemHeight:I

    goto/16 :goto_5

    :catch_1
    move-exception v15

    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    :cond_e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mAvailableHeight:I

    div-int/lit8 v4, v4, 0x4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mItemHeight:I

    goto/16 :goto_5

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0x64 -> :sswitch_e
        0xc8 -> :sswitch_f
    .end sparse-switch
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;)Landroid/widget/GridView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;)Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getBlurStrength(I)I
    .locals 1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xf

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x7

    :goto_0
    return v0

    :cond_1
    const/16 v0, 0xb

    if-eq p1, v0, :cond_2

    const/16 v0, 0x10

    if-ne p1, v0, :cond_3

    :cond_2
    const/4 v0, 0x6

    goto :goto_0

    :cond_3
    const/16 v0, 0xc

    if-eq p1, v0, :cond_4

    const/16 v0, 0x11

    if-ne p1, v0, :cond_5

    :cond_4
    const/4 v0, 0x5

    goto :goto_0

    :cond_5
    const/16 v0, 0xd

    if-eq p1, v0, :cond_6

    const/16 v0, 0x12

    if-ne p1, v0, :cond_7

    :cond_6
    const/4 v0, 0x4

    goto :goto_0

    :cond_7
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private getMosaicStrength(I)I
    .locals 5

    const/4 v3, 0x7

    const/4 v2, 0x6

    const/4 v1, 0x5

    const/4 v0, 0x3

    if-eqz p1, :cond_0

    if-ne p1, v1, :cond_2

    :cond_0
    move v0, v3

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v4, 0x1

    if-eq p1, v4, :cond_3

    if-ne p1, v2, :cond_4

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    const/4 v2, 0x2

    if-eq p1, v2, :cond_5

    if-ne p1, v3, :cond_6

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    if-eq p1, v0, :cond_7

    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    :cond_7
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private getShape(I)I
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0xa

    if-lt p1, v0, :cond_2

    const/16 v0, 0xe

    if-gt p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getType(I)I
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x9

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private updateCurrentRes([II)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mCurrentRes:Ljava/util/ArrayList;

    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sparse-switch p2, :sswitch_data_0

    :goto_1
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mAvailableHeight:I

    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mItemHeight:I

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mAvailableHeight:I

    div-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mItemHeight:I

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mCurrentRes:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mCurrentRes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDownloadPagesBackgroundColor(Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mDownloadStrings:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mDownloadStrings:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const v0, 0x7f0c0081

    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mDownloadStrings:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0c006b

    goto :goto_0

    :cond_2
    const v0, 0x7f0c0094

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mGridView:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    const/4 v2, 0x0

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->inflater:Landroid/view/LayoutInflater;

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mContext:Landroid/content/Context;

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    iput-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->inflater:Landroid/view/LayoutInflater;

    :cond_0
    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mCurrentRes:Ljava/util/ArrayList;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->getCurrentState()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Landroid/view/View;->setId(I)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLabelFor(I)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->FCL:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p2, v8}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->keylistener:Landroid/view/View$OnKeyListener;

    invoke-virtual {p2, v8}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_2
    if-nez p1, :cond_3

    iget-boolean v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->isAlreadyFocused:Z

    if-nez v8, :cond_3

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->isAlreadyFocused:Z

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mGridView:Landroid/widget/GridView;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mGridView:Landroid/widget/GridView;

    new-instance v9, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$2;

    invoke-direct {v9, p0}, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$2;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;)V

    const-wide/16 v10, 0x19

    invoke-virtual {v8, v9, v10, v11}, Landroid/widget/GridView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mParent:Landroid/view/ViewGroup;

    return-object p2

    :sswitch_0
    const-string v8, "PE_Gridadapter"

    const-string v9, " SUB_STATE_DECORATION_STICKER"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    if-nez p2, :cond_4

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->inflater:Landroid/view/LayoutInflater;

    const v9, 0x7f0300c4

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f02041b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {p2, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v6, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$ImageHolder;

    invoke-direct {v6, p0}, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$ImageHolder;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;)V

    const v8, 0x7f0e0425

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mItemHeight:I

    iput v8, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v2, v6, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$ImageHolder;->holderImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_1
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v7, Lcom/sec/android/mimage/photoretouching/Decoration/SimpleStickerDispatcherTask;

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mCurrentRes:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    const-string v10, "Sticker"

    iget-boolean v11, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mIsBlackTheme:Z

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/sec/android/mimage/photoretouching/Decoration/SimpleStickerDispatcherTask;-><init>(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mResourceDispatcher:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;

    invoke-virtual {v8, v2, v7}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->dispatch(Landroid/view/View;Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;)Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$ImageHolder;

    iget-object v2, v6, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$ImageHolder;->holderImageView:Landroid/widget/ImageView;

    goto :goto_1

    :sswitch_1
    const-string v8, "PE_Gridadapter"

    const-string v9, " SUB_STATE_DECORATION_LABEL"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    if-nez p2, :cond_5

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->inflater:Landroid/view/LayoutInflater;

    const v9, 0x7f0300c4

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0204f2

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {p2, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$ImageHolder;

    invoke-direct {v3, p0}, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$ImageHolder;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;)V

    const v8, 0x7f0e0426

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mItemHeight:I

    iput v8, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v2, v3, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$ImageHolder;->holderImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_2
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v5, Lcom/sec/android/mimage/photoretouching/Decoration/SimpleStickerDispatcherTask;

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mCurrentRes:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    const-string v10, "Label"

    const/4 v11, 0x1

    invoke-direct {v5, v8, v9, v10, v11}, Lcom/sec/android/mimage/photoretouching/Decoration/SimpleStickerDispatcherTask;-><init>(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mResourceDispatcher:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;

    invoke-virtual {v8, v2, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->dispatch(Landroid/view/View;Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;)Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$ImageHolder;

    iget-object v2, v3, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$ImageHolder;->holderImageView:Landroid/widget/ImageView;

    goto :goto_2

    :sswitch_2
    const/4 v0, 0x0

    if-nez p2, :cond_6

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->inflater:Landroid/view/LayoutInflater;

    const v9, 0x7f0300c4

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f02041b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {p2, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$ImageHolder;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$ImageHolder;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;)V

    const v8, 0x7f0e0427

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mItemHeight:I

    iput v8, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$ImageHolder;->holderImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_3
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mCurrentRes:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$ImageHolder;

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$ImageHolder;->holderImageView:Landroid/widget/ImageView;

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x80002 -> :sswitch_0
        0x80003 -> :sswitch_1
        0x8000a -> :sswitch_2
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 33

    const/16 v20, 0x1

    const/16 v21, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mNumThumbCount:I

    move/from16 v0, v21

    if-ge v0, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mParent:Landroid/view/ViewGroup;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p1

    if-ne v0, v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->getCurrentState()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->isDrawerOpened()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->drawerHide(Z)V

    :cond_0
    return-void

    :sswitch_0
    const-string v4, "PE_Gridadapter"

    const-string v5, " sticker is clicked "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v22

    sget-object v4, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SELECT_STICKER_SCREEN:Ljava/lang/String;

    sget-object v5, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SELECT_STICKER_SCREEN_SELECT_STICKER_ID:Ljava/lang/String;

    sget-object v6, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SELECT_STICKER_SCREEN_SELECT_STICKER_EVENT_NAME:Ljava/lang/String;

    move/from16 v0, v22

    int-to-long v8, v0

    invoke-static {v4, v5, v6, v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventHaveValueSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    const-string v25, ""

    const-string v27, ""

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mCurrentRes:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget-object v6, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mStickerPreloadTabTitles:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mPageInfo:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mType:I

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;->getInitIndex()I

    move-result v4

    aget v4, v6, v4

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mCurrentRes:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v27

    const/16 v23, 0x0

    :cond_1
    :goto_2
    const-string v4, "PE_Gridadapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onClick for Recent pkgName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v26, 0x0

    :try_start_0
    const-string v7, "item_package_name=? AND item_res_name=?"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sec/android/mimage/photoretouching/Decoration/db/DBColumns$StickerRecentTableColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "item_no_of_times_used"

    aput-object v9, v6, v8

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v25, v8, v9

    const/4 v9, 0x1

    aput-object v27, v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v26

    if-eqz v26, :cond_3

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_2

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v4, "item_no_of_times_used"

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sec/android/mimage/photoretouching/Decoration/db/DBColumns$StickerRecentTableColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v25, v6, v8

    const/4 v8, 0x1

    aput-object v27, v6, v8

    invoke-virtual {v4, v5, v7, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    const-string v4, "PE_Gridadapter_DB"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onClick if already present deleted "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    const/16 v26, 0x0

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/sec/android/mimage/photoretouching/Decoration/db/DBColumns$StickerRecentTableColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v10, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v10, v4

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v8 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v26

    if-eqz v26, :cond_4

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/16 v5, 0x1e

    if-ne v4, v5, :cond_4

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v4, "_id"

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    const-string v32, "_id=?"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sec/android/mimage/photoretouching/Decoration/db/DBColumns$StickerRecentTableColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    move-object/from16 v0, v32

    invoke-virtual {v4, v5, v0, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v17

    const-string v4, "PE_Gridadapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onClick max limit exceeded "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sec/android/mimage/photoretouching/Decoration/db/DBColumns$StickerRecentTableColumns;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    add-int/lit8 v8, v24, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move/from16 v2, v23

    invoke-virtual {v6, v0, v1, v8, v2}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->getInsertRecentCV(Ljava/lang/String;Ljava/lang/String;IZ)Landroid/content/ContentValues;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v31

    const-string v4, "PE_Gridadapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "after inserted onClick uri "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v31 .. v31}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mCurrentRes:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v4, v0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->getStickerBitmap(ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mCurrentRes:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mCurrentRes:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;->getPackageName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mCurrentRes:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;->getItemRes()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mCurrentRes:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;->isGif()Z

    move-result v23

    goto/16 :goto_2

    :catch_0
    move-exception v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V

    const-string v4, "PE_Gridadapter_DB"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Recent DB insertion failed = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v26, :cond_5

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :sswitch_1
    const-string v4, "PE_Gridadapter"

    const-string v5, " label is clicked "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v22

    const/16 v4, 0x16

    move/from16 v0, v22

    if-ge v0, v4, :cond_8

    sget-object v4, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->LABEL_SCREEN_ID:Ljava/lang/String;

    sget-object v5, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->LABEL_SCREEN_SELECT_LABEL_ID:Ljava/lang/String;

    sget-object v6, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->LABEL_SCREEN_SELECT_LABEL_EVENT_NAME:Ljava/lang/String;

    move/from16 v0, v22

    int-to-long v8, v0

    invoke-static {v4, v5, v6, v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventHaveValueSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :goto_4
    move/from16 v29, v22

    add-int/lit8 v29, v29, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->isDrawerOpened()Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->drawerHide(Z)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->showDialog(I)V

    goto/16 :goto_1

    :cond_8
    sget-object v4, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->COVER_SCREEN_ID:Ljava/lang/String;

    sget-object v5, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->LABEL_SCREEN_SELECT_TEXT_ID:Ljava/lang/String;

    sget-object v6, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->LABEL_SCREEN_SELECT_TEXT_EVENT_NAME:Ljava/lang/String;

    move/from16 v0, v22

    int-to-long v8, v0

    invoke-static {v4, v5, v6, v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventHaveValueSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_4

    :sswitch_2
    const-string v4, "PE_Gridadapter"

    const-string v5, " cover is clicked "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v22

    const/16 v4, 0xa

    move/from16 v0, v22

    if-ge v0, v4, :cond_9

    sget-object v4, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->COVER_SCREEN_ID:Ljava/lang/String;

    sget-object v5, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->COVER_SCREEN_PIXEL_ID:Ljava/lang/String;

    sget-object v6, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->COVER_SCREEN_PIXEL_EVENT_NAME:Ljava/lang/String;

    add-int/lit8 v8, v22, 0x1

    int-to-long v8, v8

    invoke-static {v4, v5, v6, v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventHaveValueSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->getType(I)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->getShape(I)I

    move-result v5

    iput v5, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mCurrCoverShape:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    move/from16 v0, v16

    iput v0, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mCurrCoverType:I

    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_a

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->getMosaicStrength(I)I

    move-result v28

    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    move/from16 v0, v28

    iput v0, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mCurrCoverStrength:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    move/from16 v0, v22

    move/from16 v1, v16

    move/from16 v2, v28

    invoke-virtual {v4, v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->addCoverSticker(III)V

    goto/16 :goto_1

    :cond_9
    sget-object v4, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->COVER_SCREEN_ID:Ljava/lang/String;

    sget-object v5, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->COVER_SCREEN_BLUR_ID:Ljava/lang/String;

    sget-object v6, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->COVER_SCREEN_BLUR_EVENT_NAME:Ljava/lang/String;

    add-int/lit8 v8, v22, 0x1

    add-int/lit8 v8, v8, -0xa

    int-to-long v8, v8

    invoke-static {v4, v5, v6, v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventHaveValueSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_5

    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->getBlurStrength(I)I

    move-result v28

    goto :goto_6

    :cond_b
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x80002 -> :sswitch_0
        0x80003 -> :sswitch_1
        0x8000a -> :sswitch_2
    .end sparse-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
