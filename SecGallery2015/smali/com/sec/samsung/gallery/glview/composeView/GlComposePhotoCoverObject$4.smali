.class Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$4;
.super Ljava/lang/Object;
.source "GlComposePhotoCoverObject.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->playHaptic(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    iput p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$4;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject$4;->val$type:I

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->performHapticFeedback(I)Z

    :cond_0
    return-void
.end method
