.class Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView$1;
.super Ljava/lang/Object;
.source "DreamToolsMainView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->access$000(Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->access$100(Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;)Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->access$200(Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->access$102(Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;)Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->access$302(Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->access$402(Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->access$502(Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;Z)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
