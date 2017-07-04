.class Lcom/sec/android/gallery3d/ui/SlotView$Layout;
.super Ljava/lang/Object;
.source "SlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/ui/SlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Layout"
.end annotation


# instance fields
.field private mContentLength:I

.field private mHeight:I

.field private final mHorizontalPadding:Lcom/sec/android/gallery3d/ui/SlotView$IntegerAnimation;

.field private mScrollPosition:I

.field private mSlotCount:I

.field private mSlotGap:I

.field private mSlotHeight:I

.field private mSlotWidth:I

.field private mSpec:Lcom/sec/android/gallery3d/ui/SlotView$Spec;

.field private mUnitCount:I

.field private final mVerticalPadding:Lcom/sec/android/gallery3d/ui/SlotView$IntegerAnimation;

.field private mVisibleEnd:I

.field private mVisibleStart:I

.field private mWidth:I

.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/SlotView;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/ui/SlotView;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->this$0:Lcom/sec/android/gallery3d/ui/SlotView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/ui/SlotView$IntegerAnimation;-><init>(Lcom/sec/android/gallery3d/ui/SlotView$1;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mVerticalPadding:Lcom/sec/android/gallery3d/ui/SlotView$IntegerAnimation;

    new-instance v0, Lcom/sec/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/ui/SlotView$IntegerAnimation;-><init>(Lcom/sec/android/gallery3d/ui/SlotView$1;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mHorizontalPadding:Lcom/sec/android/gallery3d/ui/SlotView$IntegerAnimation;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/ui/SlotView;Lcom/sec/android/gallery3d/ui/SlotView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/SlotView$Layout;-><init>(Lcom/sec/android/gallery3d/ui/SlotView;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/gallery3d/ui/SlotView$Layout;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    return v0
.end method

.method static synthetic access$1900(Lcom/sec/android/gallery3d/ui/SlotView$Layout;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/ui/SlotView$Layout;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/ui/SlotView$Layout;ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/ui/SlotView$Layout;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->setSize(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/gallery3d/ui/SlotView$Layout;J)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->advanceAnimation(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/gallery3d/ui/SlotView$Layout;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mVisibleEnd:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/gallery3d/ui/SlotView$Layout;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mVisibleStart:I

    return v0
.end method

.method private advanceAnimation(J)Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mVerticalPadding:Lcom/sec/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/gallery3d/ui/SlotView$IntegerAnimation;->calculate(J)Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mHorizontalPadding:Lcom/sec/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/gallery3d/ui/SlotView$IntegerAnimation;->calculate(J)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method private getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 9

    iget v6, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    if-nez v6, :cond_0

    const/4 v6, 0x1

    iput v6, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    :cond_0
    iget v6, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    div-int v0, p1, v6

    iget v6, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    mul-int/2addr v6, v0

    sub-int v2, p1, v6

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->this$0:Lcom/sec/android/gallery3d/ui/SlotView;

    invoke-static {v6}, Lcom/sec/android/gallery3d/ui/SlotView;->access$900(Lcom/sec/android/gallery3d/ui/SlotView;)Lcom/sec/android/gallery3d/ui/SlotView$Layout;

    move-result-object v6

    iget v6, v6, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    iget v8, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v7, v8

    mul-int v3, v6, v7

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mHorizontalPadding:Lcom/sec/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/SlotView$IntegerAnimation;->get()I

    move-result v6

    iget v7, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    iget v8, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v7, v8

    mul-int/2addr v7, v0

    add-int v1, v6, v7

    sget-boolean v6, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v6, :cond_1

    sub-int v4, v3, v1

    :goto_0
    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mVerticalPadding:Lcom/sec/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/SlotView$IntegerAnimation;->get()I

    move-result v6

    iget v7, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    iget v8, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v7, v8

    mul-int/2addr v7, v2

    add-int v5, v6, v7

    iget v6, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    add-int/2addr v7, v5

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    return-object p2

    :cond_1
    move v4, v1

    goto :goto_0
.end method

.method private initLayoutParameters()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSpec:Lcom/sec/android/gallery3d/ui/SlotView$Spec;

    iget v0, v0, Lcom/sec/android/gallery3d/ui/SlotView$Spec;->slotWidth:I

    if-eq v0, v6, :cond_0

    iput v7, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSpec:Lcom/sec/android/gallery3d/ui/SlotView$Spec;

    iget v0, v0, Lcom/sec/android/gallery3d/ui/SlotView$Spec;->slotWidth:I

    iput v0, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSpec:Lcom/sec/android/gallery3d/ui/SlotView$Spec;

    iget v0, v0, Lcom/sec/android/gallery3d/ui/SlotView$Spec;->slotHeight:I

    iput v0, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    :goto_0
    const/4 v0, 0x2

    new-array v5, v0, [I

    iget v1, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mWidth:I

    iget v2, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mHeight:I

    iget v3, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    iget v4, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->initLayoutParameters(IIII[I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mVerticalPadding:Lcom/sec/android/gallery3d/ui/SlotView$IntegerAnimation;

    aget v1, v5, v7

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/SlotView$IntegerAnimation;->startAnimateTo(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mHorizontalPadding:Lcom/sec/android/gallery3d/ui/SlotView$IntegerAnimation;

    aget v1, v5, v8

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/SlotView$IntegerAnimation;->startAnimateTo(I)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->updateVisibleSlotRange()V

    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mWidth:I

    iget v1, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mHeight:I

    if-le v0, v1, :cond_1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSpec:Lcom/sec/android/gallery3d/ui/SlotView$Spec;

    iget v0, v0, Lcom/sec/android/gallery3d/ui/SlotView$Spec;->slotGap:I

    iput v0, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    iget v0, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mHeight:I

    iget v1, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    mul-int/lit8 v1, v1, -0x2

    sub-int/2addr v0, v1

    div-int/2addr v0, v6

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    iget v0, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    add-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    goto :goto_0
.end method

.method private initLayoutParameters(IIII[I)V
    .locals 10

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->this$0:Lcom/sec/android/gallery3d/ui/SlotView;

    invoke-static {v6}, Lcom/sec/android/gallery3d/ui/SlotView;->access$1000(Lcom/sec/android/gallery3d/ui/SlotView;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v6, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v6, p2

    iget v7, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v7, p4

    div-int v4, v6, v7

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :cond_0
    iput v4, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    iget v6, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    iget v7, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int v6, v0, p4

    add-int/lit8 v7, v0, -0x1

    iget v8, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    mul-int/2addr v7, v8

    add-int v5, v6, v7

    sub-int v6, p2, v5

    div-int/lit8 v6, v6, 0x2

    aput v6, p5, v9

    iget v6, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I

    iget v7, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    div-int v1, v6, v7

    iget v6, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    mul-int/2addr v6, v1

    add-int/lit8 v7, v1, -0x1

    iget v8, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    mul-int/2addr v7, v8

    add-int v3, v6, v7

    iget v6, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    if-lt v3, v6, :cond_1

    mul-int v6, v1, p3

    add-int/lit8 v7, v1, -0x1

    iget v8, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    iput v6, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mContentLength:I

    :goto_0
    const/4 v6, 0x1

    iget v7, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mContentLength:I

    sub-int v7, p1, v7

    div-int/lit8 v7, v7, 0x2

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    aput v7, p5, v6

    return-void

    :cond_1
    mul-int v6, v1, p3

    iput v6, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mContentLength:I

    goto :goto_0
.end method

.method private setSize(II)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mWidth:I

    iput p2, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mHeight:I

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->initLayoutParameters()V

    return-void
.end method

.method private setVisibleRange(II)V
    .locals 3

    iget v0, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mVisibleStart:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mVisibleEnd:I

    if-ne p2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ge p1, p2, :cond_4

    sget-boolean v0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p2

    :goto_1
    iput v0, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mVisibleStart:I

    sget-boolean v0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I

    sub-int p2, v0, p1

    :cond_2
    iput p2, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mVisibleEnd:I

    :goto_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->this$0:Lcom/sec/android/gallery3d/ui/SlotView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/SlotView;->access$1100(Lcom/sec/android/gallery3d/ui/SlotView;)Lcom/sec/android/gallery3d/ui/SlotView$SlotRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->this$0:Lcom/sec/android/gallery3d/ui/SlotView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/SlotView;->access$1100(Lcom/sec/android/gallery3d/ui/SlotView;)Lcom/sec/android/gallery3d/ui/SlotView$SlotRenderer;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mVisibleStart:I

    iget v2, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mVisibleEnd:I

    invoke-interface {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/SlotView$SlotRenderer;->onVisibleRangeChanged(II)V

    goto :goto_0

    :cond_3
    move v0, p1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mVisibleEnd:I

    iput v0, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mVisibleStart:I

    goto :goto_2
.end method

.method private updateVisibleSlotRange()V
    .locals 8

    iget v2, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mScrollPosition:I

    iget v5, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    iget v6, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v5, v6

    div-int v4, v2, v5

    const/4 v5, 0x0

    iget v6, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    mul-int/2addr v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v5, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mWidth:I

    add-int/2addr v5, v2

    iget v6, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    iget v7, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v6, v7

    div-int v1, v5, v6

    sget-boolean v5, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I

    add-int/lit8 v5, v5, -0x1

    :goto_0
    iget v6, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    mul-int/2addr v6, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, v3, v0}, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->setVisibleRange(II)V

    return-void

    :cond_0
    iget v5, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I

    goto :goto_0
.end method


# virtual methods
.method public getScrollLimit()I
    .locals 3

    iget v1, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mContentLength:I

    iget v2, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mWidth:I

    sub-int v0, v1, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public getSlotIndexByPosition(FF)I
    .locals 8

    const/4 v5, -0x1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget v7, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mScrollPosition:I

    add-int v0, v6, v7

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/lit8 v1, v6, 0x0

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mHorizontalPadding:Lcom/sec/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/SlotView$IntegerAnimation;->get()I

    move-result v6

    sub-int/2addr v0, v6

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mVerticalPadding:Lcom/sec/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/SlotView$IntegerAnimation;->get()I

    move-result v6

    sub-int/2addr v1, v6

    if-ltz v0, :cond_0

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget v6, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    iget v7, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v6, v7

    div-int v2, v0, v6

    sget-boolean v6, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I

    add-int/lit8 v6, v6, -0x1

    sub-int v2, v6, v2

    :cond_2
    iget v6, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    iget v7, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v6, v7

    div-int v4, v1, v6

    iget v6, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    if-ge v4, v6, :cond_0

    iget v6, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    iget v7, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v6, v7

    rem-int v6, v0, v6

    iget v7, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    if-ge v6, v7, :cond_0

    iget v6, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    iget v7, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v6, v7

    rem-int v6, v1, v6

    iget v7, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    if-ge v6, v7, :cond_0

    iget v6, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    mul-int/2addr v6, v2

    add-int v3, v6, v4

    iget v6, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I

    if-lt v3, v6, :cond_3

    move v3, v5

    :cond_3
    move v5, v3

    goto :goto_0
.end method

.method public getVisibleEnd()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mVisibleEnd:I

    return v0
.end method

.method public getVisibleStart()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mVisibleStart:I

    return v0
.end method

.method public setScrollPosition(I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mScrollPosition:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mScrollPosition:I

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->updateVisibleSlotRange()V

    goto :goto_0
.end method

.method public setSlotCount(I)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget v4, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I

    if-ne p1, v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget v4, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mHorizontalPadding:Lcom/sec/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v4, v3}, Lcom/sec/android/gallery3d/ui/SlotView$IntegerAnimation;->setEnabled(Z)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mVerticalPadding:Lcom/sec/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v4, v3}, Lcom/sec/android/gallery3d/ui/SlotView$IntegerAnimation;->setEnabled(Z)V

    :cond_2
    iput p1, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mHorizontalPadding:Lcom/sec/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SlotView$IntegerAnimation;->getTarget()I

    move-result v0

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mVerticalPadding:Lcom/sec/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SlotView$IntegerAnimation;->getTarget()I

    move-result v1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->initLayoutParameters()V

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mVerticalPadding:Lcom/sec/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SlotView$IntegerAnimation;->getTarget()I

    move-result v4

    if-ne v1, v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mHorizontalPadding:Lcom/sec/android/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SlotView$IntegerAnimation;->getTarget()I

    move-result v4

    if-eq v0, v4, :cond_0

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method public setSlotSpec(Lcom/sec/android/gallery3d/ui/SlotView$Spec;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->mSpec:Lcom/sec/android/gallery3d/ui/SlotView$Spec;

    return-void
.end method
