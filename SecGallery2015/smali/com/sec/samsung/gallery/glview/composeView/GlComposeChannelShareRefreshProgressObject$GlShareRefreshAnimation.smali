.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject$GlShareRefreshAnimation;
.super Lcom/sec/android/gallery3d/glcore/GlAnimationBase;
.source "GlComposeChannelShareRefreshProgressObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GlShareRefreshAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject;Lcom/sec/android/gallery3d/glcore/GlObject;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject$GlShareRefreshAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;-><init>()V

    iput-object p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject$GlShareRefreshAnimation;->mObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject$GlShareRefreshAnimation;->mAnimDuration:J

    return-void
.end method


# virtual methods
.method protected applyTransform(F)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject$GlShareRefreshAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject$GlShareRefreshAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject;->access$400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject;)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject;->access$500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject;Lcom/sec/android/gallery3d/glcore/GlView;F)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject$GlShareRefreshAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject$GlShareRefreshAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject;->access$400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject;)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    return-void
.end method
