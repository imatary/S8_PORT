.class Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$14;
.super Ljava/lang/Object;
.source "StartGalleryViewCmd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->startShortCutAlbum()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$14;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$14;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$14;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$14;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    invoke-static {v4, v2}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$400(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;Lcom/sec/android/gallery3d/data/MediaSet;)I

    move-result v4

    if-lez v4, :cond_2

    const-string/jumbo v4, "StartGalleryViewCmd"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startShortCutAlbum path : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v4, v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;

    if-eqz v4, :cond_0

    const-string/jumbo v4, "KEY_MEDIA_SET_PATH"

    const-string/jumbo v5, "/scloud/all/"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v4, "KEY_MEDIA_ITEM_PATH"

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "KEY_MEDIA_SET_POSITION"

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "KEY_ITEM_POSITION"

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "KEY_IS_FROM_SHORTCUT"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$14;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v4

    const-class v5, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-virtual {v4, v5, v0}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$14;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->setResult(I)V

    const-string/jumbo v4, "StartGalleryViewCmd"

    const-string/jumbo v5, "startShortCutAlbum : Activity.RESULT_OK"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_0
    instance-of v4, v2, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    if-eqz v4, :cond_1

    const-string/jumbo v4, "KEY_MEDIA_SET_PATH"

    const-string/jumbo v5, "/cluster/{/local/all}/favorites"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "KEY_MEDIA_SET_PATH"

    const-string/jumbo v5, "/local/all/"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v4

    const-string/jumbo v5, "android.intent.category.LAUNCHER"

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$14;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$500(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$14;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.DELETE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7, v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->setResult(ILandroid/content/Intent;)V

    const-string/jumbo v4, "StartGalleryViewCmd"

    const-string/jumbo v5, "startShortCutAlbum : Activity.RESULT_CANCELED, Intent.ACTION_DELETE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$14;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->finish()V

    goto :goto_1
.end method
