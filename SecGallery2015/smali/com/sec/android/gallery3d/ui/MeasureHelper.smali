.class Lcom/sec/android/gallery3d/ui/MeasureHelper;
.super Ljava/lang/Object;
.source "MeasureHelper.java"


# static fields
.field private static final sInstance:Lcom/sec/android/gallery3d/ui/MeasureHelper;


# instance fields
.field private mComponent:Lcom/sec/android/gallery3d/ui/GLView;

.field private mPreferredHeight:I

.field private mPreferredWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/gallery3d/ui/MeasureHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/ui/MeasureHelper;-><init>(Lcom/sec/android/gallery3d/ui/GLView;)V

    sput-object v0, Lcom/sec/android/gallery3d/ui/MeasureHelper;->sInstance:Lcom/sec/android/gallery3d/ui/MeasureHelper;

    return-void
.end method

.method private constructor <init>(Lcom/sec/android/gallery3d/ui/GLView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/MeasureHelper;->mComponent:Lcom/sec/android/gallery3d/ui/GLView;

    return-void
.end method

.method public static getInstance(Lcom/sec/android/gallery3d/ui/GLView;)Lcom/sec/android/gallery3d/ui/MeasureHelper;
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/ui/MeasureHelper;->sInstance:Lcom/sec/android/gallery3d/ui/MeasureHelper;

    iput-object p0, v0, Lcom/sec/android/gallery3d/ui/MeasureHelper;->mComponent:Lcom/sec/android/gallery3d/ui/GLView;

    sget-object v0, Lcom/sec/android/gallery3d/ui/MeasureHelper;->sInstance:Lcom/sec/android/gallery3d/ui/MeasureHelper;

    return-object v0
.end method

.method private static getLength(II)I
    .locals 2

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    move v0, p1

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private measure(IILandroid/graphics/Rect;)V
    .locals 3

    iget v0, p0, Lcom/sec/android/gallery3d/ui/MeasureHelper;->mPreferredWidth:I

    iget v1, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget v1, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/sec/android/gallery3d/ui/MeasureHelper;->getLength(II)I

    move-result v0

    iget v1, p0, Lcom/sec/android/gallery3d/ui/MeasureHelper;->mPreferredHeight:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    invoke-static {p2, v1}, Lcom/sec/android/gallery3d/ui/MeasureHelper;->getLength(II)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/gallery3d/ui/MeasureHelper;->setMeasuredSize(II)V

    return-void
.end method

.method public static releaseInstance()V
    .locals 2

    sget-object v0, Lcom/sec/android/gallery3d/ui/MeasureHelper;->sInstance:Lcom/sec/android/gallery3d/ui/MeasureHelper;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/android/gallery3d/ui/MeasureHelper;->mComponent:Lcom/sec/android/gallery3d/ui/GLView;

    return-void
.end method

.method private setMeasuredSize(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/MeasureHelper;->mComponent:Lcom/sec/android/gallery3d/ui/GLView;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/gallery3d/ui/GLView;->setMeasuredSize(II)V

    return-void
.end method


# virtual methods
.method public measure(II)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/MeasureHelper;->mComponent:Lcom/sec/android/gallery3d/ui/GLView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/gallery3d/ui/MeasureHelper;->measure(IILandroid/graphics/Rect;)V

    return-void
.end method

.method public setPreferredContentSize(II)Lcom/sec/android/gallery3d/ui/MeasureHelper;
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/ui/MeasureHelper;->mPreferredWidth:I

    iput p2, p0, Lcom/sec/android/gallery3d/ui/MeasureHelper;->mPreferredHeight:I

    return-object p0
.end method
