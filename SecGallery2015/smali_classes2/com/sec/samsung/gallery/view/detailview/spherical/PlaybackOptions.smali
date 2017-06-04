.class public Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;
.super Landroid/app/Fragment;
.source "PlaybackOptions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final ANDROID:Ljava/lang/String; = "android"

.field private static final DIMEN:Ljava/lang/String; = "dimen"

.field private static final DIRECTION_CURRENT:Ljava/lang/String; = "direction_current"

.field private static final DIRECTION_FRONT:I = 0x1

.field private static final DIRECTION_LAYOUT_WEIGHT_SUM_LANDSCAPE:I = 0x2

.field private static final DIRECTION_LAYOUT_WEIGHT_SUM_PORTRAIT:I = 0x0

.field private static final DIRECTION_PREVIOUS:Ljava/lang/String; = "direction_previous"

.field private static final DIRECTION_REAR:I = 0x0

.field private static final NAVIGATION_BAR_HEIGHT:Ljava/lang/String; = "navigation_bar_height"

.field private static final PORTRAIT_HEIGHT_OFFSET:I = 0x2

.field private static final REQ_IMAGE_HEIGHT_PIXEL:I = 0x400

.field private static final REQ_IMAGE_WIDTH_PIXEL:I = 0x200

.field private static final SAVED_FILEPATH:Ljava/lang/String; = "saved_filepath"

.field private static final SAVE_BUTTON_ALPHA_DISABLED:F = 0.4f

.field private static final SAVE_BUTTON_ALPHA_ENABLED:F = 1.0f

.field private static final STATUS_BAR_HEIGHT:Ljava/lang/String; = "navigation_bar_height"


# instance fields
.field private mCurDirection:I

.field private mFilePath:Ljava/lang/String;

.field private mFrontImageLayout:Landroid/widget/LinearLayout;

.field private mFrontImageView:Landroid/widget/ImageView;

.field private mPlaybackView:Landroid/view/View;

.field private mPrevDirection:I

.field private mRadioButtonFront:Landroid/widget/RadioButton;

.field private mRadioButtonRear:Landroid/widget/RadioButton;

.field private mRadioGrpLayout:Landroid/widget/LinearLayout;

.field private mRearImageLayout:Landroid/widget/LinearLayout;

.field private mRearImageView:Landroid/widget/ImageView;

.field private mSaveButtonLayout:Landroid/widget/LinearLayout;

.field private mViewerActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mCurDirection:I

    iput v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mPrevDirection:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method private calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;)I
    .locals 8

    const/16 v7, 0x400

    const/16 v6, 0x200

    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v3, 0x1

    if-gt v2, v7, :cond_0

    if-le v4, v6, :cond_1

    :cond_0
    div-int/lit8 v0, v2, 0x2

    div-int/lit8 v1, v4, 0x2

    :goto_0
    div-int v5, v0, v3

    if-lt v5, v7, :cond_1

    div-int v5, v1, v3

    if-lt v5, v6, :cond_1

    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_1
    return v3
.end method

