.class Lcom/sec/samsung/gallery/controller/PostGalleryCmd$2;
.super Landroid/database/ContentObserver;
.source "PostGalleryCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/PostGalleryCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/PostGalleryCmd;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/PostGalleryCmd;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/PostGalleryCmd;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    const-string/jumbo v0, "PostGalleryCmd"

    const-string/jumbo v1, "mNearbyDevicesObserver : onChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/PostGalleryCmd;

    # invokes: Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->updateGroup()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->access$700(Lcom/sec/samsung/gallery/controller/PostGalleryCmd;)V

    return-void
.end method
