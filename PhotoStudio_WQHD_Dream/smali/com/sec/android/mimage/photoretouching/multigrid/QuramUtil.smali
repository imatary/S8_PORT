.class public Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;
.super Ljava/lang/Object;
.source "QuramUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil$EffectButtonInfo;
    }
.end annotation


# static fields
.field public static final ANDROID_RESOURCE:Ljava/lang/String; = "android.resource://"

.field public static final AVAILABLE_TOUCH_AREA_OFFSET:I = 0x12c

.field public static final BUTTON_SHOW_HIDE_ANIMATION_DURATION:I = 0x12c

.field public static final DB_DIR:Ljava/lang/String;

.field public static final DEVICE_NAME:Ljava/lang/String;

.field public static Debug:Z = false

.field public static DebugTag:Ljava/lang/String; = null

.field public static DoneEnabled:Z = false

.field public static final DrawBitmap:Z = true

.field static final ERROR:I = -0x1

.field public static final EXTERNAL_STORAGE:Ljava/lang/String;

.field public static final FORESLASH:Ljava/lang/String; = "/"

.field public static final HISTORY_PATH:Ljava/lang/String;

.field public static final INTENT_BITMAP_PARCEL_NAME:Ljava/lang/String; = "bitmap_parcel"

.field public static final INTENT_CAMERA_NAME:Ljava/lang/String; = "camera"

.field public static final INTENT_FILE_NAME:Ljava/lang/String; = "filename"

.field public static final INTENT_MULTI_SELECT_NAME:Ljava/lang/String; = "multi_select"

.field public static final INTENT_NO_IMAGE:Ljava/lang/String; = "no"

.field public static final INTENT_PATH_LIST_NAME:Ljava/lang/String; = "path_list"

.field public static final INTENT_PATH_NAME:Ljava/lang/String; = "path"

.field public static final INTENT_PEN_BUFFER_DRAW_RECT:Ljava/lang/String; = "draw_rect"

.field public static final INTENT_PEN_BUFFER_HEIGHT:Ljava/lang/String; = "height"

.field public static final INTENT_PEN_BUFFER_INDEX:Ljava/lang/String; = "imageIndex"

.field public static final INTENT_PEN_BUFFER_MATRIX_VALUES:Ljava/lang/String; = "matrix_values"

.field public static final INTENT_PEN_BUFFER_VIEWHEIGHT:Ljava/lang/String; = "viewHeight"

.field public static final INTENT_PEN_BUFFER_VIEWWIDTH:Ljava/lang/String; = "viewWidth"

.field public static final INTENT_PEN_BUFFER_WIDTH:Ljava/lang/String; = "width"

.field public static final INTENT_PEN_BUTTON_ID:Ljava/lang/String; = "button_id"

.field public static final INTENT_PEN_DRAWCANVAS_ROI:Ljava/lang/String; = "draw_canvas_roi"

.field public static final INTENT_URI_LIST_NAME:Ljava/lang/String; = "uri_list"

.field public static final INVALIDATE_TIME:I = 0x1f4

.field public static final K_MODEL_G800:Ljava/lang/String; = "G800"

.field public static final K_MODEL_G900:Ljava/lang/String; = "G900"

.field public static final K_MODEL_G905:Ljava/lang/String; = "G905"

.field public static final MAX_CROP_ANGLE:F = 25.0f

.field public static final MAX_DECODE_TIME:I = 0x258

.field public static final MAX_GET_INTENT_TIME:I = 0x32

.field public static final MAX_IMAGE_SIZE:I = 0x7a1200

.field public static final MAX_MULTIGRID_IMAGE_SIZE:I = 0x2dc6c0

.field public static final MAX_PREVIEW_SIZE:I = 0x1e8480

.field public static final MAX_ZOOM_RATIO:F = 3.0f

.field public static final MINUS_ZOOM_RATIO:F = 0.75f

.field public static final MIN_AVAILABLE_MEM_SIZE:I = 0xa00000

.field public static final MIN_CROP_ANGLE:F = -25.0f

.field public static final MIN_ZOOM_RATIO:F = 1.0f

.field public static final MORPHING_ANIMATION_DURATION:I = 0x2bc

.field public static final MULTI_GRID_RESULT_WIDTH:I = 0x640

.field public static final PACKAGE:Ljava/lang/String; = "com.sec.android.mimage.photoretouching"

.field public static final PHOTOSTUDIO_SAVEPATH:Ljava/lang/String; = "DCIM/Photo editor"

.field public static final SAVE_DIR:Ljava/lang/String;

.field public static final SAVE_GOOD_SIZE:I = 0x4c4b40

.field public static final SAVE_MAX_SIZE:I = 0x7a1200

.field private static final SPENSDK_URL:Ljava/lang/String; = "samsungapps://ProductDetail/com.samsung.android.sdk.spen30_64"

.field private static final SPENSDK_URL_32:Ljava/lang/String; = "samsungapps://ProductDetail/com.samsung.android.sdk.spen30"

.field public static final STATE_MINUS_ZOOM:I = 0x1

