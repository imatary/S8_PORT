.class Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader;
.super Ljava/lang/Object;
.source "GalleryActivityNotificationDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader$DataLoader;,
        Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader$DataLoaderListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NotificationActLoader"


# instance fields
.field private mActivityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDataLoader:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader$DataLoader;

.field private final mDataLoaderListener:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader$DataLoaderListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader$DataLoaderListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader;->mDataLoaderListener:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader$DataLoaderListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader;->mActivityList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader;)Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader$DataLoaderListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader;->mDataLoaderListener:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader$DataLoaderListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader;->updateContents(Ljava/util/ArrayList;)V

    return-void
.end method

.method private declared-synchronized updateContents(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader;->mActivityList:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public clearData()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader;->mActivityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader;->mActivityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getData(I)Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;
    .locals 3

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader;->mActivityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const-string/jumbo v0, "NotificationActLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Wrong position, pos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader;->mActivityList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader;->mActivityList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;

    goto :goto_0
.end method

.method public getType(I)I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader;->mActivityList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->getActivityType()I

    move-result v0

    return v0
.end method

.method load()V
    .locals 2

    const-string/jumbo v0, "NotificationActLoader"

    const-string/jumbo v1, "load start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader;->mDataLoader:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader$DataLoader;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NotificationActLoader"

    const-string/jumbo v1, "cancel data loading"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader;->mDataLoader:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader$DataLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader$DataLoader;->cancel(Z)Z

    :cond_0
    new-instance v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader$DataLoader;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader$DataLoader;-><init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader;->mDataLoader:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader$DataLoader;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader;->mDataLoader:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader$DataLoader;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader$DataLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-string/jumbo v0, "NotificationActLoader"

    const-string/jumbo v1, "load end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
