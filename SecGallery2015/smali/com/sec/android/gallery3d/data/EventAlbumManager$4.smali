.class Lcom/sec/android/gallery3d/data/EventAlbumManager$4;
.super Landroid/os/FileObserver;
.source "EventAlbumManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/data/EventAlbumManager;-><init>(Lcom/sec/android/gallery3d/app/GalleryApp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/data/EventAlbumManager;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/data/EventAlbumManager;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$4;->this$0:Lcom/sec/android/gallery3d/data/EventAlbumManager;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 2

    const/16 v0, 0x200

    if-eq p1, v0, :cond_0

    const/16 v0, 0x40

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$4;->this$0:Lcom/sec/android/gallery3d/data/EventAlbumManager;

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->access$300(Lcom/sec/android/gallery3d/data/EventAlbumManager;)Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    move-result-object v0

    const-string/jumbo v1, "suggest_event_info"

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->updateDataBase(Ljava/lang/String;)Z

    :cond_1
    return-void
.end method
