.class Lcom/sec/samsung/gallery/view/detailview/spherical/Gallery360DecodeJob;
.super Ljava/lang/Object;
.source "Gallery360DecodeJob.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mFilePath:Ljava/lang/String;

.field private final mTargetImageSize:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Gallery360DecodeJob;->mFilePath:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Gallery360DecodeJob;->mFilePath:Ljava/lang/String;

    iput p2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Gallery360DecodeJob;->mTargetImageSize:I

    return-void
.end method


# virtual methods
.method public run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 4

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Gallery360DecodeJob;->mFilePath:Ljava/lang/String;

    iget v2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Gallery360DecodeJob;->mTargetImageSize:I

    const/4 v3, -0x1

    invoke-static {p1, v1, v0, v2, v3}, Lcom/sec/android/gallery3d/data/DecodeUtils;->decodeThumbnail(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/spherical/Gallery360DecodeJob;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
