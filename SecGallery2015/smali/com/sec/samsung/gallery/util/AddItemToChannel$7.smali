.class Lcom/sec/samsung/gallery/util/AddItemToChannel$7;
.super Ljava/lang/Object;
.source "AddItemToChannel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/util/AddItemToChannel;->showSendChannelDialog(I[Landroid/net/Uri;ZLcom/sec/android/gallery3d/data/ChannelAlbum;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/util/AddItemToChannel;

.field final synthetic val$channelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

.field final synthetic val$channelID:I

.field final synthetic val$mediaItemList:Ljava/util/List;

.field final synthetic val$newShare:Z

.field final synthetic val$selectionArgs:[Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/util/AddItemToChannel;I[Landroid/net/Uri;ZLcom/sec/android/gallery3d/data/ChannelAlbum;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel$7;->this$0:Lcom/sec/samsung/gallery/util/AddItemToChannel;

    iput p2, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel$7;->val$channelID:I

    iput-object p3, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel$7;->val$selectionArgs:[Landroid/net/Uri;

    iput-boolean p4, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel$7;->val$newShare:Z

    iput-object p5, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel$7;->val$channelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    iput-object p6, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel$7;->val$mediaItemList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel$7;->this$0:Lcom/sec/samsung/gallery/util/AddItemToChannel;

    iget v1, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel$7;->val$channelID:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel$7;->val$selectionArgs:[Landroid/net/Uri;

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel$7;->val$newShare:Z

    iget-object v5, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel$7;->val$channelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    iget-object v6, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel$7;->val$mediaItemList:Ljava/util/List;

    invoke-static/range {v0 .. v6}, Lcom/sec/samsung/gallery/util/AddItemToChannel;->access$200(Lcom/sec/samsung/gallery/util/AddItemToChannel;I[Landroid/net/Uri;ZZLcom/sec/android/gallery3d/data/ChannelAlbum;Ljava/util/List;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel$7;->this$0:Lcom/sec/samsung/gallery/util/AddItemToChannel;

    invoke-static {v0}, Lcom/sec/samsung/gallery/util/AddItemToChannel;->access$000(Lcom/sec/samsung/gallery/util/AddItemToChannel;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "EXIT_SELECTION_MODE"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel$7;->this$0:Lcom/sec/samsung/gallery/util/AddItemToChannel;

    iget v1, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel$7;->val$channelID:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/util/AddItemToChannel;->startChannelViewMode(I)V

    return-void
.end method
