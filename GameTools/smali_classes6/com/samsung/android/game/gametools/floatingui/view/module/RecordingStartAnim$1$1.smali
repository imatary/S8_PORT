.class Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim$1$1;
.super Ljava/lang/Object;
.source "RecordingStartAnim.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim$1$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim$1$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim$1;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;->mListener:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim$AnimListener;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;->access$100(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;)Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim$AnimListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim$1$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim$1;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;->mListener:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim$AnimListener;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;->access$100(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;)Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim$AnimListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim$AnimListener;->onAnimChanged(I)Z

    :cond_0
    return-void
.end method
