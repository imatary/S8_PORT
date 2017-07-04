.class Lcom/sec/android/gallery3d/app/CropImage$2;
.super Landroid/content/BroadcastReceiver;
.source "CropImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/app/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/app/CropImage;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/app/CropImage;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/CropImage$2;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static {p1}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->getSecretBoxPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/CropImage$2;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-static {v3}, Lcom/sec/android/gallery3d/app/CropImage;->access$200(Lcom/sec/android/gallery3d/app/CropImage;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretBoxPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/CropImage$2;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/CropImage;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/app/CropImage$2;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-static {v3}, Lcom/sec/android/gallery3d/app/CropImage;->access$200(Lcom/sec/android/gallery3d/app/CropImage;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/MediaSetUtils;->isSDCardPath(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/CropImage$2;->this$0:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/CropImage;->finish()V

    goto :goto_0
.end method
