.class public Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;
.super Ljava/lang/Object;
.source "CollageItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DLInfo"
.end annotation


# instance fields
.field private mDLData:[[I

.field private mMargins:[F

.field private mSelectedId:I

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [[I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->mDLData:[[I

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->mMargins:[F

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->mSelectedId:I

    return-void
.end method


# virtual methods
.method public getData()[[I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->mDLData:[[I

    return-object v0
.end method

.method public getMargin(I)F
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->mMargins:[F

    aget v0, v0, p1

    return v0
.end method

.method public getSelection()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->mSelectedId:I

    return v0
.end method

.method public hasBottom()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->mDLData:[[I

    const/4 v1, 0x6

    aget-object v0, v0, v1

    array-length v0, v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->mDLData:[[I

    const/4 v1, 0x7

    aget-object v0, v0, v1

    array-length v0, v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLeft()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->mDLData:[[I

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->mDLData:[[I

    aget-object v2, v2, v1

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->mDLData:[[I

    aget-object v2, v2, v0

    array-length v2, v2

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->mDLData:[[I

    aget-object v2, v2, v1

    array-length v2, v2

    if-lez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public hasRight()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->mDLData:[[I

    const/4 v1, 0x4

    aget-object v0, v0, v1

    array-length v0, v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->mDLData:[[I

    const/4 v1, 0x5

    aget-object v0, v0, v1

    array-length v0, v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTop()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->mDLData:[[I

    const/4 v1, 0x2

    aget-object v0, v0, v1

    array-length v0, v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->mDLData:[[I

    const/4 v1, 0x3

    aget-object v0, v0, v1

    array-length v0, v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 14

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->mMargins:[F

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->mMargins:[F

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->mMargins:[F

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->mMargins:[F

    const/4 v10, 0x0

    aput v10, v9, v13

    aput v10, v8, v12

    aput v10, v6, v7

    aput v10, v5, v11

    const/4 v3, 0x4

    sget-boolean v5, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->ENABLE_DL_FEATURE:Z

    if-eqz v5, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-gt v0, v13, :cond_3

    const/4 v1, 0x0

    move v4, v3

    :goto_1
    if-ge v1, v12, :cond_1

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->mDLData:[[I

    mul-int/lit8 v6, v0, 0x2

    add-int/2addr v6, v1

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mItemInfo:[F
    invoke-static {v7}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->access$100(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)[F

    move-result-object v7

    add-int/lit8 v3, v4, 0x1

    aget v7, v7, v4

    float-to-int v7, v7

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v2, 0x0

    :goto_2
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->mDLData:[[I

    mul-int/lit8 v6, v0, 0x2

    add-int/2addr v6, v1

    aget-object v5, v5, v6

    array-length v5, v5

    if-ge v2, v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->mDLData:[[I

    mul-int/lit8 v6, v0, 0x2

    add-int/2addr v6, v1

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->mItemInfo:[F
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->access$100(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)[F

    move-result-object v6

    add-int/lit8 v4, v3, 0x1

    aget v6, v6, v3

    float-to-int v6, v6

    aput v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    move v4, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v3, v4

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_3
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->mDLData:[[I

    array-length v5, v5

    if-ge v0, v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->mDLData:[[I

    new-array v6, v11, [I

    aput-object v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public setSelected(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->mSelectedId:I

    return-void
.end method

.method public updateMargin(IF)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->mMargins:[F

    aget v1, v0, p1

    add-float/2addr v1, p2

    aput v1, v0, p1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v2, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->updateDimensions(IZZ)V

    return-void
.end method

.method public updateMarginNonRequestRender(IF)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->mMargins:[F

    aget v1, v0, p1

    add-float/2addr v1, p2

    aput v1, v0, p1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem$DLInfo;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    invoke-virtual {v0, v2, v2, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;->updateDimensions(IZZ)V

    return-void
.end method
