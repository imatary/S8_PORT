.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject$1;
.super Ljava/lang/Object;
.source "GlComposeChannelShareRefreshProgressObject.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRefreshProgressObject;->startShareRefreshProgressAnimation()V

    return-void
.end method

.method public onAnimationRepeat(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 0

    return-void
.end method