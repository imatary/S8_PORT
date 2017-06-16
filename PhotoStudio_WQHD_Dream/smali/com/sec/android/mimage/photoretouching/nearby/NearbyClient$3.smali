.class Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient$3;
.super Ljava/lang/Object;
.source "NearbyClient.java"

# interfaces
.implements Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;->changePlayer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;

.field final synthetic val$mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient$3;->this$0:Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient$3;->val$mContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetStateResponseReceived(Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;Lcom/samsung/android/allshare/ERROR;)V
    .locals 0

    return-void
.end method

.method public onShowResponseReceived(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Lcom/samsung/android/allshare/ERROR;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient$3;->this$0:Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;

    # setter for: Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;->mIsViewerShowRequested:Z
    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;->access$302(Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;Z)Z

    sget-object v0, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient$6;->$SwitchMap$com$samsung$android$allshare$ERROR:[I

    invoke-virtual {p3}, Lcom/samsung/android/allshare/ERROR;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient$3;->this$0:Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;

    # setter for: Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;->mViewerOnPlaying:Z
    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;->access$202(Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;Z)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient$3;->val$mContext:Landroid/content/Context;

    const v1, 0x7f07006c

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient$3;->this$0:Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;

    # setter for: Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;->mViewerOnPlaying:Z
    invoke-static {v0, v3}, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;->access$202(Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;Z)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient$3;->this$0:Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;

    # getter for: Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;->mPlayerThread:Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient$PlayerThread;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;->access$400(Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;)Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient$PlayerThread;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient$3;->this$0:Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;

    # getter for: Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;->mPlayerThread:Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient$PlayerThread;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;->access$400(Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;)Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient$PlayerThread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient$3;->this$0:Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;

    # setter for: Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;->mViewerOnPlaying:Z
    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;->access$202(Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;Z)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient$3;->val$mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient$3$1;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient$3$1;-><init>(Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient$3;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onStopResponseReceived(Lcom/samsung/android/allshare/ERROR;)V
    .locals 0

    return-void
.end method
