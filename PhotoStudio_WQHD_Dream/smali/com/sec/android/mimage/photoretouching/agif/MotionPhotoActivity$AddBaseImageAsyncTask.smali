.class public Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;
.super Landroid/os/AsyncTask;
.source "MotionPhotoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AddBaseImageAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        "Ljava/util/ArrayList",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;>;"
    }
.end annotation


# instance fields
.field private arrBitmap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private isBurstShotImage:Z

.field private mstartIndex:I

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Landroid/content/Intent;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->isBurstShotImage:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->arrBitmap:Ljava/util/ArrayList;

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->mstartIndex:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->arrBitmap:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->inputFiles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->inputFiles:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    invoke-static/range {v33 .. v33}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isSaveSDCard(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    move-object/from16 v0, v33

    invoke-static {v3, v0}, Lcom/sec/android/mimage/photoretouching/MemoryStatus;->checkLowSDCardMemory(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->exitLowSDCardMemory()V

    :cond_0
    const/4 v3, 0x1

    sput-boolean v3, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->mIsLoading:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->agifInputFiles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v18, v3, -0x1

    :goto_0
    if-ltz v18, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->agifInputFiles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v18

    if-lt v0, v3, :cond_1

    :goto_1
    add-int/lit8 v18, v18, -0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->agifInputFiles:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-static {v4, v3}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_6

    const-string v3, "\\."

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v30, v3

    const-string v4, "gif"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget v4, v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    new-instance v14, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;

    move-object/from16 v0, v32

    invoke-direct {v14, v0}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getNumOfFrame()I

    move-result v27

    invoke-virtual {v14}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getNumOfFrame()I

    move-result v3

    if-gtz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->agifInputFiles:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static/range {v32 .. v32}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isCloudFolder(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v14, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->agifInputFiles:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    const-wide/16 v8, 0x3

    invoke-direct {v14, v4, v3, v8, v9}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    :cond_2
    invoke-virtual {v14}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getNumOfFrame()I

    move-result v27

    :cond_3
    if-eqz v27, :cond_4

    invoke-virtual {v14}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getWidth()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_4

    invoke-virtual {v14}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getHeight()I

    move-result v3

    const/16 v4, 0x64

    if-ge v3, v4, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->unSupported:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->agifInputFiles:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->agifInputFiles:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->inputFiles:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/16 v27, 0x0

    :cond_5
    add-int v15, v15, v27

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->agifInputFiles:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    add-int/2addr v4, v15

    iput v4, v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget v3, v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    if-nez v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mProgressDialog:Landroid/app/Dialog;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$2000(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mProgressDialog:Landroid/app/Dialog;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$2000(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mProgressDialog:Landroid/app/Dialog;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$2000(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->unSupported:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-static {v4, v3}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->unSupported:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    if-eqz v31, :cond_9

    const-string v3, "gif"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    const v6, 0x7f07009c

    invoke-virtual {v5, v6}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->publishProgress([Ljava/lang/Object;)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->finish()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->arrBitmap:Ljava/util/ArrayList;

    :goto_3
    return-object v3

    :cond_9
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    const v6, 0x7f07009f

    invoke-virtual {v5, v6}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->unSupported:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->unsupportedUriSize:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget v3, v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    sget v4, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->THUMB_VIEW_TOTAL_NUM:I

    if-le v3, v4, :cond_b

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->isBurstShotImage:Z

    if-nez v3, :cond_b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    const v6, 0x7f07009e

    invoke-virtual {v5, v6}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    sget v9, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->THUMB_VIEW_TOTAL_NUM:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x1

    sget v9, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->THUMB_VIEW_TOTAL_NUM:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget v9, v9, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->publishProgress([Ljava/lang/Object;)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getImageCount()I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$1400(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget v5, v5, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    add-int/2addr v3, v5

    sget v5, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->THUMB_VIEW_TOTAL_NUM:I

    if-ge v3, v5, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget v3, v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    :goto_4
    iput v3, v4, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->isBurstShotImage:Z

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget v3, v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    if-lez v3, :cond_e

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget v3, v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_d

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    const v6, 0x7f07016f

    invoke-virtual {v5, v6}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->publishProgress([Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->finish()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->arrBitmap:Ljava/util/ArrayList;

    goto/16 :goto_3

    :cond_c
    sget v3, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->THUMB_VIEW_TOTAL_NUM:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getImageCount()I
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$1400(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)I

    move-result v5

    sub-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    goto :goto_4

    :cond_d
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->isSupportContinuousShots()Z

    move-result v3

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    const v4, 0x7f070094

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    const v8, 0x7f0700b7

    invoke-virtual {v6, v8}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    :goto_5
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v26, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->publishProgress([Ljava/lang/Object;)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->mstartIndex:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    new-instance v4, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ResourceReferencePool;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget v6, v6, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    move/from16 v0, v35

    invoke-direct {v4, v5, v6, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ResourceReferencePool;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;II)V

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->resourcePool:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ResourceReferencePool;
    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$3602(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ResourceReferencePool;)Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ResourceReferencePool;

    const/4 v3, 0x0

    sput v3, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->noOfImagesDecoded:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->imageLoader:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget v4, v4, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->setNoOfBitmapsToLoad(I)V

    const/16 v22, 0x1

    const/16 v21, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v21

    if-ge v0, v3, :cond_13

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-static {v4, v3}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_f

    const-string v3, "/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v36

    const/4 v3, 0x2

    aget-object v3, v36, v3

    const-string v4, "Private"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/16 v23, 0x1

    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->inputFiles:Ljava/util/ArrayList;

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->inputFiles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_12

    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->finish()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->arrBitmap:Ljava/util/ArrayList;

    goto/16 :goto_3

    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    const v4, 0x7f070098

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_5

    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->inputFiles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v21

    if-lt v0, v3, :cond_14

    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->shutDownExecutor()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->arrBitmap:Ljava/util/ArrayList;

    goto/16 :goto_3

    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->inputFiles:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    if-eqz v31, :cond_1d

    const-string v3, "\\."

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v29, v3

    const-string v4, "gif"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    new-instance v14, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;

    move-object/from16 v0, v31

    invoke-direct {v14, v0}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getWidth()I

    move-result v37

    invoke-virtual {v14}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getHeight()I

    move-result v20

    const/16 v17, 0x0

    if-eqz v37, :cond_15

    if-eqz v20, :cond_15

    invoke-virtual {v14}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getNumOfFrame()I

    move-result v3

    if-gtz v3, :cond_18

    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_16

    invoke-static/range {v31 .. v31}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isCloudFolder(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    new-instance v14, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    const-wide/16 v8, 0x3

    invoke-direct {v14, v4, v3, v8, v9}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    :cond_16
    invoke-virtual {v14}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getWidth()I

    move-result v37

    invoke-virtual {v14}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getHeight()I

    move-result v20

    if-eqz v37, :cond_17

    if-eqz v20, :cond_17

    invoke-virtual {v14}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getNumOfFrame()I

    move-result v3

    if-gtz v3, :cond_18

    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, v21

    if-ne v0, v3, :cond_1d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    const v4, 0x7f07009f

    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->showToastShort(Landroid/content/Context;I)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07009f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->publishProgress([Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->finish()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->arrBitmap:Ljava/util/ArrayList;

    goto/16 :goto_3

    :cond_18
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v37

    move/from16 v1, v20

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    invoke-virtual {v14}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getNumOfFrame()I

    move-result v28

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getImageCount()I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$1400(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)I

    move-result v3

    add-int v3, v3, v28

    sget v4, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->THUMB_VIEW_TOTAL_NUM:I

    if-ge v3, v4, :cond_1a

    :goto_7
    const/16 v25, 0x0

    :goto_8
    move/from16 v0, v25

    move/from16 v1, v28

    if-ge v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->checkImagesCount()Z
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$3400(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Z

    move-result v3

    if-eqz v3, :cond_1c

    if-nez v25, :cond_1b

    if-eqz v22, :cond_19

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->decodeFrame(Landroid/graphics/Bitmap;)I

    invoke-static/range {v17 .. v17}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    new-instance v3, Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-direct {v3, v4, v5, v6, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v4, Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getPreviewWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getPreviewHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-direct {v4, v5, v6, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v7, v3, v4, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->arrBitmap:Ljava/util/ArrayList;

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v22, 0x0

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->recycleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_19
    new-instance v24, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v0, v3, v1}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;-><init>(Landroid/net/Uri;I)V

    move/from16 v0, v23

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->isPrivateFile:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v3, v0, v4}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->add(Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;Z)V

    :goto_9
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_8

    :cond_1a
    sget v3, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->THUMB_VIEW_TOTAL_NUM:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getImageCount()I
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$1400(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v28

    goto/16 :goto_7

    :cond_1b
    new-instance v24, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v0, v3, v1}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;-><init>(Landroid/net/Uri;I)V

    move/from16 v0, v23

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->isPrivateFile:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v3, v0, v4}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->add(Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;Z)V

    goto :goto_9

    :cond_1c
    invoke-static/range {v17 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->recycleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_1d
    :goto_a
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_6

    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->checkImagesCount()Z
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$3400(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/16 v25, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v25

    if-ge v0, v3, :cond_20

    if-eqz v22, :cond_20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getRectFormURI(Landroid/net/Uri;)Landroid/graphics/Rect;
    invoke-static {v4, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$5100(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Landroid/net/Uri;)Landroid/graphics/Rect;

    move-result-object v10

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getPreviewWidth()I

    move-result v11

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getPreviewHeight()I

    move-result v12

    sget v13, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->RESIZE_LESS_THAM_MAX:I

    invoke-static/range {v8 .. v13}, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->getBitmapFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object v16

    if-nez v16, :cond_1f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, v25

    if-ne v0, v3, :cond_21

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07009f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->publishProgress([Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->finish()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->arrBitmap:Ljava/util/ArrayList;

    goto/16 :goto_3

    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->arrBitmap:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v22, 0x0

    :cond_20
    new-instance v24, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;-><init>(Landroid/net/Uri;)V

    move/from16 v0, v23

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->isPrivateFile:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getRectFormURI(Landroid/net/Uri;)Landroid/graphics/Rect;
    invoke-static {v4, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$5100(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Landroid/net/Uri;)Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->setEffectRect(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v3, v0, v4}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->add(Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;Z)V

    goto/16 :goto_a

    :cond_21
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_b
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->mstartIndex:I

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->thumbnailViewUpdater(II)V
    invoke-static {v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$3500(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;II)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v2, v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mPhotoView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->setImageBitmap(Landroid/graphics/Bitmap;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$AddBaseImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    return-void
.end method
