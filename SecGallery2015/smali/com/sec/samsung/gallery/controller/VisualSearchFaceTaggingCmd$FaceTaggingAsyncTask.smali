.class Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;
.super Landroid/os/AsyncTask;
.source "VisualSearchFaceTaggingCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaceTaggingAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mIsMyProfile:Z

.field private final mIsPersonId:Z

.field private final mItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field private final mMyId:Ljava/lang/String;

.field private final mNeedToUpdatePhoto:Z

.field private final mTargetName:Ljava/lang/String;

.field private final mTargetPersonId:J

.field private final mTargetRawId:J

.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd;Ljava/lang/String;ZLjava/lang/String;JJZZLcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->this$0:Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->mMyId:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->mIsPersonId:Z

    iput-object p4, p0, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->mTargetName:Ljava/lang/String;

    iput-wide p5, p0, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->mTargetPersonId:J

    iput-wide p7, p0, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->mTargetRawId:J

    iput-boolean p9, p0, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->mIsMyProfile:Z

    iput-boolean p10, p0, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->mNeedToUpdatePhoto:Z

    iput-object p11, p0, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    return-void
.end method

.method private bitmapToByteArray(Landroid/graphics/Bitmap;)[B
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method private decodeSampledBitmap(Ljava/lang/String;I)Landroid/graphics/BitmapFactory$Options;
    .locals 5

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    int-to-float v2, p2

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/BitmapUtils;->computeSampleSize(F)I

    move-result v2

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    return-object v0
.end method

.method private findPersonIdByRawId(J)J
    .locals 11

    const-wide/16 v8, -0x1

    const/4 v6, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "contact_raw_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->this$0:Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd;->access$000(Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderFaceTagInterface;->PERSONS_TABLE_URI:Landroid/net/Uri;

    # getter for: Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd;->PERSON_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd;->access$100()[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    :cond_0
    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-wide v8

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method private getBitmap()Landroid/graphics/Bitmap;
    .locals 12

    const/4 v5, 0x1

    invoke-static {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v11

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v1, v1, Lcom/sec/android/gallery3d/data/UnionSCloudSearchImage;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    check-cast v1, Lcom/sec/android/gallery3d/data/UnionSCloudSearchImage;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/UnionSCloudSearchImage;->getThumbPath()Ljava/lang/String;

    move-result-object v7

    :cond_0
    invoke-direct {p0, v7, v11}, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->decodeSampledBitmap(Ljava/lang/String;I)Landroid/graphics/BitmapFactory$Options;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v1, v1, Lcom/sec/android/gallery3d/data/UnionLocalSearchImage;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    check-cast v1, Lcom/sec/android/gallery3d/data/UnionLocalSearchImage;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/UnionLocalSearchImage;->getFaceRect()Landroid/graphics/RectF;

    move-result-object v6

    :cond_1
    :goto_0
    if-eqz v6, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v6, v1, v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getFaceRectOfObject(Landroid/graphics/RectF;II)Landroid/graphics/Rect;

    move-result-object v10

    if-eqz v10, :cond_2

    iget v1, v10, Landroid/graphics/Rect;->left:I

    iget v2, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static/range {v0 .. v5}, Lcom/sec/android/gallery3d/common/BitmapUtils;->cropFaceByRect(Landroid/graphics/Bitmap;IIIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v0, v8, v5}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v1

    invoke-static {v0, v1, v5}, Lcom/sec/android/gallery3d/common/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_3
    return-object v0

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v1, v1, Lcom/sec/android/gallery3d/data/UnionSCloudSearchImage;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    check-cast v1, Lcom/sec/android/gallery3d/data/UnionSCloudSearchImage;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/UnionSCloudSearchImage;->getFaceRect()Landroid/graphics/RectF;

    move-result-object v6

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v1, v1, Lcom/sec/android/gallery3d/data/LocalSearchImage;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    check-cast v1, Lcom/sec/android/gallery3d/data/LocalSearchImage;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/LocalSearchImage;->getFaceRect()Landroid/graphics/RectF;

    move-result-object v6

    goto :goto_0
.end method

.method private getPersonId(J)J
    .locals 15

    iget-wide v4, p0, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->mTargetPersonId:J

    iget-wide v10, p0, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->mTargetPersonId:J

    const-wide/16 v12, -0x1

    cmp-long v9, v10, v12

    if-nez v9, :cond_0

    const-wide/16 v10, -0x1

    cmp-long v9, p1, v10

    if-eqz v9, :cond_0

    invoke-direct/range {p0 .. p2}, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->findPersonIdByRawId(J)J

    move-result-wide v0

    const-wide/16 v10, 0x1

    cmp-long v9, v0, v10

    if-lez v9, :cond_0

    move-wide v4, v0

    :cond_0
    const-wide/16 v10, -0x1

    cmp-long v9, v4, v10

    if-nez v9, :cond_3

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v9, "name"

    iget-object v10, p0, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->mTargetName:Ljava/lang/String;

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "flag"

    iget-boolean v9, p0, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->mIsMyProfile:Z

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    :goto_0
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-wide/16 v10, -0x1

    cmp-long v9, p1, v10

    if-eqz v9, :cond_1

    const-string/jumbo v9, "contact_raw_id"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1
    iget-object v9, p0, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->this$0:Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v9}, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd;->access$000(Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/sec/samsung/gallery/access/cmh/CMHProviderFaceTagInterface;->PERSONS_TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8

    invoke-static {v8}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    :goto_1
    return-wide v4

    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    :cond_3
    const-string/jumbo v6, "_id = ?"

    const/4 v9, 0x1

    new-array v3, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v9

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v9, "name"

    iget-object v10, p0, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->mTargetName:Ljava/lang/String;

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->this$0:Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v9}, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd;->access$000(Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/sec/samsung/gallery/access/cmh/CMHProviderFaceTagInterface;->PERSONS_TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10, v7, v6, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1
.end method

.method private saveBitmapToContact(Landroid/graphics/Bitmap;J)V
    .locals 16

    invoke-direct/range {p0 .. p1}, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v8

    sget-object v10, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p2

    invoke-static {v10, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    const-string/jumbo v11, "display_photo"

    invoke-static {v10, v11}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    :try_start_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->this$0:Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v10}, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd;->access$000(Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "rw"

    invoke-virtual {v10, v9, v11}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    const/4 v13, 0x0

    if-nez v2, :cond_2

    :try_start_1
    const-string/jumbo v10, "VisualSearchFaceTagging"

    const-string/jumbo v11, "file descriptor creation failed."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-eqz v2, :cond_0

    if-eqz v13, :cond_1

    :try_start_2
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v10

    :try_start_3
    invoke-virtual {v13, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_1
    move-exception v4

    :goto_1
    const-string/jumbo v10, "VisualSearchFaceTagging"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "save bitmap failed."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_4
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v4

    goto :goto_1

    :cond_2
    :try_start_5
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->createOutputStream()Ljava/io/FileOutputStream;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-result-object v7

    const/4 v12, 0x0

    :try_start_6
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const/4 v11, 0x0

    const/16 v10, 0x4000

    :try_start_7
    new-array v3, v10, [B

    :goto_2
    invoke-virtual {v5, v3}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_6

    const/4 v10, 0x0

    invoke-virtual {v7, v3, v10, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_2

    :catch_3
    move-exception v10

    :try_start_8
    throw v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_0
    move-exception v11

    move-object v15, v11

    move-object v11, v10

    move-object v10, v15

    :goto_3
    if-eqz v5, :cond_3

    if-eqz v11, :cond_a

    :try_start_9
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :cond_3
    :goto_4
    :try_start_a
    throw v10
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catch_4
    move-exception v10

    :try_start_b
    throw v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catchall_1
    move-exception v11

    move-object v15, v11

    move-object v11, v10

    move-object v10, v15

    :goto_5
    if-eqz v7, :cond_4

    if-eqz v11, :cond_c

    :try_start_c
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_a
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :cond_4
    :goto_6
    :try_start_d
    throw v10
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :catch_5
    move-exception v10

    :try_start_e
    throw v10
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :catchall_2
    move-exception v11

    move-object v15, v11

    move-object v11, v10

    move-object v10, v15

    :goto_7
    if-eqz v2, :cond_5

    if-eqz v11, :cond_e

    :try_start_f
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_b
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_f} :catch_2

    :cond_5
    :goto_8
    :try_start_10
    throw v10
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_10} :catch_2

    :cond_6
    :try_start_11
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->this$0:Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v10}, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd;->access$000(Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v10

    const v14, 0x7f0a00b7

    invoke-static {v10, v14}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    if-eqz v5, :cond_7

    if-eqz v11, :cond_9

    :try_start_12
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    :cond_7
    :goto_9
    if-eqz v7, :cond_8

    if-eqz v12, :cond_b

    :try_start_13
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_9
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    :cond_8
    :goto_a
    if-eqz v2, :cond_0

    if-eqz v13, :cond_d

    :try_start_14
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_6
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_14} :catch_2

    goto/16 :goto_0

    :catch_6
    move-exception v10

    :try_start_15
    invoke-virtual {v13, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_15 .. :try_end_15} :catch_2

    goto/16 :goto_0

    :catch_7
    move-exception v10

    :try_start_16
    invoke-virtual {v11, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_9

    :catchall_3
    move-exception v10

    move-object v11, v12

    goto :goto_5

    :cond_9
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V

    goto :goto_9

    :catch_8
    move-exception v14

    invoke-virtual {v11, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_a
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_4
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    goto :goto_4

    :catch_9
    move-exception v10

    :try_start_17
    invoke-virtual {v12, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_a

    :catchall_4
    move-exception v10

    move-object v11, v13

    goto :goto_7

    :cond_b
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    goto :goto_a

    :catch_a
    move-exception v12

    invoke-virtual {v11, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_c
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_5
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    goto :goto_6

    :cond_d
    :try_start_18
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto/16 :goto_0

    :catch_b
    move-exception v12

    invoke-virtual {v11, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_e
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_18 .. :try_end_18} :catch_2

    goto :goto_8

    :catchall_5
    move-exception v10

    goto/16 :goto_3
.end method

.method private saveMyProfile(Ljava/lang/String;)J
    .locals 7

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "account_name"

    const-string/jumbo v5, "vnd.sec.contact.phone"

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "account_type"

    const-string/jumbo v5, "vnd.sec.contact.phone"

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->this$0:Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd;->access$000(Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    const-string/jumbo v4, "raw_contact_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v4, "mimetype"

    const-string/jumbo v5, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "data1"

    invoke-virtual {v0, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->this$0:Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd;->access$000(Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    const-string/jumbo v6, "data"

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-wide v2
.end method

.method private tagNameToFace(J)V
    .locals 9

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->getPersonId(J)J

    move-result-wide v4

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->mIsPersonId:Z

    if-eqz v6, :cond_0

    const-string/jumbo v0, "person_id"

    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " = ?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    new-array v1, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->mMyId:Ljava/lang/String;

    aput-object v7, v1, v6

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "person_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->this$0:Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd;->access$000(Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/sec/samsung/gallery/access/cmh/CMHProviderFaceTagInterface;->FACES_TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v3, v2, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->mTargetName:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6}, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->updateSearchTagFilter(JLjava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v0, "group_id"

    goto :goto_0
.end method

.method private updateSearchTagFilter(JLjava/lang/String;)V
    .locals 9

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->this$0:Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd;->access$000(Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchTagController;->getInstance(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchTagController;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchTagController;->getTagFilter()Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->getLocationType()I

    move-result v3

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchTagController;->setVisualSearchTagFilter(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8

    :try_start_0
    iget-wide v2, p0, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->mTargetRawId:J

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->mIsMyProfile:Z

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->mTargetRawId:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->mTargetName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->saveMyProfile(Ljava/lang/String;)J

    move-result-wide v2

    :cond_0
    invoke-direct {p0, v2, v3}, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->tagNameToFace(J)V

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->mNeedToUpdatePhoto:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v0, v2, v3}, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->saveBitmapToContact(Landroid/graphics/Bitmap;J)V

    :cond_1
    :goto_0
    const/4 v4, 0x0

    return-object v4

    :cond_2
    const-string/jumbo v4, "VisualSearchFaceTagging"

    const-string/jumbo v5, "created bitmap is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    const-string/jumbo v4, "VisualSearchFaceTagging"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "face tagging failed."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->this$0:Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd;->access$000(Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "REFRESH_VISUAL_SEARCH_VIEW"

    invoke-virtual {v0, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;)V

    return-void
.end method
