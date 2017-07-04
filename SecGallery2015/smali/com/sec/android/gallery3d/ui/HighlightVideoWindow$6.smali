.class Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$6;
.super Ljava/lang/Object;
.source "HighlightVideoWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->setVisibilityHighlightView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$6;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$6;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$1200(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$1700()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$6;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$1800(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->setShouldDisplayHighlightVideo(Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$6;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$200(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$6;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$200(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->playHighlightEvent()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$6;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$1200(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$6;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$1500(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->setUseTouchEvent(Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$6;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$1500(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$6;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$1900(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->setClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$6;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$1500(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$6;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$2000(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;->setMoveListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$1700()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow$6;->this$0:Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;->access$1300(Lcom/sec/android/gallery3d/ui/HighlightVideoWindow;)V

    goto :goto_0
.end method
