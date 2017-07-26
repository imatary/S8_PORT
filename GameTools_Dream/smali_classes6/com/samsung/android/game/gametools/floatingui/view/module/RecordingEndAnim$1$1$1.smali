.class Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1$1$1;
.super Ljava/lang/Object;
.source "RecordingEndAnim.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1$1$1;->this$2:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1$1$1;->this$2:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1$1;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->access$202(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;Z)Z

    const-string/jumbo v0, "RecordingEndAnim"

    const-string/jumbo v1, "Recording End animation ended"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1$1$1;->this$2:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1$1;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->access$300(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;)Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$AnimListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1$1$1;->this$2:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1$1;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->access$300(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;)Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$AnimListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$AnimListener;->onAnimChanged(I)Z

    :cond_0
    return-void
.end method
