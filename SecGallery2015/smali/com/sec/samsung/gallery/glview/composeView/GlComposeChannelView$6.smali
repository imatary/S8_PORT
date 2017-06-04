.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$6;
.super Ljava/lang/Object;
.source "GlComposeChannelView.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$6;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/android/gallery3d/glcore/GlObject;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$6;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    check-cast p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;->getChannelViewHLPlayIconObjectChannelID()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->startHLVideo(I)V

    const/4 v0, 0x0

    return v0
.end method
