.class public Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;
.super Landroid/os/AsyncTask;
.source "MotionPhotoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "addImageAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field agifInputFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field inputFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mstartIndex:I

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

.field unSupported:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->inputFiles:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->agifInputFiles:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->unSupported:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->mstartIndex:I

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->inputFiles:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->agifInputFiles:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->unSupported:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 20

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->agifInputFiles:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v3, v13, -0x1

    :goto_0
    if-ltz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->agifInputFiles:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lt v3, v13, :cond_0

    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->agifInputFiles:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/Uri;

    invoke-static {v14, v13}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1

    const-string v13, "\\."

    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v13, v10

    add-int/lit8 v13, v13, -0x1

    aget-object v13, v10, v13

    const-string v14, "gif"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget v14, v13, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    add-int/lit8 v14, v14, -0x1

    iput v14, v13, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    new-instance v1, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;

    invoke-direct {v1, v11}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getNumOfFrame()I

    move-result v9

    if-lez v9, :cond_2

    add-int/2addr v2, v9

    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->agifInputFiles:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->unSupported:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->agifInputFiles:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v13, v13, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->agifInputFiles:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->inputFiles:Ljava/util/ArrayList;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget v13, v13, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    if-nez v13, :cond_5

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mProgressDialog:Landroid/app/Dialog;
    invoke-static {v13}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$2000(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Landroid/app/Dialog;

    move-result-object v13

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mProgressDialog:Landroid/app/Dialog;
    invoke-static {v13}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$2000(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Landroid/app/Dialog;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Dialog;->isShowing()Z

    move-result v13

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mProgressDialog:Landroid/app/Dialog;
    invoke-static {v13}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$2000(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Landroid/app/Dialog;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Dialog;->dismiss()V

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    const v15, 0x7f07009f

    invoke-virtual {v14, v15}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v13, 0x0

    :goto_3
    return-object v13

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->unSupported:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    iput v14, v13, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->unsupportedUriSize:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget v14, v14, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    add-int/2addr v14, v2

    iput v14, v13, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getImageCount()I
    invoke-static {v13}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$1400(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget v14, v14, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    add-int/2addr v13, v14

    sget v14, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->THUMB_VIEW_TOTAL_NUM:I

    if-le v13, v14, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isBurstShotImage:Z
    invoke-static {v13}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$3300(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Z

    move-result v13

    if-nez v13, :cond_6

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    const v16, 0x7f07009e

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    sget v18, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->THUMB_VIEW_TOTAL_NUM:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    move-object/from16 v19, v0

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getImageCount()I
    invoke-static/range {v19 .. v19}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$1400(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)I

    move-result v19

    sub-int v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    sget v18, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->THUMB_VIEW_TOTAL_NUM:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    move-object/from16 v19, v0

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getImageCount()I
    invoke-static/range {v19 .. v19}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$1400(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)I

    move-result v19

    sub-int v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->publishProgress([Ljava/lang/Object;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getImageCount()I
    invoke-static {v13}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$1400(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget v15, v15, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    add-int/2addr v13, v15

    sget v15, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->THUMB_VIEW_TOTAL_NUM:I

    if-ge v13, v15, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget v13, v13, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    :goto_4
    iput v13, v14, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v13, v13, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v13, v13, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->mstartIndex:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v13, v13, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v13, v13, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->imageLoader:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget v14, v14, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    invoke-virtual {v13, v14}, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->setNoOfBitmapsToLoad(I)V

    const/4 v13, 0x0

    sput v13, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->noOfImagesDecoded:I

    const/4 v13, 0x1

    sput-boolean v13, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->mIsLoading:Z

    const/4 v5, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v13, v13, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v5, v13, :cond_e

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v13, v13, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/Uri;

    invoke-static {v14, v13}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    :cond_7
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_8
    sget v13, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->THUMB_VIEW_TOTAL_NUM:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getImageCount()I
    invoke-static {v15}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$1400(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)I

    move-result v15

    sub-int/2addr v13, v15

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    goto :goto_4

    :cond_9
    const-string v13, "/"

    invoke-virtual {v4, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x2

    aget-object v13, v12, v13

    const-string v14, "Private"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    const/4 v6, 0x1

    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->inputFiles:Ljava/util/ArrayList;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_7

    const-string v13, "\\."

    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v13, v10

    add-int/lit8 v13, v13, -0x1

    aget-object v13, v10, v13

    const-string v14, "gif"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d

    new-instance v1, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;

    invoke-direct {v1, v11}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getNumOfFrame()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getImageCount()I
    invoke-static {v13}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$1400(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)I

    move-result v13

    add-int/2addr v13, v9

    sget v14, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->THUMB_VIEW_TOTAL_NUM:I

    if-ge v13, v14, :cond_b

    :goto_7
    const/4 v8, 0x0

    :goto_8
    if-ge v8, v9, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->checkImagesCount()Z
    invoke-static {v13}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$3400(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Z

    move-result v13

    if-eqz v13, :cond_7

    if-nez v8, :cond_c

    new-instance v7, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v13, v13, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/Uri;

    invoke-direct {v7, v13, v8}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;-><init>(Landroid/net/Uri;I)V

    iput-boolean v6, v7, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->isPrivateFile:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v13, v13, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    const/4 v14, 0x1

    invoke-virtual {v13, v7, v14}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->add(Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;Z)V

    :goto_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_b
    sget v13, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->THUMB_VIEW_TOTAL_NUM:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getImageCount()I
    invoke-static {v14}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$1400(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)I

    move-result v14

    sub-int/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v9

    goto :goto_7

    :cond_c
    new-instance v7, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v13, v13, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/Uri;

    invoke-direct {v7, v13, v8}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;-><init>(Landroid/net/Uri;I)V

    iput-boolean v6, v7, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->isPrivateFile:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v13, v13, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    const/4 v14, 0x0

    invoke-virtual {v13, v7, v14}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->add(Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;Z)V

    goto :goto_9

    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->checkImagesCount()Z
    invoke-static {v13}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$3400(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Z

    move-result v13

    if-eqz v13, :cond_7

    new-instance v7, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v13, v13, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriList:Ljava/util/ArrayList;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/Uri;

    invoke-direct {v7, v13}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;-><init>(Landroid/net/Uri;)V

    iput-boolean v6, v7, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->isPrivateFile:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v13, v13, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    const/4 v14, 0x1

    invoke-virtual {v13, v7, v14}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->add(Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;Z)V

    goto/16 :goto_6

    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v13, v13, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->shutDownExecutor()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateDoneButton()V

    const/4 v13, 0x0

    goto/16 :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget v1, v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->uriSize:I

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->mstartIndex:I

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->thumbnailViewUpdater(II)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$3500(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;II)V

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    const/4 v1, 0x0

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->setSaveLayoutEnabled(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$2800(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Z)V

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$addImageAsyncTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    return-void
.end method
