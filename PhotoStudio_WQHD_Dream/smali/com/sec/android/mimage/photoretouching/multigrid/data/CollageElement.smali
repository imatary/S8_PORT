.class public Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;
.super Ljava/lang/Object;
.source "CollageElement.java"

# interfaces
.implements Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$CollageItemListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PEDIT_CollageElement"


# instance fields
.field private diff:F

.field private diffX:F

.field private diffY:F

.field private isCollageSaved:Z

.field private isOrientationChange:Z

.field private isPressCtrl:Z

.field private mBGBmp:Landroid/graphics/Bitmap;

.field private mBGTiles:[I

.field private mContext:Landroid/content/Context;

.field private mDLId:I

.field private mDLIn:[Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

.field private mDLInfo:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;

.field private mDLOut:[Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

.field private mDLResizing:Z

.field private mEmptyItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mHeight:F

.field public mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLastDLTime:J

.field private mLeft:F

.field private mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;

.field private mManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

.field private mMargin:F

.field private mPreColorPicker:I

.field private mRoundKeyIncrement:F

.field private mRoundedness:F

.field private mSelectedItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

.field private mTop:F

.field private mTouchedItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

.field private mWidth:F

.field private numberFail:I

.field private numberInput:I

.field private numberLoading:I

.field private prevX:F

.field private prevY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mItems:Ljava/util/ArrayList;

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mRoundedness:F

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->isCollageSaved:Z

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->isOrientationChange:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mEmptyItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mBGTiles:[I

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mDLResizing:Z

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mPreColorPicker:I

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mRoundKeyIncrement:F

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->isPressCtrl:Z

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->numberLoading:I

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->numberFail:I

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->numberInput:I

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mContext:Landroid/content/Context;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mExecutor:Ljava/util/concurrent/ExecutorService;

    const/high16 v0, 0x40000000    # 2.0f

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->getDisplayDensity(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mMargin:F

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
    .end array-data
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;)Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;)Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mBGBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mBGBmp:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;)[I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mBGTiles:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->numberLoading:I

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->numberLoading:I

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->numberFail:I

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->numberFail:I

    return p1
.end method

.method static synthetic access$702(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->numberInput:I

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;)Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mEmptyItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    return-object v0
.end method


# virtual methods
.method public addGrid(Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils$ImageMetaData;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget v2, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->MAX_GRIDS:I

    if-ge v1, v2, :cond_0

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->numberInput:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->numberInput:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mEmptyItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->numberLoading:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->numberLoading:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mEmptyItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual {v1, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->loadImage(Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils$ImageMetaData;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mEmptyItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$CollageItemListener;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->addItem(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils$ImageMetaData;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->numberLoading:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->numberLoading:I

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->loadImage(Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils$ImageMetaData;)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->numberFail:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->numberFail:I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mEmptyItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    goto :goto_0
.end method

.method public addItem(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;

    invoke-interface {v0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;->onItemAdded(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V

    :cond_0
    return-void
.end method

.method public cleanUp()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->cleanUp()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public deInitDL()V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    const-string v0, "PEDIT_CollageElement"

    const-string v1, "deInitDL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mDLResizing:Z

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mDLId:I

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mDLIn:[Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mDLOut:[Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mDLInfo:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mDLInfo:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->setSelected(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mSelectedItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mSelectedItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-interface {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;->onDLFinished(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;

    invoke-interface {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;->requestRender()V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mDLInfo:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mLastDLTime:J

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateActionBar()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->showModifyPopUp()V

    return-void
.end method

.method public getBGBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mBGBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBGTiles()[I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mBGTiles:[I

    return-object v0
.end method

.method public getCollageManager()Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    return-object v0
.end method

.method public getDLId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mDLId:I

    return v0
.end method

.method public getEmptyItem()Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mEmptyItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mHeight:F

    return v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLastDLTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mLastDLTime:J

    return-wide v0
.end method

.method public getLeft()F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mLeft:F

    return v0
.end method

.method public declared-synchronized getMargin()F
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mMargin:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRoundSeekBarKeyIncrement()F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mRoundKeyIncrement:F

    return v0
.end method

.method public getRoundedness()F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mRoundedness:F

    return v0
.end method

.method public getScreenHeight()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;

    invoke-interface {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;->getScreenHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowHeight(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method public getScreenWidth()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;

    invoke-interface {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;->getScreenWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method public getSelectedItem()Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mSelectedItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    return-object v0
.end method

.method public getTop()F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mTop:F

    return v0
.end method

.method public getTouchedItem()Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mTouchedItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mWidth:F

    return v0
.end method

.method public initDL(I)V
    .locals 5

    const-string v2, "PEDIT_CollageElement"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initDL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mDLId:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mDLResizing:Z

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mDLInfo:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->getData()[[I

    move-result-object v2

    mul-int/lit8 v3, p1, 0x2

    aget-object v1, v2, v3

    array-length v2, v1

    new-array v2, v2, [Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mDLIn:[Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mDLIn:[Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mDLIn:[Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mItems:Ljava/util/ArrayList;

    aget v4, v1, v0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    aput-object v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mDLInfo:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->getData()[[I

    move-result-object v2

    mul-int/lit8 v3, p1, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-object v1, v2, v3

    array-length v2, v1

    new-array v2, v2, [Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mDLOut:[Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mDLOut:[Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mDLOut:[Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mItems:Ljava/util/ArrayList;

    aget v4, v1, v0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    aput-object v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mDLInfo:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mDLId:I

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->setSelected(I)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mSelectedItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-interface {v2, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;->onDLInit(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;

    invoke-interface {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;->requestRender()V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateActionBar()V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->hideModifyPopup()V

    return-void
.end method

.method public isCollageSaved()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->isCollageSaved:Z

    return v0
.end method

.method public isDLResizing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mDLResizing:Z

    return v0
.end method

.method public onAnimating(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;

    invoke-interface {v0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;->onAnimating(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V

    return-void
.end method

.method public onDLTouch(Landroid/view/MotionEvent;)V
    .locals 10

    const/4 v5, 0x1

    const v8, 0x3dcccccd    # 0.1f

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    iget-boolean v2, v2, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mIsDragging:Z

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {p0, v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->setCollageSaved(Z)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_15

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->prevX:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->diffX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->prevY:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->diffY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->prevX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->prevY:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mDLId:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_3

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->diffX:F

    :goto_0
    iput v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->diff:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->diff:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mDLId:I

    if-le v2, v5, :cond_4

    const/high16 v2, -0x40800000    # -1.0f

    :goto_1
    mul-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->diff:F

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mDLIn:[Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    array-length v7, v6

    move v5, v4

    :goto_2
    if-ge v5, v7, :cond_9

    aget-object v1, v6, v5

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mDLId:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getWidth()F

    move-result v2

    :goto_3
    iget v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->diff:F

    sub-float v3, v2, v3

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mDLId:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getWidth()F

    move-result v2

    :goto_4
    mul-float/2addr v2, v8

    cmpg-float v2, v3, v2

    if-gez v2, :cond_2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mDLId:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_7

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getWidth()F

    move-result v2

    :goto_5
    iget v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mDLId:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getWidth()F

    move-result v3

    :goto_6
    mul-float/2addr v3, v8

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->diff:F

    :cond_2
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_2

    :cond_3
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->diffY:F

    goto :goto_0

    :cond_4
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getHeight()F

    move-result v2

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getHeight()F

    move-result v2

    goto :goto_4

    :cond_7
    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getHeight()F

    move-result v2

    goto :goto_5

    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getHeight()F

    move-result v3

    goto :goto_6

    :cond_9
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mDLOut:[Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    array-length v6, v5

    move v3, v4

    :goto_7
    if-ge v3, v6, :cond_f

    aget-object v1, v5, v3

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mDLId:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_b

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getWidth()F

    move-result v2

    :goto_8
    iget v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->diff:F

    add-float/2addr v7, v2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mDLId:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_c

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getWidth()F

    move-result v2

    :goto_9
    mul-float/2addr v2, v8

    cmpg-float v2, v7, v2

    if-gez v2, :cond_a

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mDLId:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_d

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getWidth()F

    move-result v2

    :goto_a
    mul-float v7, v8, v2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mDLId:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_e

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getWidth()F

    move-result v2

    :goto_b
    sub-float v2, v7, v2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->diff:F

    :cond_a
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_7

    :cond_b
    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getHeight()F

    move-result v2

    goto :goto_8

    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getHeight()F

    move-result v2

    goto :goto_9

    :cond_d
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getHeight()F

    move-result v2

    goto :goto_a

    :cond_e
    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getHeight()F

    move-result v2

    goto :goto_b

    :cond_f
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mDLIn:[Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    array-length v6, v5

    move v3, v4

    :goto_c
    if-ge v3, v6, :cond_11

    aget-object v1, v5, v3

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getDLInfo()Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mDLId:I

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->diff:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mDLId:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_10

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getWidth()F

    move-result v2

    :goto_d
    div-float v2, v9, v2

    invoke-virtual {v7, v8, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->updateMargin(IF)V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_c

    :cond_10
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getHeight()F

    move-result v2

    goto :goto_d

    :cond_11
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mDLOut:[Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    array-length v6, v5

    move v3, v4

    :goto_e
    if-ge v3, v6, :cond_13

    aget-object v1, v5, v3

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getDLInfo()Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;

    move-result-object v4

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mDLId:I

    add-int/lit8 v2, v2, 0x2

    rem-int/lit8 v7, v2, 0x4

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->diff:F

    neg-float v8, v2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mDLId:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_12

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getWidth()F

    move-result v2

    :goto_f
    div-float v2, v8, v2

    invoke-virtual {v4, v7, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->updateMargin(IF)V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_e

    :cond_12
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getHeight()F

    move-result v2

    goto :goto_f

    :cond_13
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mDLIn:[Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mDLOut:[Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-interface {v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;->onItemsResized([Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;[Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V

    :cond_14
    :goto_10
    return-void

    :cond_15
    if-eq v0, v5, :cond_16

    const/4 v2, 0x3

    if-ne v0, v2, :cond_14

    :cond_16
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->deInitDL()V

    goto :goto_10
.end method

.method public onDecodeFailed(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V
    .locals 5

    const/4 v4, 0x0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->numberLoading:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->numberLoading:I

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->numberFail:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->numberFail:I

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getmFilePath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;

    const/4 v3, 0x1

    invoke-interface {v2, p1, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;->onImageUpdated(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getmFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getReplace()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getItemCount()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mEmptyItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    if-nez v2, :cond_3

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->setEmptyItem(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V

    invoke-virtual {p1, v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->loadImage(Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils$ImageMetaData;)V

    invoke-virtual {p0, v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->setSelection(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V

    :cond_2
    :goto_1
    new-instance v2, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$5;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$5;-><init>(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->numberFail:I

    new-instance v2, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$4;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$4;-><init>(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->removeItem(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V

    goto :goto_1
.end method

.method public onDecodeFinished(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;Z)V
    .locals 2

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->numberLoading:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->numberLoading:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;->onImageUpdated(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;Z)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getSelectedItem()Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$3;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$3;-><init>(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onDimensionsUpdated(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;->onDimensionsUpdated(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;Z)V

    :cond_0
    return-void
.end method

.method public onDragEnd()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;

    invoke-interface {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;->onDragEnd()V

    return-void
.end method

.method public onDragMove(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;

    invoke-interface {v0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;->onDragMove(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V

    return-void
.end method

.method public onDragStart(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;

    invoke-interface {v0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;->onDragStart(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V

    return-void
.end method

.method public onFling(FF)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mTouchedItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mTouchedItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->onFling(FF)V

    :cond_0
    return-void
.end method

.method public onImageMoved(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;Landroid/graphics/RectF;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    iget-boolean v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mIsDragging:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->setCollageSaved(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;->onImageMoved(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;Landroid/graphics/RectF;Z)V

    :cond_2
    return-void
.end method

.method public onImageUpdated(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;->onImageUpdated(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;Z)V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)V
    .locals 1

    const/16 v0, 0x71

    if-eq p1, v0, :cond_0

    const/16 v0, 0x72

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->isPressCtrl:Z

    :cond_1
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)V
    .locals 1

    const/16 v0, 0x71

    if-eq p1, v0, :cond_0

    const/16 v0, 0x72

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->isPressCtrl:Z

    :cond_1
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mTouchedItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mTouchedItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->onLongPress()V

    :cond_0
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mTouchedItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mSelectedItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mTouchedItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->showModifyPopUp()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mTouchedItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->onScale(Landroid/view/ScaleGestureDetector;)V

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v1

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mTouchedItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getLeft()F

    move-result v4

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getLeft()F

    move-result v5

    add-float/2addr v4, v5

    cmpl-float v4, v0, v4

    if-lez v4, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getTop()F

    move-result v4

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getTop()F

    move-result v5

    add-float/2addr v4, v5

    cmpl-float v4, v1, v4

    if-lez v4, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getLeft()F

    move-result v4

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getLeft()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getWidth()F

    move-result v5

    add-float/2addr v4, v5

    cmpg-float v4, v0, v4

    if-gez v4, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getTop()F

    move-result v4

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getTop()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    cmpg-float v4, v1, v4

    if-gez v4, :cond_2

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mTouchedItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mDLResizing:Z

    :cond_0
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mTouchedItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mTouchedItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual {v4, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->onScaleBegin(Landroid/view/ScaleGestureDetector;)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mTouchedItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mTouchedItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    :cond_0
    return-void
.end method

.method public onScroll(FF)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mTouchedItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mTouchedItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->onScroll(FF)V

    :cond_0
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onTouchDown(Landroid/view/MotionEvent;)V
    .locals 14

    const/high16 v13, 0x40800000    # 4.0f

    const/high16 v12, 0x40000000    # 2.0f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mTouchedItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mSelectedItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mItems:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mSelectedItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mSelectedItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getDLInfo()Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mDLInfo:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getLeft()F

    move-result v9

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mSelectedItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getLeft()F

    move-result v10

    add-float v3, v9, v10

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getTop()F

    move-result v9

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mSelectedItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getTop()F

    move-result v10

    add-float v6, v9, v10

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mSelectedItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getWidth()F

    move-result v8

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mSelectedItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getHeight()F

    move-result v0

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->prevX:F

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->prevY:F

    const/high16 v9, 0x42960000    # 75.0f

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f080323

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    mul-float v7, v9, v10

    const-string v9, "PEDIT_CollageElement"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "hasTop: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mDLInfo:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->hasTop()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "PEDIT_CollageElement"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "posX,posY: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "PEDIT_CollageElement"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "x: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    div-float v11, v8, v13

    add-float/2addr v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/high16 v11, 0x40400000    # 3.0f

    mul-float/2addr v11, v8

    div-float/2addr v11, v13

    add-float/2addr v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "PEDIT_CollageElement"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "y: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    div-float v11, v7, v12

    sub-float v11, v6, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    div-float v11, v7, v12

    add-float/2addr v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mDLInfo:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->hasLeft()Z

    move-result v9

    if-eqz v9, :cond_1

    div-float v9, v7, v12

    sub-float v9, v3, v9

    cmpl-float v9, v4, v9

    if-lez v9, :cond_1

    div-float v9, v7, v12

    add-float/2addr v9, v3

    cmpg-float v9, v4, v9

    if-gez v9, :cond_1

    div-float v9, v0, v12

    add-float/2addr v9, v6

    div-float v10, v7, v12

    sub-float/2addr v9, v10

    cmpl-float v9, v5, v9

    if-lez v9, :cond_1

    div-float v9, v0, v12

    add-float/2addr v9, v6

    div-float v10, v7, v12

    add-float/2addr v9, v10

    cmpg-float v9, v5, v9

    if-gez v9, :cond_1

    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->initDL(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mDLInfo:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->hasTop()Z

    move-result v9

    if-eqz v9, :cond_2

    div-float v9, v8, v12

    add-float/2addr v9, v3

    div-float v10, v7, v12

    sub-float/2addr v9, v10

    cmpl-float v9, v4, v9

    if-lez v9, :cond_2

    div-float v9, v8, v12

    add-float/2addr v9, v3

    div-float v10, v7, v12

    add-float/2addr v9, v10

    cmpg-float v9, v4, v9

    if-gez v9, :cond_2

    div-float v9, v7, v12

    sub-float v9, v6, v9

    cmpl-float v9, v5, v9

    if-lez v9, :cond_2

    div-float v9, v7, v12

    add-float/2addr v9, v6

    cmpg-float v9, v5, v9

    if-gez v9, :cond_2

    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->initDL(I)V

    goto :goto_0

    :cond_2
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mDLInfo:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->hasRight()Z

    move-result v9

    if-eqz v9, :cond_3

    add-float v9, v3, v8

    div-float v10, v7, v12

    sub-float/2addr v9, v10

    cmpl-float v9, v4, v9

    if-lez v9, :cond_3

    add-float v9, v3, v8

    div-float v10, v7, v12

    add-float/2addr v9, v10

    cmpg-float v9, v4, v9

    if-gez v9, :cond_3

    div-float v9, v0, v12

    add-float/2addr v9, v6

    div-float v10, v7, v12

    sub-float/2addr v9, v10

    cmpl-float v9, v5, v9

    if-lez v9, :cond_3

    div-float v9, v0, v12

    add-float/2addr v9, v6

    div-float v10, v7, v12

    add-float/2addr v9, v10

    cmpg-float v9, v5, v9

    if-gez v9, :cond_3

    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->initDL(I)V

    goto :goto_0

    :cond_3
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mDLInfo:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->hasBottom()Z

    move-result v9

    if-eqz v9, :cond_4

    div-float v9, v8, v12

    add-float/2addr v9, v3

    div-float v10, v7, v12

    sub-float/2addr v9, v10

    cmpl-float v9, v4, v9

    if-lez v9, :cond_4

    div-float v9, v8, v12

    add-float/2addr v9, v3

    div-float v10, v7, v12

    add-float/2addr v9, v10

    cmpg-float v9, v4, v9

    if-gez v9, :cond_4

    add-float v9, v6, v0

    div-float v10, v7, v12

    sub-float/2addr v9, v10

    cmpl-float v9, v5, v9

    if-lez v9, :cond_4

    add-float v9, v6, v0

    div-float v10, v7, v12

    add-float/2addr v9, v10

    cmpg-float v9, v5, v9

    if-gez v9, :cond_4

    const/4 v9, 0x3

    invoke-virtual {p0, v9}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->initDL(I)V

    goto/16 :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_1
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_5

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getLeft()F

    move-result v9

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getLeft()F

    move-result v10

    add-float/2addr v9, v10

    cmpl-float v9, v4, v9

    if-lez v9, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getTop()F

    move-result v9

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getTop()F

    move-result v10

    add-float/2addr v9, v10

    cmpl-float v9, v5, v9

    if-lez v9, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getLeft()F

    move-result v9

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getLeft()F

    move-result v10

    add-float/2addr v9, v10

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getWidth()F

    move-result v10

    add-float/2addr v9, v10

    cmpg-float v9, v4, v9

    if-gez v9, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getTop()F

    move-result v9

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getTop()F

    move-result v10

    add-float/2addr v9, v10

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getHeight()F

    move-result v10

    add-float/2addr v9, v10

    cmpg-float v9, v5, v9

    if-gez v9, :cond_6

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mTouchedItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mTouchedItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->onTouchDown()V

    :cond_5
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mSelectedItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mTouchedItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    if-eq v9, v10, :cond_0

    sget-object v9, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_COLLAGE:Ljava/lang/String;

    sget-object v10, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_COLLAGE_EDIT_IMAGE:Ljava/lang/String;

    const-string v11, "Edit Image"

    invoke-static {v9, v10, v11}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mTouchedItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual {p0, v9}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->setSelection(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mTouchedItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->showModifyPopUp()V

    goto/16 :goto_0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->hideModifyPopup()V

    goto/16 :goto_0
.end method

.method public onTouchUp(Landroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mTouchedItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    return-void
.end method

.method public declared-synchronized reInitMargin(ILcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;)V
    .locals 12

    const/4 v7, 0x0

    const v11, 0x3dcccccd    # 0.1f

    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->getData()[[I

    move-result-object v6

    mul-int/lit8 v8, p1, 0x2

    aget-object v5, v6, v8

    array-length v6, v5

    new-array v0, v6, [Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    const/4 v3, 0x0

    :goto_0
    array-length v6, v0

    if-ge v3, v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mItems:Ljava/util/ArrayList;

    aget v8, v5, v3

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    aput-object v6, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->getData()[[I

    move-result-object v6

    mul-int/lit8 v8, p1, 0x2

    add-int/lit8 v8, v8, 0x1

    aget-object v5, v6, v8

    array-length v6, v5

    new-array v1, v6, [Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    const/4 v3, 0x0

    :goto_1
    array-length v6, v1

    if-ge v3, v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mItems:Ljava/util/ArrayList;

    aget v8, v5, v3

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    aput-object v6, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    array-length v10, v0

    move v9, v7

    :goto_2
    if-ge v9, v10, :cond_7

    aget-object v4, v0, v9

    rem-int/lit8 v6, p1, 0x2

    if-nez v6, :cond_3

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getWidth()F

    move-result v6

    move v8, v6

    :goto_3
    rem-int/lit8 v6, p1, 0x2

    if-nez v6, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getWidth()F

    move-result v6

    :goto_4
    mul-float/2addr v6, v11

    cmpg-float v6, v8, v6

    if-gez v6, :cond_2

    rem-int/lit8 v6, p1, 0x2

    if-nez v6, :cond_5

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getWidth()F

    move-result v6

    move v8, v6

    :goto_5
    rem-int/lit8 v6, p1, 0x2

    if-nez v6, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getWidth()F

    move-result v6

    :goto_6
    mul-float/2addr v6, v11

    sub-float v2, v8, v6

    :cond_2
    add-int/lit8 v6, v9, 0x1

    move v9, v6

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getHeight()F

    move-result v6

    move v8, v6

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getHeight()F

    move-result v6

    goto :goto_4

    :cond_5
    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getHeight()F

    move-result v6

    move v8, v6

    goto :goto_5

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getHeight()F

    move-result v6

    goto :goto_6

    :cond_7
    array-length v10, v1

    move v9, v7

    :goto_7
    if-ge v9, v10, :cond_d

    aget-object v4, v1, v9

    rem-int/lit8 v6, p1, 0x2

    if-nez v6, :cond_9

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getWidth()F

    move-result v6

    move v8, v6

    :goto_8
    rem-int/lit8 v6, p1, 0x2

    if-nez v6, :cond_a

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getWidth()F

    move-result v6

    :goto_9
    mul-float/2addr v6, v11

    cmpg-float v6, v8, v6

    if-gez v6, :cond_8

    rem-int/lit8 v6, p1, 0x2

    if-nez v6, :cond_b

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getWidth()F

    move-result v6

    :goto_a
    mul-float v8, v11, v6

    rem-int/lit8 v6, p1, 0x2

    if-nez v6, :cond_c

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getWidth()F

    move-result v6

    :goto_b
    sub-float v2, v8, v6

    :cond_8
    add-int/lit8 v6, v9, 0x1

    move v9, v6

    goto :goto_7

    :cond_9
    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getHeight()F

    move-result v6

    move v8, v6

    goto :goto_8

    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getHeight()F

    move-result v6

    goto :goto_9

    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getHeight()F

    move-result v6

    goto :goto_a

    :cond_c
    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getHeight()F

    move-result v6

    goto :goto_b

    :cond_d
    const/4 v6, 0x0

    cmpl-float v6, v2, v6

    if-eqz v6, :cond_11

    array-length v9, v0

    move v8, v7

    :goto_c
    if-ge v8, v9, :cond_f

    aget-object v4, v0, v8

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getDLInfo()Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;

    move-result-object v10

    rem-int/lit8 v6, p1, 0x2

    if-nez v6, :cond_e

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getWidth()F

    move-result v6

    :goto_d
    div-float v6, v2, v6

    invoke-virtual {v10, p1, v6}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->updateMarginNonRequestRender(IF)V

    add-int/lit8 v6, v8, 0x1

    move v8, v6

    goto :goto_c

    :cond_e
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getHeight()F

    move-result v6

    goto :goto_d

    :cond_f
    array-length v8, v1

    :goto_e
    if-ge v7, v8, :cond_11

    aget-object v4, v1, v7

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getDLInfo()Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;

    move-result-object v9

    add-int/lit8 v6, p1, 0x2

    rem-int/lit8 v10, v6, 0x4

    neg-float v11, v2

    rem-int/lit8 v6, p1, 0x2

    if-nez v6, :cond_10

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getWidth()F

    move-result v6

    :goto_f
    div-float v6, v11, v6

    invoke-virtual {v9, v10, v6}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->updateMarginNonRequestRender(IF)V

    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_e

    :cond_10
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getHeight()F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    goto :goto_f

    :cond_11
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public removeItem(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;

    invoke-interface {v0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;->onItemRemoved(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V

    :cond_0
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mSelectedItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mTouchedItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mDLResizing:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->deInitDL()V

    :cond_1
    return-void
.end method

.method public replaceItem(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils$ImageMetaData;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->setReplace(Z)V

    invoke-virtual {p1, p2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->loadImage(Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils$ImageMetaData;)V

    :cond_0
    return-void
.end method

.method public requestRender()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CollageElement::requestRender = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->findCaller(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;

    invoke-interface {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;->requestRender()V

    return-void
.end method

.method public reset()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->reset()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setCollageListener(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;

    return-void
.end method

.method public setCollageManager(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    return-void
.end method

.method public setCollageSaved(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->isOrientationChange:Z

    if-nez v0, :cond_0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->isCollageSaved:Z

    :cond_0
    return-void
.end method

.method public setDimensions(FFFF)V
    .locals 4

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ColageElement::setDimensions = left="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " top="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mLeft:F

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mTop:F

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mWidth:F

    iput p4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mHeight:F

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v2, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->updateDimensions(IZZ)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;

    invoke-interface {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;->onDimensionsUpdated()V

    :cond_1
    return-void
.end method

.method public setEmptyItem(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mEmptyItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    return-void
.end method

.method public declared-synchronized setMargin(F)V
    .locals 9

    const v8, 0x3dcccccd    # 0.1f

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mMargin:F

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    iget-boolean v4, v4, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mIsDragging:Z

    if-nez v4, :cond_1

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->setCollageSaved(Z)V

    :cond_1
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v7}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->updateDimensions(IZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_2
    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_1
    :try_start_1
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getWidth()F

    move-result v5

    mul-float/2addr v5, v8

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_3

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getHeight()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getHeight()F

    move-result v5

    mul-float/2addr v5, v8

    cmpg-float v4, v4, v5

    if-gez v4, :cond_9

    :cond_3
    const/4 v3, 0x1

    :cond_4
    const/4 v1, 0x0

    :goto_2
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_a

    if-eqz v3, :cond_a

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getWidth()F

    move-result v5

    mul-float/2addr v5, v8

    cmpl-float v4, v4, v5

    if-lez v4, :cond_8

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getHeight()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getHeight()F

    move-result v5

    mul-float/2addr v5, v8

    cmpl-float v4, v4, v5

    if-lez v4, :cond_8

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getDLInfo()Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->hasLeft()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->reInitMargin(ILcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;)V

    :cond_5
    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->hasTop()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    invoke-virtual {p0, v4, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->reInitMargin(ILcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;)V

    :cond_6
    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->hasRight()Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x2

    invoke-virtual {p0, v4, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->reInitMargin(ILcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;)V

    :cond_7
    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->hasBottom()Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x3

    invoke-virtual {p0, v4, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->reInitMargin(ILcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;)V

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_a
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mMargin:F

    invoke-interface {v4, v5}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;->onMarginUpdated(F)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;

    invoke-interface {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;->requestRender()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_b
    monitor-exit p0

    return-void
.end method

.method public setOrientationChange(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->isOrientationChange:Z

    return-void
.end method

.method public setRoundSeekBarKeyIncrement(F)V
    .locals 1

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mRoundKeyIncrement:F

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->setRoundSeekBarKeyIncrement(F)V

    :cond_0
    return-void
.end method

.method public setRoundedness(F)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->setCollageSaved(Z)V

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mRoundedness:F

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mRoundedness:F

    invoke-interface {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;->onRoundnessUpdated(F)V

    :cond_0
    return-void
.end method

.method public setSelection(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mSelectedItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mSelectedItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;

    invoke-interface {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;->onSelectionUpdated()V

    :cond_0
    return-void
.end method

.method public setZoom(Landroid/view/MotionEvent;)Z
    .locals 8

    const v7, 0x3f8ccccd    # 1.1f

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mSelectedItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->isPressCtrl:Z

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getLeft()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mSelectedItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getLeft()F

    move-result v5

    add-float/2addr v4, v5

    cmpl-float v4, v1, v4

    if-lez v4, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getTop()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mSelectedItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getTop()F

    move-result v5

    add-float/2addr v4, v5

    cmpl-float v4, v2, v4

    if-lez v4, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getLeft()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mSelectedItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getLeft()F

    move-result v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mSelectedItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getWidth()F

    move-result v5

    add-float/2addr v4, v5

    cmpg-float v4, v1, v4

    if-gez v4, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getTop()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mSelectedItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getTop()F

    move-result v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mSelectedItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    cmpg-float v4, v2, v4

    if-gez v4, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v4, 0x9

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    cmpl-float v4, v0, v6

    if-lez v4, :cond_1

    mul-float v3, v7, v0

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mSelectedItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual {v4, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->setZoom(F)V

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_1
    cmpg-float v4, v0, v6

    if-gez v4, :cond_0

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v5, v7, v0

    div-float/2addr v4, v5

    neg-float v3, v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public swap(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V
    .locals 15

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->clearAnimation()V

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->clearAnimation()V

    new-instance v6, Landroid/graphics/RectF;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getImageRect()Landroid/graphics/RectF;

    move-result-object v10

    invoke-direct {v6, v10}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    new-instance v7, Landroid/graphics/RectF;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getImageRect()Landroid/graphics/RectF;

    move-result-object v10

    invoke-direct {v7, v10}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getUserScale()F

    move-result v8

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getUserScale()F

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getPOI()Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getPOI()Landroid/graphics/PointF;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->setUserScale(F)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->setImageRect(Landroid/graphics/RectF;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->setPOI(Landroid/graphics/PointF;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v10, v11}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->setBitmap(Landroid/graphics/Bitmap;ZZ)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->setUserScale(F)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->setImageRect(Landroid/graphics/RectF;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->setPOI(Landroid/graphics/PointF;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v10, v11}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->setBitmap(Landroid/graphics/Bitmap;ZZ)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mEmptyItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    move-object/from16 v0, p1

    if-ne v10, v0, :cond_3

    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->setEmptyItem(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getLeft()F

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getLeft()F

    move-result v11

    add-float/2addr v10, v11

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getTop()F

    move-result v11

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getTop()F

    move-result v12

    add-float/2addr v11, v12

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getLeft()F

    move-result v12

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getLeft()F

    move-result v13

    add-float/2addr v12, v13

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getWidth()F

    move-result v13

    add-float/2addr v12, v13

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getTop()F

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getTop()F

    move-result v14

    add-float/2addr v13, v14

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getHeight()F

    move-result v14

    add-float/2addr v13, v14

    invoke-direct {v1, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v1, v11}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->changeAddImageIconAlignment(Landroid/graphics/RectF;Landroid/content/Context;)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_3
    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mEmptyItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    move-object/from16 v0, p2

    if-ne v10, v0, :cond_0

    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->setEmptyItem(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getLeft()F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getLeft()F

    move-result v11

    add-float/2addr v10, v11

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getTop()F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getTop()F

    move-result v12

    add-float/2addr v11, v12

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getLeft()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getLeft()F

    move-result v13

    add-float/2addr v12, v13

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getWidth()F

    move-result v13

    add-float/2addr v12, v13

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getTop()F

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getTop()F

    move-result v14

    add-float/2addr v13, v14

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->getHeight()F

    move-result v14

    add-float/2addr v13, v14

    invoke-direct {v1, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v1, v11}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->changeAddImageIconAlignment(Landroid/graphics/RectF;Landroid/content/Context;)V

    goto :goto_2
.end method

.method public swapItems(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mItems:Ljava/util/ArrayList;

    invoke-static {v2, v0, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;

    invoke-interface {v2, p1, p2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;->onItemsSwapped(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V

    :cond_0
    return-void
.end method

.method public testSwap()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mItems:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mItems:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->swap(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V

    :cond_0
    return-void
.end method

.method public updateBG(IILandroid/content/Context;Z)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->setCollageSaved(Z)V

    if-eqz p4, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$1;-><init>(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;IILandroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p4, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->updateBGBitmap(IILandroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;

    invoke-interface {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;->onBackgroundUpdated()V

    goto :goto_0
.end method

.method public updateBGBitmap(IILandroid/content/Context;)V
    .locals 2

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mBGTiles:[I

    invoke-static {v0, p1, p2, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->getCollageBG(Landroid/content/res/Resources;II[I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mBGBmp:Landroid/graphics/Bitmap;

    return-void
.end method

.method public updateBGColor(I)V
    .locals 2

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mPreColorPicker:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mPreColorPicker:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->setCollageSaved(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$2;-><init>(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public updateLayout(I)V
    .locals 5

    invoke-static {p1}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->getCollageData(I)[[F

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    aget-object v3, v0, v1

    aget-object v4, v0, v1

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->setItemInfo([F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mListener:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;

    invoke-interface {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$CollageListener;->requestRender()V

    goto :goto_0
.end method

.method public updateMargin(FF)V
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mMargin:F

    mul-float/2addr v0, p1

    div-float/2addr v0, p2

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->setMargin(F)V

    return-void
.end method
