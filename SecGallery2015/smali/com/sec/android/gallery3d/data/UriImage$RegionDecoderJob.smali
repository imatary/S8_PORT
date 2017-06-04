.class Lcom/sec/android/gallery3d/data/UriImage$RegionDecoderJob;
.super Ljava/lang/Object;
.source "UriImage.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/UriImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegionDecoderJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/data/UriImage;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/data/UriImage;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/UriImage$RegionDecoderJob;->this$0:Lcom/sec/android/gallery3d/data/UriImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/data/UriImage;Lcom/sec/android/gallery3d/data/UriImage$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/UriImage$RegionDecoderJob;-><init>(Lcom/sec/android/gallery3d/data/UriImage;)V

    return-void
.end method


# virtual methods
.method public run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UriImage$RegionDecoderJob;->this$0:Lcom/sec/android/gallery3d/data/UriImage;

    # invokes: Lcom/sec/android/gallery3d/data/UriImage;->prepareInputFile(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Z
    invoke-static {v4, p1}, Lcom/sec/android/gallery3d/data/UriImage;->access$100(Lcom/sec/android/gallery3d/data/UriImage;Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UriImage$RegionDecoderJob;->this$0:Lcom/sec/android/gallery3d/data/UriImage;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/UriImage;->isDrm()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UriImage$RegionDecoderJob;->this$0:Lcom/sec/android/gallery3d/data/UriImage;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/UriImage;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/sec/android/gallery3d/data/DecodeUtils;->createBitmapRegionDecoder(Ljava/lang/String;Z)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UriImage$RegionDecoderJob;->this$0:Lcom/sec/android/gallery3d/data/UriImage;

    # getter for: Lcom/sec/android/gallery3d/data/UriImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;
    invoke-static {v4}, Lcom/sec/android/gallery3d/data/UriImage;->access$200(Lcom/sec/android/gallery3d/data/UriImage;)Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDrmUtil()Lcom/sec/android/gallery3d/util/ImageDRMUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->getBrokenImageRegionDecoder()Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UriImage$RegionDecoderJob;->this$0:Lcom/sec/android/gallery3d/data/UriImage;

    # getter for: Lcom/sec/android/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;
    invoke-static {v4}, Lcom/sec/android/gallery3d/data/UriImage;->access$300(Lcom/sec/android/gallery3d/data/UriImage;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    if-nez v4, :cond_4

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UriImage$RegionDecoderJob;->this$0:Lcom/sec/android/gallery3d/data/UriImage;

    # getter for: Lcom/sec/android/gallery3d/data/UriImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;
    invoke-static {v4}, Lcom/sec/android/gallery3d/data/UriImage;->access$200(Lcom/sec/android/gallery3d/data/UriImage;)Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UriImage$RegionDecoderJob;->this$0:Lcom/sec/android/gallery3d/data/UriImage;

    # getter for: Lcom/sec/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/sec/android/gallery3d/data/UriImage;->access$400(Lcom/sec/android/gallery3d/data/UriImage;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/data/DecodeUtils;->createBitmapRegionDecoder(Ljava/io/InputStream;Z)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    invoke-static {v3}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    :cond_3
    :goto_1
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UriImage$RegionDecoderJob;->this$0:Lcom/sec/android/gallery3d/data/UriImage;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->getWidth()I

    move-result v5

    # setter for: Lcom/sec/android/gallery3d/data/UriImage;->mWidth:I
    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/data/UriImage;->access$502(Lcom/sec/android/gallery3d/data/UriImage;I)I

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UriImage$RegionDecoderJob;->this$0:Lcom/sec/android/gallery3d/data/UriImage;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->getHeight()I

    move-result v5

    # setter for: Lcom/sec/android/gallery3d/data/UriImage;->mHeight:I
    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/data/UriImage;->access$602(Lcom/sec/android/gallery3d/data/UriImage;I)I

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    const-string/jumbo v4, "UriImage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "FileNotFoundException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-static {v3}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v4

    :cond_4
    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UriImage$RegionDecoderJob;->this$0:Lcom/sec/android/gallery3d/data/UriImage;

    # getter for: Lcom/sec/android/gallery3d/data/UriImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;
    invoke-static {v4}, Lcom/sec/android/gallery3d/data/UriImage;->access$200(Lcom/sec/android/gallery3d/data/UriImage;)Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/UriImage$RegionDecoderJob;->this$0:Lcom/sec/android/gallery3d/data/UriImage;

    # getter for: Lcom/sec/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;
    invoke-static {v5}, Lcom/sec/android/gallery3d/data/UriImage;->access$400(Lcom/sec/android/gallery3d/data/UriImage;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/UriImage$RegionDecoderJob;->this$0:Lcom/sec/android/gallery3d/data/UriImage;

    # getter for: Lcom/sec/android/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;
    invoke-static {v6}, Lcom/sec/android/gallery3d/data/UriImage;->access$300(Lcom/sec/android/gallery3d/data/UriImage;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-static {v4, v5, v6, v7}, Lcom/sec/android/gallery3d/data/DecodeUtils;->createBitmapRegionDecoder(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/io/FileDescriptor;Z)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    move-result-object v1

    goto :goto_1
.end method

.method public bridge synthetic run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/data/UriImage$RegionDecoderJob;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    move-result-object v0

    return-object v0
.end method
