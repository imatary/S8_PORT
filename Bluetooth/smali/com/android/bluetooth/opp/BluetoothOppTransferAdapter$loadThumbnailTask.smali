.class Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$loadThumbnailTask;
.super Landroid/os/AsyncTask;
.source "BluetoothOppTransferAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "loadThumbnailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$ViewHolder;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mimetype:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;

.field private uri:Ljava/lang/String;

.field private v:Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$ViewHolder;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$loadThumbnailTask;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$loadThumbnailTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$loadThumbnailTask;-><init>(Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;)V

    return-void
.end method

.method private overlayBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$loadThumbnailTask;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;

    invoke-static {v6}, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->-get3(Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090020

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$loadThumbnailTask;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;

    invoke-static {v6}, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->-get3(Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080006

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    new-instance v5, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    int-to-double v8, v3

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v10

    double-to-float v8, v8

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    sub-float/2addr v6, v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    int-to-double v8, v3

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v10

    double-to-float v8, v8

    mul-float/2addr v7, v8

    add-float/2addr v7, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v2

    invoke-direct {v5, v2, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, p1, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, p2, v6, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v1

    const/4 v6, 0x0

    return-object v6
.end method

.method private rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/graphics/Bitmap;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v7

    :cond_0
    :goto_0
    return-object p1

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$ViewHolder;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$loadThumbnailTask;->v:Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$ViewHolder;

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$loadThumbnailTask;->v:Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$ViewHolder;

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$ViewHolder;->mMimeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$loadThumbnailTask;->mimetype:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$loadThumbnailTask;->v:Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$ViewHolder;

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$ViewHolder;->mUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$loadThumbnailTask;->uri:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$loadThumbnailTask;->v:Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$ViewHolder;

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$ViewHolder;->mPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$loadThumbnailTask;->path:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$loadThumbnailTask;->mimetype:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$loadThumbnailTask;->uri:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$loadThumbnailTask;->makeBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$loadThumbnailTask;->doInBackground([Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$ViewHolder;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method getId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 16

    if-nez p1, :cond_0

    const/4 v2, -0x1

    return v2

    :cond_0
    const-string/jumbo v2, "content://media"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "content://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "@media"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    const/4 v11, -0x1

    const-string/jumbo v2, "/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    if-lez v14, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v14, v2, :cond_2

    add-int/lit8 v2, v14, 0x1

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    :cond_2
    :goto_0
    return v11

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->-get0()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "BluetoothOppTransferAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "file://"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_4
    const-string/jumbo v2, "file://"

    const-string/jumbo v3, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/4 v8, 0x0

    const-wide/16 v12, -0x1

    :try_start_1
    const-string/jumbo v2, "image/"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$loadThumbnailTask;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->-get2(Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;)Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "_data=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_1
    long-to-int v2, v12

    return v2

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$loadThumbnailTask;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->-get2(Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;)Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "_data=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string/jumbo v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    :cond_8
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_1
    move-exception v9

    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_9
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->-get0()Z

    move-result v2

    if-eqz v2, :cond_a

    const-string/jumbo v2, "BluetoothOppTransferAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const/4 v2, -0x1

    return v2
.end method

.method makeBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 22

    const/4 v12, 0x0

    if-eqz p1, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$loadThumbnailTask;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    const-string/jumbo v4, "image/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, -0x1

    move/from16 v0, v17

    if-eq v0, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$loadThumbnailTask;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;

    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->-get2(Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;)Landroid/content/ContentResolver;

    move-result-object v4

    if-eqz v4, :cond_3

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$loadThumbnailTask;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;

    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->-get2(Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;)Landroid/content/ContentResolver;

    move-result-object v4

    move/from16 v0, v17

    int-to-long v6, v0

    const/4 v5, 0x3

    const/4 v8, 0x0

    invoke-static {v4, v6, v7, v5, v8}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    :goto_0
    if-eqz v12, :cond_3

    const/16 v19, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$loadThumbnailTask;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;

    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->-get2(Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;)Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_2

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "orientation"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    const/4 v4, -0x1

    move/from16 v0, v18

    if-eq v0, v4, :cond_0

    move/from16 v0, v18

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    :cond_0
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->-get1()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "BluetoothOppTransferAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "orientation is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v12, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$loadThumbnailTask;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v12

    :cond_3
    if-nez v12, :cond_5

    if-eqz p2, :cond_4

    const-string/jumbo v4, "file://"

    const-string/jumbo v5, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const/4 v4, 0x3

    move-object/from16 v0, v20

    invoke-static {v0, v4}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v12

    :cond_4
    if-nez v12, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$loadThumbnailTask;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;

    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->-get3(Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    check-cast v14, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    :cond_5
    :goto_1
    return-object v12

    :catch_0
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto/16 :goto_0

    :cond_6
    const/4 v4, -0x1

    move/from16 v0, v17

    if-eq v0, v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$loadThumbnailTask;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;

    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->-get2(Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;)Landroid/content/ContentResolver;

    move-result-object v4

    move/from16 v0, v17

    int-to-long v6, v0

    const/4 v5, 0x3

    const/4 v8, 0x0

    invoke-static {v4, v6, v7, v5, v8}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    if-eqz v10, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$loadThumbnailTask;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;

    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->-get3(Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    instance-of v4, v15, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    if-eqz v4, :cond_7

    check-cast v15, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    invoke-virtual {v15}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    const-string/jumbo v4, "BluetoothOppTransferAdapter"

    const-string/jumbo v5, "SemPathRenderingDrawable"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$loadThumbnailTask;->overlayBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v12

    :cond_7
    if-nez v12, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$loadThumbnailTask;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;

    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->-get3(Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    check-cast v21, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    goto :goto_1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$loadThumbnailTask;->mimetype:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$loadThumbnailTask;->v:Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$ViewHolder;

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$loadThumbnailTask;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$loadThumbnailTask;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->getThumbnailFromFilename(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$loadThumbnailTask;->mimetype:Ljava/lang/String;

    const-string/jumbo v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$loadThumbnailTask;->mimetype:Ljava/lang/String;

    const-string/jumbo v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$loadThumbnailTask;->v:Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$ViewHolder;

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$loadThumbnailTask;->v:Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$ViewHolder;

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$loadThumbnailTask;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$loadThumbnailTask;->mimetype:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->getThumbnail(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter$loadThumbnailTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
