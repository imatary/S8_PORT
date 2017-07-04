.class Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$SelectionTask;
.super Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;
.source "ChannelViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;Landroid/content/Context;Lcom/sec/android/gallery3d/data/OnProgressListener;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$SelectionTask;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-direct {p0, p2, p3, p4}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/OnProgressListener;I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$SelectionTask;->doInBackground([Lcom/sec/android/gallery3d/data/MediaSet;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/sec/android/gallery3d/data/MediaSet;)Ljava/lang/Void;
    .locals 2

    const/4 v1, 0x0

    aget-object v0, p1, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$SelectionTask;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-static {v1, v0, p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$13800(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$SelectionTask;)V

    const/4 v1, 0x0

    return-object v1
.end method
