.class Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd$RotateImage;
.super Ljava/lang/Object;
.source "HandleImageRotationCmd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RotateImage"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd$RotateImage;->this$0:Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd$RotateImage;-><init>(Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd$RotateImage;->this$0:Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;

    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;->access$100(Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd$RotateImage;->this$0:Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;

    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;->access$100(Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v4

    const-wide/16 v6, 0x10

    invoke-virtual {v4, v6, v7}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "SoundShot_000"

    invoke-static {v0, v4}, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v0}, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->deleteAllData(Ljava/io/File;)Z

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd$RotateImage;->this$0:Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;

    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;->access$600(Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;)Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd$RotateImage;->this$0:Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;

    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;->access$100(Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd$RotateImage;->this$0:Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;

    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;->access$500(Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/gallery3d/data/DataManager;->rotate(Lcom/sec/android/gallery3d/data/Path;I)V

    const-string/jumbo v4, "SoundShot_000"

    const/16 v5, 0x800

    sget v6, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->OVERWRITE_IF_EXISTS:I

    invoke-static {v0, v4, v3, v5, v6}, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->addData(Ljava/io/File;Ljava/lang/String;[BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;->access$700()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string/jumbo v4, "DetailView"

    invoke-direct {v2, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "Rotate"

    const-string/jumbo v5, "Available"

    const-string/jumbo v6, "yes"

    invoke-virtual {v2, v4, v5, v6}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string/jumbo v5, "Direction"

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd$RotateImage;->this$0:Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;

    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;->access$500(Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;)I

    move-result v4

    const/16 v6, 0x5a

    if-ne v4, v6, :cond_2

    const-string/jumbo v4, "right"

    :goto_1
    invoke-virtual {v2, v5, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd$RotateImage;->this$0:Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;

    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;->access$600(Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;)Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "Rotate"

    sget-object v6, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v4, v5, v6, v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :cond_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd$RotateImage;->this$0:Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;

    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;->access$600(Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;)Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd$RotateImage;->this$0:Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;

    invoke-static {v7}, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;->access$100(Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->requestScanFile(Landroid/content/Context;[Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd$RotateImage;->this$0:Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;

    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;->access$100(Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd$RotateImage;->this$0:Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;

    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;->access$500(Lcom/sec/samsung/gallery/controller/HandleImageRotationCmd;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/data/MediaItem;->rotate(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "left"

    goto :goto_1
.end method
