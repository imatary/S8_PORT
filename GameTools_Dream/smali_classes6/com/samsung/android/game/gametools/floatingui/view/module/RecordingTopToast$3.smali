.class Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast$3;
.super Ljava/lang/Object;
.source "RecordingTopToast.java"

# interfaces
.implements Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$AnimListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->recordEndAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast$3;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimChanged(I)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-ne p1, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast$3;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;

    invoke-static {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->access$002(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;Z)Z

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast$3;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->reset()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast$3;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->access$200(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;)Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast$RecordingTopToastListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast$3;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->access$200(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;)Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast$RecordingTopToastListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast$RecordingTopToastListener;->onAnimChanged(I)Z

    :cond_0
    return v1
.end method
