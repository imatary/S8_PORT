.class Lcom/sec/samsung/gallery/controller/CreateTagImageCmd$ImprintTagTask;
.super Landroid/os/AsyncTask;
.source "CreateTagImageCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImprintTagTask"
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
.field mProgressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd$ImprintTagTask;->this$0:Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd$ImprintTagTask;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;Lcom/sec/samsung/gallery/controller/CreateTagImageCmd$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd$ImprintTagTask;-><init>(Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;)V

    return-void
.end method

.method private showShareDialog()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd$ImprintTagTask;->this$0:Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->access$100(Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd$ImprintTagTask;->this$0:Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->access$100(Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "SHOW_SHARE_DIALOG"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd$ImprintTagTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd$ImprintTagTask;->this$0:Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd$ImprintTagTask;->this$0:Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;
    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->access$200(Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v3

    # invokes: Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->getRotatedImage(Lcom/sec/android/gallery3d/data/MediaItem;)Landroid/graphics/Bitmap;
    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->access$300(Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;Lcom/sec/android/gallery3d/data/MediaItem;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd$ImprintTagTask;->this$0:Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;

    # invokes: Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->setImprintIconArray()V
    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->access$400(Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd$ImprintTagTask;->this$0:Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;

    # invokes: Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->drawTags(Landroid/graphics/Bitmap;)V
    invoke-static {v2, v0}, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->access$500(Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd$ImprintTagTask;->this$0:Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;

    # invokes: Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->getOutputFilePath()Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->access$600(Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd$ImprintTagTask;->this$0:Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;

    # invokes: Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->saveFile(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    invoke-static {v2, v1, v0}, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->access$700(Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd$ImprintTagTask;->this$0:Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->access$800(Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd$ImprintTagTask;->this$0:Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;
    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->access$200(Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaObject;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd$ImprintTagTask;->this$0:Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;

    # invokes: Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->addSelectionMananger(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->access$900(Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;Ljava/lang/String;)V

    const/4 v2, 0x0

    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd$ImprintTagTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd$ImprintTagTask;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd$ImprintTagTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd$ImprintTagTask;->showShareDialog()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd$ImprintTagTask;->this$0:Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->access$100(Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0340

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd$ImprintTagTask;->this$0:Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;->access$100(Lcom/sec/samsung/gallery/controller/CreateTagImageCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd$ImprintTagTask;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd$ImprintTagTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd$ImprintTagTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/CreateTagImageCmd$ImprintTagTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
