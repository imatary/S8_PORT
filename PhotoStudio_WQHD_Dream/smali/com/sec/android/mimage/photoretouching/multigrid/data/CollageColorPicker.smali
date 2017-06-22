.class public Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;
.super Ljava/lang/Object;
.source "CollageColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker$ColorPickerCallback;
    }
.end annotation


# static fields
.field private static final COLOR_BUTTON_NUM:I = 0xe


# instance fields
.field private BITMAP_HSV_HIGHT:I

.field private BITMAP_HSV_WIDTH:I

.field private _mColorPaletteWidth:I

.field private _mPickeraHSVWidth:I

.field private colorHSVCurent:I

.field private focusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private idSelectedColor:I

.field private isPickerPosShow:Z

.field private mAct:Landroid/app/Activity;

.field private mColorChipPicker:Landroid/widget/LinearLayout;

.field private mColorHSV:Landroid/widget/RelativeLayout;

.field private mColorHSVBitmap:Landroid/graphics/Bitmap;

.field private mColorPalette:Landroid/widget/RelativeLayout;

.field private mColorPaletteBitmap:Landroid/graphics/Bitmap;

.field private mColorPaletteBitmapOri:Landroid/graphics/Bitmap;

.field private mColorPalettePicker:Landroid/widget/LinearLayout;

.field private mColorPalettePickerLeft:I

.field private mColorPalettePickerTop:I

.field private mColorPaletteWidth:I

.field private mColorPickerCallback:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker$ColorPickerCallback;

.field private mColorPickerColor:Landroid/widget/RelativeLayout;

.field private mColorPickerLayout:Landroid/widget/LinearLayout;

.field private mColorValueHSVPicker:Landroid/widget/LinearLayout;

.field private mColorValueHSVPickerLeft:I

.field private mContext:Landroid/content/Context;

.field private mCurrentColor:I

.field private mCurrentColorBtn:Landroid/widget/LinearLayout;

.field mEvent:Landroid/view/MotionEvent;

.field private mManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

.field private mOnTouchColorHSV:Landroid/view/View$OnTouchListener;

.field private mOnTouchColorPalette:Landroid/view/View$OnTouchListener;

.field private mPickerHeight:I

.field private mPickerWidth:I

.field private mPickeraHSVWidth:I

