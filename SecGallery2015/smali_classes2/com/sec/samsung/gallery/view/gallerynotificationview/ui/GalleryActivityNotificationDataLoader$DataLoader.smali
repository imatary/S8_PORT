.class Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader$DataLoader;
.super Landroid/os/AsyncTask;
.source "GalleryActivityNotificationDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader$DataLoader;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader$DataLoader;->mContextRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private reloadActivities()Ljava/lang/Boolean;
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader$DataLoader;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-nez v1, :cond_0

    const-string/jumbo v3, "NotificationActLoader"

    const-string/jumbo v4, "Context is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->ACTIVITY_VIEW_PROJECTION:[Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryActivityInterface;->getActivityCursor(Landroid/content/Context;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_1

    const-string/jumbo v3, "NotificationActLoader"

    const-string/jumbo v4, "no activity"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader$DataLoader;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader;

    # getter for: Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader;->mDataLoaderListener:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader$DataLoaderListener;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader;->access$000(Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader;)Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader$DataLoaderListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader$DataLoaderListener;->onDataLoadComplete()V

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;

    invoke-direct {v3, v1, v2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-static {v2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v3

    :cond_2
    invoke-static {v2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader$DataLoader;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader;

    # invokes: Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader;->updateContents(Ljava/util/ArrayList;)V
    invoke-static {v3, v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader;->access$100(Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader;Ljava/util/ArrayList;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader$DataLoader;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader;

    # getter for: Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader;->mDataLoaderListener:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader$DataLoaderListener;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader;->access$000(Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader;)Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader$DataLoaderListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader$DataLoaderListener;->onDataLoadComplete()V

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader$DataLoader;->reloadActivities()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryActivityNotificationDataLoader$DataLoader;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
