.class Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$49;
.super Ljava/lang/Object;
.source "ChannelPhotoViewState.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->startSendChannel(I[Landroid/net/Uri;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

.field final synthetic val$channelID:I

.field final synthetic val$newShare:Z

.field final synthetic val$selectionArgs:[Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;I[Landroid/net/Uri;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$49;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    iput p2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$49;->val$channelID:I

    iput-object p3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$49;->val$selectionArgs:[Landroid/net/Uri;

    iput-boolean p4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$49;->val$newShare:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$49;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    iget v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$49;->val$channelID:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$49;->val$selectionArgs:[Landroid/net/Uri;

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$49;->val$newShare:Z

    const/4 v4, 0x0

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->startSendChannel(I[Landroid/net/Uri;ZZ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$21300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;I[Landroid/net/Uri;ZZ)V

    return-void
.end method
