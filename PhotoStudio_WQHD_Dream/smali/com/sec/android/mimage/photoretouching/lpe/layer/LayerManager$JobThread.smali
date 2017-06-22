.class Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread;
.super Ljava/lang/Thread;
.source "LayerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JobThread"
.end annotation


# instance fields
.field filepath:Ljava/lang/String;

.field gifBitmapList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field gifTimeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field isPreview:Z

.field mUri:Landroid/net/Uri;

.field maxsize:I

.field res:Landroid/content/res/Resources;

.field resID:I

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Landroid/content/res/Resources;IIZ)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread;->res:Landroid/content/res/Resources;

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread;->resID:I

    iput p4, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread;->maxsize:I

    iput-boolean p5, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread;->isPreview:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread;->gifBitmapList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread;->gifTimeList:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Ljava/lang/String;Landroid/net/Uri;IZ)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread;->filepath:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread;->mUri:Landroid/net/Uri;

    iput p4, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread;->maxsize:I

    iput-boolean p5, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread;->isPreview:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread;->gifBitmapList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread;->gifTimeList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread;->filepath:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread;->filepath:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "\\."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    array-length v0, v15

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    aget-object v19, v15, v19

    const-string v20, "gif"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v19

    new-instance v20, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread;)V

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->runOnUiThread(Ljava/lang/Runnable;)V

    new-instance v6, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread;->filepath:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v6, v0}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getWidth()I

    move-result v18

    invoke-virtual {v6}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getHeight()I

    move-result v9

    if-eqz v18, :cond_0

    if-eqz v9, :cond_0

    invoke-virtual {v6}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getNumOfFrame()I

    move-result v19

    if-gtz v19, :cond_3

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread;->mUri:Landroid/net/Uri;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread;->filepath:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isCloudFolder(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1

    new-instance v6, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread;->mUri:Landroid/net/Uri;

    move-object/from16 v20, v0

    const-wide/16 v22, 0x78

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    :cond_1
    invoke-virtual {v6}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getWidth()I

    move-result v18

    invoke-virtual {v6}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getHeight()I

    move-result v9

    if-eqz v18, :cond_2

    if-eqz v9, :cond_2

    invoke-virtual {v6}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getNumOfFrame()I

    move-result v19

    if-gtz v19, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v19

    new-instance v20, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread$2;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread;)V

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_3
    const/4 v7, 0x0

    sget-object v19, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v9, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getNumOfFrame()I

    move-result v14

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v14, :cond_6

    const/16 v19, 0x64

    move/from16 v0, v19

    if-ge v11, v0, :cond_6

    invoke-virtual {v6, v7}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->decodeFrame(Landroid/graphics/Bitmap;)I

    move-result v16

    invoke-static {v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    mul-int v19, v18, v9

    const v20, 0x7e900

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_4

    move/from16 v13, v18

    move v12, v9

    :goto_2
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-static {v4, v13, v12, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread;->gifBitmapList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread;->gifTimeList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual {v6}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getDelay()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v19

    new-instance v20, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread$3;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread;)V

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->runOnUiThread(Ljava/lang/Runnable;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_4
    const v19, 0x48fd2000    # 518400.0f

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    int-to-float v0, v9

    move/from16 v21, v0

    div-float v20, v20, v21

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v13, v0

    int-to-float v0, v13

    move/from16 v19, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    int-to-float v0, v9

    move/from16 v21, v0

    div-float v20, v20, v21

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v12, v0

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread;->filepath:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread;->maxsize:I

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->decode(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread;->gifBitmapList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread;->gifTimeList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0xbb8

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread;->gifBitmapList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread;->gifTimeList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->addLayerSuperImpose(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v19

    new-instance v20, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread$4;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread$4;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread;)V

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->runOnUiThread(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread;->res:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread;->resID:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v10

    new-instance v6, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;

    invoke-direct {v6, v10}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v6}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getWidth()I

    move-result v18

    invoke-virtual {v6}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getHeight()I

    move-result v9

    const/4 v7, 0x0

    invoke-virtual {v6}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getNumOfFrame()I

    move-result v14

    if-eqz v18, :cond_8

    if-eqz v9, :cond_8

    invoke-virtual {v6}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getNumOfFrame()I

    move-result v19

    if-gtz v19, :cond_a

    :cond_8
    if-eqz v10, :cond_9

    :try_start_0
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v19

    new-instance v20, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread$5;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread$5;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread;)V

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :cond_a
    sget-object v19, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v9, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v14, :cond_d

    const/16 v19, 0x64

    move/from16 v0, v19

    if-ge v11, v0, :cond_d

    invoke-virtual {v6, v7}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->decodeFrame(Landroid/graphics/Bitmap;)I

    move-result v16

    invoke-static {v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    mul-int v19, v18, v9

    const v20, 0x7e900

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_c

    move/from16 v13, v18

    move v12, v9

    :goto_6
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-static {v4, v13, v12, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread;->gifBitmapList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getDelay()I

    move-result v17

    const/16 v19, 0x64

    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_b

    const/16 v17, 0x64

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread;->gifTimeList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v19

    new-instance v20, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread$6;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread$6;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$JobThread;)V

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->runOnUiThread(Ljava/lang/Runnable;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_c
    const v19, 0x48fd2000    # 518400.0f

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    int-to-float v0, v9

    move/from16 v21, v0

    div-float v20, v20, v21

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v13, v0

    int-to-float v0, v13

    move/from16 v19, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    int-to-float v0, v9

    move/from16 v21, v0

    div-float v20, v20, v21

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v12, v0

    goto :goto_6

    :cond_d
    if-eqz v10, :cond_6

    :try_start_1
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3
.end method
