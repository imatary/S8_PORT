.class Lcom/sec/samsung/gallery/controller/SaveAlbumIdCmd$SaveAlbumIdTask;
.super Landroid/os/AsyncTask;
.source "SaveAlbumIdCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/SaveAlbumIdCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveAlbumIdTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/SaveAlbumIdCmd;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/controller/SaveAlbumIdCmd;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/SaveAlbumIdCmd$SaveAlbumIdTask;->this$0:Lcom/sec/samsung/gallery/controller/SaveAlbumIdCmd;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/controller/SaveAlbumIdCmd;Lcom/sec/samsung/gallery/controller/SaveAlbumIdCmd$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/SaveAlbumIdCmd$SaveAlbumIdTask;-><init>(Lcom/sec/samsung/gallery/controller/SaveAlbumIdCmd;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/controller/SaveAlbumIdCmd$SaveAlbumIdTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string/jumbo v2, "SaveAlbumIdTask"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SaveAlbumIdCmd$SaveAlbumIdTask;->this$0:Lcom/sec/samsung/gallery/controller/SaveAlbumIdCmd;

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/SaveAlbumIdCmd;->access$100(Lcom/sec/samsung/gallery/controller/SaveAlbumIdCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v1}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getInstance(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SaveAlbumIdCmd$SaveAlbumIdTask;->this$0:Lcom/sec/samsung/gallery/controller/SaveAlbumIdCmd;

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/SaveAlbumIdCmd;->access$200(Lcom/sec/samsung/gallery/controller/SaveAlbumIdCmd;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->addFakeAlbumDisplayInfo(Ljava/lang/String;)Z

    const/4 v1, 0x0

    return-object v1
.end method
