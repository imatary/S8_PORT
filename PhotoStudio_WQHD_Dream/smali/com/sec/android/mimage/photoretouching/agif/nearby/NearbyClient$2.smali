.class Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$2;
.super Ljava/lang/Object;
.source "NearbyClient.java"

# interfaces
.implements Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->changePlayer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$2;->this$0:Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceChanged(Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;Lcom/samsung/android/allshare/ERROR;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->SHOWING:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->STOPPED:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->CONTENT_CHANGED:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$2;->this$0:Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mViewer:Lcom/samsung/android/allshare/media/ImageViewer;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->access$102(Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;Lcom/samsung/android/allshare/media/ImageViewer;)Lcom/samsung/android/allshare/media/ImageViewer;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$2;->this$0:Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mViewerOnPlaying:Z
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->access$202(Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;Z)Z

    goto :goto_0
.end method
