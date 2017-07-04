.class Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;
.super Landroid/os/AsyncTask;
.source "ConvertMultiFormatToMP4Cmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConversionAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConvertInfo;",
        ">;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private infoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConvertInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDialog:Landroid/app/ProgressDialog;

.field private final mHandler:Landroid/os/Handler;

.field private mIndex:I

.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;->this$0:Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;-><init>(Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;->mIndex:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;->infoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private convert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->convertImageToMP4(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private hideProgressDialog()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ConvrtMultiFrmtToMP4Cmd"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showProgressDialog()V
    .locals 3

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;->this$0:Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->access$1000(Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;->mDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;->mDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;->this$0:Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->access$1000(Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0340

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;->doInBackground([Ljava/util/ArrayList;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/util/ArrayList;)Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConvertInfo;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    const/4 v1, 0x0

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;->infoList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConvertInfo;

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConvertInfo;->access$300(Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConvertInfo;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConvertInfo;

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConvertInfo;->access$400(Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConvertInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;->convert(Ljava/lang/String;Ljava/lang/String;)V

    iput v0, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;->mIndex:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;->this$0:Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;->infoList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;->mIndex:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConvertInfo;

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConvertInfo;->access$400(Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConvertInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->access$500(Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask$1;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask$1;-><init>(Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;->this$0:Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->access$1000(Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->scanExternalStorage(Landroid/content/Context;)V

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;->this$0:Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConvertInfo;

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConvertInfo;->access$400(Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConvertInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->access$1100(Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;Ljava/lang/String;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;->this$0:Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->access$1200(Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;->this$0:Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->access$1200(Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;->this$0:Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->access$1000(Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v3

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;->this$0:Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->access$1200(Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaObject;

    invoke-virtual {v3, v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaObject;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;->hideProgressDialog()V

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsMassModel:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;->this$0:Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;

    const/16 v3, 0x320

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->access$1302(Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;I)I

    :cond_1
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;->this$0:Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;

    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->access$1000(Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;)Landroid/content/Context;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;->this$0:Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;

    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->access$1400(Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask$2;

    invoke-direct {v3, p0, v1}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask$2;-><init>(Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;[Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;->this$0:Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;

    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->access$1300(Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConversionAsyncTask;->showProgressDialog()V

    return-void
.end method
