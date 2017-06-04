.class public Lcom/sec/android/gallery3d/data/MtpSource;
.super Lcom/sec/android/gallery3d/data/MediaSource;
.source "MtpSource.java"


# static fields
.field private static final MTP_DEVICE:I = 0x1

.field private static final MTP_DEVICE_SET:I = 0x0

.field private static final MTP_ITEM:I = 0x2

.field public static final PATH_PREFIX:Ljava/lang/String; = "mtp"

.field private static final TAG:Ljava/lang/String; = "MtpSource"


# instance fields
.field private final mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

.field private final mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

.field private final mMtpContext:Lcom/sec/android/gallery3d/data/MtpContext;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V
    .locals 3

    const-string/jumbo v0, "mtp"

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/data/MediaSource;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/sec/android/gallery3d/app/GalleryApp;

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/MtpSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    new-instance v0, Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/data/PathMatcher;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/MtpSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/mtp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/mtp/*"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/mtp/item/*/*"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    new-instance v0, Lcom/sec/android/gallery3d/data/MtpContext;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/MtpSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/data/MtpContext;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/MtpSource;->mMtpContext:Lcom/sec/android/gallery3d/data/MtpContext;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpSource;->mMtpContext:Lcom/sec/android/gallery3d/data/MtpContext;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MtpContext;->getMtpClient()Lcom/sec/android/gallery3d/data/MtpClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MtpClient;->open()V

    return-void
.end method


# virtual methods
.method public createMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;
    .locals 6

    const/4 v2, 0x0

    const-string/jumbo v0, "MtpSource"

    const-string/jumbo v1, "createMediaObject Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/data/PathMatcher;->match(Lcom/sec/android/gallery3d/data/Path;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bad path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string/jumbo v0, "MtpSource"

    const-string/jumbo v1, "MTP_DEVICE_SET"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/gallery3d/data/MtpDeviceSet;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/MtpSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/MtpSource;->mMtpContext:Lcom/sec/android/gallery3d/data/MtpContext;

    invoke-direct {v0, p1, v1, v2}, Lcom/sec/android/gallery3d/data/MtpDeviceSet;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/data/MtpContext;)V

    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v3

    const-string/jumbo v0, "MtpSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MTP_DEVICE device id["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/gallery3d/data/MtpDevice;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/MtpSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/MtpSource;->mMtpContext:Lcom/sec/android/gallery3d/data/MtpContext;

    invoke-direct {v0, p1, v1, v3, v2}, Lcom/sec/android/gallery3d/data/MtpDevice;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;ILcom/sec/android/gallery3d/data/MtpContext;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v3

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v4

    const-string/jumbo v0, "MtpSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MTP_ITEM device id["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] object ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/gallery3d/data/MtpImage;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/MtpSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/MtpSource;->mMtpContext:Lcom/sec/android/gallery3d/data/MtpContext;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/data/MtpImage;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;IILcom/sec/android/gallery3d/data/MtpContext;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpSource;->mMtpContext:Lcom/sec/android/gallery3d/data/MtpContext;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MtpContext;->pause()V

    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpSource;->mMtpContext:Lcom/sec/android/gallery3d/data/MtpContext;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MtpContext;->resume()V

    return-void
.end method