.field public static final STATE_NOT_MINUS_ZOOM:I = 0x2

.field public static final STEP_CROP_ANGLE:F = 10.0f

.field public static final TEMP_CAMERA_PATH:Ljava/lang/String;

.field public static isCropDialogShown:Z

.field private static mToast:Landroid/widget/Toast;

.field private static mToastEndTime:J

.field private static mToastStartTime:J

.field private static mToast_ac:Landroid/widget/Toast;

.field public static replaceCollage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sput-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->DEVICE_NAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->EXTERNAL_STORAGE:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->EXTERNAL_STORAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DCIM/Photo editor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->SAVE_DIR:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->EXTERNAL_STORAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".Studio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->TEMP_CAMERA_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->SAVE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->DB_DIR:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->TEMP_CAMERA_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/tempHistoryInfo/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->HISTORY_PATH:Ljava/lang/String;

    sput-boolean v2, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->Debug:Z

    const-string v0, "140630_QURAM_K_MR_v1"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->DebugTag:Ljava/lang/String;

    sput-boolean v2, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->DoneEnabled:Z

    sput-boolean v2, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->replaceCollage:Z

    sput-boolean v2, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->isCropDialogShown:Z

    sput-object v3, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->mToast:Landroid/widget/Toast;

    sput-object v3, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->mToast_ac:Landroid/widget/Toast;

    sput-wide v4, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->mToastStartTime:J

    sput-wide v4, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->mToastEndTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ccw(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 4

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    iget v1, p2, Landroid/graphics/PointF;->y:F

    iget v2, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    iget v2, p2, Landroid/graphics/PointF;->x:F

    iget v3, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public static checkOrMakeFileDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    const/4 v2, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "make directory!!, fail"

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->logE(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    goto :goto_0
.end method

.method public static checkPointInRect(FFLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {v0, p0, p1}, Landroid/graphics/PointF;->set(FF)V

    invoke-static {p2, p3, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->ccw(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    invoke-static {p3, p4, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->ccw(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    invoke-static {p4, p5, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->ccw(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    invoke-static {p5, p2, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->ccw(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static computeSampleSizeLarger(III)I
    .locals 4

    const/4 v1, 0x1

    div-int v2, p0, p2

    div-int v3, p1, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-gt v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x8

    if-gt v0, v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    goto :goto_0

    :cond_1
    div-int/lit8 v1, v0, 0x8

    mul-int/lit8 v1, v1, 0x8

    goto :goto_0
.end method

.method public static convertRectToVector(Landroid/graphics/Rect;)Ljava/util/Vector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Landroid/graphics/Rect;->top:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p0, Landroid/graphics/Rect;->top:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Landroid/graphics/Rect;->top:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static copyBuffer([BILandroid/graphics/Rect;[BILandroid/graphics/Rect;)V
    .locals 5

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget v3, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v0

    mul-int/2addr v3, p1

    iget v4, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static {p0, v3, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v3, p5, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v0

    mul-int/2addr v3, p4

    iget v4, p5, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static {p3, v3, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static copyBuffer([IILandroid/graphics/Rect;[IILandroid/graphics/Rect;)V
    .locals 5

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget v3, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v0

    mul-int/2addr v3, p1

    iget v4, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static {p0, v3, v4}, Ljava/nio/IntBuffer;->wrap([III)Ljava/nio/IntBuffer;

    move-result-object v1

    iget v3, p5, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v0

    mul-int/2addr v3, p4

    iget v4, p5, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static {p3, v3, v4}, Ljava/nio/IntBuffer;->wrap([III)Ljava/nio/IntBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/IntBuffer;->put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    const/4 v1, 0x0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static doNeedUppercaseString(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 14

    const v13, 0x7f0700d5

    invoke-static {p0, v13}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    const v13, 0x7f07027e

    invoke-static {p0, v13}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    const v13, 0x7f070092

    invoke-static {p0, v13}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const v13, 0x7f070072

    invoke-static {p0, v13}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    const v13, 0x7f0700ff

    invoke-static {p0, v13}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    const v13, 0x7f070161

    invoke-static {p0, v13}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    const v13, 0x7f0700cf

    invoke-static {p0, v13}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const v13, 0x7f0702a6

    invoke-static {p0, v13}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v11

    const v13, 0x7f070034

    invoke-static {p0, v13}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const v13, 0x7f070333

    invoke-static {p0, v13}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v12

    const v13, 0x7f070269

    invoke-static {p0, v13}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    const v13, 0x7f07029f

    invoke-static {p0, v13}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    const v13, 0x7f070270

    invoke-static {p0, v13}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-virtual {p1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-virtual {p1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-virtual {p1, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-virtual {p1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    :cond_0
    const/4 v13, 0x1

    :goto_0
    return v13

    :cond_1
    const/4 v13, 0x0

    goto :goto_0
.end method

.method public static existsFile(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static externalMemoryAvailable()Z
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static findButton(Ljava/util/ArrayList;I)Landroid/widget/LinearLayout;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;I)",
            "Landroid/widget/LinearLayout;"
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v3

    if-ne v3, p1, :cond_1

    move-object v2, v1

    :cond_0
    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static findCaller(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x1

    move-object v1, p1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v0, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->removeAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "() ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static findCaller(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-static {v0, p0}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->findCaller(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static findCallerWholeStack(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "============ Caller stack of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->removeAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "() ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->logD(Ljava/lang/String;)V

    const/4 v1, 0x1

    :goto_0
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.sec.android.mimage.photoretouching"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->removeAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->removeAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->logD(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static findCallerWholeStack(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, ""

    invoke-static {v0, p0}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->findCallerWholeStack(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static formatSize(J)Ljava/lang/String;
    .locals 6

    const-wide/16 v4, 0x400

    const/4 v2, 0x0

    cmp-long v3, p0, v4

    if-ltz v3, :cond_0

    const-string v2, "KiB"

    div-long/2addr p0, v4

    cmp-long v3, p0, v4

    if-ltz v3, :cond_0

    const-string v2, "MiB"

    div-long/2addr p0, v4

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v0, v3, -0x3

    :goto_0
    if-lez v0, :cond_1

    const/16 v3, 0x2c

    invoke-virtual {v1, v0, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x3

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getAngle(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)I
    .locals 20

    const/4 v4, 0x0

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v16, v0

    sub-float v13, v13, v16

    iput v13, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    sub-float v13, v13, v16

    iput v13, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v16, v0

    sub-float v13, v13, v16

    iput v13, v5, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    sub-float v13, v13, v16

    iput v13, v5, Landroid/graphics/PointF;->y:F

    iget v13, v2, Landroid/graphics/PointF;->x:F

    iget v0, v2, Landroid/graphics/PointF;->x:F

    move/from16 v16, v0

    mul-float v13, v13, v16

    iget v0, v2, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    iget v0, v2, Landroid/graphics/PointF;->y:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v13, v13, v16

    float-to-double v0, v13

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    iget v13, v5, Landroid/graphics/PointF;->x:F

    iget v0, v5, Landroid/graphics/PointF;->x:F

    move/from16 v16, v0

    mul-float v13, v13, v16

    iget v0, v5, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    iget v0, v5, Landroid/graphics/PointF;->y:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v13, v13, v16

    float-to-double v0, v13

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    iget v13, v2, Landroid/graphics/PointF;->x:F

    iget v0, v5, Landroid/graphics/PointF;->x:F

    move/from16 v16, v0

    mul-float v13, v13, v16

    iget v0, v2, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    iget v0, v5, Landroid/graphics/PointF;->y:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v3, v13, v16

    float-to-double v0, v3

    move-wide/from16 v16, v0

    mul-double v18, v6, v8

    div-double v14, v16, v18

    iget v13, v2, Landroid/graphics/PointF;->x:F

    iget v0, v5, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    mul-float v13, v13, v16

    iget v0, v2, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    iget v0, v5, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    sub-float v12, v13, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->acos(D)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    double-to-int v4, v10

    const/4 v13, 0x0

    cmpg-float v13, v12, v13

    if-gez v13, :cond_0

    rsub-int v4, v4, 0x168

    :cond_0
    const/16 v13, 0x168

    if-le v4, v13, :cond_1

    add-int/lit16 v4, v4, -0x168

    :cond_1
    const/4 v2, 0x0

    const/4 v5, 0x0

    return v4
.end method

.method public static getAngleBetweenTwoPoints1(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)I
    .locals 20

    const/4 v4, 0x0

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v16, v0

    sub-float v13, v13, v16

    float-to-int v13, v13

    iput v13, v2, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    sub-float v13, v13, v16

    float-to-int v13, v13

    iput v13, v2, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v16, v0

    sub-float v13, v13, v16

    float-to-int v13, v13

    iput v13, v5, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    sub-float v13, v13, v16

    float-to-int v13, v13

    iput v13, v5, Landroid/graphics/Point;->y:I

    iget v13, v2, Landroid/graphics/Point;->x:I

    iget v0, v2, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    mul-int v13, v13, v16

    iget v0, v2, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    iget v0, v2, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    mul-int v16, v16, v17

    add-int v13, v13, v16

    int-to-double v0, v13

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    iget v13, v5, Landroid/graphics/Point;->x:I

    iget v0, v5, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    mul-int v13, v13, v16

    iget v0, v5, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    iget v0, v5, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    mul-int v16, v16, v17

    add-int v13, v13, v16

    int-to-double v0, v13

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    iget v13, v2, Landroid/graphics/Point;->x:I

    iget v0, v5, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    mul-int v13, v13, v16

    iget v0, v2, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    iget v0, v5, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    mul-int v16, v16, v17

    add-int v3, v13, v16

    int-to-double v0, v3

    move-wide/from16 v16, v0

    mul-double v18, v6, v8

    div-double v14, v16, v18

    iget v13, v2, Landroid/graphics/Point;->x:I

    iget v0, v5, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    mul-int v13, v13, v16

    iget v0, v2, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    iget v0, v5, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    mul-int v16, v16, v17

    sub-int v12, v13, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->acos(D)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    double-to-int v4, v10

    if-gez v12, :cond_0

    rsub-int v4, v4, 0x168

    :cond_0
    const/16 v13, 0x168

    if-le v4, v13, :cond_1

    add-int/lit16 v4, v4, -0x168

    :cond_1
    const/4 v2, 0x0

    const/4 v5, 0x0

    return v4
.end method

.method public static getAvailableExternalMemorySize()J
    .locals 8

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->externalMemoryAvailable()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    mul-long v6, v0, v2

    :goto_0
    return-wide v6

    :cond_0
    const-wide/16 v6, -0x1

    goto :goto_0
.end method

.method public static getAvailableInternalMemorySize()J
    .locals 8

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    mul-long v6, v0, v2

    return-wide v6
.end method

.method public static getBitmapFromUri(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 22

    const-string v3, "Bitmap getBitmapFromUri, else, 251 "

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->logD(Ljava/lang/String;)V

    const/4 v9, 0x0

    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v5, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int v3, v5, v6

    int-to-float v3, v3

    mul-int v4, p1, p2

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-double v0, v3

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v16, v0

    if-nez v16, :cond_0

    const/16 v16, 0x1

    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    move/from16 v0, v16

    iput v0, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v12, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    iput-boolean v3, v12, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const-string v3, "Bitmap getBitmapFromUri, if(temp == null || temp.isRecycled()), 272 "

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->logD(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_2
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    const-string v3, "Bitmap getBitmapFromUri, if(!temp.hasAlpha()), 278 : "

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->logD(Ljava/lang/String;)V

    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-virtual {v11, v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move-object v2, v10

    const-string v3, "Bitmap getBitmapFromUri, if(!temp.hasAlpha()), temp, 283 : "

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->logD(Ljava/lang/String;)V

    :cond_3
    if-nez v2, :cond_4

    const-string v3, "Bitmap getBitmapFromUri, if(temp == null), 287 : "

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->logD(Ljava/lang/String;)V

    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-lez v5, :cond_5

    if-gtz v6, :cond_6

    :cond_5
    const-string v3, "Bitmap getBitmapFromUri, if(imageWidth <= 0 || imageHeight <= 0), 294 "

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->logD(Ljava/lang/String;)V

    const/4 v3, 0x0

    goto :goto_0

    :cond_6
    const/4 v15, -0x1

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->getRotateDegree(Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_9

    :goto_1
    if-eqz v15, :cond_7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move-object v2, v9

    const-string v3, "Bitmap getBitmapFromUri, if(rotate != 0), 320 "

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->logD(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    move/from16 v0, p1

    if-eq v5, v0, :cond_8

    move/from16 v0, p2

    if-ne v6, v0, :cond_d

    :cond_8
    const-string v3, "Bitmap getBitmapFromUri, iif(imageWidth == viewWidth || imageHeight == viewHeight), 329"

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->logD(Ljava/lang/String;)V

    move-object v3, v2

    goto :goto_0

    :cond_9
    const/16 v3, 0x5a

    if-ne v15, v3, :cond_a

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_1

    :cond_a
    const/16 v3, 0xb4

    if-ne v15, v3, :cond_b

    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_1

    :cond_b
    const/16 v3, 0x10e

    if-ne v15, v3, :cond_c

    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_1

    :cond_c
    const/4 v15, 0x0

    goto :goto_1

    :cond_d
    move/from16 v0, p1

    int-to-float v3, v0

    int-to-float v4, v5

    div-float v19, v3, v4

    move/from16 v0, p2

    int-to-float v3, v0

    int-to-float v4, v6

    div-float v18, v3, v4

    move/from16 v0, p1

    if-lt v5, v0, :cond_e

    move/from16 v0, p2

    if-ge v6, v0, :cond_f

    :cond_e
    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v17

    const-string v3, "Bitmap getBitmapFromUri, iif(imageWidth == viewWidth || imageHeight == viewHeight), 340"

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->logD(Ljava/lang/String;)V

    :goto_2
    int-to-float v3, v5

    mul-float v3, v3, v17

    float-to-int v14, v3

    int-to-float v3, v6

    mul-float v3, v3, v17

    float-to-int v13, v3

    const/4 v3, 0x0

    invoke-static {v2, v14, v13, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    const-string v3, "Bitmap getBitmapFromUri, end, 352"

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->logD(Ljava/lang/String;)V

    move-object v3, v9

    goto/16 :goto_0

    :cond_f
    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v17

    goto :goto_2
.end method

.method public static getCurrentFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    move-object v2, p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v5, "/"

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getDpToPixel(Landroid/content/Context;I)I
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v1, v0

    float-to-double v2, v1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v1, v2

    return v1
.end method

.method public static getEffectButtonInfoList(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil$EffectButtonInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    return-object v0
.end method

.method public static getEmptyImageUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1

    const v0, 0x7f020170

    invoke-static {p0, v0}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->resIdToUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getFaceInfoForCollage(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Rect;
    .locals 13

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    invoke-static {p0, p1}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    :goto_0
    return-object v4

    :cond_0
    const-string v0, "content://media/external/faces"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data = \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "pos_left"

    aput-object v5, v2, v9

    const-string v5, "pos_top"

    aput-object v5, v2, v10

    const-string v5, "pos_right"

    aput-object v5, v2, v11

    const-string v5, "pos_bottom"

    aput-object v5, v2, v12

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v7, Landroid/graphics/Rect;

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-direct {v7, v0, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    const/4 v6, 0x0

    move-object v4, v7

    goto :goto_0
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    move-object v7, p0

    const/4 v0, 0x0

    const/4 v3, 0x1

    const-string v12, "/"

    invoke-virtual {p0, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    move-object v11, p0

    const/4 v12, -0x1

    if-eq v10, v12, :cond_0

    invoke-virtual {p0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->SAVE_DIR:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    const-string v12, "("

    invoke-virtual {v5, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    const-string v12, ")"

    invoke-virtual {v5, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v12, -0x1

    if-eq v9, v12, :cond_1

    const/4 v12, -0x1

    if-eq v1, v12, :cond_1

    sub-int v12, v1, v9

    if-lez v12, :cond_1

    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v5, v12, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :cond_1
    :goto_0
    if-nez v0, :cond_5

    const/4 v12, -0x1

    if-eq v9, v12, :cond_2

    const/4 v12, -0x1

    if-eq v1, v12, :cond_2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x0

    invoke-virtual {v5, v13, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v13, v1, 0x1

    invoke-virtual {v5, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v12, "."

    invoke-virtual {v5, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v12, -0x1

    if-ne v4, v12, :cond_3

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".jpg"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v12, "."

    invoke-virtual {v5, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x0

    invoke-virtual {v5, v13, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v13, v4, 0x1

    invoke-virtual {v5, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x0

    const-string v12, "/"

    invoke-virtual {v7, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v12, -0x1

    if-eq v8, v12, :cond_6

    add-int/lit8 v12, v8, 0x1

    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    :cond_6
    return-object v7

    :catch_0
    move-exception v12

    goto/16 :goto_0
.end method

.method public static getFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public static getImageContentUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;
    .locals 12

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v10, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "_data=? "

    new-array v4, v4, [Ljava/lang/String;

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string v0, "content://media/external/images/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 v7, 0x0

    return-object v10

    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "_data"

    invoke-virtual {v11, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    goto :goto_0
.end method

.method public static getIntersectPoint(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 10

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iget v6, p3, Landroid/graphics/Point;->y:I

    iget v7, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v7

    iget v7, p1, Landroid/graphics/Point;->x:I

    iget v8, p0, Landroid/graphics/Point;->x:I

    sub-int/2addr v7, v8

    mul-int/2addr v6, v7

    iget v7, p3, Landroid/graphics/Point;->x:I

    iget v8, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v7, v8

    iget v8, p1, Landroid/graphics/Point;->y:I

    iget v9, p0, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v9

    mul-int/2addr v7, v8

    sub-int/2addr v6, v7

    int-to-float v5, v6

    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-nez v6, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    iget v6, p3, Landroid/graphics/Point;->x:I

    iget v7, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/graphics/Point;->y:I

    iget v8, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v7, v8

    mul-int/2addr v6, v7

    iget v7, p3, Landroid/graphics/Point;->y:I

    iget v8, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/graphics/Point;->x:I

    iget v9, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v9

    mul-int/2addr v7, v8

    sub-int/2addr v6, v7

    int-to-float v1, v6

    iget v6, p1, Landroid/graphics/Point;->x:I

    iget v7, p0, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/graphics/Point;->y:I

    iget v8, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v7, v8

    mul-int/2addr v6, v7

    iget v7, p1, Landroid/graphics/Point;->y:I

    iget v8, p0, Landroid/graphics/Point;->y:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/graphics/Point;->x:I

    iget v9, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v9

    mul-int/2addr v7, v8

    sub-int/2addr v6, v7

    int-to-float v0, v6

    div-float v4, v1, v5

    div-float v3, v0, v5

    float-to-double v6, v4

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-ltz v6, :cond_1

    float-to-double v6, v4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v6, v8

    if-gtz v6, :cond_1

    float-to-double v6, v3

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-ltz v6, :cond_1

    float-to-double v6, v3

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    cmpl-float v6, v1, v6

    if-nez v6, :cond_3

    const/4 v6, 0x0

    cmpl-float v6, v0, v6

    if-nez v6, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    iget v6, p0, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v7, p1, Landroid/graphics/Point;->x:I

    iget v8, p0, Landroid/graphics/Point;->x:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v2, Landroid/graphics/Point;->x:I

    iget v6, p0, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    iget v7, p1, Landroid/graphics/Point;->y:I

    iget v8, p0, Landroid/graphics/Point;->y:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v2, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method

.method public static getOrientation(Landroid/content/Context;)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method public static getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 6

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, p1, v6}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->getPathIfHiddenFile(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v3, v4

    goto :goto_0

    :cond_1
    const-string v5, "_data"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->logE(Ljava/lang/String;)V

    move-object v3, v4

    goto :goto_0

    :cond_2
    move-object v3, v4

    goto :goto_0
.end method

.method public static getPathIfHiddenFile(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x2e

    if-ne v0, v4, :cond_0

    const-string v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    return-object v2
.end method

.method public static getPersonalPageRoot(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/privatemode/SemPrivateModeManager;->getPrivateStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getRotateDegree(Ljava/lang/String;)I
    .locals 6

    const/4 v3, 0x0

    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    const-string v4, "Orientation"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v4, 0x6

    if-ne v2, v4, :cond_1

    const/16 v3, 0x5a

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    const/16 v3, 0xb4

    goto :goto_0

    :cond_2
    const/16 v4, 0x8

    if-ne v2, v4, :cond_0

    const/16 v3, 0x10e

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getRotationPoint(FFFFF)Landroid/graphics/PointF;
    .locals 12

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    move v6, p0

    move v7, p1

    float-to-double v8, p2

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    double-to-float v2, v8

    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    sub-float v8, v6, p3

    float-to-double v8, v8

    mul-double/2addr v8, v0

    sub-float v10, v7, p4

    float-to-double v10, v10

    mul-double/2addr v10, v4

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v8, v8

    int-to-float v8, v8

    iput v8, v3, Landroid/graphics/PointF;->x:F

    sub-float v8, v6, p3

    float-to-double v8, v8

    mul-double/2addr v8, v4

    sub-float v10, v7, p4

    float-to-double v10, v10

    mul-double/2addr v10, v0

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v8, v8

    int-to-float v8, v8

    iput v8, v3, Landroid/graphics/PointF;->y:F

    iget v8, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v8, p3

    float-to-int v8, v8

    int-to-float v8, v8

    iput v8, v3, Landroid/graphics/PointF;->x:F

    iget v8, v3, Landroid/graphics/PointF;->y:F

    add-float v8, v8, p4

    float-to-int v8, v8

    int-to-float v8, v8

    iput v8, v3, Landroid/graphics/PointF;->y:F

    return-object v3
.end method

.method public static getRotationPoint(Landroid/graphics/PointF;IFF)Landroid/graphics/PointF;
    .locals 12

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    iget v6, p0, Landroid/graphics/PointF;->x:F

    iget v7, p0, Landroid/graphics/PointF;->y:F

    int-to-double v8, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    double-to-float v2, v8

    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    sub-float v8, v6, p2

    float-to-double v8, v8

    mul-double/2addr v8, v0

    sub-float v10, v7, p3

    float-to-double v10, v10

    mul-double/2addr v10, v4

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v8, v8

    int-to-float v8, v8

    iput v8, v3, Landroid/graphics/PointF;->x:F

    sub-float v8, v6, p2

    float-to-double v8, v8

    mul-double/2addr v8, v4

    sub-float v10, v7, p3

    float-to-double v10, v10

    mul-double/2addr v10, v0

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v8, v8

    int-to-float v8, v8

    iput v8, v3, Landroid/graphics/PointF;->y:F

    iget v8, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v8, p2

    iput v8, v3, Landroid/graphics/PointF;->x:F

    iget v8, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v8, p3

    iput v8, v3, Landroid/graphics/PointF;->y:F

    return-object v3
.end method

.method public static getSPenURL()Ljava/lang/String;
    .locals 1

    const-string v0, "zero"

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->isDevice(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "marine"

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->isDevice(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "samsungapps://ProductDetail/com.samsung.android.sdk.spen30_64"

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "e5"

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->isDevice(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "samsungapps://ProductDetail/com.samsung.android.sdk.spen30"

    goto :goto_0

    :cond_2
    const-string v0, "samsungapps://ProductDetail/com.samsung.android.sdk.spen30_64"

    goto :goto_0
.end method

.method public static getSampleSize(II)I
    .locals 3

    const/4 v1, 0x1

    if-le p0, p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    div-int v2, p0, v0

    if-le v2, p1, :cond_0

    move v1, v0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    :cond_1
    return v1
.end method

.method public static getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    check-cast p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getSimpleDate()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd_HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    if-gtz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getTargetSize(Landroid/content/Context;)I
    .locals 6

    const/4 v2, 0x0

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v4, "window"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowHeight(Landroid/content/Context;)I

    move-result v4

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/16 v4, 0xa00

    if-ge v1, v4, :cond_0

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x40800000    # 4.0f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    :cond_0
    div-int/lit8 v2, v1, 0x3

    :goto_0
    return v2

    :cond_1
    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x40000000    # 2.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    div-int/lit8 v2, v1, 0x2

    goto :goto_0

    :cond_2
    div-int/lit8 v2, v1, 0x3

    goto :goto_0
.end method

.method public static getTexture(IIILandroid/content/Context;)[I
    .locals 9

    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v0, 0x0

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, p0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    if-nez v8, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v8, p1, p2, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    mul-int v3, p1, p2

    new-array v1, v3, [I

    move v3, p1

    move v4, v2

    move v5, v2

    move v6, p1

    move v7, p2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v8, 0x0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getTotalExternalMemorySize()J
    .locals 8

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->externalMemoryAvailable()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v0, v6

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v6

    int-to-long v4, v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    mul-long v6, v4, v0

    :goto_0
    return-wide v6

    :cond_0
    const-wide/16 v6, -0x1

    goto :goto_0
.end method

.method public static getTotalInternalMemorySize()J
    .locals 8

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v0, v6

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v6

    int-to-long v4, v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    mul-long v6, v4, v0

    return-wide v6
.end method

.method public static getViewGroup(Landroid/content/Context;I)Landroid/view/ViewGroup;
    .locals 1

    const/4 v0, 0x0

    check-cast p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->findViewById(I)Landroid/view/View;

    return-object v0
.end method

.method public static getZoomStateForZoomInOut(Landroid/graphics/Matrix;)I
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v0, -0x1

    const/16 v2, 0x9

    new-array v1, v2, [F

    invoke-virtual {p0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v2, 0x0

    aget v2, v1, v2

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    const/4 v2, 0x4

    aget v2, v1, v2

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static isAdjustmentResetRequired()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isDevice(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->DEVICE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isEmptyImageUri(Landroid/net/Uri;Landroid/content/Context;)Z
    .locals 1

    invoke-static {p1}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->getEmptyImageUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHoveringUI(Landroid/content/Context;)Z
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "com.sec.feature.hovering_ui"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isInButton(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v2, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v3, v7

    if-lt v2, v1, :cond_0

    if-gt v2, v5, :cond_0

    if-lt v3, v6, :cond_0

    if-gt v3, v0, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static isLOSdevices()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isLightThemeRequired()Z
    .locals 1

    const-string v0, "tr"

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->isDevice(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tb"

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->isDevice(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "a5"

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->isDevice(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "a7"

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->isDevice(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SCL"

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->isDevice(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SC"

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->isDevice(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->isLOSdevices()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "hestia"

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->isDevice(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMultigridReplaceAction()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->replaceCollage:Z

    return v0
.end method

.method public static isNewSpenJarSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isPenRequired()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isScreenOrientationPortrait(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->getOrientation(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isToastShowing()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->mToastStartTime:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    sget-wide v2, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->mToastEndTime:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static logD(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->Debug:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->DebugTag:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static logE(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->DebugTag:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logI(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->Debug:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->DebugTag:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static makeScaleMaskBuff([BII[BII)V
    .locals 5

    if-eqz p0, :cond_0

    if-eqz p3, :cond_0

    sget-object v4, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-static {v0, p4, p5, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    :cond_0
    return-void
.end method

.method public static makeStringWithIDnString(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static recycleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 p0, 0x0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static recycleBitmap(Landroid/widget/ImageView;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public static removeAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v1, "com.sec.android.mimage.photoretouching."

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static removeList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    const/4 p0, 0x0

    :cond_0
    return-void
.end method

.method public static resIdToUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static resizeBuff([I[IIIII)V
    .locals 26

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v19, v23, v24

    const-string v23, "resizeBuff float:0.326 to int:21364"

    invoke-static/range {v23 .. v23}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->logI(Ljava/lang/String;)V

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "resizeBuff Float.floatToIntBits float:0.326 to int:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const v24, 0x3ea6e979    # 0.326f

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->logI(Ljava/lang/String;)V

    const/4 v12, 0x0

    :goto_0
    move/from16 v0, p5

    if-ge v12, v0, :cond_6

    int-to-float v0, v12

    move/from16 v23, v0

    mul-float v22, v23, v19

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->floor(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-int v10, v0

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-int v8, v0

    move/from16 v0, p3

    if-ge v8, v0, :cond_3

    :goto_1
    if-gez v10, :cond_0

    const/4 v10, 0x0

    :cond_0
    int-to-float v0, v8

    move/from16 v23, v0

    sub-float v23, v23, v22

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x10000

    mul-int v20, v23, v24

    const/high16 v23, 0x10000

    sub-int v6, v23, v20

    mul-int v10, v10, p2

    mul-int v8, v8, p2

    const/4 v11, 0x0

    :goto_2
    move/from16 v0, p4

    if-ge v11, v0, :cond_5

    int-to-float v0, v11

    move/from16 v23, v0

    mul-float v21, v23, v19

    const/16 v23, 0x0

    cmpl-float v23, v21, v23

    if-ltz v23, :cond_2

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v23, v0

    cmpg-float v23, v21, v23

    if-gez v23, :cond_2

    const/16 v23, 0x0

    cmpl-float v23, v22, v23

    if-ltz v23, :cond_2

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v23, v0

    cmpg-float v23, v22, v23

    if-gez v23, :cond_2

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->floor(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-int v9, v0

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-int v7, v0

    int-to-float v0, v7

    move/from16 v23, v0

    sub-float v14, v23, v21

    const/high16 v23, 0x3f800000    # 1.0f

    sub-float v17, v23, v14

    move/from16 v0, p2

    if-ge v7, v0, :cond_4

    :goto_3
    if-gez v9, :cond_1

    const/4 v9, 0x0

    :cond_1
    add-int v15, v10, v9

    add-int v18, v10, v7

    add-int v13, v8, v9

    add-int v16, v8, v7

    aget v23, p0, v15

    invoke-static/range {v23 .. v23}, Landroid/graphics/Color;->alpha(I)I

    move-result v23

    mul-int v23, v23, v20

    aget v24, p0, v13

    invoke-static/range {v24 .. v24}, Landroid/graphics/Color;->alpha(I)I

    move-result v24

    mul-int v24, v24, v6

    add-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v14

    aget v24, p0, v18

    invoke-static/range {v24 .. v24}, Landroid/graphics/Color;->alpha(I)I

    move-result v24

    mul-int v24, v24, v20

    aget v25, p0, v16

    invoke-static/range {v25 .. v25}, Landroid/graphics/Color;->alpha(I)I

    move-result v25

    mul-int v25, v25, v6

    add-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v17

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    shr-int/lit8 v2, v23, 0x10

    aget v23, p0, v15

    invoke-static/range {v23 .. v23}, Landroid/graphics/Color;->red(I)I

    move-result v23

    mul-int v23, v23, v20

    aget v24, p0, v13

    invoke-static/range {v24 .. v24}, Landroid/graphics/Color;->red(I)I

    move-result v24

    mul-int v24, v24, v6

    add-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v14

    aget v24, p0, v18

    invoke-static/range {v24 .. v24}, Landroid/graphics/Color;->red(I)I

    move-result v24

    mul-int v24, v24, v20

    aget v25, p0, v16

    invoke-static/range {v25 .. v25}, Landroid/graphics/Color;->red(I)I

    move-result v25

    mul-int v25, v25, v6

    add-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v17

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    shr-int/lit8 v5, v23, 0x10

    aget v23, p0, v15

    invoke-static/range {v23 .. v23}, Landroid/graphics/Color;->green(I)I

    move-result v23

    mul-int v23, v23, v20

    aget v24, p0, v13

    invoke-static/range {v24 .. v24}, Landroid/graphics/Color;->green(I)I

    move-result v24

    mul-int v24, v24, v6

    add-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v14

    aget v24, p0, v18

    invoke-static/range {v24 .. v24}, Landroid/graphics/Color;->green(I)I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v14

    aget v25, p0, v16

    invoke-static/range {v25 .. v25}, Landroid/graphics/Color;->green(I)I

    move-result v25

    mul-int v25, v25, v6

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v24, v24, v25

    mul-float v24, v24, v17

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    shr-int/lit8 v4, v23, 0x10

    aget v23, p0, v15

    invoke-static/range {v23 .. v23}, Landroid/graphics/Color;->blue(I)I

    move-result v23

    mul-int v23, v23, v20

    aget v24, p0, v13

    invoke-static/range {v24 .. v24}, Landroid/graphics/Color;->blue(I)I

    move-result v24

    mul-int v24, v24, v6

    add-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v14

    aget v24, p0, v18

    invoke-static/range {v24 .. v24}, Landroid/graphics/Color;->blue(I)I

    move-result v24

    mul-int v24, v24, v20

    aget v25, p0, v16

    invoke-static/range {v25 .. v25}, Landroid/graphics/Color;->blue(I)I

    move-result v25

    mul-int v25, v25, v6

    add-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v17

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    shr-int/lit8 v3, v23, 0x10

    mul-int v23, v12, p4

    add-int v23, v23, v11

    invoke-static {v2, v5, v4, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v24

    aput v24, p1, v23

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    :cond_3
    add-int/lit8 v8, p3, -0x1

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v7, p2, -0x1

    goto/16 :goto_3

    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public static showToastShort(Landroid/content/Context;I)V
    .locals 4

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->mToast:Landroid/widget/Toast;

    :cond_1
    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->mToastStartTime:J

    sget-wide v0, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->mToastStartTime:J

    const-wide/16 v2, 0x7d0

    add-long/2addr v0, v2

    sput-wide v0, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->mToastEndTime:J

    goto :goto_0
.end method

.method public static showToastShort(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->mToast:Landroid/widget/Toast;

    :goto_1
    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->mToastStartTime:J

    sget-wide v0, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->mToastStartTime:J

    const-wide/16 v2, 0x7d0

    add-long/2addr v0, v2

    sput-wide v0, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->mToastEndTime:J

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public static toUppercaseString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whoIsCallMe(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    move-object v5, p1

    invoke-virtual {v5}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    aget-object v6, v4, v7

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    aget-object v6, v4, v7

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    aget-object v6, v4, v8

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    aget-object v6, v4, v8

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", whoIsCallMe() - calleeMethodName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / calleeClassName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / callerMethodName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / callerClassName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->logD(Ljava/lang/String;)V

    return-void
.end method
