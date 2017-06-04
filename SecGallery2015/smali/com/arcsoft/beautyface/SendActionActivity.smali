.class public Lcom/arcsoft/beautyface/SendActionActivity;
.super Landroid/app/Activity;
.source "SendActionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/arcsoft/beautyface/SendActionActivity$7;
    }
.end annotation


# static fields
.field private static final FEATURE_NULL_TOAST:I = 0x10

.field private static final MAX_FEATURE_VALUE:I = 0x64

.field private static final RESIZE_FACTOR:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ArcSoft_App_SendActionActivity"


# instance fields
.field private mArrayInput:Landroid/widget/RadioButton;

.field private mBeautyFaceButton:Landroid/widget/Button;

.field private mBeautyMode:I

.field private mBitmapInput:Landroid/widget/RadioButton;

.field private mBrightSkinValue:Landroid/widget/EditText;

.field private mCurrentPhotoPath:Ljava/lang/String;

.field private mEngineParam:Lcom/arcsoft/beautyface/jni/BeautyEngine$InitParam;

.field private mEnlargeEyeValue:Landroid/widget/EditText;

.field private mFaceRectInfo:Lcom/arcsoft/beautyface/jni/BeautyEngine$FaceRectInfo;

.field private mFeature:Landroid/widget/LinearLayout;

.field private mFeatureEditLayout:Landroid/widget/RelativeLayout;

.field private mGetResultFromCamera:Lcom/arcsoft/beautyface/GetResultFromCamera;

.field private mGetResultFromGallery:Lcom/arcsoft/beautyface/GetResultFromGallery;

.field mHandler:Landroid/os/Handler;

.field private mIsExit:Z

.field private mIsInputBitmap:Z

.field private mJNIEngine:Lcom/arcsoft/beautyface/jni/BeautyEngine;

.field private mLongestSide:I

.field private mModeOnFace:Landroid/widget/RadioButton;

.field private mModeOnSKin:Landroid/widget/RadioButton;

.field mPickPicOnClickListener:Landroid/view/View$OnClickListener;

.field private mProperty:Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;

.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private mRadioGroupMode:Landroid/widget/RadioGroup;

.field private mRectsShow:Landroid/widget/TextView;

.field private mSlenderFaceValue:Landroid/widget/EditText;

.field private mSoftenSkinValue:Landroid/widget/EditText;

.field mTakePicOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mJNIEngine:Lcom/arcsoft/beautyface/jni/BeautyEngine;

    iput-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mEngineParam:Lcom/arcsoft/beautyface/jni/BeautyEngine$InitParam;

    iput-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mProperty:Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;

    iput-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mFaceRectInfo:Lcom/arcsoft/beautyface/jni/BeautyEngine$FaceRectInfo;

    iput-boolean v2, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mIsInputBitmap:Z

    iput-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mFeatureEditLayout:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mFeature:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mSoftenSkinValue:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mBrightSkinValue:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mSlenderFaceValue:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mEnlargeEyeValue:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mBitmapInput:Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mArrayInput:Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mBeautyFaceButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mRectsShow:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mCurrentPhotoPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mGetResultFromCamera:Lcom/arcsoft/beautyface/GetResultFromCamera;

    iput-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mGetResultFromGallery:Lcom/arcsoft/beautyface/GetResultFromGallery;

    iput v1, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mLongestSide:I

    iput-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mRadioGroupMode:Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mModeOnFace:Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mModeOnSKin:Landroid/widget/RadioButton;

    iput v1, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mBeautyMode:I

    new-instance v0, Lcom/arcsoft/beautyface/SendActionActivity$2;

    invoke-direct {v0, p0}, Lcom/arcsoft/beautyface/SendActionActivity$2;-><init>(Lcom/arcsoft/beautyface/SendActionActivity;)V

    iput-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mTakePicOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/arcsoft/beautyface/SendActionActivity$3;

    invoke-direct {v0, p0}, Lcom/arcsoft/beautyface/SendActionActivity$3;-><init>(Lcom/arcsoft/beautyface/SendActionActivity;)V

    iput-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mPickPicOnClickListener:Landroid/view/View$OnClickListener;

    iput-boolean v2, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mIsExit:Z

    new-instance v0, Lcom/arcsoft/beautyface/SendActionActivity$6;

    invoke-direct {v0, p0}, Lcom/arcsoft/beautyface/SendActionActivity$6;-><init>(Lcom/arcsoft/beautyface/SendActionActivity;)V

    iput-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/arcsoft/beautyface/SendActionActivity;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mModeOnFace:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/arcsoft/beautyface/SendActionActivity;)I
    .locals 1

    iget v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mBeautyMode:I

    return v0
