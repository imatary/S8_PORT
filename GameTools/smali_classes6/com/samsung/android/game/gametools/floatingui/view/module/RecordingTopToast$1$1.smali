.class Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast$1$1;
.super Ljava/lang/Object;
.source "RecordingTopToast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast$1$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast$1$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast$1;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->isAnimating:Z
    invoke-static {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->access$002(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;Z)Z

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast$1$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast$1;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->reset()V

    return-void
.end method
