.class public Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;
.super Ljava/lang/Thread;
.source "DecodeTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$DecodeObject;,
        Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$OnDecodeListener;
    }
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

.field private mDecodeListener:Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$OnDecodeListener;

.field private mFilePath:Ljava/lang/String;

.field private mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

.field private mIssuperimpose:Z

.field private mThumbnail:Landroid/graphics/Bitmap;

.field private mThumbnailSize:I

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    iput-boolean p4, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mIssuperimpose:Z

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$OnDecodeListener;Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mUri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mDecodeListener:Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$OnDecodeListener;

    iput-object p4, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    iput-boolean p5, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mIssuperimpose:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$OnDecodeListener;Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mFilePath:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    iput-object p4, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mDecodeListener:Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$OnDecodeListener;

    iput-object p5, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    iput-boolean p6, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mIssuperimpose:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$OnDecodeListener;Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mFilePath:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mDecodeListener:Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$OnDecodeListener;

    iput-object p4, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    iput-boolean p5, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mIssuperimpose:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;)Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$OnDecodeListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mDecodeListener:Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$OnDecodeListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mIssuperimpose:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;IZ)Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$DecodeObject;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->decode(IZ)Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$DecodeObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;)Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method private decode(IZ)Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$DecodeObject;
    .locals 61

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mFilePath:Ljava/lang/String;

    if-nez v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mUri:Landroid/net/Uri;

    if-eqz v5, :cond_3b

    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    if-eqz v5, :cond_3b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DecodeTask start: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v56

    const/16 v38, 0x0

    const/16 v37, 0x0

    const/16 v60, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mFilePath:Ljava/lang/String;

    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "jpg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "jpeg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_1
    const/16 v60, 0x1

    const/4 v5, 0x0

    sput-boolean v5, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->isPngImage:Z

    const/4 v5, 0x0

    sput-boolean v5, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->isDngImage:Z

    :cond_2
    :goto_0
    :try_start_0
    new-instance v39, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mFilePath:Ljava/lang/String;

    move-object/from16 v0, v39

    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v38, v39

    :cond_3
    :goto_1
    if-nez v38, :cond_c

    const/4 v5, 0x0

    :goto_2
    return-object v5

    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "png"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    sput-boolean v5, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->isPngImage:Z

    const/4 v5, 0x0

    sput-boolean v5, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->isDngImage:Z

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "dng"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    sput-boolean v5, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->isDngImage:Z

    const/4 v5, 0x0

    sput-boolean v5, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->isPngImage:Z

    goto :goto_0

    :catch_0
    move-exception v31

    invoke-virtual/range {v31 .. v31}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mFilePath:Ljava/lang/String;

    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isCloudFolder(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mUri:Landroid/net/Uri;

    const-string v7, "r"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v37

    if-eqz v37, :cond_3

    new-instance v39, Ljava/io/FileInputStream;

    invoke-virtual/range {v37 .. v37}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v38, v39

    goto :goto_1

    :catch_1
    move-exception v30

    invoke-virtual/range {v30 .. v30}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mUri:Landroid/net/Uri;

    invoke-static {v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v35

    if-eqz v35, :cond_7

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "jpg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mFilePath:Ljava/lang/String;

    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "jpeg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_8
    const/16 v60, 0x1

    const/4 v5, 0x0

    sput-boolean v5, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->isPngImage:Z

    const/4 v5, 0x0

    sput-boolean v5, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->isDngImage:Z

    :goto_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v38

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mFilePath:Ljava/lang/String;

    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "png"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v5, 0x1

    sput-boolean v5, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->isPngImage:Z

    const/4 v5, 0x0

    sput-boolean v5, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->isDngImage:Z

    goto :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mFilePath:Ljava/lang/String;

    if-eqz v5, :cond_b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "dng"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v5, 0x0

    sput-boolean v5, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->isPngImage:Z

    const/4 v5, 0x1

    sput-boolean v5, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->isDngImage:Z

    goto :goto_3

    :cond_b
    const/16 v60, 0x0

    const/4 v5, 0x0

    sput-boolean v5, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->isPngImage:Z

    const/4 v5, 0x0

    sput-boolean v5, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->isDngImage:Z

    goto :goto_3

    :catch_2
    move-exception v31

    invoke-virtual/range {v31 .. v31}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    :cond_c
    new-instance v43, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v43 .. v43}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/16 v41, 0x0

    const/16 v47, 0x0

    const/16 v46, 0x0

    sget-boolean v5, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->isDngImage:Z

    if-eqz v5, :cond_13

    new-instance v44, Lcom/quramsoft/images/QrBitmapFactory$Options;

    const/4 v5, 0x0

    move-object/from16 v0, v44

    invoke-direct {v0, v5}, Lcom/quramsoft/images/QrBitmapFactory$Options;-><init>(I)V

    const/4 v5, 0x1

    move-object/from16 v0, v44

    iput-boolean v5, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v5, 0x0

    :try_start_3
    move-object/from16 v0, v38

    move-object/from16 v1, v44

    invoke-static {v0, v5, v1}, Lcom/quramsoft/images/QuramDngBitmap;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Lcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    move-object/from16 v0, v44

    iget v0, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->width:I

    move/from16 v47, v0

    move-object/from16 v0, v44

    iget v0, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->height:I

    move/from16 v46, v0

    :goto_5
    if-eqz v41, :cond_14

    const-string v5, "jpg"

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string v5, "jpeg"

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_14

    :cond_d
    const/16 v60, 0x1

    const/4 v5, 0x0

    sput-boolean v5, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->isPngImage:Z

    const/4 v5, 0x0

    sput-boolean v5, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->isDngImage:Z

    :goto_6
    const/16 v40, 0x0

    const/16 v42, 0x0

    sget-boolean v5, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->isDngImage:Z

    if-eqz v5, :cond_e

    :try_start_4
    new-instance v28, Lcom/quramsoft/images/QuramDngJavaExif;

    invoke-direct/range {v28 .. v28}, Lcom/quramsoft/images/QuramDngJavaExif;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mFilePath:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-static {v5, v0}, Lcom/quramsoft/images/QuramDngBitmap;->getExifInfoFromFile(Ljava/lang/String;Lcom/quramsoft/images/QuramDngJavaExif;)I

    invoke-virtual/range {v28 .. v28}, Lcom/quramsoft/images/QuramDngJavaExif;->getMake()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v28 .. v28}, Lcom/quramsoft/images/QuramDngJavaExif;->getModel()Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v42

    :cond_e
    :goto_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mFilePath:Ljava/lang/String;

    if-eqz v5, :cond_10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mFilePath:Ljava/lang/String;

    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRAWImageSupported(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    const/16 v60, 0x0

    const/4 v5, 0x0

    sput-boolean v5, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->isPngImage:Z

    if-eqz v40, :cond_10

    if-eqz v42, :cond_10

    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "samsung"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_f

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "samsung"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_17

    :cond_f
    const/4 v5, 0x1

    sput-boolean v5, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->isDngImage:Z

    :cond_10
    :goto_8
    :try_start_5
    invoke-virtual/range {v38 .. v38}, Ljava/io/InputStream;->close()V

    if-eqz v37, :cond_11

    invoke-virtual/range {v37 .. v37}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_11
    :goto_9
    rem-int/lit8 v5, v47, 0x2

    if-eqz v5, :cond_18

    const/4 v5, 0x1

    move/from16 v0, v47

    if-le v0, v5, :cond_18

    add-int/lit8 v58, v47, -0x1

    :goto_a
    rem-int/lit8 v5, v46, 0x2

    if-eqz v5, :cond_19

    const/4 v5, 0x1

    move/from16 v0, v46

    if-le v0, v5, :cond_19

    add-int/lit8 v55, v46, -0x1

    :goto_b
    if-lez v58, :cond_12

    if-gtz v55, :cond_1a

    :cond_12
    const/4 v5, 0x0

    goto/16 :goto_2

    :catch_3
    move-exception v30

    invoke-virtual/range {v30 .. v30}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    :cond_13
    const/4 v5, 0x1

    move-object/from16 v0, v43

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v5, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v43

    invoke-static {v0, v5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-object/from16 v0, v43

    iget-object v0, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v47, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v46, v0

    goto/16 :goto_5

    :cond_14
    if-eqz v41, :cond_15

    const-string v5, "png"

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/16 v60, 0x0

    const/4 v5, 0x1

    sput-boolean v5, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->isPngImage:Z

    const/4 v5, 0x0

    sput-boolean v5, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->isDngImage:Z

    goto/16 :goto_6

    :cond_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mFilePath:Ljava/lang/String;

    if-eqz v5, :cond_16

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "dng"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    const/16 v60, 0x0

    const/4 v5, 0x0

    sput-boolean v5, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->isPngImage:Z

    const/4 v5, 0x1

    sput-boolean v5, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->isDngImage:Z

    goto/16 :goto_6

    :cond_16
    const/16 v60, 0x0

    const/4 v5, 0x0

    sput-boolean v5, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->isPngImage:Z

    const/4 v5, 0x0

    sput-boolean v5, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->isDngImage:Z

    goto/16 :goto_6

    :catch_4
    move-exception v30

    const/16 v40, 0x0

    const/16 v42, 0x0

    invoke-virtual/range {v30 .. v30}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    :cond_17
    const/4 v5, 0x0

    sput-boolean v5, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->isDngImage:Z

    goto/16 :goto_8

    :catch_5
    move-exception v31

    invoke-virtual/range {v31 .. v31}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9

    :cond_18
    move/from16 v58, v47

    goto/16 :goto_a

    :cond_19
    move/from16 v55, v46

    goto/16 :goto_b

    :cond_1a
    mul-int v5, v58, v55

    int-to-float v5, v5

    move/from16 v0, p1

    int-to-float v6, v0

    invoke-static {v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getResizeRatio(FF)F

    move-result v52

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isLowResolutionDevice(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1b

    if-eqz p2, :cond_1b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v5

    move/from16 v0, v58

    move/from16 v1, v55

    invoke-static {v0, v1, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getScreenRatio(IILandroid/content/Context;)F

    move-result v52

    :cond_1b
    move/from16 v0, v58

    int-to-float v5, v0

    div-float v5, v5, v52

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v13

    move/from16 v0, v55

    int-to-float v5, v0

    div-float v5, v5, v52

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v17

    rem-int/lit8 v5, v13, 0x2

    if-eqz v5, :cond_1c

    const/4 v5, 0x1

    if-le v13, v5, :cond_1c

    add-int/lit8 v13, v13, -0x1

    :cond_1c
    rem-int/lit8 v5, v17, 0x2

    if-eqz v5, :cond_1d

    const/4 v5, 0x1

    move/from16 v0, v17

    if-le v0, v5, :cond_1d

    add-int/lit8 v17, v17, -0x1

    :cond_1d
    if-eqz p2, :cond_23

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DecodeTask:: preview resolution : width: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", height: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", w*h: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    mul-int v6, v13, v17

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    :goto_c
    if-eqz v60, :cond_26

    const/16 v51, 0x1

    :try_start_6
    new-instance v32, Landroid/media/ExifInterface;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mFilePath:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-direct {v0, v5}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v5, "Orientation"

    const/4 v6, 0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v5, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v51

    :goto_d
    new-instance v48, Lcom/quramsoft/images/QrBitmapFactory$Options;

    invoke-direct/range {v48 .. v48}, Lcom/quramsoft/images/QrBitmapFactory$Options;-><init>()V

    const/4 v5, 0x7

    move-object/from16 v0, v48

    iput v5, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inPreferredConfig:I

    const/4 v4, 0x0

    :try_start_7
    new-instance v36, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mFilePath:Ljava/lang/String;

    move-object/from16 v0, v36

    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v36

    move/from16 v1, v17

    move-object/from16 v2, v48

    invoke-static {v0, v13, v1, v2}, Lcom/quramsoft/images/QrBitmapFactory;->decodeStream(Ljava/io/InputStream;IILcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_8

    move-result-object v4

    :try_start_8
    invoke-virtual/range {v36 .. v36}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_8

    :goto_e
    if-eqz v4, :cond_3b

    const/4 v5, 0x1

    move/from16 v0, v51

    if-eq v0, v5, :cond_20

    const/4 v5, 0x6

    move/from16 v0, v51

    if-eq v0, v5, :cond_1e

    const/4 v5, 0x3

    move/from16 v0, v51

    if-eq v0, v5, :cond_1e

    const/16 v5, 0x8

    move/from16 v0, v51

    if-ne v0, v5, :cond_20

    :cond_1e
    move-object/from16 v59, v4

    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    const/4 v5, 0x6

    move/from16 v0, v51

    if-ne v0, v5, :cond_24

    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {v9, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    :cond_1f
    :goto_f
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x1

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual/range {v59 .. v59}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    :cond_20
    mul-int v5, v13, v17

    new-array v11, v5, [I

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v4

    move/from16 v16, v13

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08043f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mThumbnailSize:I

    if-eqz p2, :cond_21

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mThumbnailSize:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mThumbnailSize:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mThumbnail:Landroid/graphics/Bitmap;

    new-instance v27, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mThumbnail:Landroid/graphics/Bitmap;

    move-object/from16 v0, v27

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v53

    new-instance v54, Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int v5, v5, v53

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int v6, v6, v53

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    add-int v7, v7, v53

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    add-int v8, v8, v53

    div-int/lit8 v8, v8, 0x2

    move-object/from16 v0, v54

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v29, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move-object/from16 v0, v29

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v5, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v54

    move-object/from16 v2, v29

    invoke-virtual {v0, v4, v1, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DecodeTask:: DecodeTask end: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DecodeTask:: $$$$$$$$$$  Decode time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v56

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    :cond_21
    if-nez p2, :cond_22

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v4, 0x0

    :cond_22
    new-instance v5, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$DecodeObject;

    move/from16 v0, v17

    invoke-direct {v5, v11, v13, v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$DecodeObject;-><init>([IIILandroid/graphics/Bitmap;)V

    goto/16 :goto_2

    :cond_23
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DecodeTask:: original resolution : width: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", height: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", w*h: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    mul-int v6, v13, v17

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    goto/16 :goto_c

    :catch_6
    move-exception v30

    invoke-virtual/range {v30 .. v30}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_d

    :catch_7
    move-exception v30

    :try_start_9
    invoke-virtual/range {v30 .. v30}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_8

    goto/16 :goto_e

    :catch_8
    move-exception v30

    invoke-virtual/range {v30 .. v30}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_e

    :cond_24
    const/4 v5, 0x3

    move/from16 v0, v51

    if-ne v0, v5, :cond_25

    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {v9, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto/16 :goto_f

    :cond_25
    const/16 v5, 0x8

    move/from16 v0, v51

    if-ne v0, v5, :cond_1f

    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {v9, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto/16 :goto_f

    :cond_26
    const/16 v18, 0x0

    sget-boolean v5, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->isDngImage:Z

    if-eqz v5, :cond_2f

    const/16 v51, 0x1

    :try_start_a
    new-instance v32, Landroid/media/ExifInterface;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mFilePath:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-direct {v0, v5}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v5, "Orientation"

    const/4 v6, 0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v5, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    move-result v51

    :goto_10
    :try_start_b
    new-instance v44, Lcom/quramsoft/images/QrBitmapFactory$Options;

    const/4 v5, 0x0

    move-object/from16 v0, v44

    invoke-direct {v0, v5}, Lcom/quramsoft/images/QrBitmapFactory$Options;-><init>(I)V

    const/4 v5, 0x1

    move-object/from16 v0, v44

    iput v5, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->count_nr:I

    const/4 v5, 0x0

    move-object/from16 v0, v44

    iput-boolean v5, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inJustDecodeBounds:Z

    mul-int v5, v58, v55

    move/from16 v0, p1

    invoke-static {v5, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getSampleSize(II)I

    move-result v5

    move-object/from16 v0, v44

    iput v5, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    if-eqz p2, :cond_2c

    mul-int v5, v58, v55

    int-to-float v5, v5

    move/from16 v0, p1

    int-to-float v6, v0

    invoke-static {v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getResizeRatio(FF)F

    move-result v49

    move/from16 v0, v58

    int-to-float v5, v0

    div-float v5, v5, v49

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v34

    move/from16 v0, v55

    int-to-float v5, v0

    div-float v5, v5, v49

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v33

    move/from16 v0, v49

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v5, v6

    const/4 v6, 0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, v44

    iput v5, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mFilePath:Ljava/lang/String;

    move-object/from16 v0, v44

    invoke-static {v5, v0}, Lcom/quramsoft/images/QuramDngBitmap;->decodeFile(Ljava/lang/String;Lcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v45

    if-eqz v45, :cond_27

    const/4 v5, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v34

    move/from16 v2, v33

    invoke-static {v0, v1, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v45

    if-eq v0, v1, :cond_27

    invoke-virtual/range {v45 .. v45}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    :cond_27
    :goto_11
    const/4 v5, 0x1

    move/from16 v0, v51

    if-eq v0, v5, :cond_2a

    const/4 v5, 0x6

    move/from16 v0, v51

    if-eq v0, v5, :cond_28

    const/4 v5, 0x3

    move/from16 v0, v51

    if-eq v0, v5, :cond_28

    const/16 v5, 0x8

    move/from16 v0, v51

    if-ne v0, v5, :cond_2a

    :cond_28
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    const/4 v5, 0x6

    move/from16 v0, v51

    if-ne v0, v5, :cond_2d

    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {v9, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    :cond_29
    :goto_12
    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    const/16 v24, 0x1

    move-object/from16 v23, v9

    invoke-static/range {v18 .. v24}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v18

    :cond_2a
    :goto_13
    if-eqz v18, :cond_2b

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-lez v5, :cond_2b

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-gtz v5, :cond_32

    :cond_2b
    const/4 v5, 0x0

    goto/16 :goto_2

    :catch_9
    move-exception v30

    invoke-virtual/range {v30 .. v30}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_10

    :cond_2c
    :try_start_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mFilePath:Ljava/lang/String;

    move-object/from16 v0, v44

    invoke-static {v5, v0}, Lcom/quramsoft/images/QuramDngBitmap;->decodeFile(Ljava/lang/String;Lcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    move-result-object v18

    goto :goto_11

    :catch_a
    move-exception v30

    invoke-virtual/range {v30 .. v30}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11

    :cond_2d
    const/4 v5, 0x3

    move/from16 v0, v51

    if-ne v0, v5, :cond_2e

    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {v9, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_12

    :cond_2e
    const/16 v5, 0x8

    move/from16 v0, v51

    if-ne v0, v5, :cond_29

    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {v9, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_12

    :cond_2f
    const/4 v5, 0x0

    move-object/from16 v0, v43

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mIssuperimpose:Z

    if-eqz v5, :cond_30

    const p1, 0x1fa400

    :cond_30
    mul-int v5, v58, v55

    move/from16 v0, p1

    invoke-static {v5, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getSampleSize(II)I

    move-result v5

    move-object/from16 v0, v43

    iput v5, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isLowResolutionDevice(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_31

    if-eqz p2, :cond_31

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v5

    move/from16 v0, v58

    move/from16 v1, v55

    invoke-static {v0, v1, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getScreenRatio(IILandroid/content/Context;)F

    move-result v49

    move/from16 v0, v58

    int-to-float v5, v0

    div-float v5, v5, v49

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v34

    move/from16 v0, v55

    int-to-float v5, v0

    div-float v5, v5, v49

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v33

    move/from16 v0, v49

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v5, v6

    const/4 v6, 0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, v43

    iput v5, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mFilePath:Ljava/lang/String;

    move-object/from16 v0, v43

    invoke-static {v5, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v45

    if-eqz v45, :cond_2a

    const/4 v5, 0x1

    move-object/from16 v0, v45

    move/from16 v1, v34

    move/from16 v2, v33

    invoke-static {v0, v1, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v45

    if-eq v0, v1, :cond_2a

    invoke-virtual/range {v45 .. v45}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_13

    :cond_31
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mFilePath:Ljava/lang/String;

    move-object/from16 v0, v43

    invoke-static {v5, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v18

    goto/16 :goto_13

    :cond_32
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_33

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_38

    :cond_33
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    :goto_14
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    rem-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_34

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_39

    :cond_34
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    :goto_15
    const/4 v7, 0x1

    move-object/from16 v0, v18

    invoke-static {v0, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v19

    if-eqz p2, :cond_35

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DecodeTask:: preview resolution : width: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", height: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", w*h: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    mul-int v6, v13, v17

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    :cond_35
    if-eqz v19, :cond_3a

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    new-array v11, v5, [I

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v26

    move-object/from16 v20, v11

    invoke-virtual/range {v19 .. v26}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    if-eqz p2, :cond_36

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08043f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mThumbnailSize:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mThumbnailSize:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mThumbnailSize:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mThumbnail:Landroid/graphics/Bitmap;

    new-instance v27, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mThumbnail:Landroid/graphics/Bitmap;

    move-object/from16 v0, v27

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v50

    new-instance v54, Landroid/graphics/Rect;

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int v5, v5, v50

    div-int/lit8 v5, v5, 0x2

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int v6, v6, v50

    div-int/lit8 v6, v6, 0x2

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    add-int v7, v7, v50

    div-int/lit8 v7, v7, 0x2

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    add-int v8, v8, v50

    div-int/lit8 v8, v8, 0x2

    move-object/from16 v0, v54

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mThumbnailSize:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mThumbnailSize:I

    invoke-direct {v5, v6, v7, v8, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v6, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_36
    if-nez p2, :cond_37

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->recycle()V

    const/16 v19, 0x0

    :cond_37
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DecodeTask:: DecodeTask end: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DecodeTask::Decode time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v56

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    new-instance v5, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$DecodeObject;

    move/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v5, v11, v13, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$DecodeObject;-><init>([IIILandroid/graphics/Bitmap;)V

    goto/16 :goto_2

    :cond_38
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_14

    :cond_39
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_15

    :cond_3a
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3b
    const/4 v5, 0x0

    goto/16 :goto_2
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mFilePath:Ljava/lang/String;

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_d

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mIssuperimpose:Z

    if-eqz v2, :cond_6

    const v2, 0xb4000

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->decode(IZ)Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$DecodeObject;

    move-result-object v10

    :goto_1
    if-eqz v10, :cond_3

    iget-object v2, v10, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$DecodeObject;->argb:[I

    if-eqz v2, :cond_3

    iget v2, v10, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$DecodeObject;->width:I

    const/16 v4, 0x64

    if-lt v2, v4, :cond_3

    iget v2, v10, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$DecodeObject;->height:I

    const/16 v4, 0x64

    if-ge v2, v4, :cond_9

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mDecodeListener:Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$OnDecodeListener;

    if-eqz v2, :cond_5

    if-eqz v10, :cond_7

    iget v2, v10, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$DecodeObject;->width:I

    const/16 v4, 0x64

    if-lt v2, v4, :cond_4

    iget v2, v10, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$DecodeObject;->height:I

    const/16 v4, 0x64

    if-ge v2, v4, :cond_7

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mDecodeListener:Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$OnDecodeListener;

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$OnDecodeListener;->onDecodeFailed(I)V

    :cond_5
    :goto_2
    if-eqz v10, :cond_0

    const/4 v10, 0x0

    goto :goto_0

    :cond_6
    const/high16 v2, 0x200000

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->decode(IZ)Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$DecodeObject;

    move-result-object v10

    goto :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mFilePath:Ljava/lang/String;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mFilePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isCloudFolder(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mDecodeListener:Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$OnDecodeListener;

    const/4 v4, 0x3

    invoke-interface {v2, v4}, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$OnDecodeListener;->onDecodeFailed(I)V

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mDecodeListener:Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$OnDecodeListener;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$OnDecodeListener;->onDecodeFailed(I)V

    goto :goto_2

    :cond_9
    iget v13, v10, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$DecodeObject;->width:I

    iget v12, v10, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$DecodeObject;->height:I

    iget-object v11, v10, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$DecodeObject;->argb:[I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mIssuperimpose:Z

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v2, v11, v13, v12}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->setPreviewData([III)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    iget-object v4, v10, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$DecodeObject;->argb:[I

    iget v5, v10, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$DecodeObject;->width:I

    iget v6, v10, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$DecodeObject;->height:I

    invoke-virtual {v2, v4, v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->setOriginalData([III)V

    iget-object v2, v10, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$DecodeObject;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mDecodeListener:Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$OnDecodeListener;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mDecodeListener:Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$OnDecodeListener;

    iget-object v4, v10, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$DecodeObject;->bmp:Landroid/graphics/Bitmap;

    invoke-interface {v2, v4}, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$OnDecodeListener;->onDecodeFinished(Landroid/graphics/Bitmap;)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mDecodeListener:Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$OnDecodeListener;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mDecodeListener:Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$OnDecodeListener;

    invoke-interface {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$OnDecodeListener;->isExited()Z

    move-result v2

    if-eqz v2, :cond_c

    if-eqz v10, :cond_0

    iget-object v2, v10, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$DecodeObject;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v10, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$DecodeObject;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v11, v13, v12, v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->setBuffers([IIILandroid/graphics/Bitmap;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DecodeTask end: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DecodeTask::setBuffers time: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v16

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ms"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    new-instance v14, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;)V

    const/4 v2, 0x0

    invoke-static {v14, v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->addJob(Ljava/lang/Runnable;Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager$JobDoneCallBack;)V

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v2, v4

    new-array v3, v2, [I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->setPreviewData([III)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->setOriginalBuffer([III)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mImageData:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->setOriginalData([III)V

    goto/16 :goto_0
.end method