.method private decodeSampledBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private getDescriptionHeight()I
    .locals 12

    const/4 v11, 0x0

    const/4 v10, -0x2

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mViewerActivity:Landroid/app/Activity;

    invoke-direct {p0, v8}, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    new-instance v5, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mViewerActivity:Landroid/app/Activity;

    invoke-direct {v5, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b05dc

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v6, v8

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b05db

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v3, v8

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b05de

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v4, v8

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a01c8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v5, v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    const/4 v8, 0x2

    int-to-float v9, v4

    invoke-virtual {v5, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    iget v8, v1, Landroid/graphics/Point;->x:I

    const/high16 v9, -0x80000000

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v11, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v5, v7, v0}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    add-int/lit8 v8, v8, 0x2

    return v8
.end method

.method private getNavigationBarHeight()I
    .locals 5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mViewerActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "navigation_bar_height"

    const-string/jumbo v3, "dimen"

    const-string/jumbo v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 3

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const-string/jumbo v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    return-object v0
.end method

.method private getStatusBarHeight()I
    .locals 6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mViewerActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "navigation_bar_height"

    const-string/jumbo v4, "dimen"

    const-string/jumbo v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mViewerActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_0
    return v1
.end method

.method private initActionBar()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mViewerActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mPlaybackView:Landroid/view/View;

    const v2, 0x7f120078

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mPlaybackView:Landroid/view/View;

    const v2, 0x7f120112

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mSaveButtonLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mSaveButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mCurDirection:I

    iget v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mPrevDirection:I

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->updateSaveButton(Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initView()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mPlaybackView:Landroid/view/View;

    const v1, 0x7f120113

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mRadioGrpLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mPlaybackView:Landroid/view/View;

    const v1, 0x7f120116

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mRadioButtonRear:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mPlaybackView:Landroid/view/View;

    const v1, 0x7f120119

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mRadioButtonFront:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mRadioButtonRear:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mRadioButtonFront:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mCurDirection:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mRadioButtonFront:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mRadioButtonRear:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->requestFocus()Z

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mPlaybackView:Landroid/view/View;

    const v1, 0x7f120115

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mRearImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mPlaybackView:Landroid/view/View;

    const v1, 0x7f120118

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mFrontImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mPlaybackView:Landroid/view/View;

    const v1, 0x7f120114

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mRearImageLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mPlaybackView:Landroid/view/View;

    const v1, 0x7f120117

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mFrontImageLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mRearImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mFrontImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->setBitmap()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mRadioButtonRear:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mRadioButtonFront:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->requestFocus()Z

    goto :goto_0
.end method

.method private populateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 3

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    const v0, 0x7f040070

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mPlaybackView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mPlaybackView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mViewerActivity:Landroid/app/Activity;

    const v2, 0x106000b

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mPlaybackView:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->initActionBar()V

    return-void
.end method

.method private setBitmap()V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mFilePath:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->decodeSampledBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v10, 0x2

    new-array v2, v10, [Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    shr-int/lit8 v7, v6, 0x2

    shr-int/lit8 v8, v6, 0x1

    sub-int v9, v6, v7

    invoke-static {v3, v7, v11, v8, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v10

    aput-object v10, v2, v11

    invoke-static {v3, v11, v11, v7, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v3, v9, v11, v7, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/gallery360viewer/util/BitmapUtils;->joinImagesHorizontally(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v10

    aput-object v10, v2, v12

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    aget-object v10, v2, v11

    if-eqz v10, :cond_0

    aget-object v10, v2, v12

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mFrontImageView:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    aget-object v10, v2, v11

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    if-ne v10, v6, :cond_4

    aget-object v10, v2, v11

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    if-eq v10, v4, :cond_5

    :cond_4
    aget-object v10, v2, v11

    invoke-static {v10, v6, v4, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v10

    aput-object v10, v2, v11

    :cond_5
    iget-object v10, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mFrontImageView:Landroid/widget/ImageView;

    aget-object v11, v2, v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mRearImageView:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    aget-object v10, v2, v12

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    if-ne v10, v6, :cond_6

    aget-object v10, v2, v12

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    if-eq v10, v4, :cond_7

    :cond_6
    aget-object v10, v2, v12

    invoke-static {v10, v6, v4, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v10

    aput-object v10, v2, v12

    :cond_7
    iget-object v10, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mRearImageView:Landroid/widget/ImageView;

    aget-object v11, v2, v12

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0
.end method

.method private updateLayout()V
    .locals 14

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mViewerActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mViewerActivity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v9

    const/4 v0, 0x2

    new-array v8, v0, [I

    const/4 v0, 0x2

    new-array v3, v0, [I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b05e2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v11, v0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b05e1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v10, v0

    iget v0, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    aput v10, v8, v0

    const/4 v0, 0x1

    aput v11, v8, v0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b05d8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v1, v0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mRadioGrpLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v8, v0}, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->updateLayoutContents([II)V

    iget v0, v9, Landroid/graphics/Point;->x:I

    mul-int/lit8 v2, v10, 0x2

    sub-int/2addr v0, v2

    div-int/lit8 v5, v0, 0x4

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b05e5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    add-int/2addr v11, v0

    if-gtz v5, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b05e0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v5, v0

    :cond_0
    const/4 v0, 0x0

    aput v10, v3, v0

    const/4 v0, 0x1

    aput v11, v3, v0

    const/4 v2, 0x0

    const/4 v4, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->updateLayoutParams(II[III)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    aput v11, v8, v0

    const/4 v0, 0x1

    aput v10, v8, v0

    const/4 v0, 0x0

    const/4 v2, -0x1

    aput v2, v3, v0

    const/4 v0, 0x1

    aput v10, v3, v0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mRadioGrpLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget v0, v9, Landroid/graphics/Point;->y:I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->getDescriptionHeight()I

    move-result v2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->getNavigationBarHeight()I

    move-result v4

    add-int/2addr v2, v4

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->getStatusBarHeight()I

    move-result v4

    add-int/2addr v2, v4

    sub-int v7, v0, v2

    mul-int/lit8 v0, v10, 0x2

    sub-int v0, v7, v0

    div-int/lit8 v1, v0, 0x3

    if-gtz v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b05e0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v1, v0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b05e3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v12, v0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b05df

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v5, v0

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->updateLayoutParams(II[III)V

    invoke-direct {p0, v8, v12}, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->updateLayoutContents([II)V

    goto :goto_0
.end method

.method private updateLayoutContents([II)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mRearImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    aget v1, p1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mRearImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    aget v1, p1, v3

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mFrontImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    aget v1, p1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mFrontImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    aget v1, p1, v3

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mRadioButtonRear:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mRadioButtonFront:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    return-void
.end method

.method private updateLayoutParams(II[III)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mRadioGrpLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mRadioGrpLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mRadioGrpLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mRadioGrpLayout:Landroid/widget/LinearLayout;

    int-to-float v5, p4

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mRearImageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    aget v2, p3, v3

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    aget v2, p3, v4

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput p5, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput p5, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    div-int/lit8 v2, p4, 0x2

    int-to-float v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mRearImageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mRearImageLayout:Landroid/widget/LinearLayout;

    if-ne p2, v4, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mFrontImageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    aget v2, p3, v3

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    aget v2, p3, v4

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput p5, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput p5, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    div-int/lit8 v2, p4, 0x2

    int-to-float v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mFrontImageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mFrontImageLayout:Landroid/widget/LinearLayout;

    if-ne p2, v4, :cond_1

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method

.method private updateSaveButton(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mSaveButtonLayout:Landroid/widget/LinearLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mSaveButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mSaveButtonLayout:Landroid/widget/LinearLayout;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v3, 0x7f120116

    if-ne v0, v3, :cond_2

    if-eqz p2, :cond_0

    iput v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mCurDirection:I

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mRadioButtonRear:Landroid/widget/RadioButton;

    invoke-virtual {v0, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mRadioButtonFront:Landroid/widget/RadioButton;

    if-nez p2, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_1
    iget v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mPrevDirection:I

    iget v3, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mCurDirection:I

    if-eq v0, v3, :cond_5

    :goto_2
    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->updateSaveButton(Z)V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    iput v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mCurDirection:I

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mRadioButtonFront:Landroid/widget/RadioButton;

    invoke-virtual {v0, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mRadioButtonRear:Landroid/widget/RadioButton;

    if-nez p2, :cond_4

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    move v1, v2

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mRadioButtonRear:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mRadioButtonRear:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mRadioButtonFront:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mRadioButtonFront:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mViewerActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_0

    :sswitch_3
    iget v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mCurDirection:I

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->saveDefaultDirection(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mViewerActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f120078 -> :sswitch_2
        0x7f120112 -> :sswitch_3
        0x7f120115 -> :sswitch_0
        0x7f120118 -> :sswitch_1
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->updateLayout()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mViewerActivity:Landroid/app/Activity;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mViewerActivity:Landroid/app/Activity;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p3, :cond_1

    const-string/jumbo v1, "saved_filepath"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mFilePath:Ljava/lang/String;

    const-string/jumbo v1, "direction_current"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mCurDirection:I

    const-string/jumbo v1, "direction_previous"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mPrevDirection:I

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mViewerActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mViewerActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mViewerActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mViewerActivity:Landroid/app/Activity;

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->updateStatusBarColor(Landroid/view/Window;Landroid/content/Context;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->populateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    const v0, 0x7f120271

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "direction_current"

    iget v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mCurDirection:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "direction_previous"

    iget v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mPrevDirection:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "saved_filepath"

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->initView()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->updateLayout()V

    return-void
.end method

.method public saveDefaultDirection(I)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;->values()[Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;

    move-result-object v0

    aget-object v3, v0, p1

    invoke-virtual {v3}, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mFilePath:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpUtils;->writeToXMP(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mViewerActivity:Landroid/app/Activity;

    check-cast v3, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;

    invoke-virtual {v3, p1}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->setPlaybackDirection(I)V

    :cond_0
    return-void
.end method

.method public setInitValues(Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mFilePath:Ljava/lang/String;

    iput p2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mCurDirection:I

    iput p2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/PlaybackOptions;->mPrevDirection:I

    return-void
.end method
