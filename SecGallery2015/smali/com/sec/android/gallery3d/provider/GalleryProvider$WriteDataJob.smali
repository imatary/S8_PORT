.class Lcom/sec/android/gallery3d/provider/GalleryProvider$WriteDataJob;
.super Ljava/lang/Object;
.source "GalleryProvider.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/provider/GalleryProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WriteDataJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFunc:Lcom/sec/android/gallery3d/provider/GalleryProvider$GalleryProviderPipeDataWriter;

.field private final mPipe:[Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/provider/GalleryProvider$GalleryProviderPipeDataWriter;[Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/provider/GalleryProvider$WriteDataJob;->mFunc:Lcom/sec/android/gallery3d/provider/GalleryProvider$GalleryProviderPipeDataWriter;

    iput-object p2, p0, Lcom/sec/android/gallery3d/provider/GalleryProvider$WriteDataJob;->mPipe:[Landroid/os/ParcelFileDescriptor;

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/provider/GalleryProvider$WriteDataJob;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 4

    const/4 v3, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/provider/GalleryProvider$WriteDataJob;->mFunc:Lcom/sec/android/gallery3d/provider/GalleryProvider$GalleryProviderPipeDataWriter;

    iget-object v1, p0, Lcom/sec/android/gallery3d/provider/GalleryProvider$WriteDataJob;->mPipe:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/provider/GalleryProvider$GalleryProviderPipeDataWriter;->writeDataToPipe(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/provider/GalleryProvider$WriteDataJob;->mPipe:[Landroid/os/ParcelFileDescriptor;

    aget-object v1, v1, v3

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/provider/GalleryProvider$WriteDataJob;->mPipe:[Landroid/os/ParcelFileDescriptor;

    aget-object v1, v1, v3

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    throw v0
.end method
