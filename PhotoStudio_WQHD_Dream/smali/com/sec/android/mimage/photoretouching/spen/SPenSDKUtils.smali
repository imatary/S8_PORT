.class public Lcom/sec/android/mimage/photoretouching/spen/SPenSDKUtils;
.super Ljava/lang/Object;
.source "SPenSDKUtils.java"


# static fields
.field public static final INTEGER_KEYNAME:Ljava/lang/String; = "Integer Key"

.field public static final STRING_KEYNAME:Ljava/lang/String; = "String Key"

.field private static final TAG:Ljava/lang/String; = "PEDIT_SPenSDKUtils"

.field public static final USER_FONT_PATH1:Ljava/lang/String; = "fontpath1"

.field public static final USER_FONT_PATH2:Ljava/lang/String; = "fontpath2"

.field public static final USER_FONT_PATH3:Ljava/lang/String; = "fontpath3"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alertActivityFinish(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Anantha"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    new-instance v3, Lcom/sec/android/mimage/photoretouching/spen/SPenSDKUtils$2;

    invoke-direct {v3, p0}, Lcom/sec/android/mimage/photoretouching/spen/SPenSDKUtils$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Cancel"

    new-instance v3, Lcom/sec/android/mimage/photoretouching/spen/SPenSDKUtils$1;

    invoke-direct {v3}, Lcom/sec/android/mimage/photoretouching/spen/SPenSDKUtils$1;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v0, 0x0

    return-void
.end method

.method public static alertExceptionFinish(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Anantha"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    new-instance v3, Lcom/sec/android/mimage/photoretouching/spen/SPenSDKUtils$3;

    invoke-direct {v3, p0}, Lcom/sec/android/mimage/photoretouching/spen/SPenSDKUtils$3;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v0, 0x0

    return-void
.end method

.method public static convertAbsolute(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 5

    move-object v0, p1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getPan()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getZoomRatio()F

    move-result v2

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget v3, v0, Landroid/graphics/RectF;->left:F

    div-float/2addr v3, v2

    iget v4, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v4

    iput v3, v0, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/RectF;->right:F

    div-float/2addr v3, v2

    iget v4, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v4

    iput v3, v0, Landroid/graphics/RectF;->right:F

    iget v3, v0, Landroid/graphics/RectF;->top:F

    div-float/2addr v3, v2

    iget v4, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, v4

    iput v3, v0, Landroid/graphics/RectF;->top:F

    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v3, v2

    iget v4, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, v4

    iput v3, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method

.method public static decodeImageFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    .locals 3

    if-nez p2, :cond_0

    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/spen/SPenSDKUtils;->getExifDegree(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/spen/SPenSDKUtils;->getRotatedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0
.end method

.method public static getBitmapSize(Landroid/content/res/Resources;I)Landroid/graphics/BitmapFactory$Options;
    .locals 2

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static getBitmapSize(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;
    .locals 2

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static getBitmapSize(Ljava/lang/String;Z)Landroid/graphics/BitmapFactory$Options;
    .locals 4

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/spen/SPenSDKUtils;->getExifDegree(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x5a

    if-eq v0, v3, :cond_0

    const/16 v3, 0x10e

    if-ne v0, v3, :cond_1

    :cond_0
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :cond_1
    return-object v1
.end method

.method public static getExifDegree(Ljava/lang/String;)I
    .locals 6

    const/4 v5, -0x1

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const-string v4, "Orientation"

    invoke-virtual {v2, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v5, :cond_0

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    move v4, v0

    :goto_1
    return v4

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const/4 v4, 0x0

    goto :goto_1

    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;
    .locals 12

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-eqz v9, :cond_9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {v9, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x34

    if-ne v1, v2, :cond_4

    new-array v3, v6, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v3, v5

    const-string v10, ""

    new-instance v0, Landroid/content/CursorLoader;

    move-object v1, p0

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_1

    const-string v1, "_data"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    :cond_3
    move-object v11, v10

    :goto_0
    return-object v11

    :cond_4
    const-string v1, "2.3"

    invoke-virtual {v9, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-array v3, v6, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v3, v5

    const-string v10, ""

    move-object v1, p0

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v1 .. v6}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_6

    const-string v1, "_data"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_5

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v10, :cond_7

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    :cond_8
    move-object v11, v10

    goto :goto_0

    :cond_9
    new-array v3, v6, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v3, v5

    const-string v10, ""

    move-object v1, p0

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v1 .. v6}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_b

    const-string v1, "_data"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v8}, Landroid/app/Activity;->startManagingCursor(Landroid/database/Cursor;)V

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_a

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    :cond_a
    invoke-virtual {p0, v8}, Landroid/app/Activity;->stopManagingCursor(Landroid/database/Cursor;)V

    :cond_b
    move-object v11, v10

    goto :goto_0
.end method

.method public static getRotatedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v7

    :cond_0
    :goto_0
    return-object p0

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0
.end method

.method public static getSafeResizingSampleSize(IIII)I
    .locals 6

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-gt p0, p2, :cond_0

    if-le p1, p3, :cond_3

    :cond_0
    if-le p0, p2, :cond_1

    int-to-float v4, p0

    int-to-float v5, p2

    div-float v1, v4, v5

    :cond_1
    if-le p1, p3, :cond_2

    int-to-float v4, p1

    int-to-float v5, p3

    div-float v0, v4, v5

    :cond_2
    cmpl-float v4, v1, v0

    if-ltz v4, :cond_4

    move v2, v1

    :goto_0
    float-to-int v3, v2

    :cond_3
    return v3

    :cond_4
    move v2, v0

    goto :goto_0
.end method

.method public static getSettingLayoutStringResourceMap(ZZZZ)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZZ)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "fontpath1"

    const-string v2, "fonts/malgun.ttf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fontpath2"

    const-string v2, "fonts/nanum.ttf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fontpath3"

    const-string v2, "fonts/sandol.ttf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "R.string.sdk_resource_path"

    const-string v2, "spen_sdk_resource_custom"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static isValidImagePath(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v2

    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget-object v3, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    if-eqz v3, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public static isValidSaveName(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x5c

    if-eq v0, v3, :cond_0

    const/16 v3, 0x3a

    if-eq v0, v3, :cond_0

    const/16 v3, 0x2f

    if-eq v0, v3, :cond_0

    const/16 v3, 0x2a

    if-eq v0, v3, :cond_0

    const/16 v3, 0x3f

    if-eq v0, v3, :cond_0

    const/16 v3, 0x22

    if-eq v0, v3, :cond_0

    const/16 v3, 0x3c

    if-eq v0, v3, :cond_0

    const/16 v3, 0x3e

    if-eq v0, v3, :cond_0

    const/16 v3, 0x7c

    if-eq v0, v3, :cond_0

    const/16 v3, 0x9

    if-eq v0, v3, :cond_0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    return v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static saveBitmapJPEGWithBackgroundColor(Ljava/lang/String;Landroid/graphics/Bitmap;II)Z
    .locals 17

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-result v13

    if-nez v13, :cond_0

    const/4 v13, 0x0

    :goto_0
    return v13

    :cond_0
    shr-int/lit8 v13, p3, 0x18

    and-int/lit16 v7, v13, 0xff

    if-nez v7, :cond_1

    const/16 p3, -0x1

    :cond_1
    new-instance v11, Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v11, v13, v14, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v14, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v11, v11, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/16 v13, 0xa

    move/from16 v0, p2

    if-ge v0, v13, :cond_4

    const/16 p2, 0xa

    :cond_2
    :goto_1
    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v12}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_2
    :try_start_1
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    sget-object v13, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move/from16 v0, p2

    invoke-virtual {v8, v13, v0, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    move-result v2

    move-object v9, v10

    :goto_3
    if-eqz v9, :cond_5

    :try_start_3
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v3, 0x1

    :goto_4
    if-eqz v9, :cond_3

    :try_start_4
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    :goto_5
    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    if-eqz v3, :cond_7

    const/4 v13, 0x1

    goto :goto_0

    :cond_4
    const/16 v13, 0x64

    move/from16 v0, p2

    if-le v0, v13, :cond_2

    const/16 p2, 0x64

    goto :goto_1

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v5

    :goto_6
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    goto :goto_4

    :catch_2
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_3
    move-exception v5

    :try_start_5
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v3, 0x0

    if-eqz v9, :cond_3

    :try_start_6
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    :catch_4
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catchall_0
    move-exception v13

    if-eqz v9, :cond_6

    :try_start_7
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_6
    :goto_7
    throw v13

    :catch_5
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_0

    :catch_6
    move-exception v5

    move-object v9, v10

    goto :goto_6
.end method

.method public static saveBitmapPNGWithBackgroundColor(Ljava/lang/String;Landroid/graphics/Bitmap;I)Z
    .locals 17

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-result v13

    if-nez v13, :cond_0

    const/4 v13, 0x0

    :goto_0
    return v13

    :cond_0
    shr-int/lit8 v13, p2, 0x18

    and-int/lit16 v7, v13, 0xff

    if-nez v7, :cond_1

    const/16 p2, -0x1

    :cond_1
    new-instance v11, Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v11, v13, v14, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v14, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v11, v11, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v12}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    :try_start_1
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    sget-object v13, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v14, 0x64

    invoke-virtual {v8, v13, v14, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    move-result v2

    move-object v9, v10

    :goto_2
    if-eqz v9, :cond_3

    :try_start_3
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v3, 0x1

    :goto_3
    if-eqz v9, :cond_2

    :try_start_4
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    :goto_4
    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    const/4 v13, 0x1

    goto :goto_0

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v5

    :goto_5
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    :catch_2
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_3
    move-exception v5

    :try_start_5
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v3, 0x0

    if-eqz v9, :cond_2

    :try_start_6
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    :catch_4
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_0
    move-exception v13

    if-eqz v9, :cond_4

    :try_start_7
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_4
    :goto_6
    throw v13

    :catch_5
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_0

    :catch_6
    move-exception v5

    move-object v9, v10

    goto :goto_5
.end method
