.class Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$44$1;
.super Ljava/lang/Object;
.source "ChannelPhotoViewState.java"

# interfaces
.implements Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$registerOnListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$44;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$44;

.field final synthetic val$numberOfContact:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$44;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$44$1;->this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$44;

    iput p2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$44$1;->val$numberOfContact:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public registerOn(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$44$1;->this$1:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$44;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$44;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    iget v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$44$1;->val$numberOfContact:I

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$20600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;I)V

    return-void
.end method
