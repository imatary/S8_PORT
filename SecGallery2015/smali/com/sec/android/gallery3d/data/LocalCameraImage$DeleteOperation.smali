.class Lcom/sec/android/gallery3d/data/LocalCameraImage$DeleteOperation;
.super Ljava/lang/Object;
.source "LocalCameraImage.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/dboperation/IOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/LocalCameraImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteOperation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/data/LocalCameraImage;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/data/LocalCameraImage;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$DeleteOperation;->this$0:Lcom/sec/android/gallery3d/data/LocalCameraImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/data/LocalCameraImage;Lcom/sec/android/gallery3d/data/LocalCameraImage$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/LocalCameraImage$DeleteOperation;-><init>(Lcom/sec/android/gallery3d/data/LocalCameraImage;)V

    return-void
.end method


# virtual methods
.method public apply()Z
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$DeleteOperation;->this$0:Lcom/sec/android/gallery3d/data/LocalCameraImage;

    invoke-static {v1, v3}, Lcom/sec/android/gallery3d/data/LocalCameraImage;->access$502(Lcom/sec/android/gallery3d/data/LocalCameraImage;Z)Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$DeleteOperation;->this$0:Lcom/sec/android/gallery3d/data/LocalCameraImage;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/LocalCameraImage;->getFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, ".jpg"

    const-string/jumbo v2, ".dng"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/util/LibFileUtil;->deleteFile(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/sec/android/gallery3d/data/MediaObject;->setVersion()V

    return v3
.end method