.end method

.method static synthetic access$1000(Lcom/arcsoft/beautyface/SendActionActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mCurrentPhotoPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/arcsoft/beautyface/SendActionActivity;I)I
    .locals 0

    iput p1, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mBeautyMode:I

    return p1
.end method

.method static synthetic access$1100(Lcom/arcsoft/beautyface/SendActionActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/arcsoft/beautyface/SendActionActivity;->beautyFace(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/arcsoft/beautyface/SendActionActivity;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mBitmapInput:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/arcsoft/beautyface/SendActionActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mIsInputBitmap:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/arcsoft/beautyface/SendActionActivity;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mArrayInput:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/arcsoft/beautyface/SendActionActivity;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mModeOnSKin:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/arcsoft/beautyface/SendActionActivity;)Lcom/arcsoft/beautyface/GetResultFromCamera;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mGetResultFromCamera:Lcom/arcsoft/beautyface/GetResultFromCamera;

    return-object v0
.end method

.method static synthetic access$400(Lcom/arcsoft/beautyface/SendActionActivity;)Lcom/arcsoft/beautyface/GetResultFromGallery;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mGetResultFromGallery:Lcom/arcsoft/beautyface/GetResultFromGallery;

    return-object v0
.end method

.method static synthetic access$500(Lcom/arcsoft/beautyface/SendActionActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mSoftenSkinValue:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/arcsoft/beautyface/SendActionActivity;)Lcom/arcsoft/beautyface/jni/BeautyEngine$InitParam;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mEngineParam:Lcom/arcsoft/beautyface/jni/BeautyEngine$InitParam;

    return-object v0
.end method

.method static synthetic access$602(Lcom/arcsoft/beautyface/SendActionActivity;Lcom/arcsoft/beautyface/jni/BeautyEngine$InitParam;)Lcom/arcsoft/beautyface/jni/BeautyEngine$InitParam;
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mEngineParam:Lcom/arcsoft/beautyface/jni/BeautyEngine$InitParam;

    return-object p1
.end method

.method static synthetic access$700(Lcom/arcsoft/beautyface/SendActionActivity;)Lcom/arcsoft/beautyface/jni/BeautyEngine;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mJNIEngine:Lcom/arcsoft/beautyface/jni/BeautyEngine;

    return-object v0
.end method

.method static synthetic access$800(Lcom/arcsoft/beautyface/SendActionActivity;)Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mProperty:Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;

    return-object v0
.end method

.method static synthetic access$900(Lcom/arcsoft/beautyface/SendActionActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/arcsoft/beautyface/SendActionActivity;->setProperty()V

    return-void
.end method

.method private beautyFace(Ljava/lang/String;)V
    .locals 38

    if-nez p1, :cond_0

    const-string/jumbo v4, "ArcSoft_App_SendActionActivity"

    const-string/jumbo v6, "beautyFace input path = null"

    invoke-static {v4, v6}, Lcom/arcsoft/beautyface/ArcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/arcsoft/beautyface/ImageExif;->getExifOrientation(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/arcsoft/beautyface/SendActionActivity;->mBitmapInput:Landroid/widget/RadioButton;

    invoke-virtual {v4}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/arcsoft/beautyface/SendActionActivity;->mIsInputBitmap:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "/BeautyFace/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    const/16 v35, 0x0

    new-instance v27, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v27 .. v27}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x0

    move-object/from16 v0, v27

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v27

    iput-object v4, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v10, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const-string/jumbo v4, "ArcSoft_App_SendActionActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "decode bitmap width = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "height = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/arcsoft/beautyface/ArcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v5, v9, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v34

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/arcsoft/beautyface/SendActionActivity;->mIsInputBitmap:Z

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/arcsoft/beautyface/SendActionActivity;->mJNIEngine:Lcom/arcsoft/beautyface/jni/BeautyEngine;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/arcsoft/beautyface/SendActionActivity;->mFaceRectInfo:Lcom/arcsoft/beautyface/jni/BeautyEngine$FaceRectInfo;

    invoke-virtual {v4, v2, v6}, Lcom/arcsoft/beautyface/jni/BeautyEngine;->getFaceRects(Landroid/graphics/Bitmap;Lcom/arcsoft/beautyface/jni/BeautyEngine$FaceRectInfo;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/arcsoft/beautyface/SendActionActivity;->mJNIEngine:Lcom/arcsoft/beautyface/jni/BeautyEngine;

    move-object/from16 v0, v34

    invoke-virtual {v4, v2, v0}, Lcom/arcsoft/beautyface/jni/BeautyEngine;->beautyFace(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyyMMdd_HHmmss"

    invoke-direct {v4, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v37

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "Bitmap"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ".jpg"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v24

    invoke-static {v5, v9, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v23

    new-instance v30, Ljava/util/Random;

    invoke-direct/range {v30 .. v30}, Ljava/util/Random;-><init>()V

    const/16 v4, 0xa

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v26

    move/from16 v0, v26

    new-array v12, v0, [Landroid/graphics/Rect;

    move/from16 v0, v26

    new-array v13, v0, [J

    const/16 v25, 0x0

    :goto_1
    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/arcsoft/beautyface/SendActionActivity;->mFaceRectInfo:Lcom/arcsoft/beautyface/jni/BeautyEngine$FaceRectInfo;

    iget-object v4, v4, Lcom/arcsoft/beautyface/jni/BeautyEngine$FaceRectInfo;->rtFaces:[Landroid/graphics/Rect;

    aget-object v4, v4, v25

    aput-object v4, v12, v25

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/arcsoft/beautyface/SendActionActivity;->mFaceRectInfo:Lcom/arcsoft/beautyface/jni/BeautyEngine$FaceRectInfo;

    iget-object v4, v4, Lcom/arcsoft/beautyface/jni/BeautyEngine$FaceRectInfo;->FaceRolls:[J

    aget-wide v6, v4, v25

    aput-wide v6, v13, v25

    add-int/lit8 v25, v25, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/arcsoft/beautyface/SendActionActivity;->mJNIEngine:Lcom/arcsoft/beautyface/jni/BeautyEngine;

    move-object/from16 v0, v23

    invoke-virtual {v4, v2, v0, v12, v13}, Lcom/arcsoft/beautyface/jni/BeautyEngine;->beautyFace(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[Landroid/graphics/Rect;[J)I

    const/16 v25, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "/BeautyFace/Bitmap"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyyMMdd_HHmmss"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ".jpg"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/arcsoft/beautyface/ArcUtils;->createFile(Ljava/lang/String;)V

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-static {v0, v4, v1}, Lcom/arcsoft/beautyface/ArcUtils;->saveBitmapToFile(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)Z

    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/arcsoft/beautyface/ImageExif;->setExifOrientation(Ljava/lang/String;I)I

    if-eqz v23, :cond_2

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    :goto_2
    const/16 v4, 0xa

    new-array v0, v4, [Landroid/graphics/Rect;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/String;

    const-string/jumbo v4, "Face Rects: "

    move-object/from16 v0, v32

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/arcsoft/beautyface/SendActionActivity;->mFaceRectInfo:Lcom/arcsoft/beautyface/jni/BeautyEngine$FaceRectInfo;

    iget-object v4, v4, Lcom/arcsoft/beautyface/jni/BeautyEngine$FaceRectInfo;->rtFaces:[Landroid/graphics/Rect;

    if-eqz v4, :cond_5

    const/16 v25, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/arcsoft/beautyface/SendActionActivity;->mFaceRectInfo:Lcom/arcsoft/beautyface/jni/BeautyEngine$FaceRectInfo;

    iget-object v4, v4, Lcom/arcsoft/beautyface/jni/BeautyEngine$FaceRectInfo;->rtFaces:[Landroid/graphics/Rect;

    array-length v4, v4

    move/from16 v0, v25

    if-ge v0, v4, :cond_5

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    aput-object v4, v31, v25

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/arcsoft/beautyface/SendActionActivity;->mFaceRectInfo:Lcom/arcsoft/beautyface/jni/BeautyEngine$FaceRectInfo;

    iget-object v4, v4, Lcom/arcsoft/beautyface/jni/BeautyEngine$FaceRectInfo;->rtFaces:[Landroid/graphics/Rect;

    aget-object v4, v4, v25

    aput-object v4, v31, v25

    const-string/jumbo v4, "Arc_Face_Rects_Info"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Face Num = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",rects.top = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v31, v25

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",rects.bottom = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v31, v25

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",rects.left = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v31, v25

    iget v7, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",rects.right = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v31, v25

    iget v7, v7, Landroid/graphics/Rect;->right:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/arcsoft/beautyface/ArcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "rects["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "={"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v6, v31, v25

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v6, v31, v25

    iget v6, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v6, v31, v25

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v6, v31, v25

    iget v6, v6, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "}\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_3

    :cond_3
    const/16 v29, 0x0

    const/4 v3, 0x0

    const/16 v33, 0x0

    sget-object v4, Lcom/arcsoft/beautyface/SendActionActivity$7;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_0

    const-string/jumbo v4, "ArcSoft_App_SendActionActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Bitmap config not support config = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/arcsoft/beautyface/ArcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_0
    const/4 v10, 0x1

    mul-int v4, v5, v9

    mul-int/lit8 v4, v4, 0x4

    new-array v3, v4, [I

    mul-int v4, v5, v9

    mul-int/lit8 v4, v4, 0x4

    new-array v0, v4, [I

    move-object/from16 v33, v0

    :goto_4
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/arcsoft/beautyface/SendActionActivity;->mJNIEngine:Lcom/arcsoft/beautyface/jni/BeautyEngine;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/arcsoft/beautyface/SendActionActivity;->mFaceRectInfo:Lcom/arcsoft/beautyface/jni/BeautyEngine$FaceRectInfo;

    move-object v7, v3

    move v8, v5

    invoke-virtual/range {v6 .. v11}, Lcom/arcsoft/beautyface/jni/BeautyEngine;->getFaceRects([IIIILcom/arcsoft/beautyface/jni/BeautyEngine$FaceRectInfo;)I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/arcsoft/beautyface/SendActionActivity;->mJNIEngine:Lcom/arcsoft/beautyface/jni/BeautyEngine;

    move-object v7, v3

    move v8, v5

    move-object v11, v3

    invoke-virtual/range {v6 .. v11}, Lcom/arcsoft/beautyface/jni/BeautyEngine;->beautyFace([IIII[I)I

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v11, v34

    move-object v12, v3

    move v14, v5

    move/from16 v17, v5

    move/from16 v18, v9

    invoke-virtual/range {v11 .. v18}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyyMMdd_HHmmss"

    invoke-direct {v4, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v37

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "IntArray"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ".jpg"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v24

    invoke-static {v5, v9, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v23

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v2

    move-object/from16 v12, v33

    move v14, v5

    move/from16 v17, v5

    move/from16 v18, v9

    invoke-virtual/range {v11 .. v18}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    new-instance v30, Ljava/util/Random;

    invoke-direct/range {v30 .. v30}, Ljava/util/Random;-><init>()V

    const/16 v4, 0xa

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v26

    move/from16 v0, v26

    new-array v12, v0, [Landroid/graphics/Rect;

    move/from16 v0, v26

    new-array v13, v0, [J

    const/16 v25, 0x0

    :goto_5
    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/arcsoft/beautyface/SendActionActivity;->mFaceRectInfo:Lcom/arcsoft/beautyface/jni/BeautyEngine$FaceRectInfo;

    iget-object v4, v4, Lcom/arcsoft/beautyface/jni/BeautyEngine$FaceRectInfo;->rtFaces:[Landroid/graphics/Rect;

    aget-object v4, v4, v25

    aput-object v4, v12, v25

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/arcsoft/beautyface/SendActionActivity;->mFaceRectInfo:Lcom/arcsoft/beautyface/jni/BeautyEngine$FaceRectInfo;

    iget-object v4, v4, Lcom/arcsoft/beautyface/jni/BeautyEngine$FaceRectInfo;->FaceRolls:[J

    aget-wide v6, v4, v25

    aput-wide v6, v13, v25

    add-int/lit8 v25, v25, 0x1

    goto :goto_5

    :pswitch_1
    const/4 v10, 0x4

    mul-int v4, v5, v9

    mul-int/lit8 v4, v4, 0x2

    new-array v3, v4, [I

    mul-int v4, v5, v9

    mul-int/lit8 v4, v4, 0x2

    new-array v0, v4, [I

    move-object/from16 v33, v0

    goto/16 :goto_4

    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/arcsoft/beautyface/SendActionActivity;->mJNIEngine:Lcom/arcsoft/beautyface/jni/BeautyEngine;

    move-object/from16 v7, v33

    move v8, v5

    move-object/from16 v11, v33

    invoke-virtual/range {v6 .. v13}, Lcom/arcsoft/beautyface/jni/BeautyEngine;->beautyFace([IIII[I[Landroid/graphics/Rect;[J)I

    const/16 v25, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "/BeautyFace/IntArray"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyyMMdd_HHmmss"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ".jpg"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/arcsoft/beautyface/ArcUtils;->createFile(Ljava/lang/String;)V

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v14, v23

    move-object/from16 v15, v33

    move/from16 v17, v5

    move/from16 v20, v5

    move/from16 v21, v9

    invoke-virtual/range {v14 .. v21}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-static {v0, v4, v1}, Lcom/arcsoft/beautyface/ArcUtils;->saveBitmapToFile(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)Z

    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/arcsoft/beautyface/ImageExif;->setExifOrientation(Ljava/lang/String;I)I

    if-eqz v23, :cond_2

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/arcsoft/beautyface/SendActionActivity;->mRectsShow:Landroid/widget/TextView;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static/range {v35 .. v35}, Lcom/arcsoft/beautyface/ArcUtils;->createFile(Ljava/lang/String;)V

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-static {v0, v4, v1}, Lcom/arcsoft/beautyface/ArcUtils;->saveBitmapToFile(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)Z

    move-object/from16 v0, v35

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/arcsoft/beautyface/ImageExif;->setExifOrientation(Ljava/lang/String;I)I

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    :cond_6
    if-eqz v34, :cond_7

    invoke-virtual/range {v34 .. v34}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual/range {v34 .. v34}, Landroid/graphics/Bitmap;->recycle()V

    const/16 v34, 0x0

    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/arcsoft/beautyface/SendActionActivity;->scannerFileAndShow(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private dealWithInputPhoto(Ljava/lang/String;Z)V
    .locals 7

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/arcsoft/beautyface/ImageExif;->getExifOrientation(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    iget v5, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mLongestSide:I

    mul-int/lit8 v5, v5, 0x1

    iget v6, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mLongestSide:I

    mul-int/lit8 v6, v6, 0x1

    invoke-static {p1, v5, v6}, Lcom/arcsoft/beautyface/ArcUtils;->decodeSampledBitmapFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v0, v5}, Lcom/arcsoft/beautyface/ArcUtils;->rotateBitmap(Landroid/graphics/Bitmap;ILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez p2, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/PicPortrait/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyyMMdd_HHmmss"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-static {p1}, Lcom/arcsoft/beautyface/ArcUtils;->createFile(Ljava/lang/String;)V

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v2, v5, p1}, Lcom/arcsoft/beautyface/ArcUtils;->saveBitmapToFile(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)Z

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v5, v6, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v5}, Lcom/arcsoft/beautyface/SendActionActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private dosomeWork(Ljava/lang/String;Z)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/arcsoft/beautyface/SendActionActivity;->dealWithInputPhoto(Ljava/lang/String;Z)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v2, "image/*"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/arcsoft/beautyface/SendActionActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private initSendActionUI()V
    .locals 7

    sget v5, Lcom/arcsoft/beautyface/R$layout;->send_action_main:I

    invoke-virtual {p0, v5}, Lcom/arcsoft/beautyface/SendActionActivity;->setContentView(I)V

    new-instance v5, Lcom/arcsoft/beautyface/GetResultFromCamera;

    invoke-direct {v5, p0}, Lcom/arcsoft/beautyface/GetResultFromCamera;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mGetResultFromCamera:Lcom/arcsoft/beautyface/GetResultFromCamera;

    new-instance v5, Lcom/arcsoft/beautyface/GetResultFromGallery;

    invoke-direct {v5, p0}, Lcom/arcsoft/beautyface/GetResultFromGallery;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mGetResultFromGallery:Lcom/arcsoft/beautyface/GetResultFromGallery;

    sget v5, Lcom/arcsoft/beautyface/R$id;->capture_imageButton:I

    invoke-virtual {p0, v5}, Lcom/arcsoft/beautyface/SendActionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v5, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mTakePicOnClickListener:Landroid/view/View$OnClickListener;

    const-string/jumbo v6, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {p0, v0, v5, v6}, Lcom/arcsoft/beautyface/SendActionActivity;->setBtnListenerOrDisable(Landroid/widget/Button;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    sget v5, Lcom/arcsoft/beautyface/R$id;->gallery_imageButton:I

    invoke-virtual {p0, v5}, Lcom/arcsoft/beautyface/SendActionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iget-object v5, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mPickPicOnClickListener:Landroid/view/View$OnClickListener;

    const-string/jumbo v6, "android.intent.action.VIEW"

    invoke-direct {p0, v2, v5, v6}, Lcom/arcsoft/beautyface/SendActionActivity;->setBtnListenerOrDisable(Landroid/widget/Button;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/arcsoft/beautyface/SendActionActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v3, v4, :cond_0

    :goto_0
    iput v3, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mLongestSide:I

    sget v5, Lcom/arcsoft/beautyface/R$id;->radioGroup_action:I

    invoke-virtual {p0, v5}, Lcom/arcsoft/beautyface/SendActionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioGroup;

    iput-object v5, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mRadioGroupMode:Landroid/widget/RadioGroup;

    sget v5, Lcom/arcsoft/beautyface/R$id;->base_on_face:I

    invoke-virtual {p0, v5}, Lcom/arcsoft/beautyface/SendActionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    iput-object v5, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mModeOnFace:Landroid/widget/RadioButton;

    sget v5, Lcom/arcsoft/beautyface/R$id;->base_on_skin:I

    invoke-virtual {p0, v5}, Lcom/arcsoft/beautyface/SendActionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    iput-object v5, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mModeOnSKin:Landroid/widget/RadioButton;

    const/4 v5, 0x1

    iput v5, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mBeautyMode:I

    iget-object v5, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mRadioGroupMode:Landroid/widget/RadioGroup;

    new-instance v6, Lcom/arcsoft/beautyface/SendActionActivity$1;

    invoke-direct {v6, p0}, Lcom/arcsoft/beautyface/SendActionActivity$1;-><init>(Lcom/arcsoft/beautyface/SendActionActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method private initUI()V
    .locals 2

    sget v0, Lcom/arcsoft/beautyface/R$id;->FeatureEditLayout:I

    invoke-virtual {p0, v0}, Lcom/arcsoft/beautyface/SendActionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mFeatureEditLayout:Landroid/widget/RelativeLayout;

    sget v0, Lcom/arcsoft/beautyface/R$id;->soft_skin_value:I

    invoke-virtual {p0, v0}, Lcom/arcsoft/beautyface/SendActionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mSoftenSkinValue:Landroid/widget/EditText;

    sget v0, Lcom/arcsoft/beautyface/R$id;->bright_skin_value:I

    invoke-virtual {p0, v0}, Lcom/arcsoft/beautyface/SendActionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mBrightSkinValue:Landroid/widget/EditText;

    sget v0, Lcom/arcsoft/beautyface/R$id;->slender_face_value:I

    invoke-virtual {p0, v0}, Lcom/arcsoft/beautyface/SendActionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mSlenderFaceValue:Landroid/widget/EditText;

    sget v0, Lcom/arcsoft/beautyface/R$id;->enlarge_eye_value:I

    invoke-virtual {p0, v0}, Lcom/arcsoft/beautyface/SendActionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mEnlargeEyeValue:Landroid/widget/EditText;

    sget v0, Lcom/arcsoft/beautyface/R$id;->radioGroup:I

    invoke-virtual {p0, v0}, Lcom/arcsoft/beautyface/SendActionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    sget v0, Lcom/arcsoft/beautyface/R$id;->input_bitmap:I

    invoke-virtual {p0, v0}, Lcom/arcsoft/beautyface/SendActionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mBitmapInput:Landroid/widget/RadioButton;

    sget v0, Lcom/arcsoft/beautyface/R$id;->input_array:I

    invoke-virtual {p0, v0}, Lcom/arcsoft/beautyface/SendActionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mArrayInput:Landroid/widget/RadioButton;

    sget v0, Lcom/arcsoft/beautyface/R$id;->beauty_face:I

    invoke-virtual {p0, v0}, Lcom/arcsoft/beautyface/SendActionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mBeautyFaceButton:Landroid/widget/Button;

    sget v0, Lcom/arcsoft/beautyface/R$id;->rect_show:I

    invoke-virtual {p0, v0}, Lcom/arcsoft/beautyface/SendActionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mRectsShow:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mBeautyFaceButton:Landroid/widget/Button;

    new-instance v1, Lcom/arcsoft/beautyface/SendActionActivity$4;

    invoke-direct {v1, p0}, Lcom/arcsoft/beautyface/SendActionActivity$4;-><init>(Lcom/arcsoft/beautyface/SendActionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/arcsoft/beautyface/SendActionActivity$5;

    invoke-direct {v1, p0}, Lcom/arcsoft/beautyface/SendActionActivity$5;-><init>(Lcom/arcsoft/beautyface/SendActionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method public static isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private scannerFileAndShow(Ljava/lang/String;)V
    .locals 6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v3, "ArcSoft_App_SendActionActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Save path is file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/arcsoft/beautyface/ArcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v3}, Lcom/arcsoft/beautyface/SendActionActivity;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v3, "image/*"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/arcsoft/beautyface/SendActionActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private setBtnListenerOrDisable(Landroid/widget/Button;Landroid/view/View$OnClickListener;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0, p3}, Lcom/arcsoft/beautyface/SendActionActivity;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/arcsoft/beautyface/R$string;->cannot:I

    invoke-virtual {p0, v1}, Lcom/arcsoft/beautyface/SendActionActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_0
.end method

.method private setProperty()V
    .locals 3

    iget-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mProperty:Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;

    iget-object v1, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mSoftenSkinValue:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;->iSkinSoftenLevel:I

    iget-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mProperty:Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;

    iget-object v1, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mBrightSkinValue:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;->iSkinBrightLevel:I

    iget-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mProperty:Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;

    iget-object v1, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mSlenderFaceValue:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;->iSlenderFaceLevel:I

    iget-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mProperty:Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;

    iget-object v1, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mEnlargeEyeValue:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;->iEyeEnlargementLevel:I

    iget-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mProperty:Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;

    iget v1, v0, Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;->iFeatureNeeded:I

    or-int/lit16 v1, v1, 0xb0

    iput v1, v0, Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;->iFeatureNeeded:I

    const-string/jumbo v0, "ArcSoft_App_SendActionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mProperty.iFeatureNeeded = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mProperty:Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;

    iget v2, v2, Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;->iFeatureNeeded:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/beautyface/ArcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ArcSoft_App_SendActionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mProperty feature value is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mProperty:Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;

    iget v2, v2, Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;->iSkinSoftenLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mProperty:Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;

    iget v2, v2, Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;->iSkinBrightLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mProperty:Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;

    iget v2, v2, Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;->iSlenderFaceLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mProperty:Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;

    iget v2, v2, Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;->iEyeEnlargementLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mProperty:Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;

    iget v2, v2, Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;->iFeatureNeeded:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/beautyface/ArcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mJNIEngine:Lcom/arcsoft/beautyface/jni/BeautyEngine;

    iget-object v1, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mProperty:Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;

    invoke-virtual {v0, v1}, Lcom/arcsoft/beautyface/jni/BeautyEngine;->setProperty(Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;)I

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mCurrentPhotoPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget v0, Lcom/arcsoft/beautyface/R$layout;->edit_action:I

    invoke-virtual {p0, v0}, Lcom/arcsoft/beautyface/SendActionActivity;->setContentView(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mIsExit:Z

    invoke-direct {p0}, Lcom/arcsoft/beautyface/SendActionActivity;->initUI()V

    :cond_1
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mGetResultFromCamera:Lcom/arcsoft/beautyface/GetResultFromCamera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mGetResultFromCamera:Lcom/arcsoft/beautyface/GetResultFromCamera;

    invoke-virtual {v0, p1, p2, p3}, Lcom/arcsoft/beautyface/GetResultFromCamera;->onActivityResult(IILandroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mCurrentPhotoPath:Ljava/lang/String;

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mGetResultFromGallery:Lcom/arcsoft/beautyface/GetResultFromGallery;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mGetResultFromGallery:Lcom/arcsoft/beautyface/GetResultFromGallery;

    invoke-virtual {v0, p1, p2, p3}, Lcom/arcsoft/beautyface/GetResultFromGallery;->onActivityResult(IILandroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mCurrentPhotoPath:Ljava/lang/String;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 1

    iget-boolean v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mIsExit:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mEngineParam:Lcom/arcsoft/beautyface/jni/BeautyEngine$InitParam;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mEngineParam:Lcom/arcsoft/beautyface/jni/BeautyEngine$InitParam;

    invoke-virtual {v0}, Lcom/arcsoft/beautyface/jni/BeautyEngine$InitParam;->uninit()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mEngineParam:Lcom/arcsoft/beautyface/jni/BeautyEngine$InitParam;

    :cond_1
    invoke-direct {p0}, Lcom/arcsoft/beautyface/SendActionActivity;->initSendActionUI()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mIsExit:Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/arcsoft/beautyface/SendActionActivity;->initSendActionUI()V

    new-instance v0, Lcom/arcsoft/beautyface/jni/BeautyEngine;

    invoke-direct {v0}, Lcom/arcsoft/beautyface/jni/BeautyEngine;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mJNIEngine:Lcom/arcsoft/beautyface/jni/BeautyEngine;

    new-instance v0, Lcom/arcsoft/beautyface/jni/BeautyEngine$FaceRectInfo;

    invoke-direct {v0}, Lcom/arcsoft/beautyface/jni/BeautyEngine$FaceRectInfo;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mFaceRectInfo:Lcom/arcsoft/beautyface/jni/BeautyEngine$FaceRectInfo;

    new-instance v0, Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;

    invoke-direct {v0}, Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mProperty:Lcom/arcsoft/beautyface/jni/BeautyEngine$Property;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mJNIEngine:Lcom/arcsoft/beautyface/jni/BeautyEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mJNIEngine:Lcom/arcsoft/beautyface/jni/BeautyEngine;

    invoke-virtual {v0}, Lcom/arcsoft/beautyface/jni/BeautyEngine;->uninit()I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/arcsoft/beautyface/SendActionActivity;->mJNIEngine:Lcom/arcsoft/beautyface/jni/BeautyEngine;

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