.field private mPositionXickeraHSV:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mAct:Landroid/app/Activity;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPickerLayout:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPalette:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorHSV:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPickerColor:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorChipPicker:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPalettePicker:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorValueHSVPicker:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mCurrentColorBtn:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mOnTouchColorPalette:Landroid/view/View$OnTouchListener;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mOnTouchColorHSV:Landroid/view/View$OnTouchListener;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPaletteBitmapOri:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorHSVBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPickerCallback:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker$ColorPickerCallback;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mCurrentColor:I

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mPickerWidth:I

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mPickerHeight:I

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mPickeraHSVWidth:I

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mPositionXickeraHSV:I

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPaletteWidth:I

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->BITMAP_HSV_WIDTH:I

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->BITMAP_HSV_HIGHT:I

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->idSelectedColor:I

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPalettePickerLeft:I

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPalettePickerTop:I

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorValueHSVPickerLeft:I

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->_mColorPaletteWidth:I

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->_mPickeraHSVWidth:I

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->isPickerPosShow:Z

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mEvent:Landroid/view/MotionEvent;

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mAct:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->init()V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPaletteWidth:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->_mColorPaletteWidth:I

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mPickeraHSVWidth:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->_mPickeraHSVWidth:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mCurrentColor:I

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mCurrentColor:I

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;Landroid/view/MotionEvent;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->setPickerPos(Landroid/view/MotionEvent;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPickerLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->idSelectedColor:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->idSelectedColor:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;)Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker$ColorPickerCallback;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPickerCallback:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker$ColorPickerCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->setSelected(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$502(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->colorHSVCurent:I

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;Landroid/view/MotionEvent;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->getColor(Landroid/view/MotionEvent;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;)Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;Landroid/view/MotionEvent;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->getColorHSV(Landroid/view/MotionEvent;)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;Landroid/view/MotionEvent;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->setPickerHSVPos(Landroid/view/MotionEvent;Z)V

    return-void
.end method

.method private getColor(Landroid/view/MotionEvent;)I
    .locals 10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mPickerWidth:I

    div-int/lit8 v6, v6, 0x2

    sub-int v1, v5, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mPickerWidth:I

    div-int/lit8 v6, v6, 0x2

    sub-int v4, v5, v6

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPaletteBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v0, v5, 0x2

    sub-int v5, v0, v1

    sub-int v6, v0, v1

    mul-int/2addr v5, v6

    sub-int v6, v0, v4

    sub-int v7, v0, v4

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    mul-int v6, v0, v0

    if-le v5, v6, :cond_0

    add-int/lit8 v5, v0, -0x1

    int-to-double v6, v5

    sub-int v5, v0, v1

    sub-int v8, v0, v1

    mul-int/2addr v5, v8

    sub-int v8, v0, v4

    sub-int v9, v0, v4

    mul-int/2addr v8, v9

    add-int/2addr v5, v8

    int-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    div-double v2, v6, v8

    int-to-double v6, v0

    sub-int v5, v0, v1

    int-to-double v8, v5

    mul-double/2addr v8, v2

    sub-double/2addr v6, v8

    double-to-int v1, v6

    int-to-double v6, v0

    sub-int v5, v0, v4

    int-to-double v8, v5

    mul-double/2addr v8, v2

    sub-double/2addr v6, v8

    double-to-int v4, v6

    if-ge v1, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    :goto_0
    if-ge v4, v0, :cond_2

    add-int/lit8 v4, v4, 0x1

    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPickerLayout:Landroid/widget/LinearLayout;

    const v6, 0x7f0e0182

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    check-cast v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPaletteBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v1, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->BITMAP_HSV_WIDTH:I

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->BITMAP_HSV_HIGHT:I

    invoke-virtual {p0, v6, v7, v8}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->makeBitmap(III)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPaletteBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v1, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    return v5

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1
.end method

.method private getColorHSV(Landroid/view/MotionEvent;)I
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mPositionXickeraHSV:I

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mPositionXickeraHSV:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->BITMAP_HSV_WIDTH:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mPositionXickeraHSV:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorHSVBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mPositionXickeraHSV:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    return v0
.end method

.method private init()V
    .locals 4

    const v3, 0x7f080226

    const/4 v2, 0x4

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->setBGColorForDream()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mAct:Landroid/app/Activity;

    const v1, 0x7f0e0169

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPickerLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPickerLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0e017d

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPalette:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPickerLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0e0181

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorHSV:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPickerLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPickerLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0e017b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorChipPicker:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPickerLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0e016b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPickerColor:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPickerLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0e017f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPalettePicker:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPalettePicker:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPickerLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0e0184

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorValueHSVPicker:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorValueHSVPicker:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mPickerWidth:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mPickerHeight:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080223

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->BITMAP_HSV_WIDTH:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080221

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->BITMAP_HSV_HIGHT:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08022f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPaletteWidth:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08020c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mPickeraHSVWidth:I

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->BITMAP_HSV_WIDTH:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mPositionXickeraHSV:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPickerLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0e0179

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mCurrentColorBtn:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->initTouchListener()V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->initHSVTouchListener()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPickerLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->initFocusListener(Landroid/widget/LinearLayout;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPalette:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPalette:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mOnTouchColorPalette:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorHSV:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorHSV:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mOnTouchColorHSV:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPaletteBitmapOri:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPaletteBitmapOri:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020221

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPaletteBitmapOri:Landroid/graphics/Bitmap;

    :cond_3
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPaletteBitmapOri:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080210

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08020d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPaletteBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private initFocusListener(Landroid/widget/LinearLayout;)V
    .locals 3

    new-instance v1, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker$1;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker$1;-><init>(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;)V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPickerLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0e016c

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initHSVTouchListener()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mOnTouchColorHSV:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker$3;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker$3;-><init>(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mOnTouchColorHSV:Landroid/view/View$OnTouchListener;

    :cond_0
    return-void
.end method

.method private initTouchListener()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mOnTouchColorPalette:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker$2;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker$2;-><init>(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mOnTouchColorPalette:Landroid/view/View$OnTouchListener;

    :cond_0
    return-void
.end method

.method private setPickerHSVPos(Landroid/view/MotionEvent;Z)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPalettePicker:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorValueHSVPicker:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorValueHSVPicker:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mPickerHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mPickeraHSVWidth:I

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mPickerHeight:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorValueHSVPickerLeft:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorValueHSVPicker:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorValueHSVPicker:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setPickerPos()V
    .locals 8

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPalettePicker:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorValueHSVPicker:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPaletteWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->_mColorPaletteWidth:I

    int-to-float v5, v5

    div-float v0, v4, v5

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPalettePicker:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPalettePickerLeft:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    iget v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPalettePickerTop:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    iget v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPalettePicker:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPalettePickerLeft:I

    iget v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPalettePickerTop:I

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mPickeraHSVWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->_mPickeraHSVWidth:I

    int-to-float v5, v5

    div-float v1, v4, v5

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorValueHSVPicker:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorValueHSVPickerLeft:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v4, v4

    iget v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorValueHSVPicker:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorValueHSVPickerLeft:I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPickerLayout:Landroid/widget/LinearLayout;

    const v5, 0x7f0e0182

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    check-cast v4, Landroid/widget/ImageView;

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->colorHSVCurent:I

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->BITMAP_HSV_WIDTH:I

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->BITMAP_HSV_HIGHT:I

    invoke-virtual {p0, v5, v6, v7}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->makeBitmap(III)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setPickerPos(Landroid/view/MotionEvent;Z)V
    .locals 10

    const/4 v9, 0x0

    iput-boolean p2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->isPickerPosShow:Z

    if-eqz p2, :cond_1

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPalettePicker:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorValueHSVPicker:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPalettePicker:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mPickerWidth:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mPickerHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPaletteWidth:I

    div-int/lit8 v0, v4, 0x2

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mPickerWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v0, v4

    iget v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mPickerWidth:I

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v0, v5

    iget v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr v5, v6

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mPickerWidth:I

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v0, v5

    iget v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mPickerWidth:I

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v0, v6

    iget v7, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v6, v7

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mPickerHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v0, v5

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mPickerHeight:I

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v0, v6

    mul-int/2addr v5, v6

    if-le v4, v5, :cond_0

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mPickerWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v0, v4

    int-to-double v4, v4

    iget v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int v6, v0, v6

    iget v7, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int v7, v0, v7

    mul-int/2addr v6, v7

    iget v7, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sub-int v7, v0, v7

    iget v8, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sub-int v8, v0, v8

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    div-double v2, v4, v6

    int-to-double v4, v0

    iget v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sub-int v6, v0, v6

    int-to-double v6, v6

    mul-double/2addr v6, v2

    sub-double/2addr v4, v6

    double-to-int v4, v4

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mPickerHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    int-to-double v4, v0

    iget v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int v6, v0, v6

    int-to-double v6, v6

    mul-double/2addr v6, v2

    sub-double/2addr v4, v6

    double-to-int v4, v4

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mPickerHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :cond_0
    iget v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPaletteWidth:I

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mPickerWidth:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPaletteWidth:I

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mPickerWidth:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPalettePickerLeft:I

    iget v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPalettePickerTop:I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPalettePicker:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPalettePicker:Landroid/widget/LinearLayout;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setSelected(Landroid/view/View;)V
    .locals 6

    const/4 v4, 0x4

    const/4 v3, 0x0

    const v5, 0x7f0e017c

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorChipPicker:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorChipPicker:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080362

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorChipPicker:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPickerColor:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    div-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorChipPicker:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mCurrentColor:I

    const v3, -0x10102

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorChipPicker:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f020225

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    div-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorChipPicker:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f020224

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorChipPicker:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorChipPicker:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public _updateColor(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPickerCallback:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker$ColorPickerCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPickerCallback:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker$ColorPickerCallback;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mCurrentColor:I

    invoke-interface {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker$ColorPickerCallback;->setCollageBackgroundColor(I)Z

    :cond_0
    return-void
.end method

.method public configurationChanged()V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mContext:Landroid/content/Context;

    const v1, 0x7f0e016a

    const v2, 0x7f080212

    const v3, 0x7f080211

    const v4, 0x7f08057f

    const v5, 0x7f08057f

    const v6, 0x7f08057f

    const v7, 0x7f08057f

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateLinearLayoutParams(Landroid/content/Context;IIIIIII)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mContext:Landroid/content/Context;

    const v1, 0x7f0e017d

    const v2, 0x7f08022f

    const v3, 0x7f08022f

    const v4, 0x7f08057f

    const v5, 0x7f08020e

    const v6, 0x7f08057f

    const v7, 0x7f08020f

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateRelativeLayoutParams(Landroid/content/Context;IIIIIII)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mContext:Landroid/content/Context;

    const v1, 0x7f0e017e

    const v2, 0x7f080210

    const v3, 0x7f080210

    const v4, 0x7f08057f

    const v5, 0x7f08057f

    const v6, 0x7f08057f

    const v7, 0x7f08057f

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateRelativeLayoutParams(Landroid/content/Context;IIIIIII)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0180

    const v2, 0x7f080226

    const v3, 0x7f080226

    const v4, 0x7f08057f

    const v5, 0x7f08057f

    const v6, 0x7f08057f

    const v7, 0x7f08057f

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateLinearLayoutParams(Landroid/content/Context;IIIIIII)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0181

    const v2, 0x7f08020c

    const v3, 0x7f080226

    const v4, 0x7f08057f

    const v5, 0x7f08020b

    const v6, 0x7f08020a

    const v7, 0x7f08057f

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateRelativeLayoutParams(Landroid/content/Context;IIIIIII)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0182

    const v2, 0x7f080223

    const v3, 0x7f080221

    const v4, 0x7f08057f

    const v5, 0x7f08057f

    const v6, 0x7f08057f

    const v7, 0x7f08057f

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateRelativeLayoutParams(Landroid/content/Context;IIIIIII)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0183

    const v2, 0x7f080223

    const v3, 0x7f080221

    const v4, 0x7f08057f

    const v5, 0x7f08057f

    const v6, 0x7f08057f

    const v7, 0x7f08057f

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateRelativeLayoutParams(Landroid/content/Context;IIIIIII)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0185

    const v2, 0x7f080226

    const v3, 0x7f080226

    const v4, 0x7f08057f

    const v5, 0x7f08057f

    const v6, 0x7f08057f

    const v7, 0x7f08057f

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateLinearLayoutParams(Landroid/content/Context;IIIIIII)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mContext:Landroid/content/Context;

    const v1, 0x7f0e016c

    const v2, 0x7f080363

    const v3, 0x7f080363

    const v4, 0x7f080207

    const v5, 0x7f08057f

    const v6, 0x7f08057f

    const v7, 0x7f080208

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateRelativeLayoutParams(Landroid/content/Context;IIIIIII)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mContext:Landroid/content/Context;

    const v1, 0x7f0e016d

    const v2, 0x7f080363

    const v3, 0x7f080363

    const v4, 0x7f080209

    const v5, 0x7f08057f

    const v6, 0x7f08057f

    const v7, 0x7f08057f

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateRelativeLayoutParams(Landroid/content/Context;IIIIIII)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mContext:Landroid/content/Context;

    const v1, 0x7f0e016e

    const v2, 0x7f080363

    const v3, 0x7f080363

    const v4, 0x7f080209

    const v5, 0x7f08057f

    const v6, 0x7f08057f

    const v7, 0x7f08057f

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateRelativeLayoutParams(Landroid/content/Context;IIIIIII)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mContext:Landroid/content/Context;

    const v1, 0x7f0e016f

    const v2, 0x7f080363

    const v3, 0x7f080363

    const v4, 0x7f08057f

    const v5, 0x7f08057f

    const v6, 0x7f08057f

    const v7, 0x7f080208

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateRelativeLayoutParams(Landroid/content/Context;IIIIIII)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0170

    const v2, 0x7f080363

    const v3, 0x7f080363

    const v4, 0x7f080209

    const v5, 0x7f08057f

    const v6, 0x7f08057f

    const v7, 0x7f08057f

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateRelativeLayoutParams(Landroid/content/Context;IIIIIII)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0171

    const v2, 0x7f080363

    const v3, 0x7f080363

    const v4, 0x7f080209

    const v5, 0x7f08057f

    const v6, 0x7f08057f

    const v7, 0x7f08057f

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateRelativeLayoutParams(Landroid/content/Context;IIIIIII)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0172

    const v2, 0x7f080363

    const v3, 0x7f080363

    const v4, 0x7f08057f

    const v5, 0x7f08057f

    const v6, 0x7f08057f

    const v7, 0x7f080208

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateRelativeLayoutParams(Landroid/content/Context;IIIIIII)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0173

    const v2, 0x7f080363

    const v3, 0x7f080363

    const v4, 0x7f080209

    const v5, 0x7f08057f

    const v6, 0x7f08057f

    const v7, 0x7f08057f

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateRelativeLayoutParams(Landroid/content/Context;IIIIIII)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0174

    const v2, 0x7f080363

    const v3, 0x7f080363

    const v4, 0x7f080209

    const v5, 0x7f08057f

    const v6, 0x7f08057f

    const v7, 0x7f08057f

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateRelativeLayoutParams(Landroid/content/Context;IIIIIII)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mContext:Landroid/content/Context;

    const v1, 0x7f0e017c

    const v2, 0x7f080362

    const v3, 0x7f080362

    const v4, 0x7f08057f

    const v5, 0x7f08057f

    const v6, 0x7f08057f

    const v7, 0x7f08057f

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateLinearLayoutParams(Landroid/content/Context;IIIIIII)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->init()V

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->isPickerPosShow:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->setPickerPos()V

    :cond_0
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPaletteWidth:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->_mColorPaletteWidth:I

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mPickeraHSVWidth:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->_mPickeraHSVWidth:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0e016a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0206a3

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->idSelectedColor:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorChipPicker:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->idSelectedColor:I

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->getBGColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mCurrentColor:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->setPickerPos(Landroid/view/MotionEvent;Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPickerCallback:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker$ColorPickerCallback;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mCurrentColor:I

    invoke-interface {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker$ColorPickerCallback;->setCollageBackgroundColor(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker$4;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker$4;-><init>(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;)V

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mOnTouchColorPalette:Landroid/view/View$OnTouchListener;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mOnTouchColorHSV:Landroid/view/View$OnTouchListener;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPaletteBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->recycleBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorHSVBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->recycleBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPaletteBitmapOri:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;->recycleBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public getCurrentButtonId()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mCurrentColorBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    return v0
.end method

.method public getCurrentColor()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mCurrentColor:I

    return v0
.end method

.method protected makeBitmap(III)Landroid/graphics/drawable/Drawable;
    .locals 12

    if-le p2, p3, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v6

    new-array v2, v6, [I

    const/4 v8, 0x3

    new-array v3, v8, [F

    fill-array-data v3, :array_0

    invoke-static {p1, v3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v6, :cond_2

    const/4 v9, 0x2

    if-eqz v5, :cond_1

    int-to-float v8, v4

    int-to-float v10, v6

    div-float/2addr v8, v10

    :goto_2
    aput v8, v3, v9

    invoke-static {v3}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v8

    aput v8, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    const/high16 v8, 0x3f800000    # 1.0f

    int-to-float v10, v4

    int-to-float v11, v6

    div-float/2addr v10, v11

    sub-float/2addr v8, v10

    goto :goto_2

    :cond_2
    if-eqz v5, :cond_4

    move v1, p2

    :goto_3
    if-eqz v5, :cond_5

    const/4 v0, 0x1

    :goto_4
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v0, v8}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorHSVBitmap:Landroid/graphics/Bitmap;

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPalettePicker:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorHSVBitmap:Landroid/graphics/Bitmap;

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mPositionXickeraHSV:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->setCurrentColorOnTouch(I)V

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPickerCallback:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker$ColorPickerCallback;

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mCurrentColor:I

    invoke-interface {v8, v9}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker$ColorPickerCallback;->setCollageBackgroundColor(I)Z

    :cond_3
    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorHSVBitmap:Landroid/graphics/Bitmap;

    invoke-static {v8, v9}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080222

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setAntiAlias(Z)V

    return-object v7

    :cond_4
    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    move v0, p3

    goto :goto_4

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public setColorPickerCallback(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker$ColorPickerCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPickerCallback:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker$ColorPickerCallback;

    return-void
.end method

.method public setCurrentColorOnTouch(I)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, -0x1

    :cond_0
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mCurrentColor:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mCurrentColorBtn:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mCurrentColor:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mCurrentColorBtn:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mCurrentColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public setPickerDefault()V
    .locals 6

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorChipPicker:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorChipPicker:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPalettePicker:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->COLOR_01:I

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->setCurrentColorOnTouch(I)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPickerLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f0e016c

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->setSelected(Landroid/view/View;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPalettePicker:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPaletteWidth:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mPickerWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPaletteWidth:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mPickerHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPalettePicker:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPalettePickerLeft:I

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPalettePickerTop:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorValueHSVPicker:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mPickeraHSVWidth:I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mPickerWidth:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorValueHSVPicker:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorValueHSVPickerLeft:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPickerLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f0e0182

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, -0x1

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->BITMAP_HSV_WIDTH:I

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->BITMAP_HSV_HIGHT:I

    invoke-virtual {p0, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->makeBitmap(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public updateColorOnClick(I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const v0, 0x7f0e0179

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mCurrentColorBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mCurrentColor:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mEvent:Landroid/view/MotionEvent;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->setPickerPos(Landroid/view/MotionEvent;Z)V

    :cond_0
    :goto_0
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mCurrentColor:I

    if-ne v0, v2, :cond_1

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mCurrentColor:I

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPickerLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mColorPickerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->setSelected(Landroid/view/View;)V

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->idSelectedColor:I

    :cond_2
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mCurrentColor:I

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->_updateColor(I)V

    return-void

    :cond_3
    invoke-static {p1}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->getBGColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->mCurrentColor:I

    invoke-direct {p0, v3, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->setPickerPos(Landroid/view/MotionEvent;Z)V

    invoke-direct {p0, v3, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageColorPicker;->setPickerHSVPos(Landroid/view/MotionEvent;Z)V

    goto :goto_0
.end method
