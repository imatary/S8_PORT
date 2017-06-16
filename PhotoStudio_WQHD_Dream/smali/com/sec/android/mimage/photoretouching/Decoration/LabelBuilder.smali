.class public Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;
.super Ljava/lang/Object;
.source "LabelBuilder.java"


# static fields
.field private static final BITMAP_WIDTH:I = 0x40

.field public static final LABEL_STYLE_1:I = 0x1

.field public static final LABEL_STYLE_10:I = 0xa

.field public static final LABEL_STYLE_11:I = 0xb

.field public static final LABEL_STYLE_12:I = 0xc

.field public static final LABEL_STYLE_13:I = 0xd

.field public static final LABEL_STYLE_14:I = 0xe

.field public static final LABEL_STYLE_15:I = 0xf

.field public static final LABEL_STYLE_16:I = 0x10

.field public static final LABEL_STYLE_17:I = 0x11

.field public static final LABEL_STYLE_18:I = 0x12

.field public static final LABEL_STYLE_19:I = 0x13

.field public static final LABEL_STYLE_2:I = 0x2

.field public static final LABEL_STYLE_20:I = 0x14

.field public static final LABEL_STYLE_21:I = 0x15

.field public static final LABEL_STYLE_22:I = 0x16

.field public static final LABEL_STYLE_23:I = 0x17

.field public static final LABEL_STYLE_24:I = 0x18

.field public static final LABEL_STYLE_3:I = 0x3

.field public static final LABEL_STYLE_4:I = 0x4

.field public static final LABEL_STYLE_5:I = 0x5

.field public static final LABEL_STYLE_6:I = 0x6

.field public static final LABEL_STYLE_7:I = 0x7

.field public static final LABEL_STYLE_8:I = 0x8

.field public static final LABEL_STYLE_9:I = 0x9

.field private static MAX_CHAR_EXCEPTION:I = 0x0

.field private static MAX_CHAR_NORMAL:I = 0x0

.field private static final OUTPUT_SIZE:I = 0x200


# instance fields
.field private TEXT_SIZE:I

.field isKoreanJapanese:Z

.field private mContext:Landroid/content/Context;

.field mIsCJK:Z

.field private mLabelLayout:Landroid/widget/LinearLayout;

.field private mLeftImage:Landroid/widget/ImageView;

.field private mMiddleImage:Landroid/widget/LinearLayout;

.field private mRightImage:Landroid/widget/ImageView;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    sput v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->MAX_CHAR_NORMAL:I

    const/16 v0, 0xa

    sput v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->MAX_CHAR_EXCEPTION:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mContext:Landroid/content/Context;

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->TEXT_SIZE:I

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mLeftImage:Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mMiddleImage:Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mRightImage:Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mLabelLayout:Landroid/widget/LinearLayout;

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->isKoreanJapanese:Z

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mIsCJK:Z

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08037d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->TEXT_SIZE:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030080

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mLabelLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mLabelLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0e0277

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mLabelLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0e0274

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mLeftImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mLabelLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0e0276

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mMiddleImage:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mLabelLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0e0278

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mRightImage:Landroid/widget/ImageView;

    return-void
.end method

