.class Lcom/sec/samsung/gallery/controller/PostGalleryCmd$LowMemoryCheckAsyncTask;
.super Landroid/os/AsyncTask;
.source "PostGalleryCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/PostGalleryCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LowMemoryCheckAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/PostGalleryCmd;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/controller/PostGalleryCmd;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$LowMemoryCheckAsyncTask;->this$0:Lcom/sec/samsung/gallery/controller/PostGalleryCmd;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string/jumbo v0, "LowMemoryCheckAsyncTask"

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$LowMemoryCheckAsyncTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/controller/PostGalleryCmd;Lcom/sec/samsung/gallery/controller/PostGalleryCmd$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$LowMemoryCheckAsyncTask;-><init>(Lcom/sec/samsung/gallery/controller/PostGalleryCmd;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v3, "LowMemoryCheckAsyncTask"

    const-string/jumbo v4, "doInBackground START"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$LowMemoryCheckAsyncTask;->this$0:Lcom/sec/samsung/gallery/controller/PostGalleryCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->access$200(Lcom/sec/samsung/gallery/controller/PostGalleryCmd;)Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$LowMemoryCheckAsyncTask;->this$0:Lcom/sec/samsung/gallery/controller/PostGalleryCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->access$200(Lcom/sec/samsung/gallery/controller/PostGalleryCmd;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryActivity;

    # getter for: Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->FeatureLowStorageMode:Z
    invoke-static {}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->access$900()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->checkLowStorageMode()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->checkLowStorage(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$LowMemoryCheckAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 7

    const/4 v2, 0x0

    const-string/jumbo v3, "LowMemoryCheckAsyncTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPostExecute START - result is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$LowMemoryCheckAsyncTask;->this$0:Lcom/sec/samsung/gallery/controller/PostGalleryCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->access$200(Lcom/sec/samsung/gallery/controller/PostGalleryCmd;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryActivity;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$LowMemoryCheckAsyncTask;->this$0:Lcom/sec/samsung/gallery/controller/PostGalleryCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mCheckStorageDialog:Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;
    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->access$1000(Lcom/sec/samsung/gallery/controller/PostGalleryCmd;)Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$LowMemoryCheckAsyncTask;->this$0:Lcom/sec/samsung/gallery/controller/PostGalleryCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mCheckStorageDialog:Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;
    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->access$1000(Lcom/sec/samsung/gallery/controller/PostGalleryCmd;)Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->dismissDialog()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$LowMemoryCheckAsyncTask;->this$0:Lcom/sec/samsung/gallery/controller/PostGalleryCmd;

    const/4 v4, 0x0

    # setter for: Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mCheckStorageDialog:Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;
    invoke-static {v3, v4}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->access$1002(Lcom/sec/samsung/gallery/controller/PostGalleryCmd;Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;)Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getGalleryCoverMode()Lcom/sec/android/gallery3d/app/GalleryCoverMode;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getGalleryCoverMode()Lcom/sec/android/gallery3d/app/GalleryCoverMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->isCoverMode()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v1, 0x1

    :goto_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$LowMemoryCheckAsyncTask;->this$0:Lcom/sec/samsung/gallery/controller/PostGalleryCmd;

    new-instance v4, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-direct {v4, v5, v6, v1}, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;-><init>(Landroid/content/Context;Landroid/content/Intent;Z)V

    # setter for: Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mCheckStorageDialog:Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;
    invoke-static {v3, v4}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->access$1002(Lcom/sec/samsung/gallery/controller/PostGalleryCmd;Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;)Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$LowMemoryCheckAsyncTask;->this$0:Lcom/sec/samsung/gallery/controller/PostGalleryCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mCheckStorageDialog:Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;
    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->access$1000(Lcom/sec/samsung/gallery/controller/PostGalleryCmd;)Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->showDialog()V

    :cond_2
    # getter for: Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->FeatureLowStorageMode:Z
    invoke-static {}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->access$900()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$LowMemoryCheckAsyncTask;->this$0:Lcom/sec/samsung/gallery/controller/PostGalleryCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->access$200(Lcom/sec/samsung/gallery/controller/PostGalleryCmd;)Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "is_low_storage"

    invoke-static {v3, v4, v2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$LowMemoryCheckAsyncTask;->this$0:Lcom/sec/samsung/gallery/controller/PostGalleryCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;
    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->access$800(Lcom/sec/samsung/gallery/controller/PostGalleryCmd;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    const-string/jumbo v3, "UPDATE_MENU"

    invoke-virtual {v2, v3}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "is_low_storage"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$LowMemoryCheckAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
