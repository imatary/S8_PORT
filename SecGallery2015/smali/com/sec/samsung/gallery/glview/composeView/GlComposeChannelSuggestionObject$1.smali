.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$1;
.super Lcom/sec/android/gallery3d/glcore/GlHandler;
.source "GlComposeChannelSuggestionObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;Lcom/sec/android/gallery3d/glcore/GlRootView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/glcore/GlHandler;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;)V

    return-void
.end method


# virtual methods
.method public onMessage(ILjava/lang/Object;III)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    move-object v2, p2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageUpdateParams;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageUpdateParams;->imageObjectRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;

    if-eqz v1, :cond_0

    check-cast p2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageUpdateParams;

    iget-object v0, p2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageUpdateParams;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->drawSuggestionImage(Landroid/graphics/Bitmap;)V
    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->access$900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;Landroid/graphics/Bitmap;)V

    const/4 v2, 0x1

    # setter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->mIsDecoded:Z
    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;->access$1002(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;Z)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method
