.class Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$23;
.super Ljava/lang/Object;
.source "MotionPhotoActivity.java"

# interfaces
.implements Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$OnAsyncTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

.field final synthetic val$data:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$23;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$23;->val$data:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()V
    .locals 6

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$23;->val$data:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v5, "stickersInfo"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const-string v5, "stickerFilesInfo"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v5, "previewRect"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    monitor-enter p0

    if-eqz v4, :cond_0

    :try_start_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$23;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateAllBitmapsWithStickers(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/graphics/RectF;)V
    invoke-static {v5, v4, v3, v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$3100(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/graphics/RectF;)V

    :goto_0
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_0
    :try_start_2
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$23;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->readOriginalBmpFromFile()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5
.end method

.method public onPostExecute()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$23;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$23;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$23;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget v1, v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentFrameSentToDecoration:I

    :goto_1
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$23;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$23;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$200(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-result-object v3

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$23;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->setThumb(ILandroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$23;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2

    const/4 v1, -0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$23;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iput-object v5, v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mFileNames:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$23;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-boolean v2, v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isDecorationAdded:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$23;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iput-boolean v4, v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isDecorationAdded:Z

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$23;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->agifChanged()V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$23;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->makeUndoVisible(Z)V
    invoke-static {v2, v4}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$3200(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Z)V

    :cond_4
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$23;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mLoadingBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$23;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mLoadingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$23;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mLoadingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$23;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iput-object v5, v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mLoadingBitmap:Landroid/graphics/Bitmap;

    :cond_5
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$23;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$23;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget v3, v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentFrameSentToDecoration:I

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->playPauseAgif(I)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$23;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mProgressDialog:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$1900(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$23;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mProgressDialog:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$1900(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$23;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mProgressDialog:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$1900(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    :cond_6
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$23;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->setPlaybuttonVisible()V
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$2000(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$23;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    const/4 v3, 0x0

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mIsDecorationLaunched:Z
    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$2102(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Z)Z

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$23;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$23;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$23;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->currentMotionOrientation:I
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$2200(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$23;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$23;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->changeOrientation()V
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$2300(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$23;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$200(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->onOrientationChanged()V

    goto/16 :goto_0
.end method

.method public onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$23;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    const/4 v1, 0x0

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->makeProgressDialog(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$1700(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Z)V

    return-void
.end method