.method private clearViewResource(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x0

    if-eqz p1, :cond_1

    instance-of v5, p1, Landroid/widget/ImageView;

    if-eqz v5, :cond_2

    move-object v5, p1

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v5, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_0

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void

    :cond_2
    instance-of v5, p1, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_1

    move-object v4, p1

    check-cast v4, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_1

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v5, v1, Landroid/widget/ImageView;

    if-eqz v5, :cond_4

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v5, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_3

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private drawLabelForFreeStyle(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Typeface;II[Landroid/graphics/Rect;I)V
    .locals 13

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move/from16 v0, p5

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    move/from16 v0, p4

    int-to-float v8, v0

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    sget v9, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->MAX_CHAR_EXCEPTION:I

    if-gt v8, v9, :cond_1

    move-object v7, p2

    new-instance v1, Landroid/graphics/Rect;

    const/4 v8, 0x1

    aget-object v8, p6, v8

    invoke-direct {v1, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v8, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v8

    iput v8, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {v6}, Landroid/graphics/Paint;->descent()F

    move-result v8

    invoke-virtual {v6}, Landroid/graphics/Paint;->ascent()F

    move-result v9

    sub-float/2addr v8, v9

    iput v8, v2, Landroid/graphics/RectF;->bottom:F

    iget v8, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    iget v10, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    iput v8, v2, Landroid/graphics/RectF;->left:F

    iget v8, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    iget v10, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    iput v8, v2, Landroid/graphics/RectF;->top:F

    move/from16 v0, p5

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget v8, v2, Landroid/graphics/RectF;->left:F

    iget v9, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6}, Landroid/graphics/Paint;->ascent()F

    move-result v10

    sub-float/2addr v9, v10

    invoke-virtual {v4, v7, v8, v9, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct {p0, v8}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/16 v8, 0x1c

    move/from16 v0, p7

    if-ne v0, v8, :cond_0

    const/16 v8, 0x4d

    const/16 v9, 0xfa

    const/16 v10, 0xfa

    const/16 v11, 0xfa

    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    iget v8, v2, Landroid/graphics/RectF;->left:F

    iget v9, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6}, Landroid/graphics/Paint;->ascent()F

    move-result v10

    sub-float/2addr v9, v10

    invoke-virtual {v4, v7, v8, v9, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_1
    return-void

    :cond_0
    const/16 v8, 0x4d

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    sget v9, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->MAX_CHAR_NORMAL:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {p0, p2}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->splitByUnicodeForIndex(Ljava/lang/String;)I

    move-result v3

    const/4 v8, 0x0

    invoke-virtual {p2, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    new-instance v1, Landroid/graphics/Rect;

    const/4 v8, 0x2

    aget-object v8, p6, v8

    iget v8, v8, Landroid/graphics/Rect;->left:I

    const/4 v9, 0x2

    aget-object v9, p6, v9

    iget v9, v9, Landroid/graphics/Rect;->top:I

    const/4 v10, 0x2

    aget-object v10, p6, v10

    iget v10, v10, Landroid/graphics/Rect;->right:I

    const/4 v11, 0x2

    aget-object v11, p6, v11

    iget v11, v11, Landroid/graphics/Rect;->top:I

    const/4 v12, 0x2

    aget-object v12, p6, v12

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    invoke-direct {v1, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v8, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v8

    iput v8, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {v6}, Landroid/graphics/Paint;->descent()F

    move-result v8

    invoke-virtual {v6}, Landroid/graphics/Paint;->ascent()F

    move-result v9

    sub-float/2addr v8, v9

    iput v8, v2, Landroid/graphics/RectF;->bottom:F

    iget v8, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    iget v10, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    iput v8, v2, Landroid/graphics/RectF;->left:F

    iget v8, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    iget v10, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    iput v8, v2, Landroid/graphics/RectF;->top:F

    move/from16 v0, p5

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v8, v2, Landroid/graphics/RectF;->left:F

    iget v9, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6}, Landroid/graphics/Paint;->ascent()F

    move-result v10

    sub-float/2addr v9, v10

    invoke-virtual {v4, v7, v8, v9, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct {p0, v8}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/16 v8, 0x1c

    move/from16 v0, p7

    if-ne v0, v8, :cond_2

    const/16 v8, 0x4d

    const/16 v9, 0xfa

    const/16 v10, 0xfa

    const/16 v11, 0xfa

    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setColor(I)V

    :goto_2
    iget v8, v2, Landroid/graphics/RectF;->left:F

    iget v9, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6}, Landroid/graphics/Paint;->ascent()F

    move-result v10

    sub-float/2addr v9, v10

    invoke-virtual {v4, v7, v8, v9, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    new-instance v1, Landroid/graphics/Rect;

    const/4 v8, 0x2

    aget-object v8, p6, v8

    iget v8, v8, Landroid/graphics/Rect;->left:I

    const/4 v9, 0x2

    aget-object v9, p6, v9

    iget v9, v9, Landroid/graphics/Rect;->top:I

    const/4 v10, 0x2

    aget-object v10, p6, v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    const/4 v10, 0x2

    aget-object v10, p6, v10

    iget v10, v10, Landroid/graphics/Rect;->right:I

    const/4 v11, 0x2

    aget-object v11, p6, v11

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v8, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v8

    iput v8, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {v6}, Landroid/graphics/Paint;->descent()F

    move-result v8

    invoke-virtual {v6}, Landroid/graphics/Paint;->ascent()F

    move-result v9

    sub-float/2addr v8, v9

    iput v8, v2, Landroid/graphics/RectF;->bottom:F

    iget v8, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    iget v10, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    iput v8, v2, Landroid/graphics/RectF;->left:F

    iget v8, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    iget v10, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    iput v8, v2, Landroid/graphics/RectF;->top:F

    move/from16 v0, p5

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v8, v2, Landroid/graphics/RectF;->left:F

    iget v9, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6}, Landroid/graphics/Paint;->ascent()F

    move-result v10

    sub-float/2addr v9, v10

    invoke-virtual {v4, v7, v8, v9, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct {p0, v8}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/16 v8, 0x1c

    move/from16 v0, p7

    if-ne v0, v8, :cond_3

    const/16 v8, 0x4d

    const/16 v9, 0xfa

    const/16 v10, 0xfa

    const/16 v11, 0xfa

    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setColor(I)V

    :goto_3
    iget v8, v2, Landroid/graphics/RectF;->left:F

    iget v9, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6}, Landroid/graphics/Paint;->ascent()F

    move-result v10

    sub-float/2addr v9, v10

    invoke-virtual {v4, v7, v8, v9, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_2
    const/16 v8, 0x4d

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_2

    :cond_3
    const/16 v8, 0x4d

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3
.end method

.method private drawLabelForSingleImage(Landroid/graphics/Bitmap;Ljava/lang/String;ILandroid/graphics/Typeface;III[Landroid/graphics/Rect;)V
    .locals 14

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    move/from16 v0, p3

    invoke-static {v9, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move/from16 v0, p7

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    move/from16 v0, p6

    int-to-float v9, v0

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-object v10, p8, v10

    invoke-virtual {v5, v2, v9, v10, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v9

    sget v10, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->MAX_CHAR_EXCEPTION:I

    if-le v9, v10, :cond_0

    sget v9, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->MAX_CHAR_EXCEPTION:I

    move/from16 v0, p5

    if-ne v0, v9, :cond_1

    :cond_0
    const/4 v9, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v10

    sget v11, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->MAX_CHAR_EXCEPTION:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    new-instance v1, Landroid/graphics/Rect;

    const/4 v9, 0x1

    aget-object v9, p8, v9

    invoke-direct {v1, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v9, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v9

    iput v9, v3, Landroid/graphics/RectF;->right:F

    invoke-virtual {v7}, Landroid/graphics/Paint;->descent()F

    move-result v9

    invoke-virtual {v7}, Landroid/graphics/Paint;->ascent()F

    move-result v10

    sub-float/2addr v9, v10

    iput v9, v3, Landroid/graphics/RectF;->bottom:F

    iget v9, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    iget v11, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    iput v9, v3, Landroid/graphics/RectF;->left:F

    iget v9, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    iget v11, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    iput v9, v3, Landroid/graphics/RectF;->top:F

    move/from16 v0, p7

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget v9, v3, Landroid/graphics/RectF;->left:F

    iget v10, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7}, Landroid/graphics/Paint;->ascent()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-virtual {v5, v8, v9, v10, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v9

    sget v10, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->MAX_CHAR_NORMAL:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->splitByUnicodeForIndex(Ljava/lang/String;)I

    move-result v4

    const/4 v9, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    new-instance v1, Landroid/graphics/Rect;

    const/4 v9, 0x2

    aget-object v9, p8, v9

    iget v9, v9, Landroid/graphics/Rect;->left:I

    const/4 v10, 0x2

    aget-object v10, p8, v10

    iget v10, v10, Landroid/graphics/Rect;->top:I

    const/4 v11, 0x2

    aget-object v11, p8, v11

    iget v11, v11, Landroid/graphics/Rect;->right:I

    const/4 v12, 0x2

    aget-object v12, p8, v12

    iget v12, v12, Landroid/graphics/Rect;->top:I

    const/4 v13, 0x2

    aget-object v13, p8, v13

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    invoke-direct {v1, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v9, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v9

    iput v9, v3, Landroid/graphics/RectF;->right:F

    invoke-virtual {v7}, Landroid/graphics/Paint;->descent()F

    move-result v9

    invoke-virtual {v7}, Landroid/graphics/Paint;->ascent()F

    move-result v10

    sub-float/2addr v9, v10

    iput v9, v3, Landroid/graphics/RectF;->bottom:F

    iget v9, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    iget v11, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    iput v9, v3, Landroid/graphics/RectF;->left:F

    iget v9, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    iget v11, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    iput v9, v3, Landroid/graphics/RectF;->top:F

    move/from16 v0, p7

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget v9, v3, Landroid/graphics/RectF;->left:F

    iget v10, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7}, Landroid/graphics/Paint;->ascent()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-virtual {v5, v8, v9, v10, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    new-instance v1, Landroid/graphics/Rect;

    const/4 v9, 0x2

    aget-object v9, p8, v9

    iget v9, v9, Landroid/graphics/Rect;->left:I

    const/4 v10, 0x2

    aget-object v10, p8, v10

    iget v10, v10, Landroid/graphics/Rect;->top:I

    const/4 v11, 0x2

    aget-object v11, p8, v11

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    const/4 v11, 0x2

    aget-object v11, p8, v11

    iget v11, v11, Landroid/graphics/Rect;->right:I

    const/4 v12, 0x2

    aget-object v12, p8, v12

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v9, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v9

    iput v9, v3, Landroid/graphics/RectF;->right:F

    invoke-virtual {v7}, Landroid/graphics/Paint;->descent()F

    move-result v9

    invoke-virtual {v7}, Landroid/graphics/Paint;->ascent()F

    move-result v10

    sub-float/2addr v9, v10

    iput v9, v3, Landroid/graphics/RectF;->bottom:F

    iget v9, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    iget v11, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    iput v9, v3, Landroid/graphics/RectF;->left:F

    iget v9, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    iget v11, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    iput v9, v3, Landroid/graphics/RectF;->top:F

    move/from16 v0, p7

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget v9, v3, Landroid/graphics/RectF;->left:F

    iget v10, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7}, Landroid/graphics/Paint;->ascent()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-virtual {v5, v8, v9, v10, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method private drawLabelForSplitImages(Landroid/graphics/Bitmap;Ljava/lang/String;[ILandroid/graphics/Typeface;II[Landroid/graphics/Rect;)V
    .locals 15

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/4 v11, 0x0

    aget v11, p3, v11

    invoke-static {v10, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/4 v11, 0x1

    aget v11, p3, v11

    invoke-static {v10, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v6, Landroid/graphics/Canvas;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move/from16 v0, p6

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    move/from16 v0, p5

    int-to-float v10, v0

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v10

    sget v11, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->MAX_CHAR_EXCEPTION:I

    if-gt v10, v11, :cond_0

    const/4 v10, 0x0

    const/4 v11, 0x0

    aget-object v11, p7, v11

    invoke-virtual {v6, v2, v10, v11, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/4 v10, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v11

    sget v12, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->MAX_CHAR_EXCEPTION:I

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    new-instance v1, Landroid/graphics/Rect;

    const/4 v10, 0x1

    aget-object v10, p7, v10

    invoke-direct {v1, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v10, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v8, v9, v10, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v10

    iput v10, v4, Landroid/graphics/RectF;->right:F

    invoke-virtual {v8}, Landroid/graphics/Paint;->descent()F

    move-result v10

    invoke-virtual {v8}, Landroid/graphics/Paint;->ascent()F

    move-result v11

    sub-float/2addr v10, v11

    iput v10, v4, Landroid/graphics/RectF;->bottom:F

    iget v10, v4, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    iget v12, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float/2addr v10, v11

    iput v10, v4, Landroid/graphics/RectF;->left:F

    iget v10, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    iget v12, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float/2addr v10, v11

    iput v10, v4, Landroid/graphics/RectF;->top:F

    move/from16 v0, p6

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget v10, v4, Landroid/graphics/RectF;->left:F

    iget v11, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v8}, Landroid/graphics/Paint;->ascent()F

    move-result v12

    sub-float/2addr v11, v12

    invoke-virtual {v6, v9, v10, v11, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v10, 0x0

    const/4 v11, 0x2

    aget-object v11, p7, v11

    invoke-virtual {v6, v3, v10, v11, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    :cond_0
    const/4 v10, 0x0

    const/4 v11, 0x3

    aget-object v11, p7, v11

    invoke-virtual {v6, v2, v10, v11, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v10

    sget v11, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->MAX_CHAR_NORMAL:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v7

    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->splitByUnicodeForIndex(Ljava/lang/String;)I

    move-result v5

    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    new-instance v1, Landroid/graphics/Rect;

    const/4 v10, 0x4

    aget-object v10, p7, v10

    iget v10, v10, Landroid/graphics/Rect;->left:I

    const/4 v11, 0x4

    aget-object v11, p7, v11

    iget v11, v11, Landroid/graphics/Rect;->top:I

    const/4 v12, 0x4

    aget-object v12, p7, v12

    iget v12, v12, Landroid/graphics/Rect;->right:I

    const/4 v13, 0x4

    aget-object v13, p7, v13

    iget v13, v13, Landroid/graphics/Rect;->top:I

    const/4 v14, 0x4

    aget-object v14, p7, v14

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    invoke-direct {v1, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v10, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v8, v9, v10, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v10

    iput v10, v4, Landroid/graphics/RectF;->right:F

    invoke-virtual {v8}, Landroid/graphics/Paint;->descent()F

    move-result v10

    invoke-virtual {v8}, Landroid/graphics/Paint;->ascent()F

    move-result v11

    sub-float/2addr v10, v11

    iput v10, v4, Landroid/graphics/RectF;->bottom:F

    iget v10, v4, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    iget v12, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float/2addr v10, v11

    iput v10, v4, Landroid/graphics/RectF;->left:F

    iget v10, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    iget v12, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float/2addr v10, v11

    iput v10, v4, Landroid/graphics/RectF;->top:F

    move/from16 v0, p6

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget v10, v4, Landroid/graphics/RectF;->left:F

    iget v11, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v8}, Landroid/graphics/Paint;->ascent()F

    move-result v12

    sub-float/2addr v11, v12

    invoke-virtual {v6, v9, v10, v11, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    new-instance v1, Landroid/graphics/Rect;

    const/4 v10, 0x4

    aget-object v10, p7, v10

    iget v10, v10, Landroid/graphics/Rect;->left:I

    const/4 v11, 0x4

    aget-object v11, p7, v11

    iget v11, v11, Landroid/graphics/Rect;->top:I

    const/4 v12, 0x4

    aget-object v12, p7, v12

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    const/4 v12, 0x4

    aget-object v12, p7, v12

    iget v12, v12, Landroid/graphics/Rect;->right:I

    const/4 v13, 0x4

    aget-object v13, p7, v13

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v10, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v8, v9, v10, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v10

    iput v10, v4, Landroid/graphics/RectF;->right:F

    invoke-virtual {v8}, Landroid/graphics/Paint;->descent()F

    move-result v10

    invoke-virtual {v8}, Landroid/graphics/Paint;->ascent()F

    move-result v11

    sub-float/2addr v10, v11

    iput v10, v4, Landroid/graphics/RectF;->bottom:F

    iget v10, v4, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    iget v12, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float/2addr v10, v11

    iput v10, v4, Landroid/graphics/RectF;->left:F

    iget v10, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    iget v12, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float/2addr v10, v11

    iput v10, v4, Landroid/graphics/RectF;->top:F

    move/from16 v0, p6

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget v10, v4, Landroid/graphics/RectF;->left:F

    iget v11, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v8}, Landroid/graphics/Paint;->ascent()F

    move-result v12

    sub-float/2addr v11, v12

    invoke-virtual {v6, v9, v10, v11, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v10, 0x0

    const/4 v11, 0x5

    aget-object v11, p7, v11

    invoke-virtual {v6, v3, v10, v11, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method private getActualDimens(F)I
    .locals 4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mContext:Landroid/content/Context;

    const/high16 v3, 0x42800000    # 64.0f

    invoke-direct {p0, v2, v3}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getDpValue(Landroid/content/Context;F)I

    move-result v2

    int-to-float v0, v2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, p1}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getDpValue(Landroid/content/Context;F)I

    move-result v2

    int-to-float v1, v2

    const/high16 v2, 0x44000000    # 512.0f

    mul-float/2addr v2, v1

    div-float/2addr v2, v0

    float-to-int v2, v2

    return v2
.end method

.method private getComponentRectInfo(I)[Landroid/graphics/Rect;
    .locals 12

    const/high16 v11, 0x41800000    # 16.0f

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x200

    const/4 v5, 0x6

    new-array v2, v5, [Landroid/graphics/Rect;

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v2

    :pswitch_0
    const/4 v1, 0x0

    const/high16 v5, 0x41980000    # 19.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    const/high16 v5, 0x41100000    # 9.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v3, v0

    invoke-direct {v5, v1, v3, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v7

    const/4 v1, 0x0

    const/high16 v5, 0x41e00000    # 28.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    const/high16 v5, 0x41000000    # 8.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v3, v0

    invoke-direct {v5, v1, v3, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v9

    const/4 v1, 0x0

    const/high16 v5, 0x42100000    # 36.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    const/high16 v5, 0x41100000    # 9.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v3, v0

    invoke-direct {v5, v1, v3, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v10

    const/4 v1, 0x0

    const/high16 v5, 0x41700000    # 15.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    const/high16 v5, 0x41100000    # 9.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    const/4 v5, 0x3

    new-instance v6, Landroid/graphics/Rect;

    add-int v7, v3, v0

    invoke-direct {v6, v1, v3, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v6, v2, v5

    const/4 v1, 0x0

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    invoke-direct {p0, v11}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    const/4 v5, 0x4

    new-instance v6, Landroid/graphics/Rect;

    add-int v7, v3, v0

    invoke-direct {v6, v1, v3, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v6, v2, v5

    const/4 v1, 0x0

    const/high16 v5, 0x42200000    # 40.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    const/high16 v5, 0x41100000    # 9.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    const/4 v5, 0x5

    new-instance v6, Landroid/graphics/Rect;

    add-int v7, v3, v0

    invoke-direct {v6, v1, v3, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v6, v2, v5

    goto/16 :goto_0

    :pswitch_1
    const/4 v1, 0x0

    const/high16 v5, 0x418c0000    # 17.5f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    const/high16 v5, 0x40800000    # 4.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v3, v0

    invoke-direct {v5, v1, v3, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v7

    const/4 v1, 0x0

    const/high16 v5, 0x41c40000    # 24.5f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    const/high16 v5, 0x41000000    # 8.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v3, v0

    invoke-direct {v5, v1, v3, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v9

    const/4 v1, 0x0

    const/high16 v5, 0x42020000    # 32.5f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    const/high16 v5, 0x41600000    # 14.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v3, v0

    invoke-direct {v5, v1, v3, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v10

    const/4 v1, 0x0

    const/high16 v5, 0x41580000    # 13.5f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    const/high16 v5, 0x40800000    # 4.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    const/4 v5, 0x3

    new-instance v6, Landroid/graphics/Rect;

    add-int v7, v3, v0

    invoke-direct {v6, v1, v3, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v6, v2, v5

    const/4 v1, 0x0

    const/high16 v5, 0x41a40000    # 20.5f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    invoke-direct {p0, v11}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    const/4 v5, 0x4

    new-instance v6, Landroid/graphics/Rect;

    add-int v7, v3, v0

    invoke-direct {v6, v1, v3, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v6, v2, v5

    const/4 v1, 0x0

    const/high16 v5, 0x42120000    # 36.5f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    const/high16 v5, 0x41600000    # 14.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    const/4 v5, 0x5

    new-instance v6, Landroid/graphics/Rect;

    add-int v7, v3, v0

    invoke-direct {v6, v1, v3, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v6, v2, v5

    goto/16 :goto_0

    :pswitch_2
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x200

    const/16 v0, 0x200

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v1, v3, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v7

    const/4 v1, 0x0

    const/high16 v5, 0x41e00000    # 28.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    const/high16 v5, 0x41000000    # 8.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v3, v0

    invoke-direct {v5, v1, v3, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v9

    const/4 v1, 0x0

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    invoke-direct {p0, v11}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v3, v0

    invoke-direct {v5, v1, v3, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v10

    goto/16 :goto_0

    :pswitch_3
    const/4 v1, 0x0

    const/high16 v5, 0x41900000    # 18.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    const/high16 v5, 0x41300000    # 11.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v3, v0

    invoke-direct {v5, v1, v3, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v7

    const/4 v1, 0x0

    const/high16 v5, 0x41e80000    # 29.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    const/high16 v5, 0x41200000    # 10.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v3, v0

    invoke-direct {v5, v1, v3, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v9

    const/4 v1, 0x0

    const/high16 v5, 0x421c0000    # 39.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    const/high16 v5, 0x40e00000    # 7.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v3, v0

    invoke-direct {v5, v1, v3, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v10

    const/4 v1, 0x0

    const/high16 v5, 0x41700000    # 15.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    const/high16 v5, 0x41300000    # 11.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    const/4 v5, 0x3

    new-instance v6, Landroid/graphics/Rect;

    add-int v7, v3, v0

    invoke-direct {v6, v1, v3, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v6, v2, v5

    const/4 v1, 0x0

    const/high16 v5, 0x41d00000    # 26.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    invoke-direct {p0, v11}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    const/4 v5, 0x4

    new-instance v6, Landroid/graphics/Rect;

    add-int v7, v3, v0

    invoke-direct {v6, v1, v3, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v6, v2, v5

    const/4 v1, 0x0

    const/high16 v5, 0x42280000    # 42.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    const/high16 v5, 0x40e00000    # 7.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    const/4 v5, 0x5

    new-instance v6, Landroid/graphics/Rect;

    add-int v7, v3, v0

    invoke-direct {v6, v1, v3, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v6, v2, v5

    goto/16 :goto_0

    :pswitch_4
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x200

    const/16 v0, 0x200

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v1, v3, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v7

    const/4 v1, 0x0

    const/high16 v5, 0x41e00000    # 28.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    const/high16 v5, 0x41000000    # 8.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v3, v0

    invoke-direct {v5, v1, v3, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v9

    const/4 v1, 0x0

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    invoke-direct {p0, v11}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v3, v0

    invoke-direct {v5, v1, v3, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v10

    goto/16 :goto_0

    :pswitch_5
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x200

    const/16 v0, 0x200

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v1, v3, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v7

    const/4 v1, 0x0

    const/high16 v5, 0x41e00000    # 28.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    const/high16 v5, 0x41000000    # 8.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v3, v0

    invoke-direct {v5, v1, v3, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v9

    const/4 v1, 0x0

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    invoke-direct {p0, v11}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v3, v0

    invoke-direct {v5, v1, v3, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v10

    goto/16 :goto_0

    :pswitch_6
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x200

    const/16 v0, 0x200

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v1, v3, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v7

    const/4 v1, 0x0

    const/high16 v5, 0x41e00000    # 28.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    const/high16 v5, 0x41000000    # 8.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v3, v0

    invoke-direct {v5, v1, v3, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v9

    goto/16 :goto_0

    :pswitch_7
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x200

    const/16 v0, 0x200

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v1, v3, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v7

    const/4 v1, 0x0

    const/high16 v5, 0x41e00000    # 28.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    const/high16 v5, 0x41000000    # 8.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v3, v0

    invoke-direct {v5, v1, v3, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v9

    const/4 v1, 0x0

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    invoke-direct {p0, v11}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v3, v0

    invoke-direct {v5, v1, v3, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v10

    goto/16 :goto_0

    :pswitch_8
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x200

    const/16 v0, 0x200

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v1, v3, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v7

    const/4 v1, 0x0

    const/high16 v5, 0x41e00000    # 28.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    const/high16 v5, 0x41000000    # 8.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v3, v0

    invoke-direct {v5, v1, v3, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v9

    const/4 v1, 0x0

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    invoke-direct {p0, v11}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v3, v0

    invoke-direct {v5, v1, v3, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v10

    goto/16 :goto_0

    :pswitch_9
    const/4 v1, 0x0

    invoke-direct {p0, v11}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    const/high16 v5, 0x41980000    # 19.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v3, v0

    invoke-direct {v5, v1, v3, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v7

    const/4 v1, 0x0

    const/high16 v5, 0x420c0000    # 35.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    const/high16 v5, 0x41300000    # 11.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v3, v0

    invoke-direct {v5, v1, v3, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v9

    const/4 v1, 0x0

    const/high16 v5, 0x42380000    # 46.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v3, v0

    invoke-direct {v5, v1, v3, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v10

    const/4 v1, 0x0

    const/high16 v5, 0x41400000    # 12.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    const/high16 v5, 0x41980000    # 19.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    const/4 v5, 0x3

    new-instance v6, Landroid/graphics/Rect;

    add-int v7, v3, v0

    invoke-direct {v6, v1, v3, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v6, v2, v5

    const/4 v1, 0x0

    const/high16 v5, 0x41f80000    # 31.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    const/high16 v5, 0x41980000    # 19.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    const/4 v5, 0x4

    new-instance v6, Landroid/graphics/Rect;

    add-int v7, v3, v0

    invoke-direct {v6, v1, v3, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v6, v2, v5

    const/4 v1, 0x0

    const/high16 v5, 0x42480000    # 50.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    const/4 v5, 0x5

    new-instance v6, Landroid/graphics/Rect;

    add-int v7, v3, v0

    invoke-direct {v6, v1, v3, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v6, v2, v5

    goto/16 :goto_0

    :pswitch_a
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x200

    const/16 v0, 0x200

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v1, v3, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v7

    const/4 v1, 0x0

    const/high16 v5, 0x41c80000    # 25.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    const/high16 v5, 0x41200000    # 10.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v3, v0

    invoke-direct {v5, v1, v3, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v9

    goto/16 :goto_0

    :pswitch_b
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x200

    const/16 v0, 0x200

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v1, v3, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v7

    const/4 v1, 0x0

    const/high16 v5, 0x41e00000    # 28.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    const/high16 v5, 0x41000000    # 8.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v3, v0

    invoke-direct {v5, v1, v3, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v9

    const/4 v1, 0x0

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    invoke-direct {p0, v11}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v3, v0

    invoke-direct {v5, v1, v3, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v10

    goto/16 :goto_0

    :pswitch_c
    const/4 v1, 0x0

    const/high16 v5, 0x41980000    # 19.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    const/high16 v5, 0x41200000    # 10.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v3, v0

    invoke-direct {v5, v1, v3, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v7

    const/4 v1, 0x0

    const/high16 v5, 0x41e80000    # 29.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    const/high16 v5, 0x41000000    # 8.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v3, v0

    invoke-direct {v5, v1, v3, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v9

    const/4 v1, 0x0

    const/high16 v5, 0x42140000    # 37.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v3, v0

    invoke-direct {v5, v1, v3, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v10

    const/4 v1, 0x0

    invoke-direct {p0, v11}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    const/high16 v5, 0x41200000    # 10.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    const/4 v5, 0x3

    new-instance v6, Landroid/graphics/Rect;

    add-int v7, v3, v0

    invoke-direct {v6, v1, v3, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v6, v2, v5

    const/4 v1, 0x0

    const/high16 v5, 0x41d00000    # 26.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    const/high16 v5, 0x41600000    # 14.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    const/4 v5, 0x4

    new-instance v6, Landroid/graphics/Rect;

    add-int v7, v3, v0

    invoke-direct {v6, v1, v3, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v6, v2, v5

    const/4 v1, 0x0

    const/high16 v5, 0x42200000    # 40.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    const/high16 v5, 0x41000000    # 8.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    const/4 v5, 0x5

    new-instance v6, Landroid/graphics/Rect;

    add-int v7, v3, v0

    invoke-direct {v6, v1, v3, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v6, v2, v5

    goto/16 :goto_0

    :pswitch_d
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x200

    const/16 v0, 0x200

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v1, v3, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v7

    const/4 v1, 0x0

    const/high16 v5, 0x41e00000    # 28.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    const/high16 v5, 0x41000000    # 8.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v3, v0

    invoke-direct {v5, v1, v3, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v9

    const/4 v1, 0x0

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    invoke-direct {p0, v11}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v3, v0

    invoke-direct {v5, v1, v3, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v10

    goto/16 :goto_0

    :pswitch_e
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x200

    const/16 v0, 0x200

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v1, v3, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v7

    const/4 v1, 0x0

    const/high16 v5, 0x41a80000    # 21.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    invoke-direct {p0, v11}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v3, v0

    invoke-direct {v5, v1, v3, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v9

    const/4 v1, 0x0

    const/high16 v5, 0x41a80000    # 21.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    invoke-direct {p0, v11}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v3, v0

    invoke-direct {v5, v1, v3, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v10

    goto/16 :goto_0

    :pswitch_f
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x200

    const/16 v0, 0x200

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v1, v3, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v7

    const/4 v1, 0x0

    const/high16 v5, 0x423c0000    # 47.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    const/high16 v5, 0x41300000    # 11.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v3, v0

    invoke-direct {v5, v1, v3, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v9

    goto/16 :goto_0

    :pswitch_10
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x200

    const/16 v0, 0x200

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v1, v3, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v7

    const/4 v1, 0x0

    const/high16 v5, 0x41e00000    # 28.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    const/high16 v5, 0x41000000    # 8.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v3, v0

    invoke-direct {v5, v1, v3, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v9

    const/4 v1, 0x0

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    invoke-direct {p0, v11}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v3, v0

    invoke-direct {v5, v1, v3, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v10

    goto/16 :goto_0

    :pswitch_11
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x200

    const/16 v0, 0x200

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v1, v3, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v7

    const/4 v1, 0x0

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    const/high16 v5, 0x41700000    # 15.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v3, v0

    invoke-direct {v5, v1, v3, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v9

    const/4 v1, 0x0

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    const/high16 v5, 0x41700000    # 15.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v3, v0

    invoke-direct {v5, v1, v3, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v10

    goto/16 :goto_0

    :pswitch_12
    const/4 v1, 0x0

    const/high16 v5, 0x41100000    # 9.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    const/high16 v5, 0x41980000    # 19.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v3, v0

    invoke-direct {v5, v1, v3, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v7

    const/4 v1, 0x0

    const/high16 v5, 0x41e00000    # 28.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    const/high16 v5, 0x41000000    # 8.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v3, v0

    invoke-direct {v5, v1, v3, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v9

    const/4 v1, 0x0

    const/high16 v5, 0x42100000    # 36.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    const/high16 v5, 0x41980000    # 19.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v3, v0

    invoke-direct {v5, v1, v3, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v10

    const/4 v1, 0x0

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    const/high16 v5, 0x41200000    # 10.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    const/4 v5, 0x3

    new-instance v6, Landroid/graphics/Rect;

    add-int v7, v3, v0

    invoke-direct {v6, v1, v3, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v6, v2, v5

    const/4 v1, 0x0

    const/high16 v5, 0x41c80000    # 25.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    const/high16 v5, 0x41600000    # 14.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    const/4 v5, 0x4

    new-instance v6, Landroid/graphics/Rect;

    add-int v7, v3, v0

    invoke-direct {v6, v1, v3, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v6, v2, v5

    const/4 v1, 0x0

    const/high16 v5, 0x421c0000    # 39.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    const/high16 v5, 0x41980000    # 19.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    const/4 v5, 0x5

    new-instance v6, Landroid/graphics/Rect;

    add-int v7, v3, v0

    invoke-direct {v6, v1, v3, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v6, v2, v5

    goto/16 :goto_0

    :pswitch_13
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x200

    const/16 v0, 0x200

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v1, v3, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v7

    const/4 v1, 0x0

    const/high16 v5, 0x42000000    # 32.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    const/high16 v5, 0x41500000    # 13.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v3, v0

    invoke-direct {v5, v1, v3, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v9

    goto/16 :goto_0

    :pswitch_14
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x200

    const/16 v0, 0x200

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v1, v3, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v7

    const/4 v1, 0x0

    const/high16 v5, 0x41e00000    # 28.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    const/high16 v5, 0x41000000    # 8.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v3, v0

    invoke-direct {v5, v1, v3, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v9

    const/4 v1, 0x0

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    invoke-direct {p0, v11}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v3, v0

    invoke-direct {v5, v1, v3, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v10

    goto/16 :goto_0

    :pswitch_15
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x200

    const/16 v0, 0x200

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v1, v3, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v7

    const/4 v1, 0x0

    const/high16 v5, 0x41e00000    # 28.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    const/high16 v5, 0x41000000    # 8.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v3, v0

    invoke-direct {v5, v1, v3, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v9

    const/4 v1, 0x0

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    invoke-direct {p0, v11}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v3, v0

    invoke-direct {v5, v1, v3, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v10

    goto/16 :goto_0

    :pswitch_16
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x200

    const/16 v0, 0x200

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v1, v3, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v7

    const/4 v1, 0x0

    const/high16 v5, 0x41e00000    # 28.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    const/high16 v5, 0x41000000    # 8.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v3, v0

    invoke-direct {v5, v1, v3, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v9

    const/4 v1, 0x0

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v3

    const/16 v4, 0x200

    invoke-direct {p0, v11}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v3, v0

    invoke-direct {v5, v1, v3, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v10

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
    .end packed-switch
.end method

.method private getDpValue(Landroid/content/Context;F)I
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, p2

    float-to-int v1, v1

    return v1
.end method

.method private getDrawables(I)[I
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x2

    new-array v0, v1, [I

    aput v4, v0, v2

    aput v4, v0, v3

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    const v1, 0x7f0204bb

    aput v1, v0, v2

    const v1, 0x7f0204bc

    aput v1, v0, v3

    goto :goto_0

    :pswitch_1
    const v1, 0x7f0204bd

    aput v1, v0, v2

    const v1, 0x7f0204be

    aput v1, v0, v3

    goto :goto_0

    :pswitch_2
    const v1, 0x7f0204bf

    aput v1, v0, v2

    goto :goto_0

    :pswitch_3
    const v1, 0x7f0204c0

    aput v1, v0, v2

    const v1, 0x7f0204c1

    aput v1, v0, v3

    goto :goto_0

    :pswitch_4
    const v1, 0x7f0204c2

    aput v1, v0, v2

    goto :goto_0

    :pswitch_5
    const v1, 0x7f0204c3

    aput v1, v0, v2

    goto :goto_0

    :pswitch_6
    const v1, 0x7f0204c4

    aput v1, v0, v2

    goto :goto_0

    :pswitch_7
    const v1, 0x7f0204c5

    aput v1, v0, v2

    goto :goto_0

    :pswitch_8
    const v1, 0x7f0204c6

    aput v1, v0, v2

    goto :goto_0

    :pswitch_9
    const v1, 0x7f0204c7

    aput v1, v0, v2

    const v1, 0x7f0204c8

    aput v1, v0, v3

    goto :goto_0

    :pswitch_a
    const v1, 0x7f0204c9

    aput v1, v0, v2

    goto :goto_0

    :pswitch_b
    const v1, 0x7f0204ca

    aput v1, v0, v2

    goto :goto_0

    :pswitch_c
    const v1, 0x7f0204cb

    aput v1, v0, v2

    const v1, 0x7f0204cc

    aput v1, v0, v3

    goto :goto_0

    :pswitch_d
    const v1, 0x7f0204cd

    aput v1, v0, v2

    goto :goto_0

    :pswitch_e
    const v1, 0x7f0204ce

    aput v1, v0, v2

    goto :goto_0

    :pswitch_f
    const v1, 0x7f0204cf

    aput v1, v0, v2

    goto :goto_0

    :pswitch_10
    const v1, 0x7f0204d0

    aput v1, v0, v2

    goto :goto_0

    :pswitch_11
    const v1, 0x7f0204d1

    aput v1, v0, v2

    goto/16 :goto_0

    :pswitch_12
    const v1, 0x7f0204d2

    aput v1, v0, v2

    const v1, 0x7f0204d3

    aput v1, v0, v3

    goto/16 :goto_0

    :pswitch_13
    const v1, 0x7f0204d4

    aput v1, v0, v2

    goto/16 :goto_0

    :pswitch_14
    const v1, 0x7f0204d5

    aput v1, v0, v2

    goto/16 :goto_0

    :pswitch_15
    const v1, 0x7f0204d6

    aput v1, v0, v2

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method private getFontColor(I)I
    .locals 5

    const/16 v4, 0xfa

    const/4 v1, 0x0

    const/16 v2, 0x25

    const/16 v3, 0xff

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_0

    move v0, v1

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/16 v0, 0xcc

    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-static {v3, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    goto :goto_0

    :pswitch_3
    const/16 v0, 0xf7

    const/16 v2, 0xee

    invoke-static {v3, v0, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    goto :goto_0

    :pswitch_4
    const/16 v0, 0xeb

    const/16 v2, 0x29

    invoke-static {v3, v0, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    goto :goto_0

    :pswitch_5
    const/16 v0, 0xed

    const/16 v1, 0xa0

    const/16 v2, 0x31

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x4e

    invoke-static {v3, v1, v0, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    goto :goto_0

    :pswitch_7
    invoke-static {v3, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    goto :goto_0

    :pswitch_8
    const/16 v0, 0xbd

    const/16 v2, 0x1f

    invoke-static {v3, v1, v0, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private getFontSize(IZ)I
    .locals 5

    const/high16 v2, 0x40800000    # 4.0f

    const/high16 v4, 0x41000000    # 8.0f

    const/high16 v3, 0x40e00000    # 7.0f

    const/high16 v1, 0x41100000    # 9.0f

    const/high16 v0, 0x40c00000    # 6.0f

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    if-eqz p2, :cond_0

    :goto_1
    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :pswitch_1
    if-eqz p2, :cond_1

    :goto_2
    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    :pswitch_2
    if-eqz p2, :cond_2

    move v0, v2

    :goto_3
    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_3

    :pswitch_3
    if-eqz p2, :cond_3

    :goto_4
    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_4

    :pswitch_4
    if-eqz p2, :cond_4

    :goto_5
    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    goto :goto_0

    :cond_4
    move v0, v4

    goto :goto_5

    :pswitch_5
    if-eqz p2, :cond_5

    :goto_6
    invoke-direct {p0, v2}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    goto :goto_0

    :cond_5
    move v2, v3

    goto :goto_6

    :pswitch_6
    if-eqz p2, :cond_6

    const/high16 v3, 0x40a00000    # 5.0f

    :cond_6
    invoke-direct {p0, v3}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    goto :goto_0

    :pswitch_7
    if-eqz p2, :cond_7

    :goto_7
    invoke-direct {p0, v2}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    goto :goto_0

    :cond_7
    move v2, v3

    goto :goto_7

    :pswitch_8
    if-eqz p2, :cond_8

    const/high16 v3, 0x40a00000    # 5.0f

    :cond_8
    invoke-direct {p0, v3}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    goto :goto_0

    :pswitch_9
    if-eqz p2, :cond_9

    :goto_8
    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    goto :goto_0

    :cond_9
    const/high16 v0, 0x41300000    # 11.0f

    goto :goto_8

    :pswitch_a
    if-eqz p2, :cond_a

    const/high16 v3, 0x40a00000    # 5.0f

    :cond_a
    invoke-direct {p0, v3}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    goto :goto_0

    :pswitch_b
    if-eqz p2, :cond_b

    :goto_9
    invoke-direct {p0, v2}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    goto :goto_0

    :cond_b
    move v2, v3

    goto :goto_9

    :pswitch_c
    if-eqz p2, :cond_c

    :goto_a
    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    goto :goto_0

    :cond_c
    move v0, v4

    goto :goto_a

    :pswitch_d
    if-eqz p2, :cond_d

    :goto_b
    invoke-direct {p0, v2}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    goto :goto_0

    :cond_d
    move v2, v4

    goto :goto_b

    :pswitch_e
    if-eqz p2, :cond_e

    :goto_c
    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    goto/16 :goto_0

    :cond_e
    move v0, v4

    goto :goto_c

    :pswitch_f
    if-eqz p2, :cond_f

    :goto_d
    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    goto/16 :goto_0

    :cond_f
    move v0, v1

    goto :goto_d

    :pswitch_10
    if-eqz p2, :cond_10

    :goto_e
    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    goto/16 :goto_0

    :cond_10
    move v0, v1

    goto :goto_e

    :pswitch_11
    if-eqz p2, :cond_11

    :goto_f
    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    goto/16 :goto_0

    :cond_11
    move v0, v4

    goto :goto_f

    :pswitch_12
    if-eqz p2, :cond_12

    :goto_10
    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    goto/16 :goto_0

    :cond_12
    move v0, v4

    goto :goto_10

    :pswitch_13
    if-eqz p2, :cond_13

    :goto_11
    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    goto/16 :goto_0

    :cond_13
    move v0, v1

    goto :goto_11

    :pswitch_14
    if-eqz p2, :cond_14

    :goto_12
    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    goto/16 :goto_0

    :cond_14
    move v0, v4

    goto :goto_12

    :pswitch_15
    if-eqz p2, :cond_15

    :goto_13
    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    goto/16 :goto_0

    :cond_15
    move v0, v1

    goto :goto_13

    :pswitch_16
    if-eqz p2, :cond_16

    :goto_14
    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    goto/16 :goto_0

    :cond_16
    move v0, v1

    goto :goto_14

    :pswitch_17
    if-eqz p2, :cond_17

    :goto_15
    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    goto/16 :goto_0

    :cond_17
    move v0, v1

    goto :goto_15

    :pswitch_18
    if-eqz p2, :cond_18

    :goto_16
    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    goto/16 :goto_0

    :cond_18
    move v0, v1

    goto :goto_16

    :pswitch_19
    if-eqz p2, :cond_19

    :goto_17
    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    goto/16 :goto_0

    :cond_19
    move v0, v1

    goto :goto_17

    :pswitch_1a
    if-eqz p2, :cond_1a

    :goto_18
    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    goto/16 :goto_0

    :cond_1a
    move v0, v1

    goto :goto_18

    :pswitch_1b
    if-eqz p2, :cond_1b

    :goto_19
    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    goto/16 :goto_0

    :cond_1b
    move v0, v1

    goto :goto_19

    :pswitch_1c
    if-eqz p2, :cond_1c

    :goto_1a
    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getActualDimens(F)I

    move-result v0

    goto/16 :goto_0

    :cond_1c
    move v0, v1

    goto :goto_1a

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
    .end packed-switch
.end method

.method private getTypeFace(I)Landroid/graphics/Typeface;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;->ROBOTO_THIN:Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils;->getTextFont(Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;->ROBOTO_THIN_ITALIC:Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils;->getTextFont(Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;->ROBOTO_THIN:Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils;->getTextFont(Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;->ROBOTO_REGULAR:Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils;->getTextFont(Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;->ROBOTO_REGULAR:Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils;->getTextFont(Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;->ROBOTO_THIN:Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils;->getTextFont(Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;->ROBOTO_BOLD:Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils;->getTextFont(Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;->ROBOTO_THIN:Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils;->getTextFont(Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;->ROBOTO_LIGHT:Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils;->getTextFont(Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :pswitch_9
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;->ROBOTO_THIN:Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils;->getTextFont(Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :pswitch_a
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;->ROBOTO_BOLD:Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils;->getTextFont(Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :pswitch_b
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;->ROBOTO_LIGHT:Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils;->getTextFont(Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :pswitch_c
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;->ROBOTO_REGULAR:Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils;->getTextFont(Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :pswitch_d
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;->ROBOTO_BOLD:Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils;->getTextFont(Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :pswitch_e
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;->ROBOTO_BOLD:Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils;->getTextFont(Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :pswitch_f
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;->ROBOTO_THIN_ITALIC:Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils;->getTextFont(Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :pswitch_10
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;->ROBOTO_BOLD:Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils;->getTextFont(Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :pswitch_11
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;->ROBOTO_THIN:Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils;->getTextFont(Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :pswitch_12
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;->ROBOTO_LIGHT:Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils;->getTextFont(Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;)Landroid/graphics/Typeface;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_13
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;->ROBOTO_BOLD:Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils;->getTextFont(Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;)Landroid/graphics/Typeface;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_14
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;->ROBOTO_BOLD:Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils;->getTextFont(Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;)Landroid/graphics/Typeface;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_15
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;->ROBOTO_LIGHT:Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils;->getTextFont(Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;)Landroid/graphics/Typeface;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_16
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;->ROBOTO_CONDENSED_REGULAR:Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils;->getTextFont(Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;)Landroid/graphics/Typeface;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_17
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;->ROBOTO_ITALIC:Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils;->getTextFont(Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;)Landroid/graphics/Typeface;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_18
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;->ROBOTO_THIN:Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils;->getTextFont(Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;)Landroid/graphics/Typeface;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_19
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;->ROBOTO_ITALIC:Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils;->getTextFont(Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;)Landroid/graphics/Typeface;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_1a
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;->ROBOTO_ITALIC:Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils;->getTextFont(Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;)Landroid/graphics/Typeface;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_1b
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;->CUTIVE_MONO:Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils;->getTextFont(Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;)Landroid/graphics/Typeface;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_1c
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;->ROBOTO_REGULAR:Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils;->getTextFont(Lcom/sec/android/mimage/photoretouching/lpe/util/FontUtils$TextFont;)Landroid/graphics/Typeface;

    move-result-object v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
    .end packed-switch
.end method

.method private measureTextRect(Landroid/widget/TextView;)Landroid/graphics/Rect;
    .locals 6

    const/4 v5, 0x0

    const/16 v1, 0xa

    new-instance v2, Landroid/graphics/Rect;

    const/16 v3, 0x12c

    const/16 v4, 0x32

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v5, v5}, Landroid/widget/TextView;->measure(II)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mContext:Landroid/content/Context;

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getDpToPixel(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    mul-int/lit8 v4, v0, 0x2

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-object v2
.end method

.method private resetLayoutSize()V
    .locals 4

    const/4 v3, -0x2

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mLeftImage:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mLeftImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mRightImage:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mRightImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mMiddleImage:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mMiddleImage:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private setLabelSettings(Ljava/lang/String;I)V
    .locals 25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mLabelLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mLabelLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const v21, 0x7f0e0277

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->resetLayoutSize()V

    const/16 v20, 0x7

    move/from16 v0, p2

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    const/16 v20, 0xe

    move/from16 v0, p2

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    const/16 v20, 0x10

    move/from16 v0, p2

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    const/16 v20, 0x12

    move/from16 v0, p2

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    const/16 v20, 0x17

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    sget-object v22, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual/range {v20 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :goto_1
    const/16 v19, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v15, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->measureTextRect(Landroid/widget/TextView;)Landroid/graphics/Rect;

    move-result-object v17

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/16 v16, 0x0

    const/16 v20, 0x1

    move/from16 v0, p2

    move/from16 v1, v20

    if-lt v0, v1, :cond_3

    const/16 v20, 0xc

    move/from16 v0, p2

    move/from16 v1, v20

    if-gt v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v0, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v0, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v0, v15}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v16

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mLeftImage:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mRightImage:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_4
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mMiddleImage:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v9, 0x0

    packed-switch p2, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_0
    if-eqz v10, :cond_0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v7, v0

    const/4 v4, 0x0

    :goto_3
    if-gt v4, v7, :cond_0

    new-instance v9, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mMiddleImage:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    sget-object v21, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto/16 :goto_1

    :pswitch_1
    const-string v20, "sans-serif-light"

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v19

    const v5, 0x7f020227

    const v8, 0x7f020226

    const v15, 0x7f020228

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0a0153

    invoke-virtual/range {v20 .. v22}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x40000000    # 2.0f

    const/high16 v23, 0x40000000    # 2.0f

    const v24, -0x9f70d3

    invoke-virtual/range {v20 .. v24}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto/16 :goto_2

    :pswitch_2
    const-string v20, "sans-serif"

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v19

    const v5, 0x7f02022a

    const v8, 0x7f020229

    const v15, 0x7f02022b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0a0157

    invoke-virtual/range {v20 .. v22}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x3f800000    # 1.0f

    const/high16 v23, 0x3f800000    # 1.0f

    const v24, 0x7affffff

    invoke-virtual/range {v20 .. v24}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto/16 :goto_2

    :pswitch_3
    const-string v20, "sans-serif"

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v19

    const v5, 0x7f02022d

    const v8, 0x7f02022c

    const v15, 0x7f02022e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0a0158

    invoke-virtual/range {v20 .. v22}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/high16 v21, 0x40400000    # 3.0f

    const/16 v22, 0x0

    const/high16 v23, 0x40400000    # 3.0f

    const v24, -0xf2f1f2

    invoke-virtual/range {v20 .. v24}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto/16 :goto_2

    :pswitch_4
    const-string v20, "sans-serif-light"

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v19

    const v5, 0x7f020230

    const v8, 0x7f02022f

    const v15, 0x7f020231

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0a0159

    invoke-virtual/range {v20 .. v22}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v24}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto/16 :goto_2

    :pswitch_5
    const-string v20, "sans-serif"

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v19

    const v5, 0x7f020233

    const v8, 0x7f020232

    const v15, 0x7f020234

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0a015a

    invoke-virtual/range {v20 .. v22}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v24}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto/16 :goto_2

    :pswitch_6
    const-string v20, "sans-serif"

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v19

    const v5, 0x7f020236

    const v8, 0x7f020235

    const v15, 0x7f020237

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0a015b

    invoke-virtual/range {v20 .. v22}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v24}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto/16 :goto_2

    :pswitch_7
    const-string v20, "sans-serif"

    const/16 v21, 0x3

    invoke-static/range {v20 .. v21}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v19

    const v5, 0x7f020239

    const v8, 0x7f020238

    const v15, 0x7f02023a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0a015c

    invoke-virtual/range {v20 .. v22}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v24}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto/16 :goto_2

    :pswitch_8
    const-string v20, "sans-serif"

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v19

    const v5, 0x7f02023c

    const v8, 0x7f02023b

    const v15, 0x7f02023d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0a015d

    invoke-virtual/range {v20 .. v22}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v24}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto/16 :goto_2

    :pswitch_9
    const-string v20, "sans-serif"

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v19

    const v5, 0x7f020241

    const v8, 0x7f02023f

    const v15, 0x7f020242

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0a015e

    invoke-virtual/range {v20 .. v22}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v24}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto/16 :goto_2

    :pswitch_a
    const-string v20, "sans-serif"

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v19

    const v5, 0x7f020244

    const v8, 0x7f020243

    const v15, 0x7f020245

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0a0154

    invoke-virtual/range {v20 .. v22}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v24}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto/16 :goto_2

    :pswitch_b
    const-string v20, "sans-serif-condensed"

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v19

    const v5, 0x7f020247

    const v8, 0x7f020246

    const v15, 0x7f020248

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0a0155

    invoke-virtual/range {v20 .. v22}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v24}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto/16 :goto_2

    :pswitch_c
    const-string v20, "sans-serif-light"

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v19

    const v5, 0x7f02024a

    const v8, 0x7f020249

    const v15, 0x7f02024b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0a0156

    invoke-virtual/range {v20 .. v22}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v24}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto/16 :goto_2

    :pswitch_d
    const-string v20, "sans-serif-light"

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0a015f

    invoke-virtual/range {v20 .. v22}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v24}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto/16 :goto_2

    :pswitch_e
    const-string v20, "sans-serif-condensed"

    const/16 v21, 0x3

    invoke-static/range {v20 .. v21}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0a0163

    invoke-virtual/range {v20 .. v22}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x3f800000    # 1.0f

    const/high16 v23, 0x3f800000    # 1.0f

    const v24, 0x7bffffff

    invoke-virtual/range {v20 .. v24}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto/16 :goto_2

    :pswitch_f
    const-string v20, "sans-serif"

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0a0164

    invoke-virtual/range {v20 .. v22}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    const/high16 v23, 0x3f800000    # 1.0f

    const/high16 v24, -0x1000000

    invoke-virtual/range {v20 .. v24}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto/16 :goto_2

    :pswitch_10
    const-string v20, "sans-serif-light"

    const/16 v21, 0x2

    invoke-static/range {v20 .. v21}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0a0165

    invoke-virtual/range {v20 .. v22}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v24}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto/16 :goto_2

    :pswitch_11
    const-string v20, "sans-serif"

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0a0166

    invoke-virtual/range {v20 .. v22}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v24}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto/16 :goto_2

    :pswitch_12
    const-string v20, "sans-serif"

    const/16 v21, 0x3

    invoke-static/range {v20 .. v21}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0a0167

    invoke-virtual/range {v20 .. v22}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v24}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto/16 :goto_2

    :pswitch_13
    const-string v20, "sans-serif-condensed"

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0a0168

    invoke-virtual/range {v20 .. v22}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v24}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto/16 :goto_2

    :pswitch_14
    const-string v20, "sans-serif-thin"

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0a0169

    invoke-virtual/range {v20 .. v22}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v24}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto/16 :goto_2

    :pswitch_15
    const-string v20, "sans-serif"

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0a016a

    invoke-virtual/range {v20 .. v22}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    const/high16 v23, 0x3f800000    # 1.0f

    const/high16 v24, -0x1000000

    invoke-virtual/range {v20 .. v24}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto/16 :goto_2

    :pswitch_16
    const-string v20, "sans-serif"

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0a0160

    invoke-virtual/range {v20 .. v22}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v24}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto/16 :goto_2

    :pswitch_17
    const-string v20, "sans-serif"

    const/16 v21, 0x3

    invoke-static/range {v20 .. v21}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0a0161

    invoke-virtual/range {v20 .. v22}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v24}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto/16 :goto_2

    :pswitch_18
    const-string v20, "sans-serif"

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0a0162

    invoke-virtual/range {v20 .. v22}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v24}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto/16 :goto_2

    :pswitch_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f02023e

    invoke-static/range {v20 .. v21}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f020240

    invoke-static/range {v20 .. v21}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    div-int v20, v18, v20

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v20

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v12, v0

    const/4 v4, 0x0

    :goto_4
    if-gt v4, v12, :cond_6

    new-instance v9, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mMiddleImage:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    new-instance v9, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mMiddleImage:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    div-int v20, v18, v20

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v20

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v14, v0

    const/4 v4, 0x0

    :goto_5
    if-gt v4, v14, :cond_0

    new-instance v9, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mMiddleImage:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_19
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mLeftImage:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mMiddleImage:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mRightImage:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mLabelLayout:Landroid/widget/LinearLayout;

    return-void
.end method

.method public findCharBreak(Ljava/lang/String;III)I
    .locals 8

    move v1, p2

    move v0, p4

    const/4 v2, 0x0

    :cond_0
    add-int/lit8 v7, v1, 0x2

    invoke-virtual {p1, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/Decoration/EmojiUtil;->hasFlagString(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v5, 0x4

    :goto_0
    add-int v7, v1, v5

    if-le v7, p4, :cond_3

    move v0, v1

    move v2, v3

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v2, :cond_1

    const/16 v7, 0x11

    if-le v4, v7, :cond_1

    const/4 v7, 0x7

    if-ne v0, v7, :cond_1

    const/16 v0, 0xb

    :cond_1
    return v0

    :cond_2
    const/4 v5, 0x2

    goto :goto_0

    :cond_3
    add-int v7, v1, v5

    if-ne v7, p4, :cond_4

    move v0, p4

    goto :goto_1

    :cond_4
    add-int/2addr v1, v5

    if-lt v1, p3, :cond_0

    goto :goto_1
.end method

.method public getAdvancedLabel(ILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 23

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x0

    :goto_0
    move/from16 v0, v20

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isCJK(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->isKoreanJapanese:Z

    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isCJK(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->isKoreanJapanese:Z

    if-eqz v2, :cond_3

    :cond_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mIsCJK:Z

    :goto_1
    const/16 v22, 0x200

    const/16 v21, 0x200

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v22

    move/from16 v1, v21

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct/range {p0 .. p1}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getDrawables(I)[I

    move-result-object v12

    invoke-direct/range {p0 .. p1}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getComponentRectInfo(I)[Landroid/graphics/Rect;

    move-result-object v8

    const/4 v2, 0x0

    aget v2, v12, v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_4

    invoke-direct/range {p0 .. p1}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getTypeFace(I)Landroid/graphics/Typeface;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mIsCJK:Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getFontSize(IZ)I

    move-result v6

    invoke-direct/range {p0 .. p1}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getFontColor(I)I

    move-result v7

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move/from16 v9, p1

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->drawLabelForFreeStyle(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Typeface;II[Landroid/graphics/Rect;I)V

    :goto_2
    return-object v3

    :cond_2
    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int v20, v20, v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mIsCJK:Z

    goto :goto_1

    :cond_4
    const/4 v2, 0x1

    aget v2, v12, v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_5

    const/4 v2, 0x0

    aget v12, v12, v2

    invoke-direct/range {p0 .. p1}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getTypeFace(I)Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getMaxCharacters(I)I

    move-result v14

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mIsCJK:Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getFontSize(IZ)I

    move-result v15

    invoke-direct/range {p0 .. p1}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getFontColor(I)I

    move-result v16

    move-object/from16 v9, p0

    move-object v10, v3

    move-object/from16 v11, p2

    move-object/from16 v17, v8

    invoke-direct/range {v9 .. v17}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->drawLabelForSingleImage(Landroid/graphics/Bitmap;Ljava/lang/String;ILandroid/graphics/Typeface;III[Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getTypeFace(I)Landroid/graphics/Typeface;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mIsCJK:Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getFontSize(IZ)I

    move-result v14

    invoke-direct/range {p0 .. p1}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->getFontColor(I)I

    move-result v15

    move-object/from16 v9, p0

    move-object v10, v3

    move-object/from16 v11, p2

    move-object/from16 v16, v8

    invoke-direct/range {v9 .. v16}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->drawLabelForSplitImages(Landroid/graphics/Bitmap;Ljava/lang/String;[ILandroid/graphics/Typeface;II[Landroid/graphics/Rect;)V

    goto :goto_2
.end method

.method public getLabelBitmap(Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 29

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p2}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->setLabelSettings(Ljava/lang/String;I)V

    new-instance v27, Landroid/graphics/Matrix;

    invoke-direct/range {v27 .. v27}, Landroid/graphics/Matrix;-><init>()V

    new-instance v17, Landroid/graphics/Matrix;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Matrix;-><init>()V

    const/16 v5, 0x9

    new-array v0, v5, [F

    move-object/from16 v26, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v5, 0x0

    aget v20, v26, v5

    const/4 v5, 0x4

    aget v21, v26, v5

    new-instance v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v14, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->TEXT_SIZE:I

    int-to-float v0, v5

    move/from16 v24, v0

    const/4 v5, 0x0

    move/from16 v0, v24

    invoke-virtual {v14, v5, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->measureTextRect(Landroid/widget/TextView;)Landroid/graphics/Rect;

    move-result-object v25

    const/16 v22, 0x0

    const/4 v5, 0x1

    move/from16 v0, p2

    if-lt v0, v5, :cond_7

    const/16 v5, 0xc

    move/from16 v0, p2

    if-gt v0, v5, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mMiddleImage:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->measure(II)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mMiddleImage:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v22

    :cond_0
    :goto_0
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    move/from16 v0, v22

    int-to-float v6, v0

    div-float v15, v5, v6

    const/4 v5, 0x4

    move/from16 v0, p2

    if-ne v0, v5, :cond_1

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float/2addr v15, v5

    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mLabelLayout:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mLabelLayout:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->measure(II)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mLabelLayout:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v11

    invoke-virtual {v5, v6, v7, v10, v11}, Landroid/widget/LinearLayout;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->buildDrawingCache()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v19

    if-eqz v19, :cond_5

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    const/4 v5, 0x0

    cmpg-float v5, v15, v5

    if-lez v5, :cond_2

    invoke-static {v15}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    const/high16 v15, 0x3f800000    # 1.0f

    :cond_3
    move/from16 v0, p3

    move/from16 v1, p4

    if-lt v0, v1, :cond_8

    const/16 v18, 0x1

    :goto_1
    const/high16 v23, 0x3f800000    # 1.0f

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v15

    float-to-int v13, v5

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v15

    float-to-int v12, v5

    const/4 v5, 0x1

    move-object/from16 v0, v19

    invoke-static {v0, v13, v12, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v5, 0x1

    move/from16 v0, p2

    if-lt v0, v5, :cond_9

    const/16 v5, 0xc

    move/from16 v0, p2

    if-gt v0, v5, :cond_9

    move-object v4, v2

    :cond_4
    :goto_2
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->recycle()V

    const/16 v19, 0x0

    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->destroyDrawingCache()V

    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mLeftImage:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->clearViewResource(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mMiddleImage:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->clearViewResource(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mRightImage:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->clearViewResource(Landroid/view/View;)V

    return-object v4

    :cond_7
    const/16 v5, 0xd

    move/from16 v0, p2

    if-lt v0, v5, :cond_0

    const/16 v5, 0x18

    move/from16 v0, p2

    if-gt v0, v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->measure(II)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v22

    goto/16 :goto_0

    :cond_8
    const/16 v18, 0x0

    goto :goto_1

    :cond_9
    const/16 v5, 0xd

    move/from16 v0, p2

    if-lt v0, v5, :cond_4

    const/16 v5, 0x18

    move/from16 v0, p2

    if-gt v0, v5, :cond_4

    const/high16 v5, 0x42200000    # 40.0f

    mul-float v5, v5, v20

    float-to-int v0, v5

    move/from16 v28, v0

    const/high16 v5, 0x42200000    # 40.0f

    mul-float v5, v5, v21

    float-to-int v0, v5

    move/from16 v16, v0

    if-eqz v2, :cond_4

    mul-int v5, v13, v12

    new-array v3, v5, [I

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    add-int v5, v13, v28

    add-int v6, v12, v16

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v9

    const/4 v6, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    move-object v5, v3

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    const/4 v3, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    goto/16 :goto_2
.end method

.method public getMaxCharacters(I)I
    .locals 1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    const/16 v0, 0x14

    if-ne p1, v0, :cond_1

    :cond_0
    sget v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->MAX_CHAR_EXCEPTION:I

    :goto_0
    return v0

    :cond_1
    sget v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->MAX_CHAR_NORMAL:I

    goto :goto_0
.end method

.method public splitByUnicodeForIndex(Ljava/lang/String;)I
    .locals 11

    :try_start_0
    const-string v5, "[\ud83c-\udbff\udc00-\udfff]+"

    const/4 v8, 0x0

    new-array v7, v8, [B

    const-string v8, "UTF-8"

    invoke-virtual {p1, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    new-instance v6, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    sget v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->MAX_CHAR_EXCEPTION:I

    invoke-static {v4, p1}, Lcom/sec/android/mimage/photoretouching/Decoration/EmojiUtil;->findAllMatches(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/regex/MatchResult;

    sget v9, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->MAX_CHAR_EXCEPTION:I

    invoke-interface {v2}, Ljava/util/regex/MatchResult;->start()I

    move-result v10

    if-le v9, v10, :cond_0

    invoke-interface {v2}, Ljava/util/regex/MatchResult;->end()I

    move-result v9

    sget v10, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->MAX_CHAR_EXCEPTION:I

    if-le v9, v10, :cond_0

    invoke-interface {v2}, Ljava/util/regex/MatchResult;->start()I

    move-result v8

    invoke-interface {v2}, Ljava/util/regex/MatchResult;->end()I

    move-result v9

    sget v10, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->MAX_CHAR_EXCEPTION:I

    invoke-virtual {p0, p1, v8, v9, v10}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->findCharBreak(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    sget v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelBuilder;->MAX_CHAR_EXCEPTION:I

    goto :goto_0
.end method
