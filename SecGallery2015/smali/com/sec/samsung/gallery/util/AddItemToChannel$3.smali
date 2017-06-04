.class Lcom/sec/samsung/gallery/util/AddItemToChannel$3;
.super Ljava/lang/Object;
.source "AddItemToChannel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/util/AddItemToChannel;->startSendChannel(I[Landroid/net/Uri;ZZLcom/sec/android/gallery3d/data/ChannelAlbum;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/util/AddItemToChannel;

.field final synthetic val$channelID:I

.field final synthetic val$mLocalPathFileContent:[Ljava/lang/String;

.field final synthetic val$mSmsList:Ljava/util/ArrayList;

.field final synthetic val$mUriFileContent:[Landroid/net/Uri;

.field final synthetic val$useMobileData:Z


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/util/AddItemToChannel;[Landroid/net/Uri;I[Ljava/lang/String;ZLjava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel$3;->this$0:Lcom/sec/samsung/gallery/util/AddItemToChannel;

    iput-object p2, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel$3;->val$mUriFileContent:[Landroid/net/Uri;

    iput p3, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel$3;->val$channelID:I

    iput-object p4, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel$3;->val$mLocalPathFileContent:[Ljava/lang/String;

    iput-boolean p5, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel$3;->val$useMobileData:Z

    iput-object p6, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel$3;->val$mSmsList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v1, 0x6

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel$3;->this$0:Lcom/sec/samsung/gallery/util/AddItemToChannel;

    # getter for: Lcom/sec/samsung/gallery/util/AddItemToChannel;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/samsung/gallery/util/AddItemToChannel;->access$000(Lcom/sec/samsung/gallery/util/AddItemToChannel;)Landroid/content/Context;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel$3;->val$mUriFileContent:[Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel$3;->val$channelID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel$3;->val$mLocalPathFileContent:[Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel$3;->val$useMobileData:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel$3;->val$mSmsList:Ljava/util/ArrayList;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel$3;->this$0:Lcom/sec/samsung/gallery/util/AddItemToChannel;

    # getter for: Lcom/sec/samsung/gallery/util/AddItemToChannel;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/util/AddItemToChannel;->access$000(Lcom/sec/samsung/gallery/util/AddItemToChannel;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "EventAddContentCmd"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
