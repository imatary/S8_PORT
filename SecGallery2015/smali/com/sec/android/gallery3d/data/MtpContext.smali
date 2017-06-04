.class public Lcom/sec/android/gallery3d/data/MtpContext;
.super Ljava/lang/Object;
.source "MtpContext.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/MtpClient$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/data/MtpContext$ScannerClient;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MtpContext"


# instance fields
.field private final mClient:Lcom/sec/android/gallery3d/data/MtpClient;

.field private final mContext:Landroid/content/Context;

.field private final mScannerClient:Lcom/sec/android/gallery3d/data/MtpContext$ScannerClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/MtpContext;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpContext;->mContext:Landroid/content/Context;

    const v1, 0x7f0c015d

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V

    new-instance v0, Lcom/sec/android/gallery3d/data/MtpContext$ScannerClient;

    invoke-direct {v0, p1}, Lcom/sec/android/gallery3d/data/MtpContext$ScannerClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/MtpContext;->mScannerClient:Lcom/sec/android/gallery3d/data/MtpContext$ScannerClient;

    new-instance v0, Lcom/sec/android/gallery3d/data/MtpClient;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/MtpContext;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/data/MtpClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/MtpContext;->mClient:Lcom/sec/android/gallery3d/data/MtpClient;

    return-void
.end method


# virtual methods
.method public cancelImport(Landroid/mtp/MtpObjectInfo;)V
    .locals 5

    const-string/jumbo v3, "MtpContext"

    const-string/jumbo v4, "import cancelled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/MtpContext;->notifyDirty()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "Imported"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Landroid/mtp/MtpObjectInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "MtpContext"

    const-string/jumbo v4, "in cancel process broken import image delete fail"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v3, "MtpContext"

    const-string/jumbo v4, "import end"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public deviceAdded()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/MtpContext;->notifyDirty()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpContext;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0070

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    return-void
.end method

.method public deviceRemoved()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/MtpContext;->notifyDirty()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpContext;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0071

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    return-void
.end method

.method public getMtpClient()Lcom/sec/android/gallery3d/data/MtpClient;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpContext;->mClient:Lcom/sec/android/gallery3d/data/MtpClient;

    return-object v0
.end method

.method public importFile(Ljava/lang/String;Landroid/mtp/MtpObjectInfo;Ljava/io/File;)Z
    .locals 5

    invoke-virtual {p2}, Landroid/mtp/MtpObjectInfo;->getCompressedSize()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->hasSpaceForSize(J)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/mtp/MtpObjectInfo;->getObjectHandle()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/MtpContext;->mClient:Lcom/sec/android/gallery3d/data/MtpClient;

    invoke-virtual {v2, p1, v1, v0}, Lcom/sec/android/gallery3d/data/MtpClient;->importFile(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/MtpContext;->mScannerClient:Lcom/sec/android/gallery3d/data/MtpContext$ScannerClient;

    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/data/MtpContext$ScannerClient;->scanPath(Ljava/lang/String;)V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "MtpContext"

    const-string/jumbo v3, "broken import image delete failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "MtpContext"

    const-string/jumbo v3, "import failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "MtpContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No space to import "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/mtp/MtpObjectInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " whose size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/mtp/MtpObjectInfo;->getCompressedSize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public notifyDirty()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mtp://mtp"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpContext;->mClient:Lcom/sec/android/gallery3d/data/MtpClient;

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/data/MtpClient;->removeListener(Lcom/sec/android/gallery3d/data/MtpClient$Listener;)V

    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpContext;->mClient:Lcom/sec/android/gallery3d/data/MtpClient;

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/data/MtpClient;->addListener(Lcom/sec/android/gallery3d/data/MtpClient$Listener;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/MtpContext;->notifyDirty()V

    return-void
.end method
